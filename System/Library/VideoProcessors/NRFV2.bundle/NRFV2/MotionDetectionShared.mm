@interface MotionDetectionShared
+ (id)getSharedInstanceOrRelease:(BOOL)release;
- (id)getShaders:(id)shaders;
@end

@implementation MotionDetectionShared

- (id)getShaders:(id)shaders
{
  shadersCopy = shaders;
  shaders = self->_shaders;
  p_shaders = &self->_shaders;
  shadersCopy2 = shaders;
  if (!shadersCopy2)
  {
    v8 = [MotionDetectionShaders alloc];
    shadersCopy2 = objc_msgSend_initWithMetal_(v8, v9, shadersCopy, v10);
    if (shadersCopy2)
    {
      objc_storeStrong(p_shaders, shadersCopy2);
    }

    else
    {
      sub_295894E50();
    }
  }

  return shadersCopy2;
}

+ (id)getSharedInstanceOrRelease:(BOOL)release
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C22A8;
  if (release)
  {
    v6 = 0;
  }

  else
  {
    if (qword_2A18C22A8)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(MotionDetectionShared);
    v5 = qword_2A18C22A8;
  }

  qword_2A18C22A8 = v6;

LABEL_6:
  v7 = qword_2A18C22A8;
  objc_sync_exit(v4);

  return v7;
}

@end