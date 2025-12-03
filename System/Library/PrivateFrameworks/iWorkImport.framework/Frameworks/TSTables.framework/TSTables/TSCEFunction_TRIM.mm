@interface TSCEFunction_TRIM
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TRIM

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v12 = v7;
  v44 = 0;
  if (v7)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v44);
    v13 = v44;
    if (v13)
    {
      v14 = v13;
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v8, v13, v10, v11);
      goto LABEL_30;
    }
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
  }

  if (sub_221078910(&v45, v8, v9, v10, v11))
  {
    v43 = 0;
    v24 = sub_221078910(&v45, v16, v17, v18, v19);
    v41 = 0;
    v42 = 0;
      ;
    }

    v26 = v24 - 1;
    do
    {
      v27 = v26;
      if ((v26 & 0x8000000000000000) != 0)
      {
        break;
      }

      v39 = v26;
      v28 = sub_22107897C(&v45, &v39, v21, v22, v23);
      v26 = v27 - 1;
    }

    while (v28 == 32);
    v29 = v43;
    v39 = 0;
    v40[0] = 0;
    *(v40 + 7) = 0;
    if (v43 <= v27)
    {
      v30 = 0;
      v31 = 0;
      v32 = v43;
      do
      {
        v37 = v29;
        ++v31;
        if (sub_22107897C(&v45, &v37, v21, v22, v23) == 32)
        {
          for (j = v29 + 1; ; ++j)
          {
            v37 = j;
            v34 = sub_22107897C(&v45, &v37, v21, v22, v23);
            if (v34 != 32)
            {
              break;
            }

            if ((v30 & 1) == 0)
            {
              v41 = v32;
              v42 = v31;
              sub_2210780F0(&v45, &v41, v21, v22, v23, &v37);
              sub_221077424(&v39, &v37, context);

              v31 = 0;
            }

            v32 = v29 + 2;
            ++v29;
            v30 = 1;
          }

          if (v34)
          {
            ++v31;
            v30 = 0;
          }
        }

        else
        {
          j = v29;
        }

        v29 = j + 1;
      }

      while (j < v27);
      if (v31)
      {
        v36[0] = v32;
        v36[1] = v31;
        sub_2210780F0(&v45, v36, v21, v22, v23, &v37);
        sub_221077424(&v39, &v37, context);
      }
    }

    v15 = sub_2210789F4(&v39, v20, v21, v22, v23);
  }

  else
  {
    v15 = sub_2210789F4(&v45, v16, v17, v18, v19);
  }

  v14 = 0;
LABEL_30:

  return v15;
}

@end