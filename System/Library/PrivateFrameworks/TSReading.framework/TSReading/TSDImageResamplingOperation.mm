@interface TSDImageResamplingOperation
- (CGSize)desiredSize;
- (TSDImageResamplingOperation)init;
- (TSDImageResamplingOperation)initWithImageProvider:(id)provider desiredSize:(CGSize)size;
- (id)performResampleOperationWithResampleOptions:(unint64_t)options bitmapContextOptions:(unint64_t)contextOptions;
- (void)dealloc;
- (void)setMaskingPath:(CGPath *)path;
@end

@implementation TSDImageResamplingOperation

- (TSDImageResamplingOperation)initWithImageProvider:(id)provider desiredSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (!provider)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageResamplingOperation initWithImageProvider:desiredSize:]"];
    [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageResamplingOperation.m"), 47, @"Invalid parameter not satisfying: %s", "imageProvider != nil"}];
  }

  v12.receiver = self;
  v12.super_class = TSDImageResamplingOperation;
  v10 = [(TSDImageResamplingOperation *)&v12 init];
  if (v10)
  {
    v10->mImageProvider = provider;
    v10->mDesiredSize.width = width;
    v10->mDesiredSize.height = height;
  }

  return v10;
}

- (TSDImageResamplingOperation)init
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageResamplingOperation init]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageResamplingOperation.m"), 58, @"Do not call method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Do not call method", "-[TSDImageResamplingOperation init]"), 0}]);
}

- (void)dealloc
{
  mMaskingPath = self->mMaskingPath;
  if (mMaskingPath)
  {
    CFRelease(mMaskingPath);
  }

  v4.receiver = self;
  v4.super_class = TSDImageResamplingOperation;
  [(TSDImageResamplingOperation *)&v4 dealloc];
}

- (void)setMaskingPath:(CGPath *)path
{
  if (path)
  {
    CFRetain(path);
  }

  mMaskingPath = self->mMaskingPath;
  if (mMaskingPath)
  {
    CFRelease(mMaskingPath);
  }

  self->mMaskingPath = path;
}

- (id)performResampleOperationWithResampleOptions:(unint64_t)options bitmapContextOptions:(unint64_t)contextOptions
{
  contextOptionsCopy = contextOptions;
  optionsCopy = options;
  [(TSDImageProvider *)[(TSDImageResamplingOperation *)self imageProvider] naturalSize];
  v8 = v7;
  v10 = v9;
  if ([(TSDImageResamplingOperation *)self maskingPath])
  {
    [[TSDBezierPath bezierPathWithCGPath:?]];
    v119 = v12;
    v120 = v11;
    v14 = v13;
    v16 = v15;
    v17 = v15;
    v18 = v13;
  }

  else
  {
    v119 = *(MEMORY[0x277CBF3A0] + 8);
    v120 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
    v17 = v10;
    v18 = v8;
  }

  v19 = optionsCopy & 1;
  [(TSDImageResamplingOperation *)self desiredSize];
  v22 = v20;
  v23 = v21;
  v122 = v17;
  v123 = v10;
  v121 = v18;
  if ((optionsCopy & 8) == 0)
  {
    v22 = TSDFitOrFillSizeInSize(0, v18, v17, v20, v21);
    v23 = v24;
  }

  v25 = TSDCeilSize(v22);
  v27 = v26;
  if (optionsCopy)
  {
    v28 = 0.5;
  }

  else
  {
    v28 = 0.699999988;
  }

  objc_opt_class();
  [(TSDImageResamplingOperation *)self imageProvider];
  v29 = TSUDynamicCast();
  if (v29 || (v37 = [(TSDImageResamplingOperation *)self maskingPath], (optionsCopy & 2) != 0) || v37)
  {
    v124 = contextOptionsCopy;
    cGImageSource = [v29 CGImageSource];
    isrc = cGImageSource;
    if (cGImageSource)
    {
      v31 = cGImageSource;
      Status = CGImageSourceGetStatus(cGImageSource);
      v33 = Status == kCGImageStatusComplete;
      maskingPath = [(TSDImageResamplingOperation *)self maskingPath];
      if (!maskingPath && Status == kCGImageStatusComplete)
      {
        v35 = CGImageSourceCopyPropertiesAtIndex(v31, 0, 0);
        if (v35)
        {
          cf = v35;
          v36 = CFDictionaryGetValue(v35, *MEMORY[0x277CD3368]) == *MEMORY[0x277CBED28];
          v33 = 1;
          goto LABEL_25;
        }

        v33 = 1;
        goto LABEL_24;
      }
    }

    else
    {
      maskingPath = [(TSDImageResamplingOperation *)self maskingPath];
      v33 = 0;
    }

    if (maskingPath)
    {
      cf = 0;
      v36 = 1;
      goto LABEL_25;
    }

LABEL_24:
    cf = 0;
    v36 = [v29 isOpaque] ^ 1;
LABEL_25:
    stringByDeletingPathExtension = [(NSString *)[(TSDImageResamplingOperation *)self displayName] stringByDeletingPathExtension];
    if (!stringByDeletingPathExtension || (v41 = stringByDeletingPathExtension, ![(NSString *)stringByDeletingPathExtension length]))
    {
      v42 = [objc_msgSend(-[TSDImageProvider imageData](-[TSDImageResamplingOperation imageProvider](self "imageProvider")];
      if (!v42 || (v41 = v42, ![(__CFString *)v42 length]))
      {
        v41 = @"image";
      }
    }

    pathExtension = [(NSString *)[(TSDImageResamplingOperation *)self displayName] pathExtension];
    if (!pathExtension || (v44 = pathExtension, ![(NSString *)pathExtension length]))
    {
      v44 = [objc_msgSend(-[TSDImageProvider imageData](-[TSDImageResamplingOperation imageProvider](self "imageProvider")];
    }

    PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], v44, 0);
    identifier = *MEMORY[0x277CC20C8];
    v47 = UTTypeConformsTo(PreferredIdentifierForTag, *MEMORY[0x277CC20C8]);
    CFRelease(PreferredIdentifierForTag);
    if (v47)
    {
      v48 = v36;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      v49 = @"png";
    }

    else
    {
      v49 = @"jpg";
    }

    v118 = [(__CFString *)v41 stringByAppendingPathExtension:v49];
    v50 = v33;
    if (!v33)
    {
      goto LABEL_49;
    }

    maskingPath2 = [(TSDImageResamplingOperation *)self maskingPath];
    if ((optionsCopy & 0x18) != 0)
    {
      goto LABEL_49;
    }

    if (maskingPath2)
    {
      goto LABEL_49;
    }

    [(TSDImageResamplingOperation *)self desiredSize];
    if (v52 >= v8)
    {
      goto LABEL_49;
    }

    [(TSDImageResamplingOperation *)self desiredSize];
    if (v53 >= v123)
    {
      goto LABEL_49;
    }

    v116 = MEMORY[0x277CBEAC0];
    v54 = *MEMORY[0x277CD3568];
    v55 = *MEMORY[0x277CD3578];
    v56 = MEMORY[0x277CCABB0];
    [(TSDImageResamplingOperation *)self desiredSize];
    v115 = v57;
    [(TSDImageResamplingOperation *)self desiredSize];
    v117 = v8;
    v58 = v28;
    v60 = v59;
    [(TSDImageResamplingOperation *)self desiredSize];
    v63 = v115 <= v60;
    v28 = v58;
    v8 = v117;
    if (v63)
    {
      v61 = v62;
    }

    v64 = v61;
    v65 = v56;
    v50 = v33;
    v66 = [v65 numberWithUnsignedInteger:vcvtps_u32_f32(v64)];
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(isrc, 0, [v116 dictionaryWithObjectsAndKeys:{v54, MEMORY[0x277CBEC38], v55, v66, *MEMORY[0x277CD3660], 0}]);
    if (!ThumbnailAtIndex)
    {
LABEL_49:
      v70 = v124 | 2;
      if (!v36)
      {
        v70 = v124;
      }

      v71 = v70 | (4 * v19);
      if ([(TSDImageProvider *)[(TSDImageResamplingOperation *)self imageProvider] imageGamut]== 2)
      {
        v72 = v71;
      }

      else
      {
        v72 = v71 | 0x20;
      }

      v73 = TSDBitmapContextCreate(v72, v25);
      v69 = isrc;
      if (!v73)
      {
        goto LABEL_94;
      }

      v74 = v73;
      if (v19)
      {
        v75 = kCGInterpolationNone;
      }

      else
      {
        v75 = kCGInterpolationLow;
      }

      CGContextSetInterpolationQuality(v73, v75);
      if (v36)
      {
        v25 = v22;
        v27 = v23;
      }

      if ([(TSDImageResamplingOperation *)self maskingPath])
      {
        if (v14 <= 0.0)
        {
          v76 = 1.0;
        }

        else
        {
          v76 = v25 / v14;
        }

        memset(&transform.c, 0, 32);
        if (v16 <= 0.0)
        {
          v77 = 1.0;
        }

        else
        {
          v77 = v27 / v16;
        }

        *&transform.a = 0uLL;
        CGAffineTransformMakeScale(&transform, v76, v77);
        maskingPath3 = [(TSDImageResamplingOperation *)self maskingPath];
        v131 = transform;
        v79 = TSDCreateTransformedPath(maskingPath3, &v131);
        CGContextTranslateCTM(v74, -(v120 * v76), -(v119 * v77));
        CGContextAddPath(v74, v79);
        CGContextClip(v74);
        CGPathRelease(v79);
        v25 = v8 * v76;
        v27 = v123 * v77;
      }

      if (isrc && ((Type = CGImageSourceGetType(isrc), v121 / v25 <= v122 / v27) ? (v81 = v122 / v27) : (v81 = v121 / v25), [v29 isValid] && ((v82 = CFEqual(Type, identifier), v81 >= 2.0) ? (v83 = v82 == 0) : (v83 = 1), !v83)))
      {
        if (v81 >= 8.0)
        {
          v103 = v28;
          v104 = 8;
        }

        else
        {
          v103 = v28;
          v104 = v81 >= 4.0 ? 4 : 2;
        }

        ImageAtIndex = CGImageSourceCreateImageAtIndex(isrc, 0, [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v104), @"kCGImageSourceSubsampleFactor", 0}]);
        v106 = TSDRectWithSize();
        v108 = v107;
        v110 = v109;
        v112 = v111;
        CGContextSaveGState(v74);
        v134.origin.x = v106;
        v134.origin.y = v108;
        v134.size.width = v110;
        v134.size.height = v112;
        MinY = CGRectGetMinY(v134);
        v135.origin.x = v106;
        v135.origin.y = v108;
        v135.size.width = v110;
        v135.size.height = v112;
        MaxY = CGRectGetMaxY(v135);
        CGContextTranslateCTM(v74, 0.0, MinY + MaxY);
        CGContextScaleCTM(v74, 1.0, -1.0);
        [v29 orientation];
        TSUImageOrientationTransform();
        CGContextConcatCTM(v74, &transform);
        v136.origin.x = v106;
        v136.origin.y = v108;
        v136.size.width = v110;
        v136.size.height = v112;
        CGContextDrawImage(v74, v136, ImageAtIndex);
        CFRelease(ImageAtIndex);
        CGContextRestoreGState(v74);
        v28 = v103;
      }

      else
      {
        [(TSDImageProvider *)[(TSDImageResamplingOperation *)self imageProvider] drawImageInContext:v74 rect:TSDRectWithSize()];
      }

      Image = CGBitmapContextCreateImage(v74);
      CGContextRelease(v74);
      if (!Image)
      {
LABEL_94:
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v99 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageResamplingOperation performResampleOperationWithResampleOptions:bitmapContextOptions:]"];
        [currentHandler handleFailureInFunction:v99 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageResamplingOperation.m"), 276, @"invalid nil value for '%s'", "resampledImage"}];
        v100 = 0;
LABEL_99:
        if (cf)
        {
          CFRelease(cf);
        }

        return v100;
      }
    }

    else
    {
      Image = ThumbnailAtIndex;
      v69 = isrc;
    }

    v84 = objc_alloc_init(MEMORY[0x277CBEB28]);
    if (v48)
    {
      identifier = [*MEMORY[0x277CE1E10] identifier];
    }

    v85 = CGImageDestinationCreateWithData(v84, identifier, 1uLL, 0);
    if (v85)
    {
      v86 = v85;
      v87 = MEMORY[0x277CBEAC0];
      v88 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
      CGImageDestinationSetProperties(v86, [v87 dictionaryWithObjectsAndKeys:{v88, *MEMORY[0x277CD2D48], 0}]);
      v89 = 0;
      transform.a = 0.0;
      *&transform.b = &transform;
      *&transform.c = 0x2020000000;
      transform.d = 0.0;
      if (v50)
      {
        v89 = CGImageSourceCopyPropertiesAtIndex(v69, 0, 0);
        v127[0] = MEMORY[0x277D85DD0];
        v127[1] = 3221225472;
        v128 = __96__TSDImageResamplingOperation_performResampleOperationWithResampleOptions_bitmapContextOptions___block_invoke;
        v129 = &unk_279D48250;
        p_transform = &transform;
        v90 = *MEMORY[0x277CD2F30];
        if (CFDictionaryContainsKey(v89, *MEMORY[0x277CD2F30]))
        {
          v128(v127);
          v91 = *(*&transform.b + 24);
          Value = CFDictionaryGetValue(v89, v90);
          CFDictionaryAddValue(v91, v90, Value);
        }

        v93 = *MEMORY[0x277CD2F28];
        if (CFDictionaryContainsKey(v89, *MEMORY[0x277CD2F28]))
        {
          v128(v127);
          v94 = *(*&transform.b + 24);
          v95 = CFDictionaryGetValue(v89, v93);
          CFDictionaryAddValue(v94, v93, v95);
        }
      }

      CGImageDestinationAddImage(v86, Image, *(*&transform.b + 24));
      if (v89)
      {
        CFRelease(v89);
      }

      v96 = *(*&transform.b + 24);
      if (v96)
      {
        CFRelease(v96);
      }

      CGImageDestinationFinalize(v86);
      CFRelease(v86);
      if ([(TSDImageResamplingOperation *)self objectContext])
      {
        v97 = [TSPData dataFromNSData:v84 filename:v118 context:[(TSDImageResamplingOperation *)self objectContext]];
      }

      else
      {
        v97 = [TSPData readOnlyDataFromNSData:v84 filename:v118 context:0];
      }

      v100 = v97;
      CFRelease(Image);
      _Block_object_dispose(&transform, 8);
    }

    else
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v102 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDImageResamplingOperation performResampleOperationWithResampleOptions:bitmapContextOptions:]"];
      [currentHandler2 handleFailureInFunction:v102 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDImageResamplingOperation.m"), 282, @"invalid nil value for '%s'", "destination"}];
      v100 = 0;
    }

    goto LABEL_99;
  }

  imageProvider = [(TSDImageResamplingOperation *)self imageProvider];

  return [(TSDImageProvider *)imageProvider imageData];
}

CFMutableDictionaryRef __96__TSDImageResamplingOperation_performResampleOperationWithResampleOptions_bitmapContextOptions___block_invoke(CFMutableDictionaryRef result)
{
  if (!*(*(*(result + 4) + 8) + 24))
  {
    v1 = result;
    result = CFDictionaryCreateMutable(0, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(*(*(v1 + 4) + 8) + 24) = result;
  }

  return result;
}

- (CGSize)desiredSize
{
  width = self->mDesiredSize.width;
  height = self->mDesiredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end