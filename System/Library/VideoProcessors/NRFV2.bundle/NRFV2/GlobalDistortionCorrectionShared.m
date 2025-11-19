@interface GlobalDistortionCorrectionShared
+ (id)getSharedInstanceOrRelease:(BOOL)a3;
- (id)getShaders:(id)a3;
@end

@implementation GlobalDistortionCorrectionShared

- (id)getShaders:(id)a3
{
  v4 = a3;
  shaders = self->_shaders;
  p_shaders = &self->_shaders;
  v7 = shaders;
  if (!v7)
  {
    v8 = [GlobalDistortionCorrectionShaders alloc];
    v7 = objc_msgSend_initWithMetal_(v8, v9, v4, v10);
    if (v7)
    {
      objc_storeStrong(p_shaders, v7);
    }

    else
    {
      sub_2958C2BE8();
    }
  }

  return v7;
}

+ (id)getSharedInstanceOrRelease:(BOOL)a3
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C22F8;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    if (qword_2A18C22F8)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(GlobalDistortionCorrectionShared);
    v5 = qword_2A18C22F8;
  }

  qword_2A18C22F8 = v6;

LABEL_6:
  v7 = qword_2A18C22F8;
  objc_sync_exit(v4);

  return v7;
}

@end