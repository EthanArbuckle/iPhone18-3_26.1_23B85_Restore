@interface PyramidStageShared_NRF
+ (BOOL)isRec709DownsampleSupported;
+ (id)compileShader:(id)a3 kernelType:(int)a4;
+ (id)compileShader:(id)a3 lumaWrite:(BOOL)a4 chromaWrite:(BOOL)a5;
+ (id)getSharedInstanceOrRelease:(BOOL)a3;
@end

@implementation PyramidStageShared_NRF

+ (BOOL)isRec709DownsampleSupported
{
  v4 = objc_msgSend_metalDevice(MEMORY[0x29EDC0A40], a2, v2, v3);
  v7 = objc_msgSend_supportsFamily_(v4, v5, 1004, v6);

  return v7;
}

+ (id)compileShader:(id)a3 lumaWrite:(BOOL)a4 chromaWrite:(BOOL)a5
{
  v7 = a3;
  v16 = a4;
  v15 = a5;
  v8 = objc_opt_new();
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setConstantValue_type_atIndex_(v8, v9, &v16, 53, 2);
    objc_msgSend_setConstantValue_type_atIndex_(v10, v11, &v15, 53, 1);
    v13 = objc_msgSend_computePipelineStateFor_constants_(v7, v12, @"pyramid_downsample", v10);
  }

  else
  {
    sub_295898BB0();
    v13 = 0;
  }

  return v13;
}

+ (id)compileShader:(id)a3 kernelType:(int)a4
{
  v5 = a3;
  v7 = v5;
  if (a4 >= 0xC)
  {
    sub_295898C24();
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_computePipelineStateFor_constants_(v5, v6, *(&off_29EDDBF58 + a4), 0);
  }

  return v8;
}

+ (id)getSharedInstanceOrRelease:(BOOL)a3
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C22B0;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    if (qword_2A18C22B0)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(PyramidStageShared_NRF);
    v5 = qword_2A18C22B0;
  }

  qword_2A18C22B0 = v6;

LABEL_6:
  v7 = qword_2A18C22B0;
  objc_sync_exit(v4);

  return v7;
}

@end