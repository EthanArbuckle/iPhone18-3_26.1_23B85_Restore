@interface SyntheticReferenceShaders
- (SyntheticReferenceShaders)initWithMetal:(id)a3;
- (id)getKernel:(int)a3 configFlags:(unsigned int)a4;
@end

@implementation SyntheticReferenceShaders

- (id)getKernel:(int)a3 configFlags:(unsigned int)a4
{
  v6 = 0;
  if (a3 <= 4 && a4 <= 0xF)
  {
    v6 = self->_kernelWithFunctionConstant[a3][a4];
  }

  return v6;
}

- (SyntheticReferenceShaders)initWithMetal:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SyntheticReferenceShaders;
  v5 = [(SyntheticReferenceShaders *)&v23 init];
  if (v5)
  {
    v8 = objc_opt_new();
    if (v8)
    {
      v9 = 0;
      v21 = v5;
      v10 = v5->_kernelWithFunctionConstant[0];
      while (!objc_msgSend_isValidFunctionConstantCombo_(SyntheticReferenceShaders, v6, v9, v7, v21))
      {
LABEL_10:
        ++v9;
        ++v10;
        if (v9 == 16)
        {

          v5 = v21;
          goto LABEL_12;
        }
      }

      objc_msgSend_reset(v8, v6, v11, v7);
      for (i = 0; i != 4; ++i)
      {
        v22 = (v9 >> i) & 1;
        objc_msgSend_setConstantValue_type_atIndex_(v8, v6, &v22, 53, i);
      }

      v13 = 0;
      v14 = v10;
      while (1)
      {
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v6, off_29EDDC038[v13], v7);
        v17 = objc_msgSend_computePipelineStateFor_constants_(v4, v16, v15, v8);
        v18 = *v14;
        *v14 = v17;

        if (!*v14)
        {
          break;
        }

        ++v13;
        v14 += 16;
        if (v13 == 5)
        {
          goto LABEL_10;
        }
      }

      sub_29589D604(v15);
      v5 = v21;
    }

    else
    {
      sub_29589D6A0();
    }

    v19 = 0;
  }

  else
  {
LABEL_12:
    v19 = v5;
  }

  return v19;
}

@end