@interface _TVMonogramInitialsSilhouetteImageGenerator
+ (BOOL)_isRomanName:(id)name;
+ (id)_initialsForFirstName:(id)name lastName:(id)lastName;
+ (id)monogramImageWithDescription:(id)description;
- (id)imageKeyForObject:(id)object;
- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler;
- (void)cancelLoad:(id)load;
@end

@implementation _TVMonogramInitialsSilhouetteImageGenerator

+ (BOOL)_isRomanName:(id)name
{
  if (name)
  {
    return CNStringContainsNonLatinCharacters() ^ 1;
  }

  else
  {
    return 1;
  }
}

+ (id)_initialsForFirstName:(id)name lastName:(id)lastName
{
  nameCopy = name;
  lastNameCopy = lastName;
  if (!(nameCopy | lastNameCopy) || ![objc_opt_class() _isRomanName:nameCopy] || !objc_msgSend(objc_opt_class(), "_isRomanName:", lastNameCopy))
  {
    goto LABEL_16;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [nameCopy length];
  if (v8)
  {
    v9 = [nameCopy substringWithRange:{0, 1}];
  }

  else
  {
    v9 = &stru_287E12870;
  }

  v10 = [lastNameCopy length];
  if (v10)
  {
    v11 = [lastNameCopy substringWithRange:{0, 1}];
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

  uppercaseString = [v12 uppercaseString];

  return uppercaseString;
}

+ (id)monogramImageWithDescription:(id)description
{
  descriptionCopy = description;
  [descriptionCopy size];
  v6 = v5;
  v8 = v7;
  [descriptionCopy cornerRadius];
  v10 = v9;
  fillColor = [descriptionCopy fillColor];
  v12 = fillColor;
  if (fillColor)
  {
    blackColor = fillColor;
  }

  else
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  v14 = blackColor;

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
  v22 = descriptionCopy;
  selfCopy = self;
  v16 = descriptionCopy;
  v17 = v14;
  v18 = [TVGraphicsImageRenderer imageWithSize:v15 format:v20 actions:v6, v8];

  return v18;
}

- (id)imageKeyForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if ([v5 preferedMonogramType] == 2)
  {
    firstName = [v5 firstName];
    lastName = [v5 lastName];
    text = [v5 text];
    font = [v5 font];
    fontName = [font fontName];
    fillColor = [v5 fillColor];
    v11 = fillColor;
    if (fillColor)
    {
      blackColor = fillColor;
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
    }

    v17 = blackColor;

    v38 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v35 = 0;
    [v17 getRed:&v38 green:&v37 blue:&v36 alpha:&v35];
    v18 = MEMORY[0x277CCACA8];
    if ([text length])
    {
      v19 = text;
    }

    else
    {
      v19 = firstName;
    }

    v20 = lastName;
    if ([text length])
    {
      lastName = &stru_287E12870;
    }

    [font pointSize];
    v22 = v21;
    [v5 cornerRadius];
    v23 = &off_26CE87000;
    LODWORD(v23) = vcvtad_u64_f64(v38 * 255.0);
    LODWORD(v24) = vcvtad_u64_f64(v37 * 255.0);
    LODWORD(v25) = vcvtad_u64_f64(v36 * 255.0);
    v13 = [v18 stringWithFormat:@"%@_%@_%@_%.0f_%.0f_%02X%02X%02X%.1f", v19, lastName, fontName, v22, v26, v23, v24, v25, v35];
  }

  else
  {
    if ([v5 preferedMonogramType] != 1 && objc_msgSend(v5, "preferedMonogramType"))
    {
      v13 = 0;
      goto LABEL_25;
    }

    fillColor2 = [v5 fillColor];
    v15 = fillColor2;
    if (fillColor2)
    {
      blackColor2 = fillColor2;
    }

    else
    {
      blackColor2 = [MEMORY[0x277D75348] blackColor];
    }

    firstName = blackColor2;

    v38 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v35 = 0;
    [firstName getRed:&v38 green:&v37 blue:&v36 alpha:&v35];
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

- (id)loadImageForObject:(id)object scaleToSize:(CGSize)size cropToFit:(BOOL)fit imageDirection:(int64_t)direction requestLoader:(id)loader completionHandler:(id)handler
{
  objectCopy = object;
  loaderCopy = loader;
  handlerCopy = handler;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__8;
  v32 = __Block_byref_object_dispose__8;
  v33 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objectCopy;
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
    v26 = handlerCopy;
    v18 = [v17 blockOperationWithBlock:v24];
    v19 = v29[5];
    v29[5] = v18;

    imageGeneratorQueue = [(_TVMonogramImageGenerator *)self imageGeneratorQueue];
    [imageGeneratorQueue addOperation:v29[5]];

    v21 = v25;
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVMLKitErrorDomain" code:11 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v21);
  }

  v22 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v22;
}

- (void)cancelLoad:(id)load
{
  loadCopy = load;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [loadCopy cancel];
  }
}

@end