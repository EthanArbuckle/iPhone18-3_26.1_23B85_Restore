@interface VisionCoreE5RTExecutionBoundPorts
- (BOOL)getPort:(e5rt_io_port *)port named:(id)named error:(id *)error;
- (BOOL)recordPort:(e5rt_io_port *)port named:(id)named error:(id *)error;
- (VisionCoreE5RTExecutionBoundPorts)initWithCapacity:(unint64_t)capacity;
- (void)dealloc;
- (void)releaseAllPorts;
- (void)releasePortNamed:(id)named;
@end

@implementation VisionCoreE5RTExecutionBoundPorts

- (void)releasePortNamed:(id)named
{
  namedCopy = named;
  v5 = [(NSMutableDictionary *)self->_namedPorts objectForKey:namedCopy];
  if (v5)
  {
    [(NSMutableDictionary *)self->_namedPorts removeObjectForKey:namedCopy];
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

- (BOOL)getPort:(e5rt_io_port *)port named:(id)named error:(id *)error
{
  namedCopy = named;
  v9 = [(NSMutableDictionary *)self->_namedPorts objectForKey:namedCopy];
  v10 = v9;
  if (v9)
  {
    if (port)
    {
      *port = [v9 pointerValue];
    }
  }

  else if (error)
  {
    namedCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Port %@ has not been bound", namedCopy];
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:namedCopy];
  }

  return v10 != 0;
}

- (BOOL)recordPort:(e5rt_io_port *)port named:(id)named error:(id *)error
{
  namedCopy = named;
  v9 = [(NSMutableDictionary *)self->_namedPorts objectForKey:namedCopy];
  if (v9)
  {
    if (error)
    {
      namedCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Port %@ has already been bound", namedCopy];
      *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:namedCopy];
    }

    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E696B098] valueWithPointer:port];
    [(NSMutableDictionary *)self->_namedPorts setObject:v11 forKey:namedCopy];
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

- (VisionCoreE5RTExecutionBoundPorts)initWithCapacity:(unint64_t)capacity
{
  v8.receiver = self;
  v8.super_class = VisionCoreE5RTExecutionBoundPorts;
  v4 = [(VisionCoreE5RTExecutionBoundPorts *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:capacity];
    namedPorts = v4->_namedPorts;
    v4->_namedPorts = v5;
  }

  return v4;
}

@end