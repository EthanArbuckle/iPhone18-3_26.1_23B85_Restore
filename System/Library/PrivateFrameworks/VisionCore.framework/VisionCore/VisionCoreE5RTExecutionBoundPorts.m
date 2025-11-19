@interface VisionCoreE5RTExecutionBoundPorts
- (BOOL)getPort:(e5rt_io_port *)a3 named:(id)a4 error:(id *)a5;
- (BOOL)recordPort:(e5rt_io_port *)a3 named:(id)a4 error:(id *)a5;
- (VisionCoreE5RTExecutionBoundPorts)initWithCapacity:(unint64_t)a3;
- (void)dealloc;
- (void)releaseAllPorts;
- (void)releasePortNamed:(id)a3;
@end

@implementation VisionCoreE5RTExecutionBoundPorts

- (void)releasePortNamed:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_namedPorts objectForKey:v4];
  if (v5)
  {
    [(NSMutableDictionary *)self->_namedPorts removeObjectForKey:v4];
    [v5 pointerValue];
    e5rt_io_port_release();
  }
}

- (void)releaseAllPorts
{
  v2 = self->_namedPorts;
  [(NSMutableDictionary *)v2 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_1926];
  [(NSMutableDictionary *)v2 removeAllObjects];
}

- (BOOL)getPort:(e5rt_io_port *)a3 named:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(NSMutableDictionary *)self->_namedPorts objectForKey:v8];
  v10 = v9;
  if (v9)
  {
    if (a3)
    {
      *a3 = [v9 pointerValue];
    }
  }

  else if (a5)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Port %@ has not been bound", v8];
    *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v11];
  }

  return v10 != 0;
}

- (BOOL)recordPort:(e5rt_io_port *)a3 named:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(NSMutableDictionary *)self->_namedPorts objectForKey:v8];
  if (v9)
  {
    if (a5)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Port %@ has already been bound", v8];
      *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v10];
    }

    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E696B098] valueWithPointer:a3];
    [(NSMutableDictionary *)self->_namedPorts setObject:v11 forKey:v8];
  }

  return v9 == 0;
}

- (void)dealloc
{
  v3 = self->_namedPorts;
  [(NSMutableDictionary *)v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_1926];
  [(NSMutableDictionary *)v3 removeAllObjects];

  v4.receiver = self;
  v4.super_class = VisionCoreE5RTExecutionBoundPorts;
  [(VisionCoreE5RTExecutionBoundPorts *)&v4 dealloc];
}

- (VisionCoreE5RTExecutionBoundPorts)initWithCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = VisionCoreE5RTExecutionBoundPorts;
  v4 = [(VisionCoreE5RTExecutionBoundPorts *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a3];
    namedPorts = v4->_namedPorts;
    v4->_namedPorts = v5;
  }

  return v4;
}

@end