@interface WBSCreditCardData(SafariSharedUIExtras)
- (id)cardArtworkWithSize:()SafariSharedUIExtras;
- (id)initWithCameraReaderOutput:()SafariSharedUIExtras;
- (id)virtualCardIcon;
- (void)virtualCardArtworkWithSize:()SafariSharedUIExtras completionHandler:;
@end

@implementation WBSCreditCardData(SafariSharedUIExtras)

- (id)initWithCameraReaderOutput:()SafariSharedUIExtras
{
  v23 = a1;
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v27 = 0;
    v6 = 0;
    v7 = *v30;
    v8 = *MEMORY[0x1E6999000];
    v9 = *MEMORY[0x1E6998FF0];
    v10 = *MEMORY[0x1E6998FF8];
    v24 = *MEMORY[0x1E6998FF8];
    v25 = *v30;
    while (1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [v12 type];
        if ([v13 isEqualToString:v8])
        {
          [v12 stringValue];
          v6 = v14 = v6;
        }

        else if ([v13 isEqualToString:v9])
        {
          [v12 stringValue];
          v27 = v14 = v27;
        }

        else
        {
          if (![v13 isEqualToString:v10])
          {
            goto LABEL_13;
          }

          v15 = v12;
          v14 = [v15 monthValue];
          [v14 integerValue];
          v16 = v9;
          v17 = v8;
          v18 = v4;
          v19 = v5;
          [v15 yearValue];
          v20 = v26 = v6;
          [v20 integerValue];
          v5 = WBSExpirationDateWithMonthYear();

          v4 = v18;
          v8 = v17;
          v9 = v16;
          v10 = v24;

          v7 = v25;
          v6 = v26;
        }

LABEL_13:
      }

      v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v4)
      {
        goto LABEL_17;
      }
    }
  }

  v5 = 0;
  v27 = 0;
  v6 = 0;
LABEL_17:
  v21 = [v23 initWithCardName:0 number:v6 cardholderName:v27 expirationDate:{v5, v23}];

  return v21;
}

- (id)virtualCardIcon
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getPKGlyphViewClass_softClass;
  v11 = getPKGlyphViewClass_softClass;
  if (!getPKGlyphViewClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getPKGlyphViewClass_block_invoke;
    v7[3] = &unk_1E8283D08;
    v7[4] = &v8;
    __getPKGlyphViewClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = [a1 virtualCard];
  v5 = [v4 cardIcon];

  return v5;
}

- (void)virtualCardArtworkWithSize:()SafariSharedUIExtras completionHandler:
{
  v8 = a5;
  v9 = [MEMORY[0x1E69C8F10] creditCardDataController];
  v10 = [a1 cardNumber];
  v11 = [v9 cachedArtworkForCardNumber:v10 withSize:{a2, a3}];

  if (v11)
  {
    v8[2](v8, v11);
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v12 = getPKAddPassesViewControllerClass_softClass;
    v24 = getPKAddPassesViewControllerClass_softClass;
    if (!getPKAddPassesViewControllerClass_softClass)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __getPKAddPassesViewControllerClass_block_invoke;
      v20[3] = &unk_1E8283D08;
      v20[4] = &v21;
      __getPKAddPassesViewControllerClass_block_invoke(v20);
      v12 = v22[3];
    }

    v13 = v12;
    _Block_object_dispose(&v21, 8);
    v14 = [a1 virtualCard];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __88__WBSCreditCardData_SafariSharedUIExtras__virtualCardArtworkWithSize_completionHandler___block_invoke;
    v15[3] = &unk_1E8283CE0;
    v15[4] = a1;
    v16 = v9;
    v18 = a2;
    v19 = a3;
    v17 = v8;
    [v14 cardArtworkWithSize:v15 completion:{a2, a3}];
  }
}

- (id)cardArtworkWithSize:()SafariSharedUIExtras
{
  v6 = [MEMORY[0x1E69C8F10] creditCardDataController];
  v7 = [a1 cardNumber];
  v8 = [v6 cachedArtworkForCardNumber:v7 withSize:{a2, a3}];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [a1 cardDescriptor];
    v11 = objc_opt_respondsToSelector();

    v12 = [a1 cardDescriptor];
    v13 = v12;
    if (v11)
    {
      v14 = [v12 artwork];
    }

    else
    {
      v14 = [v12 cardArt];
    }

    v15 = v14;

    v16 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v15];
    v9 = [WBSImageUtilities resizedImage:v16 withSize:a2, a3];

    if (v9)
    {
      v17 = [a1 cardNumber];
      [v6 addArtworkToCache:v9 forCardNumber:v17 withSize:{a2, a3}];
    }
  }

  return v9;
}

@end