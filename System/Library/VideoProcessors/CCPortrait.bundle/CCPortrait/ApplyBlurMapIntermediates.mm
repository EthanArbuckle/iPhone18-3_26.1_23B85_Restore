@interface ApplyBlurMapIntermediates
- (BOOL)validateForMetal;
@end

@implementation ApplyBlurMapIntermediates

- (BOOL)validateForMetal
{
  if (objc_msgSend_conformsToProtocol_(self->_inputIntermediateTex, a2, &unk_2A1CA0A70))
  {
    if (objc_msgSend_conformsToProtocol_(self->_inputHalfResTex1, v3, &unk_2A1CA0A70))
    {
      if (objc_msgSend_conformsToProtocol_(self->_inputHalfResTex2, v4, &unk_2A1CA0A70))
      {
        if (objc_msgSend_conformsToProtocol_(self->_inputHalfResTex1sRGB, v5, &unk_2A1CA0A70))
        {
          if (objc_msgSend_conformsToProtocol_(self->_inputHalfResTex2sRGB, v6, &unk_2A1CA0A70))
          {
            if (objc_msgSend_conformsToProtocol_(self->_inputHalfResRGTex, v7, &unk_2A1CA0A70))
            {
              return 1;
            }

            sub_2956C7FF8();
          }

          else
          {
            sub_2956C7F98();
          }
        }

        else
        {
          sub_2956C7F38();
        }
      }

      else
      {
        sub_2956C7ED8();
      }
    }

    else
    {
      sub_2956C7E78();
    }
  }

  else
  {
    sub_2956C7E18();
  }

  return 0;
}

@end