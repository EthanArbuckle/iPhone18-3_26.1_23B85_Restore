@interface SyntheticLongShaders
- (SyntheticLongShaders)initWithMetal:(id)metal;
- (id)getKernel:(int)kernel;
- (id)getKernel:(int)kernel configFlags:(unsigned int)flags;
@end

@implementation SyntheticLongShaders

- (id)getKernel:(int)kernel
{
  if (kernel)
  {
    v4 = 0;
  }

  else
  {
    v4 = self->_kernel[0];
  }

  return v4;
}

- (id)getKernel:(int)kernel configFlags:(unsigned int)flags
{
  v6 = 0;
  if (kernel <= 2 && flags <= 0xFF)
  {
    v6 = self->_kernelWithFunctionConstant[kernel][flags];
  }

  return v6;
}

- (SyntheticLongShaders)initWithMetal:(id)metal
{
  metalCopy = metal;
  v33.receiver = self;
  v33.super_class = SyntheticLongShaders;
  v5 = [(SyntheticLongShaders *)&v33 init];
  if (!v5)
  {
    goto LABEL_16;
  }

  v8 = objc_opt_new();
  if (!v8)
  {
    sub_2958A4418();
LABEL_19:

    v29 = 0;
    goto LABEL_17;
  }

  v9 = 0;
  v31 = v5;
  v10 = v5->_kernelWithFunctionConstant[0];
  do
  {
    if (objc_msgSend_isValidFunctionConstantCombo_(SyntheticLongShaders, v6, v9, v7, v31))
    {
      objc_msgSend_reset(v8, v6, v11, v7);
      for (i = 0; i != 8; ++i)
      {
        v32 = (v9 >> i) & 1;
        objc_msgSend_setConstantValue_type_atIndex_(v8, v6, &v32, 53, i);
      }

      v13 = 0;
      v14 = v10;
      do
      {
        if (v9 == (dword_2959D5F80[v13] & v9))
        {
          v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v6, off_29EDDC0C8[v13], v7);
          v17 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v16, v15, v8);
          v18 = *v14;
          *v14 = v17;

          if (!*v14)
          {
            sub_2958A437C(v15);
            v5 = v31;
            goto LABEL_19;
          }
        }

        ++v13;
        v14 += 256;
      }

      while (v13 != 3);
    }

    ++v9;
    ++v10;
  }

  while (v9 != 256);
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v6, "kernelDownSample", v7);
  v23 = objc_msgSend_library(metalCopy, v20, v21, v22);
  v25 = objc_msgSend_newFunctionWithName_constantValues_error_(v23, v24, v19, v8, 0);

  if (!v25)
  {
    sub_2958A42F0();
    v5 = v31;
LABEL_23:

    goto LABEL_19;
  }

  v27 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v26, v19, v8);
  v5 = v31;
  v28 = v31->_kernel[0];
  v31->_kernel[0] = v27;

  if (!v31->_kernel[0])
  {
    sub_2958A4264();
    goto LABEL_23;
  }

LABEL_16:
  v29 = v5;
LABEL_17:

  return v29;
}

@end