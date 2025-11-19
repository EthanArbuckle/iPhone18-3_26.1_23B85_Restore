@interface MakeBlurMapIntermediates
- (BOOL)validateForMetal;
@end

@implementation MakeBlurMapIntermediates

- (BOOL)validateForMetal
{
  v3 = objc_msgSend_conformsToProtocol_(self->_inputFaceMaskAdjBlurTex, a2, &unk_2A1CA0A70);
  if (v3)
  {
    v3 = objc_msgSend_conformsToProtocol_(self->_inputWeightsXTex, v4, &unk_2A1CA0A70);
    if (v3)
    {
      v3 = objc_msgSend_conformsToProtocol_(self->_inputWeightsYTex, v5, &unk_2A1CA0A70);
      if (v3)
      {
        v3 = objc_msgSend_conformsToProtocol_(self->_inputPreprocTex, v6, &unk_2A1CA0A70);
        if (v3)
        {
          v3 = objc_msgSend_conformsToProtocol_(self->_inputSampledDTex, v7, &unk_2A1CA0A70);
          if (v3)
          {
            v3 = objc_msgSend_conformsToProtocol_(self->_inputDisparityRefineBlurTex, v8, &unk_2A1CA0A70);
            if (v3)
            {
              v3 = objc_msgSend_conformsToProtocol_(self->_inputAlphaMaskDeltaTex, v9, &unk_2A1CA0A70);
              if (v3)
              {
                v3 = objc_msgSend_conformsToProtocol_(self->_inputHairMaskDeltaTex, v10, &unk_2A1CA0A70);
                if (v3)
                {
                  LOBYTE(v3) = (objc_msgSend_conformsToProtocol_(self->_inputBlurRefineIntermediateTex, v11, &unk_2A1CA0A70) & 1) != 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

@end