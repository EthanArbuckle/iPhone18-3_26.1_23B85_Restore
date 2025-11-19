@interface ToneMappingShared
+ (id)getSharedInstanceOrRelease:(BOOL)a3;
- (id)getShaders:(id)a3;
@end

@implementation ToneMappingShared

- (id)getShaders:(id)a3
{
  v4 = a3;
  shaders = self->_shaders;
  p_shaders = &self->_shaders;
  v7 = shaders;
  if (!v7)
  {
    v8 = [ToneMappingShaders alloc];
    v7 = objc_msgSend_initWithMetal_(v8, v9, v4, v10);
    if (v7)
    {
      objc_storeStrong(p_shaders, v7);
    }

    else
    {
      sub_2958BF4A0();
    }
  }

  return v7;
}

+ (id)getSharedInstanceOrRelease:(BOOL)a3
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C22F0;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    if (qword_2A18C22F0)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(ToneMappingShared);
    v5 = qword_2A18C22F0;
  }

  qword_2A18C22F0 = v6;

LABEL_6:
  v7 = qword_2A18C22F0;
  objc_sync_exit(v4);

  return v7;
}

@end