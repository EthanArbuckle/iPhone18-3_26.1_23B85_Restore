@interface NSString(TeaStringFormatValidation)
+ (id)tf_stringWithValidatedFormat:()TeaStringFormatValidation validFormatSpecifiers:formatArguments:error:;
@end

@implementation NSString(TeaStringFormatValidation)

+ (id)tf_stringWithValidatedFormat:()TeaStringFormatValidation validFormatSpecifiers:formatArguments:error:
{
  v65 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 count];
  if (v11 <= 4)
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v19 = [v10 objectAtIndex:0];
        v20 = [v10 objectAtIndex:1];
        v18 = [a1 stringWithValidatedFormat:v65 validFormatSpecifiers:v9 error:a6, v19, v20];
        goto LABEL_26;
      }

      if (v11 == 3)
      {
        v19 = [v10 objectAtIndex:0];
        v20 = [v10 objectAtIndex:1];
        v21 = [v10 objectAtIndex:2];
        v18 = [a1 stringWithValidatedFormat:v65 validFormatSpecifiers:v9 error:a6, v19, v20, v21];
LABEL_23:

LABEL_26:
        goto LABEL_27;
      }

      v19 = [v10 objectAtIndex:0];
      v20 = [v10 objectAtIndex:1];
      v21 = [v10 objectAtIndex:2];
      v22 = [v10 objectAtIndex:3];
      v18 = [a1 stringWithValidatedFormat:v65 validFormatSpecifiers:v9 error:a6, v19, v20, v21, v22];
LABEL_22:

      goto LABEL_23;
    }

    if (!v11)
    {
      v18 = [a1 stringWithValidatedFormat:v65 validFormatSpecifiers:v9 error:a6];
      goto LABEL_28;
    }

    if (v11 == 1)
    {
      v19 = [v10 objectAtIndex:0];
      v18 = [a1 stringWithValidatedFormat:v65 validFormatSpecifiers:v9 error:a6, v19];
      goto LABEL_27;
    }

LABEL_31:
    v44 = MEMORY[0x1E695DF30];
    v45 = *MEMORY[0x1E695D930];
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received more than 10 arguments to format in %s.", "+[NSString(TeaStringFormatValidation) tf_stringWithValidatedFormat:validFormatSpecifiers:formatArguments:error:]"];
    v47 = [v44 exceptionWithName:v45 reason:v46 userInfo:0];
    v48 = v47;

    objc_exception_throw(v47);
  }

  if (v11 > 7)
  {
    switch(v11)
    {
      case 8:
        v63 = [v10 objectAtIndex:0];
        v59 = [v10 objectAtIndex:1];
        v38 = [v10 objectAtIndex:2];
        v56 = [v10 objectAtIndex:3];
        v39 = [v10 objectAtIndex:4];
        v40 = [v10 objectAtIndex:5];
        v41 = [v10 objectAtIndex:6];
        v42 = [v10 objectAtIndex:7];
        v18 = [a1 stringWithValidatedFormat:v65 validFormatSpecifiers:v9 error:a6, v63, v59, v38, v56, v39, v40, v41, v42];

        goto LABEL_28;
      case 9:
        v58 = [v10 objectAtIndex:0];
        v62 = [v10 objectAtIndex:1];
        v55 = [v10 objectAtIndex:2];
        v32 = [v10 objectAtIndex:3];
        v53 = [v10 objectAtIndex:4];
        v33 = [v10 objectAtIndex:5];
        v34 = [v10 objectAtIndex:6];
        v35 = [v10 objectAtIndex:7];
        v36 = [v10 objectAtIndex:8];
        v18 = [a1 stringWithValidatedFormat:v65 validFormatSpecifiers:v9 error:a6, v58, v62, v55, v32, v53, v33, v34, v35, v36];

        goto LABEL_28;
      case 10:
        v57 = [v10 objectAtIndex:0];
        v61 = [v10 objectAtIndex:1];
        v54 = [v10 objectAtIndex:2];
        v52 = [v10 objectAtIndex:3];
        v51 = [v10 objectAtIndex:4];
        v50 = [v10 objectAtIndex:5];
        v49 = [v10 objectAtIndex:6];
        v23 = [v10 objectAtIndex:7];
        v24 = [v10 objectAtIndex:8];
        v25 = [v10 objectAtIndex:9];
        v19 = v57;
        v18 = [a1 stringWithValidatedFormat:v65 validFormatSpecifiers:v9 error:a6, v57, v61, v54, v52, v51, v50, v49, v23, v24, v25];

LABEL_27:
        goto LABEL_28;
    }

    goto LABEL_31;
  }

  if (v11 == 5)
  {
    v19 = [v10 objectAtIndex:0];
    v20 = [v10 objectAtIndex:1];
    v21 = [v10 objectAtIndex:2];
    v22 = [v10 objectAtIndex:3];
    v37 = [v10 objectAtIndex:4];
    v18 = [a1 stringWithValidatedFormat:v65 validFormatSpecifiers:v9 error:a6, v19, v20, v21, v22, v37];

    goto LABEL_22;
  }

  if (v11 == 6)
  {
    v26 = [v10 objectAtIndex:0];
    v27 = [v10 objectAtIndex:1];
    v28 = [v10 objectAtIndex:2];
    v29 = [v10 objectAtIndex:3];
    v30 = [v10 objectAtIndex:4];
    v31 = [v10 objectAtIndex:5];
    v18 = [a1 stringWithValidatedFormat:v65 validFormatSpecifiers:v9 error:a6, v26, v27, v28, v29, v30, v31];
  }

  else
  {
    v60 = [v10 objectAtIndex:0];
    v12 = [v10 objectAtIndex:1];
    v13 = [v10 objectAtIndex:2];
    v14 = [v10 objectAtIndex:3];
    v15 = [v10 objectAtIndex:4];
    v16 = [v10 objectAtIndex:5];
    v17 = [v10 objectAtIndex:6];
    v18 = [a1 stringWithValidatedFormat:v65 validFormatSpecifiers:v9 error:a6, v60, v12, v13, v14, v15, v16, v17];
  }

LABEL_28:

  return v18;
}

@end