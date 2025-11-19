@interface BlinkDetectionStageShared
+ (id)getSharedInstanceOrRelease:(BOOL)a3;
- (id)getShaders:(id)a3;
@end

@implementation BlinkDetectionStageShared

- (id)getShaders:(id)a3
{
  v4 = a3;
  shaders = self->_shaders;
  p_shaders = &self->_shaders;
  v7 = shaders;
  if (!v7)
  {
    v8 = [BlinkDetectionShaders alloc];
    v7 = objc_msgSend_initWithMetal_(v8, v9, v4, v10);
    if (v7)
    {
      objc_storeStrong(p_shaders, v7);
    }

    else
    {
      sub_29589424C();
    }
  }

  return v7;
}

+ (id)getSharedInstanceOrRelease:(BOOL)a3
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C22A0;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    if (qword_2A18C22A0)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(BlinkDetectionStageShared);
    v5 = qword_2A18C22A0;
  }

  qword_2A18C22A0 = v6;

LABEL_6:
  v7 = qword_2A18C22A0;
  objc_sync_exit(v4);

  return v7;
}

@end