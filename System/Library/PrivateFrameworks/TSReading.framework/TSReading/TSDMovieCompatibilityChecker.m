@interface TSDMovieCompatibilityChecker
- (BOOL)p_assetHasSupportedFileTypeOnAllDevices;
- (BOOL)p_isAudioTrackPlayableOnAllDevices:(id)a3;
- (BOOL)p_isH263VideoFormatPlayableOnAllDevices:(opaqueCMFormatDescription *)a3;
- (BOOL)p_isH264VideoFormatPlayableOnAllDevices:(opaqueCMFormatDescription *)a3;
- (BOOL)p_isLoadedAssetPlayableOnAllDevices;
- (BOOL)p_isMPEG4VideoFormatPlayableOnAllDevices:(opaqueCMFormatDescription *)a3;
- (BOOL)p_isVideoTrackPlayableOnAllDevices:(id)a3;
- (TSDMovieCompatibilityChecker)initWithAsset:(id)a3;
- (id)p_sampleDescriptionExtensionAtomDataFromVideoFormatDescription:(opaqueCMFormatDescription *)a3 forAtomType:(id)a4;
- (void)checkCompatibilityUpToLevel:(int64_t)a3 completionHandler:(id)a4;
- (void)checkCustomCompatibilityWithVideoCodecTypes:(id)a3 maxPlayableVideoDimensions:(CGSize)a4 maxPlayableVideoPixelsPerFrame:(int)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)p_didFinishCheckingCompatibilityUpToLevel:(int64_t)a3 actualLevel:(int64_t)a4 didCancel:(BOOL)a5 error:(id)a6 completionHandler:(id)a7;
@end

@implementation TSDMovieCompatibilityChecker

- (TSDMovieCompatibilityChecker)initWithAsset:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieCompatibilityChecker initWithAsset:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieCompatibilityChecker.m"), 60, @"invalid nil value for '%s'", "asset"}];
  }

  v9.receiver = self;
  v9.super_class = TSDMovieCompatibilityChecker;
  v7 = [(TSDMovieCompatibilityChecker *)&v9 init];
  if (v7)
  {
    v7->mAsset = a3;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDMovieCompatibilityChecker;
  [(TSDMovieCompatibilityChecker *)&v3 dealloc];
}

- (void)checkCompatibilityUpToLevel:(int64_t)a3 completionHandler:(id)a4
{
  if (a3 <= 1)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieCompatibilityChecker checkCompatibilityUpToLevel:completionHandler:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieCompatibilityChecker.m"), 87, @"Invalid parameter not satisfying: %s", "maxDesiredCompatibilityLevel > TSDMovieCompatibilityLevelNone"}];
  }

  mAsset = self->mAsset;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__TSDMovieCompatibilityChecker_checkCompatibilityUpToLevel_completionHandler___block_invoke;
  v10[3] = &unk_279D49340;
  v10[5] = a4;
  v10[6] = a3;
  v10[4] = self;
  [(AVAsset *)mAsset loadValuesAsynchronouslyForKeys:&unk_287DDCB58 completionHandler:v10];
}

void __78__TSDMovieCompatibilityChecker_checkCompatibilityUpToLevel_completionHandler___block_invoke(uint64_t a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v30 = 0;
  v2 = [*(*(a1 + 32) + 8) statusOfValueForKey:@"hasProtectedContent" error:&v30];
  if (v2 == 2)
  {
    if ([*(*(a1 + 32) + 8) hasProtectedContent])
    {
      v4 = [+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")];
      objc_opt_class();
      v5 = TSUDynamicCast();
      if (!v5)
      {
        v6 = [MEMORY[0x277D6C290] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieCompatibilityChecker checkCompatibilityUpToLevel:completionHandler:]_block_invoke"];
        [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieCompatibilityChecker.m"), 112, @"invalid nil value for '%s'", "URLAsset"}];
      }

      v8 = [v5 URL];
      v29 = 0;
      [v8 getResourceValue:&v29 forKey:*MEMORY[0x277CBE8D0] error:0];
      if (!v29)
      {
        v29 = [objc_msgSend(v5 "URL")];
      }

      if ([v4 isEqualToString:@"Keynote"])
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = [TSDBundle() localizedStringForKey:@"The media file \\U201C%@\\U201D is copy protected. You don\\U2019t have permission to use it in Keynote." value:&stru_287D36338 table:@"TSDrawables"];
      }

      else if ([v4 isEqualToString:@"Numbers"])
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = [TSDBundle() localizedStringForKey:@"The media file \\U201C%@\\U201D is copy protected. You don\\U2019t have permission to use it in Numbers." value:&stru_287D36338 table:@"TSDrawables"];
      }

      else
      {
        if (![v4 isEqualToString:@"Pages"])
        {
          v25 = [MEMORY[0x277D6C290] currentHandler];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieCompatibilityChecker checkCompatibilityUpToLevel:completionHandler:]_block_invoke"];
          [v25 handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieCompatibilityChecker.m"), 130, @"Unknown application name!"}];
          v20 = 0;
          goto LABEL_25;
        }

        v9 = MEMORY[0x277CCACA8];
        v10 = [TSDBundle() localizedStringForKey:@"The media file \\U201C%@\\U201D is copy protected. You don\\U2019t have permission to use it in Pages." value:&stru_287D36338 table:@"TSDrawables"];
      }

      v20 = [v9 stringWithFormat:v10, v29];
LABEL_25:
      v35 = *MEMORY[0x277CCA450];
      v36[0] = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.iWork.TSDErrorDomainMovieCompatibility" code:99 userInfo:v21];
      v3 = 0;
      v30 = v22;
      goto LABEL_3;
    }

    v32[3] = 1;
    v29 = 0;
    v11 = [*(*(a1 + 32) + 8) statusOfValueForKey:@"playable" error:&v29];
    if (v11 != 2)
    {
      if (v11 == 4)
      {
        v12 = v32[3];
        v13 = 1;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v32[3] = 0;
      }

      goto LABEL_29;
    }

    if ([*(*(a1 + 32) + 8) isPlayable])
    {
      v14 = v32;
      v12 = 2;
      v32[3] = 2;
      if (*(a1 + 48) < 3 || (v12 = 3, v14[3] = 3, v15 = *(a1 + 48), v15 < 4))
      {
        v13 = 0;
LABEL_29:
        [*(a1 + 32) p_didFinishCheckingCompatibilityUpToLevel:*(a1 + 48) actualLevel:v12 didCancel:v13 error:v29 completionHandler:*(a1 + 40)];
        goto LABEL_4;
      }

      v16 = *(a1 + 32);
      v17 = *(v16 + 8);
      v18 = v28;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __78__TSDMovieCompatibilityChecker_checkCompatibilityUpToLevel_completionHandler___block_invoke_2;
      v28[3] = &unk_279D49318;
      v28[4] = v16;
      v28[6] = &v31;
      v28[7] = v15;
      v19 = &unk_287DDCB70;
    }

    else
    {
      v23 = *(a1 + 32);
      v17 = *(v23 + 8);
      v18 = v27;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __78__TSDMovieCompatibilityChecker_checkCompatibilityUpToLevel_completionHandler___block_invoke_3;
      v27[3] = &unk_279D49318;
      v27[4] = v23;
      v24 = *(a1 + 48);
      v27[6] = &v31;
      v27[7] = v24;
      v19 = &unk_287DDCB88;
    }

    v18[5] = *(a1 + 40);
    [v17 loadValuesAsynchronouslyForKeys:v19 completionHandler:?];
    goto LABEL_4;
  }

  v3 = v2 == 4;
LABEL_3:
  [*(a1 + 32) p_didFinishCheckingCompatibilityUpToLevel:*(a1 + 48) actualLevel:v32[3] didCancel:v3 error:v30 completionHandler:*(a1 + 40)];
LABEL_4:
  _Block_object_dispose(&v31, 8);
}

uint64_t __78__TSDMovieCompatibilityChecker_checkCompatibilityUpToLevel_completionHandler___block_invoke_2(uint64_t a1)
{
  v6 = 0;
  v2 = [*(*(a1 + 32) + 8) statusOfValueForKey:@"tracks" error:&v6];
  if (v2 == 4)
  {
    v4 = 1;
  }

  else
  {
    v3 = 0;
    if (v2 == 2)
    {
      if (![*(a1 + 32) p_isLoadedAssetPlayableOnAllDevices])
      {
        v4 = 0;
        return [*(a1 + 32) p_didFinishCheckingCompatibilityUpToLevel:*(a1 + 56) actualLevel:*(*(*(a1 + 48) + 8) + 24) didCancel:v4 error:v6 completionHandler:*(a1 + 40)];
      }

      v3 = *(a1 + 56);
    }

    v4 = 0;
    *(*(*(a1 + 48) + 8) + 24) = v3;
  }

  return [*(a1 + 32) p_didFinishCheckingCompatibilityUpToLevel:*(a1 + 56) actualLevel:*(*(*(a1 + 48) + 8) + 24) didCancel:v4 error:v6 completionHandler:*(a1 + 40)];
}

uint64_t __78__TSDMovieCompatibilityChecker_checkCompatibilityUpToLevel_completionHandler___block_invoke_3(uint64_t a1)
{
  v5 = 0;
  v2 = [*(*(a1 + 32) + 8) statusOfValueForKey:@"tracks" error:&v5];
  if (v2 == 2)
  {
    goto LABEL_5;
  }

  if (v2 != 4)
  {
    v2 = 0;
LABEL_5:
    v3 = 0;
    *(*(*(a1 + 48) + 8) + 24) = v2;
    return [*(a1 + 32) p_didFinishCheckingCompatibilityUpToLevel:*(a1 + 56) actualLevel:*(*(*(a1 + 48) + 8) + 24) didCancel:v3 error:v5 completionHandler:*(a1 + 40)];
  }

  v3 = 1;
  return [*(a1 + 32) p_didFinishCheckingCompatibilityUpToLevel:*(a1 + 56) actualLevel:*(*(*(a1 + 48) + 8) + 24) didCancel:v3 error:v5 completionHandler:*(a1 + 40)];
}

- (void)checkCustomCompatibilityWithVideoCodecTypes:(id)a3 maxPlayableVideoDimensions:(CGSize)a4 maxPlayableVideoPixelsPerFrame:(int)a5 completionHandler:(id)a6
{
  height = a4.height;
  width = a4.width;

  self->mCustomPlayableVideoCodecTypes = [a3 copy];
  self->mCustomMaxPlayableVideoDimensions.width = width;
  self->mCustomMaxPlayableVideoDimensions.height = height;
  self->mCustomMaxPlayableVideoPixelsPerFrame = a5;

  [(TSDMovieCompatibilityChecker *)self checkCompatibilityUpToLevel:5 completionHandler:a6];
}

- (void)p_didFinishCheckingCompatibilityUpToLevel:(int64_t)a3 actualLevel:(int64_t)a4 didCancel:(BOOL)a5 error:(id)a6 completionHandler:(id)a7
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    goto LABEL_16;
  }

  v8 = a6;
  if (!a4 && a6)
  {
    if ([a6 code] != -11828)
    {
LABEL_11:
      a4 = 0;
      goto LABEL_12;
    }

    v11 = [v8 domain];
    v12 = [v11 isEqualToString:*MEMORY[0x277CE5DC0]];
    if (v12)
    {
      v8 = 0;
    }

    a4 = v12;
  }

  if (!v8 && !a4)
  {
    v15 = *MEMORY[0x277CCA450];
    v16[0] = [TSDBundle() localizedStringForKey:@"This movie can\\U2019t be added." value:&stru_287D36338 table:@"TSDrawables"];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.iWork.TSDErrorDomainMovieCompatibility" code:100 userInfo:v13];
    goto LABEL_11;
  }

LABEL_12:
  if (a4 >= a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = a4;
  }

  self->mCompatibilityLevel = v14;
  self->mError = [v8 copy];
LABEL_16:
  if (a7)
  {
    (*(a7 + 2))(a7, a2, a3, a4);
  }
}

- (BOOL)p_isLoadedAssetPlayableOnAllDevices
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(TSDMovieCompatibilityChecker *)self p_assetHasSupportedFileTypeOnAllDevices];
  if (v3)
  {
    if ([(AVAsset *)self->mAsset statusOfValueForKey:@"tracks" error:0]!= 2)
    {
      v4 = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMovieCompatibilityChecker p_isLoadedAssetPlayableOnAllDevices]"];
      [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMovieCompatibilityChecker.m"), 339, @"Asset tracks must be loaded"}];
    }

    v6 = *MEMORY[0x277CE5EA8];
    v22 = *MEMORY[0x277CE5E48];
    v7 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CE5EA8], *MEMORY[0x277CE5E48], *MEMORY[0x277CE5E58], *MEMORY[0x277CE5E90], 0}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [(AVAsset *)self->mAsset tracks];
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v23 = 0;
      v11 = 0;
      v21 = 0;
      v12 = *v25;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          if ([v14 isEnabled])
          {
            v15 = [v14 mediaType];
            if ([v7 containsObject:v15])
            {
              if (![v14 isSelfContained] || !objc_msgSend(objc_msgSend(v14, "formatDescriptions"), "count"))
              {
                v16 = 0;
                goto LABEL_21;
              }

              if ([v15 isEqualToString:v6])
              {
                v11 |= [(TSDMovieCompatibilityChecker *)self p_isVideoTrackPlayableOnAllDevices:v14];
                LOBYTE(v23) = 1;
              }

              else if ([v15 isEqualToString:v22])
              {
                HIDWORD(v23) |= [(TSDMovieCompatibilityChecker *)self p_isAudioTrackPlayableOnAllDevices:v14];
                v21 = 1;
              }
            }
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v16 = 1;
LABEL_21:
      v17 = v23;
      v18 = BYTE4(v23);
      v19 = v21;
    }

    else
    {
      v17 = 0;
      LOBYTE(v11) = 0;
      v19 = 0;
      v18 = 0;
      v16 = 1;
    }

    LOBYTE(v3) = (v11 | ~v17) & (v18 | ~v19) & v16;
  }

  return v3;
}

- (BOOL)p_assetHasSupportedFileTypeOnAllDevices
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (v2)
  {
    v3 = [v2 URL];
    LODWORD(v2) = [v3 isFileURL];
    if (v2)
    {
      v7 = 0;
      LODWORD(v2) = [v3 getResourceValue:&v7 forKey:*MEMORY[0x277CBE918] error:0];
      if (v2)
      {
        v4 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CE5DA8], *MEMORY[0x277CE5D98], *MEMORY[0x277CE5D70], *MEMORY[0x277CE5D68], @"public.3gpp", @"public.3gpp2", @"com.apple.itunes.audible", *MEMORY[0x277CC2010], *MEMORY[0x277CE5D58], *MEMORY[0x277CE5D50], *MEMORY[0x277CE5D78], *MEMORY[0x277CE5DB8], @"public.au-audio", *MEMORY[0x277CC20E8], *MEMORY[0x277CE5D60], *MEMORY[0x277CC20F0], @"public.mpeg-2-video", @"public.mp2", @"public.mpeg-2-transport-stream", @"public.avi", 0}];
        if ([v4 containsObject:v7])
        {
          LOBYTE(v2) = 1;
        }

        else
        {
          v5 = [v3 pathExtension];
          LOBYTE(v2) = [objc_msgSend(MEMORY[0x277CBEB98] setWithObjects:{@"mqv", @"m4r", @"m1a", @"m2a", @"mpa", @"aac", @"adts", @"mod", @"vob", @"m2ts", @"m2t", @"mts", 0), "containsObject:", v5}];
        }
      }
    }
  }

  return v2;
}

- (BOOL)p_isVideoTrackPlayableOnAllDevices:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  mCustomPlayableVideoCodecTypes = self->mCustomPlayableVideoCodecTypes;
  if (mCustomPlayableVideoCodecTypes)
  {
    width = self->mCustomMaxPlayableVideoDimensions.width;
    height = self->mCustomMaxPlayableVideoDimensions.height;
    mCustomMaxPlayableVideoPixelsPerFrame = self->mCustomMaxPlayableVideoPixelsPerFrame;
  }

  else
  {
    mCustomPlayableVideoCodecTypes = [MEMORY[0x277CBEB98] setWithObjects:{&unk_287DDD560, &unk_287DDD578, &unk_287DDD590, &unk_287DDD5A8, &unk_287DDD5C0, &unk_287DDD5D8, &unk_287DDD5F0, &unk_287DDD608, 0}];
    mCustomMaxPlayableVideoPixelsPerFrame = 921600;
    width = 1280;
    height = 1280;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [a3 formatDescriptions];
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    v20 = a3;
LABEL_6:
    v12 = 0;
    while (1)
    {
      if (*v29 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v28 + 1) + 8 * v12);
      MediaSubType = CMFormatDescriptionGetMediaSubType(v13);
      v15 = -[NSSet containsObject:](mCustomPlayableVideoCodecTypes, "containsObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:MediaSubType]);
      if (!v15)
      {
        break;
      }

      Dimensions = CMVideoFormatDescriptionGetDimensions(v13);
      if (width < Dimensions.width || height < Dimensions.height || Dimensions.height * Dimensions.width > mCustomMaxPlayableVideoPixelsPerFrame)
      {
LABEL_36:
        LOBYTE(v15) = 0;
        return v15;
      }

      if (MediaSubType > 1748121138)
      {
        if (MediaSubType == 1748121139)
        {
          if (![(TSDMovieCompatibilityChecker *)self p_isH263VideoFormatPlayableOnAllDevices:v13])
          {
            goto LABEL_36;
          }
        }

        else if (MediaSubType == 1836070006 && ![(TSDMovieCompatibilityChecker *)self p_isMPEG4VideoFormatPlayableOnAllDevices:v13])
        {
          goto LABEL_36;
        }
      }

      else if (MediaSubType == 1398165811)
      {
        v15 = [(TSDMovieCompatibilityChecker *)self p_isSorenson3VideoFormatPlayableOnAllDevices:v13];
        if (!v15)
        {
          return v15;
        }
      }

      else if (MediaSubType == 1635148593 && ![(TSDMovieCompatibilityChecker *)self p_isH264VideoFormatPlayableOnAllDevices:v13])
      {
        goto LABEL_36;
      }

      if (v10 == ++v12)
      {
        v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        a3 = v20;
        if (v10)
        {
          goto LABEL_6;
        }

        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    if (a3)
    {
      [a3 preferredTransform];
    }

    v22 = v25;
    v23 = v26;
    v24 = v27;
    v15 = TSDIsTransformAxisAligned(&v22);
    if (v15)
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      LOBYTE(v15) = !TSDIsTransformFlipped(&v22);
    }
  }

  return v15;
}

- (BOOL)p_isH264VideoFormatPlayableOnAllDevices:(opaqueCMFormatDescription *)a3
{
  Extension = [(TSDMovieCompatibilityChecker *)self p_sampleDescriptionExtensionAtomDataFromVideoFormatDescription:a3 forAtomType:@"avcC"];
  if (Extension)
  {
    v5 = Extension;
    if ([Extension length] < 4 || (v6 = objc_msgSend(v5, "bytes"), *(v6 + 3) > 0x29u) || ((v7 = *(v6 + 1) - 66, v8 = v7 > 0x22, v9 = (1 << v7) & 0x400000801, !v8) ? (v10 = v9 == 0) : (v10 = 1), v10))
    {
      LOBYTE(Extension) = 0;
    }

    else
    {
      Extension = CMFormatDescriptionGetExtension(a3, *MEMORY[0x277CC4C40]);
      if (Extension)
      {
        LOBYTE(Extension) = [Extension integerValue] == 1;
      }
    }
  }

  return Extension;
}

- (BOOL)p_isMPEG4VideoFormatPlayableOnAllDevices:(opaqueCMFormatDescription *)a3
{
  v3 = [(TSDMovieCompatibilityChecker *)self p_sampleDescriptionExtensionAtomDataFromVideoFormatDescription:a3 forAtomType:@"esds"];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 bytes];
    v6 = [v4 length];
    if (v6 < 5)
    {
      goto LABEL_9;
    }

    v7 = (v5 + 2);
    v8 = 4;
    while (*(v7 - 2) || *(v7 - 1) || *v7 != 1 || v7[1] != 176)
    {
      ++v7;
      if (++v8 >= v6)
      {
        goto LABEL_9;
      }
    }

    if (v8 >= v6)
    {
LABEL_9:
      LOBYTE(v3) = 0;
    }

    else
    {
      v9 = v7[2];
      v10 = &byte_26CA66672;
      v11 = 15;
      while (*(v10 - 2) != v9)
      {
        LOBYTE(v3) = 0;
        v10 += 3;
        if (!--v11)
        {
          return v3;
        }
      }

      v12 = *(v10 - 1);
      v13 = *v10;
      LOBYTE(v3) = v12 < 2 && v13 < 5;
    }
  }

  return v3;
}

- (BOOL)p_isH263VideoFormatPlayableOnAllDevices:(opaqueCMFormatDescription *)a3
{
  v3 = [(TSDMovieCompatibilityChecker *)self p_sampleDescriptionExtensionAtomDataFromVideoFormatDescription:a3 forAtomType:@"d263"];
  if (v3)
  {
    v4 = v3;
    if ([v3 length] < 7)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v5 = [v4 bytes];
      if (*(v5 + 6))
      {
        v6 = 1;
      }

      else
      {
        v6 = *(v5 + 5) >= 0x2Eu;
      }

      LOBYTE(v3) = !v6;
    }
  }

  return v3;
}

- (id)p_sampleDescriptionExtensionAtomDataFromVideoFormatDescription:(opaqueCMFormatDescription *)a3 forAtomType:(id)a4
{
  result = CMFormatDescriptionGetExtension(a3, *MEMORY[0x277CC03B0]);
  if (result)
  {
    v6 = [result objectForKeyedSubscript:a4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      result = [v6 count];
      if (result)
      {

        return [v6 objectAtIndexedSubscript:0];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (BOOL)p_isAudioTrackPlayableOnAllDevices:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_287DDD620, &unk_287DDD638, &unk_287DDD650, &unk_287DDD668, &unk_287DDD680, &unk_287DDD698, &unk_287DDD6B0, &unk_287DDD6C8, &unk_287DDD6E0, &unk_287DDD6F8, &unk_287DDD710, &unk_287DDD728, &unk_287DDD6C8, &unk_287DDD740, &unk_287DDD758, 0}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = a3;
  v6 = [a3 formatDescriptions];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v20;
  do
  {
    v11 = 0;
    do
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v19 + 1) + 8 * v11);
      MediaSubType = CMFormatDescriptionGetMediaSubType(v12);
      if ((v9 & 1) == 0 && (v14 = MediaSubType, [v4 containsObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", MediaSubType)}]) && (StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v12)) != 0 && StreamBasicDescription->mChannelsPerFrame <= 6 && StreamBasicDescription->mSampleRate <= 48000.0)
      {
        if (v14 == 1885430579 || v14 == 1633889587)
        {
          v9 = [v5 isEnabled];
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 1;
      }

      ++v11;
    }

    while (v8 != v11);
    v17 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    v8 = v17;
  }

  while (v17);
  return v9 ^ 1;
}

@end