@interface FusionRemixUniforms
- (FusionRemixUniforms)initWithMetal:(id)a3 heap:(id)a4;
@end

@implementation FusionRemixUniforms

- (FusionRemixUniforms)initWithMetal:(id)a3 heap:(id)a4
{
  v5 = a4;
  v40.receiver = self;
  v40.super_class = FusionRemixUniforms;
  v9 = [(FusionRemixUniforms *)&v40 init];
  if (v9)
  {
    v10 = objc_msgSend_resourceOptions(v5, v6, v7, v8);
    v12 = objc_msgSend_newBufferWithLength_options_(v5, v11, 1520, v10);
    fragUniBufSBP = v9->_fragUniBufSBP;
    v9->_fragUniBufSBP = v12;

    if (v9->_fragUniBufSBP)
    {
      v17 = objc_msgSend_resourceOptions(v5, v14, v15, v16);
      v19 = objc_msgSend_newBufferWithLength_options_(v5, v18, 24, v17);
      fragUniBufInt = v9->_fragUniBufInt;
      v9->_fragUniBufInt = v19;

      if (v9->_fragUniBufInt)
      {
        v24 = objc_msgSend_resourceOptions(v5, v21, v22, v23);
        v26 = objc_msgSend_newBufferWithLength_options_(v5, v25, 1360, v24);
        vertexUniBufSBP = v9->_vertexUniBufSBP;
        v9->_vertexUniBufSBP = v26;

        if (v9->_vertexUniBufSBP)
        {
          v9->_ptr2FragBufSBP = objc_msgSend_contents(v9->_fragUniBufSBP, v28, v29, v30);
          v9->_ptr2FragBufInt = objc_msgSend_contents(v9->_fragUniBufInt, v31, v32, v33);
          v9->_ptr2VertBufSBP = objc_msgSend_contents(v9->_vertexUniBufSBP, v34, v35, v36);
          goto LABEL_6;
        }

        sub_2958C5364(&v41);
      }

      else
      {
        sub_2958C5400(&v41);
      }
    }

    else
    {
      sub_2958C549C(&v41);
    }
  }

  else
  {
    sub_2958C5538(&v41);
  }

  if (v41)
  {
    v37 = 0;
    goto LABEL_7;
  }

LABEL_6:
  v37 = v9;
LABEL_7:
  v38 = v37;

  return v38;
}

@end