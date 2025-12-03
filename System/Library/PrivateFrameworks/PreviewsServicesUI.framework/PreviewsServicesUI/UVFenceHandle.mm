@interface UVFenceHandle
+ (id)createForAllScenes;
+ (id)createForScene:(id)scene;
- (UVFenceHandle)initWithBSXPCCoder:(id)coder;
- (UVFenceHandle)initWithUnderlying:(id)underlying;
- (id)copy;
@end

@implementation UVFenceHandle

- (UVFenceHandle)initWithUnderlying:(id)underlying
{
  underlyingCopy = underlying;
  v9.receiver = self;
  v9.super_class = UVFenceHandle;
  v6 = [(UVFenceHandle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlying, underlying);
  }

  return v7;
}

+ (id)createForAllScenes
{
  _synchronizedDrawingFence = [MEMORY[0x277D75940] _synchronizedDrawingFence];
  if (_synchronizedDrawingFence)
  {
    v3 = [[UVFenceHandle alloc] initWithUnderlying:_synchronizedDrawingFence];
  }

  else
  {
    v4 = UVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25F542000, v4, OS_LOG_TYPE_DEFAULT, "+[UIScene _synchronizedDrawingFence] returned nil", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

+ (id)createForScene:(id)scene
{
  v11 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  _synchronizedDrawingFence = [sceneCopy _synchronizedDrawingFence];
  if (_synchronizedDrawingFence)
  {
    v5 = [[UVFenceHandle alloc] initWithUnderlying:_synchronizedDrawingFence];
  }

  else
  {
    v6 = UVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = sceneCopy;
      _os_log_impl(&dword_25F542000, v6, OS_LOG_TYPE_DEFAULT, "[UIScene _synchronizedDrawingFence] returned nil: scene = %@", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)copy
{
  v3 = [UVFenceHandle alloc];
  v4 = [(BKSAnimationFenceHandle *)self->_underlying copy];
  v5 = [(UVFenceHandle *)v3 initWithUnderlying:v4];

  return v5;
}

- (UVFenceHandle)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UVFenceHandle;
  v5 = [(UVFenceHandle *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"underlying"];
    underlying = v5->_underlying;
    v5->_underlying = v6;

    if (!v5->_underlying)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"UVFenceHandle missing fence handle"];
    }
  }

  return v5;
}

@end