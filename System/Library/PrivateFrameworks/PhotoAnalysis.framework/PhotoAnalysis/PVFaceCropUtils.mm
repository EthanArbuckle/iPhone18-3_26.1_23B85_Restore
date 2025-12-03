@interface PVFaceCropUtils
+ (BOOL)isValidFaceCrop:(id)crop;
+ (CGImageMetadata)createOutputMetadataFromDictionary:(id)dictionary;
+ (CGRect)cropBoundsInOriginalImageFromFaceCrop:(id)crop error:(id *)error;
+ (CGRect)faceBoundsFromFaceCrop:(id)crop error:(id *)error;
+ (CGSize)faceCropDimensionsFromFaceCrop:(id)crop error:(id *)error;
+ (id)groupingIdentifierFromFaceCrop:(id)crop error:(id *)error;
+ (id)newDictionaryPopulatedWithFaceCropDataFromImageData:(id)data;
+ (id)newDictionaryRepresentationOfFaceCropDataFromFaceBox:(CGRect)box andCropRegion:(CGRect)region andGroupingIdentifier:(id)identifier;
+ (id)newDictionaryWithCGImageSourceOptions;
+ (id)newFaceCropFromCGImageSource:(const CGImageSource *)source withFaceRect:(CGRect)rect groupingIdentifier:(id)identifier error:(id *)error;
+ (id)newFaceCropFromImageData:(id)data withFaceRect:(CGRect)rect groupingIdentifier:(id)identifier error:(id *)error;
+ (id)newFaceCropFromImageURL:(id)l withFaceRect:(CGRect)rect groupingIdentifier:(id)identifier error:(id *)error;
@end

@implementation PVFaceCropUtils

+ (CGSize)faceCropDimensionsFromFaceCrop:(id)crop error:(id *)error
{
  cropCopy = crop;
  v6 = objc_autoreleasePoolPush();
  if (([self isValidFaceCrop:cropCopy] & 1) == 0)
  {
    v13 = @"the supplied data is not a facecrop";
    goto LABEL_7;
  }

  v7 = +[PVFaceCropUtils newDictionaryWithCGImageSourceOptions];
  v8 = CGImageSourceCreateWithData(cropCopy, v7);

  if (!v8)
  {
    v13 = @"could not create an image source";
LABEL_7:
    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:v13 userInfo:0];
    objc_exception_throw(v14);
  }

  v18 = -1;
  v16 = 0;
  v17 = 0;
  if ((getImagePropertiesFromCGImageSource(v8, &v18, &v17, &v16) & 1) == 0)
  {
    v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Could not retrieve image properties" userInfo:0];
    objc_exception_throw(v15);
  }

  v9 = v17;
  v10 = v16;
  CFRelease(v8);
  objc_autoreleasePoolPop(v6);

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (id)groupingIdentifierFromFaceCrop:(id)crop error:(id *)error
{
  cropCopy = crop;
  v5 = objc_autoreleasePoolPush();
  v6 = [PVFaceCropUtils newDictionaryPopulatedWithFaceCropDataFromImageData:cropCopy];
  v7 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"invalid face crop supplied" userInfo:0];
    objc_exception_throw(v10);
  }

  v8 = [v6 objectForKeyedSubscript:@"PVFC_GID"];

  objc_autoreleasePoolPop(v5);

  return v8;
}

+ (CGRect)cropBoundsInOriginalImageFromFaceCrop:(id)crop error:(id *)error
{
  cropCopy = crop;
  v5 = *(MEMORY[0x277CBF398] + 16);
  rect.origin = *MEMORY[0x277CBF398];
  rect.size = v5;
  v6 = objc_autoreleasePoolPush();
  v7 = [PVFaceCropUtils newDictionaryPopulatedWithFaceCropDataFromImageData:cropCopy];
  v8 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"invalid face crop supplied" userInfo:0];
    objc_exception_throw(v15);
  }

  v9 = [v7 objectForKeyedSubscript:@"PVFC_CB"];
  v10 = v9;
  if (v9)
  {
    CGRectMakeWithDictionaryRepresentation(v9, &rect);
  }

  objc_autoreleasePoolPop(v6);
  x = rect.origin.x;
  y = rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (CGRect)faceBoundsFromFaceCrop:(id)crop error:(id *)error
{
  cropCopy = crop;
  v5 = *(MEMORY[0x277CBF398] + 16);
  rect.origin = *MEMORY[0x277CBF398];
  rect.size = v5;
  v6 = objc_autoreleasePoolPush();
  v7 = [PVFaceCropUtils newDictionaryPopulatedWithFaceCropDataFromImageData:cropCopy];
  v8 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"invalid face crop supplied" userInfo:0];
    objc_exception_throw(v15);
  }

  v9 = [v7 objectForKeyedSubscript:@"PVFC_FB"];
  v10 = v9;
  if (v9)
  {
    CGRectMakeWithDictionaryRepresentation(v9, &rect);
  }

  objc_autoreleasePoolPop(v6);
  x = rect.origin.x;
  y = rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (BOOL)isValidFaceCrop:(id)crop
{
  cropCopy = crop;
  v5 = objc_autoreleasePoolPush();
  v6 = [PVFaceCropUtils newDictionaryPopulatedWithFaceCropDataFromImageData:cropCopy];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"PVFC_VER"];
    v9 = [v8 isEqualToNumber:&unk_2844CC318];
    if ((v9 & 1) != 0 || ([v7 objectForKeyedSubscript:@"PVFC_VER"], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToNumber:", &unk_2844CC330)))
    {
      v10 = [v7 objectForKeyedSubscript:@"PVFC_FB"];
      if (v10)
      {
        v11 = [v7 objectForKeyedSubscript:@"PVFC_CB"];
        v12 = v11 != 0;
      }

      else
      {
        v12 = 0;
      }

      if (v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_12:
    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:

  objc_autoreleasePoolPop(v5);
  return v12;
}

+ (id)newFaceCropFromImageData:(id)data withFaceRect:(CGRect)rect groupingIdentifier:(id)identifier error:(id *)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  identifierCopy = identifier;
  v14 = objc_autoreleasePoolPush();
  if (!dataCopy)
  {
    v21 = @"image data is nil";
    goto LABEL_9;
  }

  v15 = +[PVFaceCropUtils newDictionaryWithCGImageSourceOptions];
  v16 = CGImageSourceCreateWithData(dataCopy, v15);

  if (!v16)
  {
    v21 = @"Could not create image source from data";
LABEL_9:
    v22 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:v21 userInfo:0];
    objc_exception_throw(v22);
  }

  v23 = 0;
  height = [PVFaceCropUtils newFaceCropFromCGImageSource:v16 withFaceRect:identifierCopy groupingIdentifier:&v23 error:x, y, width, height];
  v18 = v23;
  CFRelease(v16);
  objc_autoreleasePoolPop(v14);
  if (error && v18)
  {
    v19 = v18;
    *error = v18;
  }

  return height;
}

+ (id)newFaceCropFromImageURL:(id)l withFaceRect:(CGRect)rect groupingIdentifier:(id)identifier error:(id *)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  lCopy = l;
  identifierCopy = identifier;
  v14 = objc_autoreleasePoolPush();
  if (!lCopy)
  {
    v21 = @"image url is nil";
    goto LABEL_9;
  }

  v15 = +[PVFaceCropUtils newDictionaryWithCGImageSourceOptions];
  v16 = CGImageSourceCreateWithURL(lCopy, v15);

  if (!v16)
  {
    v21 = @"Could not create image source from URL";
LABEL_9:
    v22 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:v21 userInfo:0];
    objc_exception_throw(v22);
  }

  v23 = 0;
  height = [PVFaceCropUtils newFaceCropFromCGImageSource:v16 withFaceRect:identifierCopy groupingIdentifier:&v23 error:x, y, width, height];
  v18 = v23;
  CFRelease(v16);
  objc_autoreleasePoolPop(v14);
  if (error && v18)
  {
    v19 = v18;
    *error = v18;
  }

  return height;
}

+ (id)newFaceCropFromCGImageSource:(const CGImageSource *)source withFaceRect:(CGRect)rect groupingIdentifier:(id)identifier error:(id *)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v50[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  context = objc_autoreleasePoolPush();
  if (!source)
  {
    v38 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"unexpected nil image source" userInfo:0];
    objc_exception_throw(v38);
  }

  v48 = -1;
  v46 = 0;
  v47 = 0;
  if ((getImagePropertiesFromCGImageSource(source, &v48, &v47, &v46) & 1) == 0)
  {
    v37 = @"invalid image source";
LABEL_29:
    v39 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:v37 userInfo:0];
    objc_exception_throw(v39);
  }

  if (!(width + 0.5) || !(height + 0.5))
  {
    v37 = @"zero dimensioned face rect submitted";
    goto LABEL_29;
  }

  v12 = v47;
  if (x < 0.0 || y < 0.0)
  {
    v13 = v46;
LABEL_14:
    v54.size.width = v47;
    v54.size.height = v13;
    v54.origin.x = 0.0;
    v54.origin.y = 0.0;
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v52 = CGRectIntersection(v51, v54);
    x = v52.origin.x;
    width = v52.size.width;
    v13 = v46;
    v12 = v47;
    goto LABEL_15;
  }

  v13 = v46;
  if (v47 < (width + x + 0.5) || v46 < (height + y + 0.5))
  {
    goto LABEL_14;
  }

LABEL_15:
  v53.origin.x = makeRectWithAllIntegers(x + width * 0.5 - (width + width) * 0.5);
  v55.size.width = v12;
  v55.size.height = v13;
  v55.origin.x = 0.0;
  v55.origin.y = 0.0;
  *&v15 = CGRectIntersection(v53, v55);
  RectWithAllIntegers = makeRectWithAllIntegers(v15);
  v20 = v19;
  v21 = v16;
  v22 = v17;
  if (v16 >= v17)
  {
    v23 = v16;
  }

  else
  {
    v23 = v17;
  }

  if (v23 <= 256.0)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 256.0 / v23;
  }

  v25 = makeRectWithAllIntegers((x - RectWithAllIntegers) * v24);
  v27 = v26;
  v44 = v28;
  v30 = v29;
  OrientedCroppedAndScaledImageFromCGImageSource = createOrientedCroppedAndScaledImageFromCGImageSource(source, RectWithAllIntegers, v20, v21, v22, v24);
  if (!OrientedCroppedAndScaledImageFromCGImageSource)
  {
    v40 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"could not create cropped face crop image" userInfo:0];
    objc_exception_throw(v40);
  }

  v32 = [PVFaceCropUtils newDictionaryRepresentationOfFaceCropDataFromFaceBox:identifierCopy andCropRegion:v25 andGroupingIdentifier:v27, v44, v30, RectWithAllIntegers, v20, v21, v22];
  v33 = [PVFaceCropUtils createOutputMetadataFromDictionary:v32];
  if (!v33)
  {
    v41 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"could not create face crop metadata" userInfo:0];
    objc_exception_throw(v41);
  }

  data = [MEMORY[0x277CBEB28] data];
  v35 = CGImageDestinationCreateWithData(data, @"public.jpeg", 1uLL, 0);
  if (!v35)
  {
    v42 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"could not create face crop data" userInfo:0];
    objc_exception_throw(v42);
  }

  v49 = *MEMORY[0x277CD2D48];
  v50[0] = &unk_2844CC2C0;
  CGImageDestinationAddImageAndMetadata(v35, OrientedCroppedAndScaledImageFromCGImageSource, v33, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1]);
  if (!CGImageDestinationFinalize(v35))
  {
    v43 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"could not write face crop data" userInfo:0];
    objc_exception_throw(v43);
  }

  CGImageRelease(OrientedCroppedAndScaledImageFromCGImageSource);
  CFRelease(v33);
  CFRelease(v35);
  objc_autoreleasePoolPop(context);

  return data;
}

+ (id)newDictionaryWithCGImageSourceOptions
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD3678];
  v4[0] = *MEMORY[0x277CD3618];
  v4[1] = v2;
  v5[0] = MEMORY[0x277CBEC28];
  v5[1] = MEMORY[0x277CBEC28];
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  return objc_claimAutoreleasedReturnValue();
}

+ (id)newDictionaryRepresentationOfFaceCropDataFromFaceBox:(CGRect)box andCropRegion:(CGRect)region andGroupingIdentifier:(id)identifier
{
  height = region.size.height;
  width = region.size.width;
  y = region.origin.y;
  x = region.origin.x;
  v9 = box.size.height;
  v10 = box.size.width;
  v11 = box.origin.y;
  v12 = box.origin.x;
  identifierCopy = identifier;
  v14 = objc_opt_new();
  [v14 setObject:&unk_2844CC318 forKey:@"PVFC_VER"];
  v18.origin.x = v12;
  v18.origin.y = v11;
  v18.size.width = v10;
  v18.size.height = v9;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v18);
  [v14 setObject:DictionaryRepresentation forKey:@"PVFC_FB"];

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v16 = CGRectCreateDictionaryRepresentation(v19);
  [v14 setObject:v16 forKey:@"PVFC_CB"];

  [v14 setObject:&unk_2844CC318 forKey:@"PVFC_VER"];
  if (identifierCopy)
  {
    [v14 setObject:identifierCopy forKey:@"PVFC_GID"];
  }

  return v14;
}

+ (id)newDictionaryPopulatedWithFaceCropDataFromImageData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = CGImageSourceCreateWithData(dataCopy, 0);
    v6 = v5;
    if (!v5)
    {
      v16 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Could not create image source" userInfo:0];
      objc_exception_throw(v16);
    }

    v7 = CGImageSourceCopyMetadataAtIndex(v5, 0, 0);
    v8 = v7;
    if (!v7)
    {
      v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"No meta data exists on image" userInfo:0];
      objc_exception_throw(v17);
    }

    v9 = CGImageMetadataCopyStringValueWithPath(v7, 0, @"PVFC:PVFC");
    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x277CCAAA0];
      v12 = [(__CFString *)v9 dataUsingEncoding:4];
      v13 = [v11 JSONObjectWithData:v12 options:1 error:0];
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v8);
    v14 = v13;
    if (v6)
    {
      CFRelease(v6);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (CGImageMetadata)createOutputMetadataFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_autoreleasePoolPush();
  Mutable = CGImageMetadataCreateMutable();
  if (!CGImageMetadataSetValueWithPath(Mutable, 0, @"tiff:Orientation", @"1"))
  {
    v9 = @"Could not set output orientation";
    goto LABEL_9;
  }

  if (!CGImageMetadataRegisterNamespaceForPrefix(Mutable, @"com.apple/PhotoVision/FaceCrop/", @"PVFC", 0))
  {
    v9 = @"Could not register face crop namespace";
LABEL_9:
    v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:v9 userInfo:0];
    objc_exception_throw(v10);
  }

  v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryCopy options:1 error:0];
  if (!v6)
  {
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Could not generate serialized metadata representation" userInfo:0];
    objc_exception_throw(v11);
  }

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
  if (!v7)
  {
    v12 = @"Could not convert metadata representation into serialized format";
    goto LABEL_13;
  }

  if (!CGImageMetadataSetValueWithPath(Mutable, 0, @"PVFC:PVFC", v7))
  {
    v12 = @"Could not set face crop metadata";
LABEL_13:
    v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:v12 userInfo:0];
    objc_exception_throw(v13);
  }

  objc_autoreleasePoolPop(v4);
  return Mutable;
}

@end