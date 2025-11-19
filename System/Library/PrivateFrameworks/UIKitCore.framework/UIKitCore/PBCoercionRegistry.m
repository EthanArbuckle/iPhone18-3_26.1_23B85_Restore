@interface PBCoercionRegistry
@end

@implementation PBCoercionRegistry

void __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x1E696ACC8];
  v6 = a4;
  v7 = [v5 _ui_archivedInterprocessDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  (*(v6 + 2))(v6, v7, 0, 0);
}

void __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_2(uint64_t a1, uint64_t a2, UIImage *a3, void *a4)
{
  v5 = a4;
  v6 = UIImagePNGRepresentation(a3);
  (*(v5 + 2))(v5, v6, 0, 0);
}

void __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a4;
  v6 = _UIImageJPEGRepresentation(a3, 0, 0.8);
  (*(v5 + 2))(v5, v6, 0, 0);
}

id __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v10 && v11)
  {
    v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11];
  }

  if (v10)
  {
    v13 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v10 error:0];
    v14 = [v13 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
    [v13 finishDecoding];
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = PBCannotInstantiateObjectOfClassError();
      v14 = 0;
    }

    if (!a6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15 = 0;
  v14 = 0;
  if (a6)
  {
LABEL_11:
    v16 = v15;
    *a6 = v15;
  }

LABEL_12:

  return v14;
}

UIImage *__57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v10 && v11)
  {
    v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11];
  }

  if (v10)
  {
    v13 = [[UIImage alloc] initWithData:v10];
    if (!a6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
    if (!a6)
    {
      goto LABEL_10;
    }
  }

  if (!v13)
  {
    *a6 = PBCannotInstantiateObjectOfClassError();
  }

LABEL_10:

  return v13;
}

id __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_11;
  aBlock[3] = &unk_1E711A948;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);

  return v4;
}

void __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_11(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 32) == *off_1E70EC990)
  {
    v18 = [v8 string];
    v13 = [v18 dataUsingEncoding:4];

    v14 = 0;
  }

  else
  {
    v10 = [v8 length];
    v11 = *(a1 + 32);
    v20 = *off_1E70EC8F0;
    v21[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v19 = 0;
    v13 = [v8 dataFromRange:0 documentAttributes:v10 error:{v12, &v19}];
    v14 = v19;

    if (v14)
    {
      v15 = [v14 domain];
      v16 = [v15 isEqualToString:*MEMORY[0x1E69BC840]];

      if ((v16 & 1) == 0)
      {
        v17 = PBCannotLoadRepresentationError();

        v14 = v17;
      }
    }
  }

  v9[2](v9, v13, 0, v14);
}

id __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_13;
  aBlock[3] = &unk_1E711A990;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(aBlock);

  return v4;
}

id __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_13(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([*(a1 + 32) isEqualToString:*off_1E70EC940] & 1) == 0 && !objc_msgSend(*(a1 + 32), "isEqualToString:", *off_1E70ECAE8))
  {
    if (v11)
    {
      v20 = objc_alloc(MEMORY[0x1E696AAB0]);
      v21 = *(a1 + 32);
      v35 = *off_1E70EC8F0;
      v36 = v21;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v31 = 0;
      v18 = [v20 initWithData:v11 options:v13 documentAttributes:0 error:&v31];
      v22 = v31;
    }

    else
    {
      if (!v12)
      {
LABEL_8:
        v19 = 0;
        goto LABEL_18;
      }

      v23 = objc_alloc(MEMORY[0x1E696AAB0]);
      v24 = *(a1 + 32);
      v33 = *off_1E70EC8F0;
      v34 = v24;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v30 = 0;
      v18 = [v23 initWithURL:v12 options:v13 documentAttributes:0 error:&v30];
      v22 = v30;
    }

    v19 = v22;
    goto LABEL_14;
  }

  v13 = v11;
  if (!v13 && v12)
  {
    v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v12];
  }

  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = *(a1 + 32);
  v16 = *off_1E70EC938;
  v37[0] = *off_1E70EC8F0;
  v37[1] = v16;
  v38[0] = v15;
  v38[1] = MEMORY[0x1E695E110];
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v32 = 0;
  v18 = [v14 _initWithHTMLData:v13 options:v17 documentAttributes:0 error:&v32];
  v19 = v32;

LABEL_14:
  if (v18)
  {
    goto LABEL_21;
  }

  if (v19)
  {
    v25 = [v19 domain];
    v26 = [v25 isEqualToString:*MEMORY[0x1E69BC840]];

    if ((v26 & 1) == 0)
    {
      v27 = PBCannotInstantiateObjectOfClassError();

      v19 = v27;
    }
  }

LABEL_18:
  if (a6)
  {
    v28 = v19;
    v18 = 0;
    *a6 = v19;
  }

  else
  {
    v18 = 0;
  }

LABEL_21:

  return v18;
}

id __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_15;
  v12[3] = &unk_1E711A9E0;
  v7 = *(a1 + 32);
  v14 = v6;
  v15 = v7;
  v13 = v5;
  v16 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  v10 = _Block_copy(v12);

  return v10;
}

void __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_15(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = *(v9 + 16);
  v12 = a4;
  v13 = a3;
  v14 = v11(v9, v10);
  v15 = PBUTIForNSAttributedStringDocumentType(*(a1 + 32));
  v16 = PBUTIForNSAttributedStringDocumentType(*(a1 + 40));
  v17 = objc_opt_class();
  v25 = 0;
  v18 = (v14)[2](v14, v17, v15, v13, v12, &v25);

  v19 = v25;
  v20 = v19;
  if (v18)
  {
    v21 = (*(*(a1 + 56) + 16))();
    v22 = PBUTIForNSAttributedStringDocumentType(*(a1 + 40));
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_16;
    v23[3] = &unk_1E711A9B8;
    v24 = v8;
    (v21)[2](v21, v22, v18, v23);
  }

  else
  {
    if (!v19)
    {
      v20 = PBCannotCoerceRepresentationOfTypeToRepresentationOfTypeError();
    }

    (*(v8 + 2))(v8, 0, v20);
  }
}

void __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_17(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1E69BC7F8];
  v10 = 0;
  v7 = a4;
  v8 = [v6 archivedDataFromObject:a3 requestedType:a2 outError:&v10];
  v9 = v10;
  v7[2](v7, v8, 0, v9);
}

id __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_20(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v10 = *(a1 + 32);
  v11 = *off_1E70EC9A0;
  v12 = *(v10 + 16);
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = v12(v10, v11);
  v17 = (v16)[2](v16, a2, v15, v14, v13, a6);

  v18 = [v17 string];

  return v18;
}

void __57__PBCoercionRegistry_UIKit__uikit_registerExtraCoercions__block_invoke_21(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1E69BC7F8];
  v10 = 0;
  v7 = a4;
  v8 = [v6 archivedDataFromObject:a3 requestedType:a2 outError:&v10];
  v9 = v10;
  v7[2](v7, v8, 0, v9);
}

@end