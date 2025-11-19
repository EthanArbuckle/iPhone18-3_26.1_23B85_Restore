@interface VFXMTLResourceBinding
- (NSMutableArray)usedResources;
- (VFXMTLResourceBinding)init;
- (id)description;
- (void)dealloc;
@end

@implementation VFXMTLResourceBinding

- (VFXMTLResourceBinding)init
{
  v3.receiver = self;
  v3.super_class = VFXMTLResourceBinding;
  result = [(VFXMTLResourceBinding *)&v3 init];
  *&result->_indices.vertexIndex = -1;
  result->_usedResources = 0;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLResourceBinding;
  [(VFXMTLResourceBinding *)&v3 dealloc];
}

- (id)description
{
  v5 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v11 = objc_msgSend_name(self->_binding, v8, v9, v10);
  objc_msgSend_appendFormat_(v5, v12, @"<%@: %p> %@", v13, v7, self, v11);
  return v5;
}

- (NSMutableArray)usedResources
{
  result = self->_usedResources;
  if (!result)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    result = objc_msgSend_initWithCapacity_(v4, v5, 0, v6);
    self->_usedResources = result;
  }

  return result;
}

@end