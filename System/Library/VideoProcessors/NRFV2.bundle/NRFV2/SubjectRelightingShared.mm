@interface SubjectRelightingShared
+ (id)getSharedInstanceOrRelease:(BOOL)a3;
- (id)getShaders:(id)a3;
@end

@implementation SubjectRelightingShared

- (id)getShaders:(id)a3
{
  v4 = a3;
  shaders = self->_shaders;
  p_shaders = &self->_shaders;
  v7 = shaders;
  if (!v7)
  {
    v8 = [SubjectRelightingShaders alloc];
    v7 = objc_msgSend_initWithMetalContext_(v8, v9, v4, v10);
    if (v7)
    {
      objc_storeStrong(p_shaders, v7);
    }

    else
    {
      sub_2958762D8();
    }
  }

  return v7;
}

+ (id)getSharedInstanceOrRelease:(BOOL)a3
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C2258;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    if (qword_2A18C2258)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(SubjectRelightingShared);
    v5 = qword_2A18C2258;
  }

  qword_2A18C2258 = v6;

LABEL_6:
  v7 = qword_2A18C2258;
  objc_sync_exit(v4);

  return v7;
}

@end