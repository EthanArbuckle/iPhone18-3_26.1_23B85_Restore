@interface STKStickerMetadataUtilities
+ (id)encodeCGImage:(CGImage *)image withStickerEffectType:(unint64_t)type;
+ (id)encodeCGImageSource:(CGImageSource *)source withStickerEffectType:(unint64_t)type;
+ (id)encodeImage:(id)image withStickerEffectType:(unint64_t)type;
+ (id)encodeImageData:(id)data withStickerEffectType:(unint64_t)type;
+ (id)stringFromStickerEffectType:(unint64_t)type;
+ (int64_t)effectTypeForStickerEffectView:(id)view;
+ (unint64_t)stickerEffectTypeFromImageData:(id)data;
+ (unint64_t)stickerEffectTypeFromString:(id)string;
+ (void)clearCachedPreviewsForStickerView:(id)view;
+ (void)playSettlingAnimation:(id)animation;
+ (void)setBoundsIncludeStroke:(BOOL)stroke effectView:(id)view;
+ (void)stickerEffect:(id)effect applyWithWideStrokeToImage:(id)image completion:(id)completion;
@end

@implementation STKStickerMetadataUtilities

+ (id)encodeImageData:(id)data withStickerEffectType:(unint64_t)type
{
  v6 = CGImageSourceCreateWithData(data, 0);
  v7 = [self encodeCGImageSource:v6 withStickerEffectType:type];
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

+ (id)encodeImage:(id)image withStickerEffectType:(unint64_t)type
{
  imageCopy = image;
  cGImage = [image CGImage];

  return [self encodeCGImage:cGImage withStickerEffectType:type];
}

+ (id)encodeCGImage:(CGImage *)image withStickerEffectType:(unint64_t)type
{
  DataProvider = CGImageGetDataProvider(image);
  v7 = CGImageSourceCreateWithDataProvider(DataProvider, 0);
  v8 = [self encodeCGImageSource:v7 withStickerEffectType:type];
  if (v7)
  {
    CFRelease(v7);
  }

  return v8;
}

+ (id)encodeCGImageSource:(CGImageSource *)source withStickerEffectType:(unint64_t)type
{
  v7 = CGImageSourceCopyMetadataAtIndex(source, 0, 0);
  if (v7)
  {
    v8 = v7;
    MutableCopy = CGImageMetadataCreateMutableCopy(v7);
    CFRelease(v8);
  }

  else
  {
    MutableCopy = CGImageMetadataCreateMutable();
  }

  err = 0;
  v10 = [self stringFromStickerEffectType:type];
  if (CGImageMetadataRegisterNamespaceForPrefix(MutableCopy, @"http://ns.apple.com/Stickers/1.0/", @"stickerEffect", &err))
  {
    v11 = CGImageMetadataTagCreate(@"http://ns.apple.com/Stickers/1.0/", @"stickerEffect", @"stickerEffect", kCGImageMetadataTypeString, v10);
    Mutable = 0;
    if (CGImageMetadataSetTagWithPath(MutableCopy, 0, @"stickerEffect:type", v11))
    {
      Mutable = CFDataCreateMutable(0, 0);
      identifier = [*MEMORY[0x277CE1D90] identifier];
      v14 = CGImageDestinationCreateWithData(Mutable, identifier, 1uLL, 0);

      ImageAtIndex = CGImageSourceCreateImageAtIndex(source, 0, 0);
      CGImageDestinationAddImageAndMetadata(v14, ImageAtIndex, MutableCopy, 0);
      CGImageDestinationFinalize(v14);
      if (ImageAtIndex)
      {
        CFRelease(ImageAtIndex);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_26BA33000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Successfully added sticker metadata", v17, 2u);
      }
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26BA33000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to crate XMP Tag for sticker metadata", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_26BA33000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to set XMP Tag for sticker metadata", v18, 2u);
    }

    Mutable = 0;
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return Mutable;
}

+ (unint64_t)stickerEffectTypeFromImageData:(id)data
{
  v4 = CGImageSourceCreateWithData(data, 0);
  v5 = CGImageSourceCopyMetadataAtIndex(v4, 0, 0);
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_26BA33000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unable to get metadata object while trying to get sticker effect type", v15, 2u);
    }

    v10 = 0;
    if (v4)
    {
      goto LABEL_16;
    }

    return v10;
  }

  v6 = v5;
  v7 = CGImageMetadataCopyTagWithPath(v5, 0, @"stickerEffect:type");
  if (v7)
  {
    v8 = v7;
    v9 = CGImageMetadataTagCopyValue(v7);
    CFRelease(v8);
    if (v9)
    {
      v10 = [self stickerEffectTypeFromString:v9];
      CFRelease(v9);
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = MEMORY[0x277D86220];
      v12 = "Metadata exists, but no value found for sticker effect type";
      v13 = buf;
      goto LABEL_13;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "Unable to get metadata tag for sticker effect type";
    v13 = &v17;
LABEL_13:
    _os_log_impl(&dword_26BA33000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
  }

  v10 = 0;
LABEL_15:
  CFRelease(v6);
  if (v4)
  {
LABEL_16:
    CFRelease(v4);
  }

  return v10;
}

+ (id)stringFromStickerEffectType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return @"none";
  }

  else
  {
    return off_279D14420[type - 1];
  }
}

+ (unint64_t)stickerEffectTypeFromString:(id)string
{
  lowercaseString = [string lowercaseString];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [lowercaseString stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v5 isEqualToString:@"none"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"stroke"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"comic"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"puffy"])
  {
    v6 = 3;
  }

  else if ([v5 isEqualToString:@"iridescent"])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)playSettlingAnimation:(id)animation
{
  animationCopy = animation;
  if (objc_opt_respondsToSelector())
  {
    [animationCopy playSettlingAnimation];
  }
}

+ (void)clearCachedPreviewsForStickerView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    [viewCopy clearCachedPreviewsForCurrentSticker];
  }
}

+ (void)setBoundsIncludeStroke:(BOOL)stroke effectView:(id)view
{
  strokeCopy = stroke;
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    [viewCopy setBoundsIncludeStroke:strokeCopy];
  }
}

+ (int64_t)effectTypeForStickerEffectView:(id)view
{
  viewCopy = view;
  effect = [viewCopy effect];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    effect2 = [viewCopy effect];
    type = [effect2 type];
  }

  else
  {
    type = 0;
  }

  return type;
}

+ (void)stickerEffect:(id)effect applyWithWideStrokeToImage:(id)image completion:(id)completion
{
  effectCopy = effect;
  imageCopy = image;
  completionCopy = completion;
  v10 = objc_opt_respondsToSelector();
  if (v10)
  {
    [effectCopy setForceSmallStrokeRadiusMultiplier:1];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__STKStickerMetadataUtilities_stickerEffect_applyWithWideStrokeToImage_completion___block_invoke;
  v13[3] = &unk_279D14400;
  v16 = v10 & 1;
  v14 = effectCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = effectCopy;
  [v12 applyToImage:imageCopy completion:v13];
}

void __83__STKStickerMetadataUtilities_stickerEffect_applyWithWideStrokeToImage_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) setForceSmallStrokeRadiusMultiplier:0];
  }

  (*(*(a1 + 40) + 16))();
}

@end