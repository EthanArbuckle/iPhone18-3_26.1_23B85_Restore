@interface GuidedFilterShared
+ (id)getSharedInstanceOrRelease:(BOOL)a3;
- (id)getShaders:(id)a3;
@end

@implementation GuidedFilterShared

- (id)getShaders:(id)a3
{
  v4 = a3;
  shaders = self->_shaders;
  p_shaders = &self->_shaders;
  v7 = shaders;
  if (!v7)
  {
    v8 = [GuidedFilterShaders alloc];
    v7 = objc_msgSend_initWithMetalContext_(v8, v9, v4, v10);
    if (v7)
    {
      objc_storeStrong(p_shaders, v7);
    }

    else
    {
      sub_2958CB344();
    }
  }

  return v7;
}

+ (id)getSharedInstanceOrRelease:(BOOL)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C2318;
  if (v3)
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