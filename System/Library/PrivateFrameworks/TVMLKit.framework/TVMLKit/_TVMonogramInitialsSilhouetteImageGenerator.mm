@interface _TVMonogramInitialsSilhouetteImageGenerator
+ (BOOL)_isRomanName:(id)a3;
+ (id)_initialsForFirstName:(id)a3 lastName:(id)a4;
+ (id)monogramImageWithDescription:(id)a3;
- (id)imageKeyForObject:(id)a3;
- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8;
- (void)cancelLoad:(id)a3;
@end

@implementation _TVMonogramInitialsSilhouetteImageGenerator

+ (BOOL)_isRomanName:(id)a3
{
  if (a3)
  {
    return CNStringContainsNonLatinCharacters() ^ 1;
  }

  else
  {
    return 1;
  }
}

+ (id)_initialsForFirstName:(id)a3 lastName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!(v5 | v6) || ![objc_opt_class() _isRomanName:v5] || !objc_msgSend(objc_opt_class(), "_isRomanName:", v6))
  {
    goto LABEL_16;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [v5 length];
  if (v8)
  {
    v9 = [v5 substringWithRange:{0, 1}];
  }

  else
  {
    v9 = &stru_287E12870;
  }

  v10 = [v6 length];
  if (v10)
  {
    v11 = [v6 substringWithRange:{0, 1}];
  }

  else
  {
    v11 = &stru_287E12870;
  }

  v12 = [v7 stringWithFormat:@"%@%@", v9, v11];
  if (v10)
  {
  }

  if (v8)
  {
  }

  if (![v12 length])
  {

LABEL_16:
    v12 = 0;
  }

  v13 = [v12 uppercaseString];

  return v13;
}

+ (id)monogramImageWithDescription:(id)a3
{
  v4 = a3;
  [v4 size];
  v6 = v5;
  v8 = v7;
  [v4 cornerRadius];
  v10 = v9;
  v11 = [v4 fillColor];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [MEMORY[0x277D75348] blackColor];
  }

  v14 = v13;

  v15 = +[TVGraphicsImageRenderer preferredFormat];
  [v15 setPreferredRange:2];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76___TVMonogramInitialsSilhouetteImageGenerator_monogramImageWithDescription___block_invoke;
  v20[3] = &unk_279D70DC0;
  v23 = v10;
  v24 = v6;
  v25 = v8;
  v26 = 0;
  v27 = 0;
  v28 = v6;
  v29 = v8;
  v21 = v14;
  v22 = v4;
  v30 = a1;
  v16 = v4;
  v17 = v14;
  v18 = [TVGraphicsImageRenderer imageWithSize:v15 format:v20 actions:v6, v8];

  return v18;
}

- (id)imageKeyForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if ([v5 preferedMonogramType] == 2)
  {
    v6 = [v5 firstName];
    v7 = [v5 lastName];
    v8 = [v5 text];
    v9 = [v5 font];
    v34 = [v9 fontName];
    v10 = [v5 fillColor];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x277D75348] blackColor];
    }

    v17 = v12;

    v38 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v35 = 0;
    [v17 getRed:&v38 green:&v37 blue:&v36 alpha:&v35];
    v18 = MEMORY[0x277CCACA8];
    if ([v8 length])
    {
      v19 = v8;
    }

    else
    {
      v19 = v6;
    }

    v20 = v7;
    if ([v8 length])
    {
      v7 = &stru_287E12870;
    }

    [v9 pointSize];
    v22 = v21;
    [v5 cornerRadius];
    v23 = &off_26CE87000;
    LODWORD(v23) = vcvtad_u64_f64(v38 * 255.0);
    LODWORD(v24) = vcvtad_u64_f64(v37 * 255.0);
    LODWORD(v25) = vcvtad_u64_f64(v36 * 255.0);
    v13 = [v18 stringWithFormat:@"%@_%@_%@_%.0f_%.0f_%02X%02X%02X%.1f", v19, v7, v34, v22, v26, v23, v24, v25, v35];
  }

  else
  {
    if ([v5 preferedMonogramType] != 1 && objc_msgSend(v5, "preferedMonogramType"))
    {
      v13 = 0;
      goto LABEL_25;
    }

    v14 = [v5 fillColor];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x277D75348] blackColor];
    }

    v6 = v16;

    v38 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v35 = 0;
    [v6 getRed:&v38 green:&v37 blue:&v36 alpha:&v35];
    v27 = MEMORY[0x277CCACA8];
    if ([v5 shouldFallBackToSilhouette])
    {
      v28 = @"yes-man";
    }

    else
    {
      v28 = @"no-man";
    }

    [v5 cornerRadius];
    v29 = &off_26CE87000;
    LODWORD(v29) = vcvtad_u64_f64(v38 * 255.0);
    LODWORD(v30) = vcvtad_u64_f64(v37 * 255.0);
    LODWORD(v31) = vcvtad_u64_f64(v36 * 255.0);
    v13 = [v27 stringWithFormat:@"Silhouette_%@_%.0f_%02X%02X%02X%.1f", v28, v32, v29, v30, v31, v35];
  }

LABEL_25:

  return v13;
}

- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 requestLoader:(id)a7 completionHandler:(id)a8
{
  v11 = a3;
  v12 = a7;
  v13 = a8;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__8;
  v32 = __Block_byref_object_dispose__8;
  v33 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = v15;
  if (v15)
  {
    v17 = MEMORY[0x277CCA8C8];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __135___TVMonogramInitialsSilhouetteImageGenerator_loadImageForObject_scaleToSize_cropToFit_imageDirection_requestLoader_completionHandler___block_invoke;
    v24[3] = &unk_279D70E10;
    v27 = &v28;
    v25 = v15;
    v26 = v13;
    v18 = [v17 blockOperationWithBlock:v24];
    v19 = v29[5];
    v29[5] = v18;

    v20 = [(_TVMonogramImageGenerator *)self imageGeneratorQueue];
    [v20 addOperation:v29[5]];

    v21 = v25;
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVMLKitErrorDomain" code:11 userInfo:0];
    (*(v13 + 2))(v13, 0, 0, 0, 0, v21);
  }

  v22 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v22;
}

- (void)cancelLoad:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 cancel];
  }
}

@end