@interface RegPyrFusionShared
+ (id)getSharedInstanceOrRelease:(BOOL)release;
- (id)getShaders:(id)shaders;
@end

@implementation RegPyrFusionShared

- (id)getShaders:(id)shaders
{
  shadersCopy = shaders;
  shaders = self->_shaders;
  p_shaders = &self->_shaders;
  shadersCopy2 = shaders;
  if (!shadersCopy2)
  {
    v8 = [RegPyrFusionShaders alloc];
    shadersCopy2 = objc_msgSend_initWithMetal_(v8, v9, shadersCopy, v10);
    if (shadersCopy2)
    {
      objc_storeStrong(p_shaders, shadersCopy2);
    }

    else
    {
      sub_29588FFA0();
    }
  }

  return shadersCopy2;
}

+ (id)getSharedInstanceOrRelease:(BOOL)release
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C2290;
  if (release)
  {
    v6 = 0;
  }

  else
  {
    if (qword_2A18C2290)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(RegPyrFusionShared);
    v5 = qword_2A18C2290;
  }

  qword_2A18C2290 = v6;

LABEL_6:
  v7 = qword_2A18C2290;
  objc_sync_exit(v4);

  return v7;
}

@end