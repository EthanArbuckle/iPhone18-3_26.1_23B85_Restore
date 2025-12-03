@interface GuidedFilterShared
+ (id)getSharedInstanceOrRelease:(BOOL)release;
- (id)getShaders:(id)shaders;
@end

@implementation GuidedFilterShared

- (id)getShaders:(id)shaders
{
  shadersCopy = shaders;
  shaders = self->_shaders;
  p_shaders = &self->_shaders;
  shadersCopy2 = shaders;
  if (!shadersCopy2)
  {
    v8 = [GuidedFilterShaders alloc];
    shadersCopy2 = objc_msgSend_initWithMetalContext_(v8, v9, shadersCopy, v10);
    if (shadersCopy2)
    {
      objc_storeStrong(p_shaders, shadersCopy2);
    }

    else
    {
      sub_2958CB344();
    }
  }

  return shadersCopy2;
}

+ (id)getSharedInstanceOrRelease:(BOOL)release
{
  releaseCopy = release;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C2318;
  if (releaseCopy)
  {
    qword_2A18C2318 = 0;

    v5 = qword_2A18C2318;
LABEL_5:
    v8 = v5;
    goto LABEL_6;
  }

  if (qword_2A18C2318)
  {
    goto LABEL_5;
  }

  v6 = objc_alloc_init(GuidedFilterShared);
  v7 = qword_2A18C2318;
  qword_2A18C2318 = v6;

  v5 = qword_2A18C2318;
  if (qword_2A18C2318)
  {
    goto LABEL_5;
  }

  FigDebugAssert3();
  v8 = 0;
LABEL_6:
  objc_sync_exit(v4);

  return v8;
}

@end