@interface FusionRemixStageShared
+ (id)getSharedInstanceOrRelease:(BOOL)a3;
- (id)getShaders:(id)a3 fp16:(BOOL)a4;
@end

@implementation FusionRemixStageShared

- (id)getShaders:(id)a3 fp16:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = &self->super.isa + v4;
  v9 = v7[1];
  v8 = (v7 + 1);
  v10 = v9;
  if (!v10)
  {
    v11 = [FuseRemixShaders alloc];
    if (v4)
    {
      v13 = 25;
    }

    else
    {
      v13 = 10;
    }

    if (v4)
    {
      v14 = objc_msgSend_initWithMetal_pixelFormatLuma_pixelFormatChroma_(v11, v12, v6, v13, 65);
    }

    else
    {
      v14 = objc_msgSend_initWithMetal_pixelFormatLuma_pixelFormatChroma_(v11, v12, v6, v13, 30);
    }

    v10 = v14;
    if (v14)
    {
      objc_storeStrong(v8, v14);
    }

    else
    {
      sub_2958C55D4();
    }
  }

  return v10;
}

+ (id)getSharedInstanceOrRelease:(BOOL)a3
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C2308;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    if (qword_2A18C2308)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(FusionRemixStageShared);
    v5 = qword_2A18C2308;
  }

  qword_2A18C2308 = v6;

LABEL_6:
  v7 = qword_2A18C2308;
  objc_sync_exit(v4);

  return v7;
}

@end