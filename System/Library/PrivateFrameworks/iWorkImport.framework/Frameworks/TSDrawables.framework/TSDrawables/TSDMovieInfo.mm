@interface TSDMovieInfo
- (BOOL)canCopyData;
- (BOOL)canResetMediaSize;
- (BOOL)containsProperty:(int)property;
- (BOOL)needsDownload;
- (BOOL)supportsHyperlinks;
- (BOOL)supportsLoopingBackAndForth;
- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver;
- (CGSize)rawDataSize;
- (Class)layoutClass;
- (Class)repClass;
- (TSDMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style;
- (TSDMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style movieData:(id)data loadedAsset:(id)asset;
- (TSDMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style movieRemoteURL:(id)l loadedAsset:(id)asset;
- (double)doubleValueForProperty:(int)property;
- (float)floatValueForProperty:(int)property;
- (id)animationFilters;
- (id)fileDisplayName;
- (id)fileType;
- (id)generateEmptyPosterImageForContext:(id)context;
- (id)makeAVAssetWithOptions:(id)options;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)objectForProperty:(int)property;
- (id)p_makePosterImageDataWithAVAsset:(id)asset inContext:(id)context time:(double)time;
- (id)pastedPropertyMapForStyle:(id)style tailLineEndInfo:(int)info;
- (id)presetKind;
- (id)promisedDataForType:(id)type;
- (id)promisedTSPDataForType:(id)type;
- (id)synchronouslyGenerateDefaultPosterImageForContext:(id)context;
- (id)synchronouslyGenerateNewPosterImageForAsset:(id)asset time:(double)time;
- (id)typeName;
- (id)typesToPromiseWhenCopyingSingleDrawable;
- (int)intValueForProperty:(int)property;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)i_setPosterImageData:(id)data;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)p_setPropertiesFromLoadedAsset:(id)asset;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setAudioOnly:(BOOL)only;
- (void)setAudioOnlyImageData:(id)data;
- (void)setEndTime:(double)time;
- (void)setFingerprint:(id)fingerprint;
- (void)setImportedAuxiliaryMovieData:(id)data;
- (void)setImportedAuxiliaryMovieDataOriginalFilename:(id)filename;
- (void)setLoopOption:(int64_t)option;
- (void)setMovieData:(id)data;
- (void)setMovieRemoteURL:(id)l;
- (void)setNativeAudioRecording:(BOOL)recording;
- (void)setPlaysAcrossSlides:(BOOL)slides;
- (void)setPosterImageData:(id)data;
- (void)setPosterTime:(double)time;
- (void)setStartTime:(double)time;
- (void)setStreaming:(BOOL)streaming;
- (void)setStyle:(id)style;
- (void)setVolume:(float)volume;
- (void)takePropertiesFromReplacedMediaInfo:(id)info;
@end

@implementation TSDMovieInfo

- (void)setMovieData:(id)data
{
  dataCopy = data;
  if (self->mMovieData != dataCopy)
  {
    v10 = dataCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_msgSend_willRemoveReferenceToData_(self, v8, self->mMovieData);
    objc_storeStrong(&self->mMovieData, data);
    objc_msgSend_didAddReferenceToData_(self, v9, v10);
    dataCopy = v10;
  }
}

- (void)setMovieRemoteURL:(id)l
{
  lCopy = l;
  if (self->mMovieRemoteURL != lCopy)
  {
    v10 = lCopy;
    objc_msgSend_willModify(self, v5, v6);
    v9 = objc_msgSend_copy(v10, v7, v8);

    objc_storeStrong(&self->mMovieRemoteURL, v9);
    lCopy = v9;
  }
}

- (void)setImportedAuxiliaryMovieData:(id)data
{
  dataCopy = data;
  if (self->mImportedAuxiliaryMovieData != dataCopy)
  {
    v10 = dataCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_msgSend_willRemoveReferenceToData_(self, v8, self->mImportedAuxiliaryMovieData);
    objc_storeStrong(&self->mImportedAuxiliaryMovieData, data);
    objc_msgSend_didAddReferenceToData_(self, v9, v10);
    dataCopy = v10;
  }
}

- (void)setImportedAuxiliaryMovieDataOriginalFilename:(id)filename
{
  filenameCopy = filename;
  if (self->mImportedAuxiliaryMovieDataOriginalFilename != filenameCopy)
  {
    v10 = filenameCopy;
    objc_msgSend_willModify(self, v5, v6);
    v9 = objc_msgSend_copy(v10, v7, v8);

    objc_storeStrong(&self->mImportedAuxiliaryMovieDataOriginalFilename, v9);
    filenameCopy = v9;
  }
}

- (void)setFingerprint:(id)fingerprint
{
  fingerprintCopy = fingerprint;
  if (self->mFingerprint != fingerprintCopy)
  {
    v10 = fingerprintCopy;
    objc_msgSend_willModify(self, v5, v6);
    v9 = objc_msgSend_copy(v10, v7, v8);

    objc_storeStrong(&self->mFingerprint, v9);
    fingerprintCopy = v9;
  }
}

- (void)setAudioOnlyImageData:(id)data
{
  dataCopy = data;
  if (self->mAudioOnlyImageData != dataCopy)
  {
    v10 = dataCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_msgSend_willRemoveReferenceToData_(self, v8, self->mAudioOnlyImageData);
    objc_storeStrong(&self->mAudioOnlyImageData, data);
    objc_msgSend_didAddReferenceToData_(self, v9, v10);
    dataCopy = v10;
  }
}

- (void)i_setPosterImageData:(id)data
{
  dataCopy = data;
  if (self->mPosterImageData != dataCopy)
  {
    v10 = dataCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_msgSend_willRemoveReferenceToData_(self, v8, self->mPosterImageData);
    objc_storeStrong(&self->mPosterImageData, data);
    objc_msgSend_didAddReferenceToData_(self, v9, v10);
    dataCopy = v10;
  }
}

- (void)setStartTime:(double)time
{
  if (self->mStartTime != time)
  {
    objc_msgSend_willModify(self, a2, v3);
    self->mStartTime = time;
  }
}

- (void)setEndTime:(double)time
{
  if (self->mEndTime != time)
  {
    objc_msgSend_willModify(self, a2, v3);
    self->mEndTime = time;
  }
}

- (void)setPosterTime:(double)time
{
  if (self->mPosterTime != time)
  {
    objc_msgSend_willModify(self, a2, v3);
    self->mPosterTime = time;
  }
}

- (void)setVolume:(float)volume
{
  if (self->mVolume != volume)
  {
    objc_msgSend_willModify(self, a2, v3);
    self->mVolume = volume;
  }
}

- (void)setAudioOnly:(BOOL)only
{
  if (self->mAudioOnly != only)
  {
    objc_msgSend_willModify(self, a2, only);
    self->mAudioOnly = only;
  }
}

- (void)setNativeAudioRecording:(BOOL)recording
{
  if (self->mNativeAudioRecording != recording)
  {
    objc_msgSend_willModify(self, a2, recording);
    self->mNativeAudioRecording = recording;
  }
}

- (void)setPlaysAcrossSlides:(BOOL)slides
{
  if (self->mPlaysAcrossSlides != slides)
  {
    objc_msgSend_willModify(self, a2, slides);
    self->mPlaysAcrossSlides = slides;
  }
}

- (TSDMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style
{
  styleCopy = style;
  v16.receiver = self;
  v16.super_class = TSDMovieInfo;
  v9 = [(TSDMediaInfo *)&v16 initWithContext:context geometry:geometry];
  v10 = v9;
  if (v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2766B20DC;
    v13[3] = &unk_27A6CCBD8;
    v14 = v9;
    v15 = styleCopy;
    objc_msgSend_performBlockIgnoringModifications_(v14, v11, v13);
  }

  return v10;
}

- (TSDMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style movieData:(id)data loadedAsset:(id)asset
{
  dataCopy = data;
  assetCopy = asset;
  v15 = objc_msgSend_initWithContext_geometry_style_(self, v14, context, geometry, style);
  v16 = v15;
  if (v15)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2766B221C;
    v19[3] = &unk_27A6CC6F0;
    v20 = v15;
    v21 = dataCopy;
    v22 = assetCopy;
    objc_msgSend_performBlockIgnoringModifications_(v20, v17, v19);
  }

  return v16;
}

- (TSDMovieInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style movieRemoteURL:(id)l loadedAsset:(id)asset
{
  lCopy = l;
  assetCopy = asset;
  v15 = objc_msgSend_initWithContext_geometry_style_(self, v14, context, geometry, style);
  v16 = v15;
  if (v15)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_2766B2360;
    v19[3] = &unk_27A6CC6F0;
    v20 = v15;
    v21 = lCopy;
    v22 = assetCopy;
    objc_msgSend_performBlockIgnoringModifications_(v20, v17, v19);
  }

  return v16;
}

- (id)fileDisplayName
{
  v4 = objc_msgSend_movieData(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_movieData(self, v5, v6);
    objc_msgSend_filename(v7, v8, v9);
  }

  else
  {
    v7 = objc_msgSend_movieRemoteURL(self, v5, v6);
    objc_msgSend_lastPathComponent(v7, v10, v11);
  }
  v12 = ;

  return v12;
}

- (id)fileType
{
  v4 = objc_msgSend_movieData(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_movieData(self, v5, v6);
    v10 = objc_msgSend_type(v7, v8, v9);
  }

  else
  {
    v7 = objc_msgSend_movieRemoteURL(self, v5, v6);
    v14 = 0;
    objc_msgSend_getResourceValue_forKey_error_(v7, v11, &v14, *MEMORY[0x277CBE918], 0);
    v10 = v14;
  }

  v12 = v10;

  return v12;
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (self->mStyle != styleCopy)
  {
    v12 = styleCopy;
    v8 = objc_msgSend_properties(TSDMediaStyle, v6, v7);
    objc_msgSend_willChangeProperties_(self, v9, v8);

    objc_msgSend_willModify(self, v10, v11);
    objc_storeStrong(&self->mStyle, style);
    styleCopy = v12;
  }
}

- (id)pastedPropertyMapForStyle:(id)style tailLineEndInfo:(int)info
{
  v4 = objc_msgSend_fullPropertyMap(style, a2, style, *&info);
  v7 = objc_msgSend_copy(v4, v5, v6);

  objc_msgSend_validatePastedPropertyMap_(TSDMediaStyle, v8, v7);

  return v7;
}

- (id)presetKind
{
  v3 = *MEMORY[0x277D80B78];
  objc_opt_class();
  v6 = objc_msgSend_style(self, v4, v5);
  v7 = TSUDynamicCast();

  if (v7)
  {
    v10 = objc_msgSend_presetKind(v7, v8, v9);

    v3 = v10;
  }

  return v3;
}

- (void)setPosterImageData:(id)data
{
  dataCopy = data;
  if (self->mPosterImageData != dataCopy)
  {
    objc_msgSend_willModify(self, v4, v5);
    objc_opt_class();
    v8 = objc_msgSend_attributes(dataCopy, v6, v7);
    v9 = TSUDynamicCast();

    if (v9 && objc_msgSend_hasPixelSize(v9, v10, v11))
    {
      objc_msgSend_pixelSize(v9, v10, v11);
      self->mNaturalSize.width = v13;
      self->mNaturalSize.height = v14;
    }

    else
    {
      v15 = objc_msgSend_sharedPool(TSDImageProviderPool, v10, v11);
      v17 = objc_msgSend_providerForData_shouldValidate_(v15, v16, dataCopy, 1);

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_msgSend_naturalSize(v17, v18, v19);
        self->mNaturalSize.width = v20;
        self->mNaturalSize.height = v21;
      }
    }

    objc_msgSend_i_setPosterImageData_(self, v12, dataCopy);
  }

  if (!self->mPosterImageGeneratedWithAlphaSupport)
  {
    objc_msgSend_willModify(self, v4, v5);
    self->mPosterImageGeneratedWithAlphaSupport = 1;
  }
}

- (CGSize)rawDataSize
{
  width = self->mNaturalSize.width;
  height = self->mNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)canResetMediaSize
{
  v9.receiver = self;
  v9.super_class = TSDMovieInfo;
  canResetMediaSize = [(TSDMediaInfo *)&v9 canResetMediaSize];
  if (canResetMediaSize)
  {
    if (objc_msgSend_isAudioOnly(self, v4, v5))
    {
      LOBYTE(canResetMediaSize) = 0;
    }

    else
    {
      LOBYTE(canResetMediaSize) = objc_msgSend_isStreaming(self, v6, v7) ^ 1;
    }
  }

  return canResetMediaSize;
}

- (void)p_setPropertiesFromLoadedAsset:(id)asset
{
  v56 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  if (!assetCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDMovieInfo p_setPropertiesFromLoadedAsset:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMovieInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 267, 0, "invalid nil value for '%{public}s'", "asset");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  if (objc_msgSend_statusOfValueForKey_error_(assetCopy, v4, @"duration", 0) != 2)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSDMovieInfo p_setPropertiesFromLoadedAsset:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMovieInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 268, 0, "Invalid parameter not satisfying: %{public}s", "[asset statusOfValueForKey:@duration error:NULL] == AVKeyValueStatusLoaded");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  if (objc_msgSend_statusOfValueForKey_error_(assetCopy, v13, @"tracks", 0) != 2)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSDMovieInfo p_setPropertiesFromLoadedAsset:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMovieInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 269, 0, "Invalid parameter not satisfying: %{public}s", "[asset statusOfValueForKey:@tracks error:NULL] == AVKeyValueStatusLoaded");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  memset(&v54, 0, sizeof(v54));
  if (assetCopy)
  {
    objc_msgSend_duration(assetCopy, v21, v22);
  }

  else
  {
    v54 = **&MEMORY[0x277CC08F0];
  }

  time = v54;
  Seconds = CMTimeGetSeconds(&time);
  objc_msgSend_setStartTime_(self, v31, v32, 0.0);
  objc_msgSend_setEndTime_(self, v33, v34, Seconds);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v37 = objc_msgSend_tracks(assetCopy, v35, v36);
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v49, v55, 16);
  if (v39)
  {
    v42 = v39;
    v43 = *v50;
    v44 = *MEMORY[0x277CE5E40];
    while (2)
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v50 != v43)
        {
          objc_enumerationMutation(v37);
        }

        v46 = *(*(&v49 + 1) + 8 * i);
        if (objc_msgSend_isEnabled(v46, v40, v41) && (objc_msgSend_hasMediaCharacteristic_(v46, v40, v44) & 1) != 0)
        {
          v47 = 0;
          goto LABEL_21;
        }
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v49, v55, 16);
      if (v42)
      {
        continue;
      }

      break;
    }
  }

  v47 = 1;
LABEL_21:

  objc_msgSend_setAudioOnly_(self, v48, v47);
}

- (Class)layoutClass
{
  v2 = objc_opt_class();

  return v2;
}

- (Class)repClass
{
  v2 = objc_opt_class();

  return v2;
}

- (id)typeName
{
  isAudioOnly = objc_msgSend_isAudioOnly(self, a2, v2);
  v4 = isAudioOnly;
  v7 = sub_2767B590C(isAudioOnly, v5, v6);
  v9 = v7;
  if (v4)
  {
    objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"Audio", &stru_28857D120, @"TSDrawables");
  }

  else
  {
    objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"Movie", &stru_28857D120, @"TSDrawables");
  }
  v10 = ;

  return v10;
}

- (void)setStreaming:(BOOL)streaming
{
  if (self->mStreaming != streaming)
  {
    streamingCopy = streaming;
    objc_msgSend_willModify(self, a2, streaming);
    self->mStreaming = streamingCopy;
    if (streamingCopy)
    {

      objc_msgSend_setAspectRatioLocked_(self, v5, 0);
    }
  }
}

- (BOOL)supportsLoopingBackAndForth
{
  v4 = objc_msgSend_supportsLooping(self, a2, v2);
  if (v4)
  {
    LOBYTE(v4) = objc_msgSend_isNativeAudioRecording(self, v5, v6) ^ 1;
  }

  return v4;
}

- (void)setLoopOption:(int64_t)option
{
  optionCopy = option;
  v5 = objc_msgSend_supportsLoopingBackAndForth(self, a2, option);
  v8 = 1;
  if (v5)
  {
    v8 = 2;
  }

  if (v8 < optionCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDMovieInfo setLoopOption:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMovieInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 378, 0, "Out of bounds loop option");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    optionCopy = 0;
  }

  if (self->mLoopOption != optionCopy)
  {
    objc_msgSend_willModify(self, v6, v7);
    self->mLoopOption = optionCopy;
  }
}

- (void)takePropertiesFromReplacedMediaInfo:(id)info
{
  v18.receiver = self;
  v18.super_class = TSDMovieInfo;
  infoCopy = info;
  [(TSDMediaInfo *)&v18 takePropertiesFromReplacedMediaInfo:infoCopy];
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    v8 = objc_msgSend_loopOption(v5, v6, v7, v18.receiver, v18.super_class);
    objc_msgSend_setLoopOption_(self, v9, v8);
    objc_msgSend_volume(v5, v10, v11);
    objc_msgSend_setVolume_(self, v12, v13);
    v16 = objc_msgSend_playsAcrossSlides(v5, v14, v15);
    objc_msgSend_setPlaysAcrossSlides_(self, v17, v16);
  }
}

- (id)animationFilters
{
  if (objc_msgSend_isAudioOnly(self, a2, v2))
  {
    objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v4, kTSDAnimationFilterAudio[0]);
    v7 = LABEL_5:;
    goto LABEL_7;
  }

  if (objc_msgSend_isStreaming(self, v4, v5))
  {
    objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v6, kTSDAnimationFilterMovie[0]);
    goto LABEL_5;
  }

  v7 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v6, kTSDAnimationFilterStandard[0], kTSDAnimationFilterMovie[0], kTSDAnimationFilterAction[0], 0);
LABEL_7:

  return v7;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  contextCopy = context;
  objectCopy = object;
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (!v8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDMovieInfo mixingTypeWithObject:context:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMovieInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 534, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  if (objc_msgSend_isAudioOnly(self, v9, v10))
  {
    goto LABEL_4;
  }

  v21 = objc_msgSend_fingerprint(self, v18, v19);
  if (v21 && (v24 = v21, objc_msgSend_fingerprint(v8, v22, v23), v25 = objc_claimAutoreleasedReturnValue(), v25, v24, v25))
  {
    v26 = objc_msgSend_fingerprint(v8, v22, v23);
    v29 = objc_msgSend_fingerprint(self, v27, v28);
  }

  else
  {
    v31 = objc_msgSend_movieData(self, v22, v23);

    if (v31)
    {
      v26 = objc_msgSend_movieData(v8, v32, v33);
      v36 = objc_msgSend_movieData(self, v34, v35);
      isEqual = v26 == v36;
      goto LABEL_13;
    }

    v38 = objc_msgSend_movieRemoteURL(self, v32, v33);

    if (!v38)
    {
LABEL_4:
      v20 = 1;
      goto LABEL_16;
    }

    v26 = objc_msgSend_movieRemoteURL(v8, v18, v19);
    v29 = objc_msgSend_movieRemoteURL(self, v39, v40);
  }

  v36 = v29;
  isEqual = objc_msgSend_isEqual_(v26, v30, v29);
LABEL_13:

  if (isEqual)
  {
    v20 = 5;
  }

  else
  {
    v20 = 1;
  }

LABEL_16:
  objc_msgSend_posterTime(self, v18, v19);
  v42 = v41;
  objc_msgSend_posterTime(v8, v43, v44);
  if (v42 != v47)
  {
    v20 = TSDMixingTypeBestFromMixingTypes(v20, 2);
  }

  v48 = objc_msgSend_geometry(self, v45, v46);
  v51 = objc_msgSend_geometry(v8, v49, v50);
  v53 = objc_msgSend_mixingTypeWithObject_context_(v48, v52, v51, contextCopy);
  v54 = TSDMixingTypeBestFromMixingTypes(v20, v53);

  v57 = objc_msgSend_style(self, v55, v56);
  v60 = objc_msgSend_style(v8, v58, v59);
  v61 = TSDMixingTypeWithObjects(v57, v60, contextCopy);

  v62 = TSDMixingTypeBestFromMixingTypes(v54, v61);
  if (v62 == 1)
  {
    goto LABEL_44;
  }

  v65 = objc_msgSend_reflection(self, v63, v64);
  v66 = v65 != 0;

  v69 = objc_msgSend_reflection(v8, v67, v68);

  if (v66 == (v69 == 0))
  {
    goto LABEL_44;
  }

  v74 = objc_msgSend_shadow(self, v70, v71);
  if (v74)
  {
    v75 = objc_msgSend_shadow(self, v72, v73);
    isEnabled = objc_msgSend_isEnabled(v75, v76, v77);
  }

  else
  {
    isEnabled = 0;
  }

  v81 = objc_msgSend_shadow(v8, v79, v80);
  if (v81)
  {
    v84 = v81;
    v85 = objc_msgSend_shadow(v8, v82, v83);
    v88 = objc_msgSend_isEnabled(v85, v86, v87);

    if (isEnabled != v88)
    {
LABEL_44:
      v157 = 1;
      goto LABEL_45;
    }

    if ((isEnabled & v88) == 1)
    {
      v89 = objc_msgSend_shadow(self, v82, v83);
      v92 = objc_msgSend_shadowType(v89, v90, v91);
      v95 = objc_msgSend_shadow(v8, v93, v94);
      if (v92 != objc_msgSend_shadowType(v95, v96, v97))
      {
LABEL_33:

        goto LABEL_44;
      }

      v100 = objc_msgSend_shadow(self, v98, v99);
      objc_msgSend_radius(v100, v101, v102);
      v104 = v103;
      v107 = objc_msgSend_shadow(v8, v105, v106);
      objc_msgSend_radius(v107, v108, v109);
      if (v104 != v112 && vabdd_f64(v104, v112) >= 0.00999999978)
      {
LABEL_32:

        goto LABEL_33;
      }

      v113 = objc_msgSend_shadow(self, v110, v111);
      objc_msgSend_angle(v113, v114, v115);
      v117 = v116;
      v120 = objc_msgSend_shadow(v8, v118, v119);
      objc_msgSend_angle(v120, v121, v122);
      if (v117 != v125 && vabdd_f64(v117, v125) >= 0.00999999978)
      {

        goto LABEL_32;
      }

      v232 = objc_msgSend_shadow(self, v123, v124);
      objc_msgSend_offset(v232, v205, v206);
      v208 = v207;
      v211 = objc_msgSend_shadow(v8, v209, v210);
      objc_msgSend_offset(v211, v212, v213);
      v215 = v214;
      v216 = vabdd_f64(v208, v214);

      if (v216 >= 0.00999999978 && v208 != v215)
      {
        goto LABEL_44;
      }
    }
  }

  else if (isEnabled)
  {
    goto LABEL_44;
  }

  v128 = objc_msgSend_stroke(self, v82, v83);
  if (v128)
  {
    v129 = objc_msgSend_stroke(self, v126, v127);
    shouldRender = objc_msgSend_shouldRender(v129, v130, v131);
  }

  else
  {
    shouldRender = 0;
  }

  v137 = objc_msgSend_stroke(v8, v133, v134);
  if (!v137)
  {

    if (shouldRender)
    {
      v62 = 1;
    }

    goto LABEL_80;
  }

  v138 = objc_msgSend_stroke(v8, v135, v136);
  v141 = objc_msgSend_shouldRender(v138, v139, v140);

  if (shouldRender != v141)
  {
    v144 = 1;
  }

  else
  {
    v144 = v62;
  }

  if ((shouldRender & v141) != 1)
  {
    v62 = v144;
    goto LABEL_80;
  }

  v145 = objc_msgSend_stroke(self, v142, v143);
  isFrame = objc_msgSend_isFrame(v145, v146, v147);
  v151 = objc_msgSend_stroke(v8, v149, v150);
  v154 = objc_msgSend_isFrame(v151, v152, v153);

  if (isFrame != v154)
  {
    goto LABEL_44;
  }

  v159 = objc_msgSend_stroke(self, v155, v156);
  if (objc_msgSend_isFrame(v159, v160, v161))
  {
    v164 = objc_msgSend_stroke(v8, v162, v163);
    v167 = objc_msgSend_isFrame(v164, v165, v166);

    if (v167)
    {
      objc_opt_class();
      v172 = objc_msgSend_stroke(self, v170, v171);
      v173 = TSUDynamicCast();

      objc_opt_class();
      v176 = objc_msgSend_stroke(v8, v174, v175);
      v177 = TSUDynamicCast();

      if (v173 && v177)
      {
        v180 = objc_msgSend_archivableFrameName(v173, v178, v179);
        v183 = objc_msgSend_archivableFrameName(v177, v181, v182);
        if (objc_msgSend_isEqualToString_(v180, v184, v183))
        {
          objc_msgSend_assetScale(v173, v185, v186);
          v188 = v187;
          objc_msgSend_assetScale(v177, v189, v190);
          v192 = v191;
          v193 = vabdd_f64(v188, v191);

          if (v193 < 0.00999999978 || v188 == v192)
          {
            goto LABEL_79;
          }
        }

        else
        {
        }
      }

      v62 = 1;
LABEL_79:

      goto LABEL_80;
    }
  }

  else
  {
  }

  v195 = objc_msgSend_stroke(self, v168, v169);
  if (objc_msgSend_isFrame(v195, v196, v197))
  {
LABEL_65:

    goto LABEL_80;
  }

  v200 = objc_msgSend_stroke(v8, v198, v199);
  if (objc_msgSend_isFrame(v200, v201, v202))
  {

    goto LABEL_65;
  }

  v218 = objc_msgSend_stroke(self, v203, v204);
  objc_msgSend_width(v218, v219, v220);
  v222 = v221;
  v225 = objc_msgSend_stroke(v8, v223, v224);
  objc_msgSend_width(v225, v226, v227);
  v229 = v228;
  v230 = vabdd_f64(v222, v228);

  if (v230 >= 0.00999999978 && v222 != v229)
  {
    goto LABEL_44;
  }

LABEL_80:
  if (v62 == 3)
  {
    v157 = 2;
  }

  else
  {
    v157 = v62;
  }

LABEL_45:

  return v157;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  v7 = objectCopy;
  if (fraction >= 1.0)
  {
    self = objectCopy;
  }

  selfCopy = self;

  return self;
}

- (id)makeAVAssetWithOptions:(id)options
{
  v21[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v7 = objc_msgSend_movieData(self, v5, v6);
  v10 = v7;
  if (v7)
  {
    v11 = objc_msgSend_AVAssetWithOptions_(v7, v8, optionsCopy);
  }

  else
  {
    v13 = objc_msgSend_movieRemoteURL(self, v8, v9);
    if (v13)
    {
      v20 = *MEMORY[0x277CE6260];
      v21[0] = &unk_28859C3B8;
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v21, &v20, 1);
      v17 = objc_msgSend_mutableCopy(v14, v15, v16);

      if (optionsCopy)
      {
        objc_msgSend_addEntriesFromDictionary_(v17, v18, optionsCopy);
      }

      v11 = objc_msgSend_URLAssetWithURL_options_(MEMORY[0x277CE6650], v18, v13, v17);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)generateEmptyPosterImageForContext:(id)context
{
  contextCopy = context;
  objc_msgSend_originalSize(self, v5, v6);
  if (v8 <= 0.0 || v9 <= 0.0)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDMovieInfo generateEmptyPosterImageForContext:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMovieInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 682, 0, "Movie's original size should be nonzero.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    v21 = 0;
  }

  else
  {
    v10 = TSDBitmapContextCreate(3, v8, v9);
    v13 = objc_msgSend_blackColor(MEMORY[0x277D81180], v11, v12);
    v16 = objc_msgSend_CGColor(v13, v14, v15);
    CGContextSetFillColorWithColor(v10, v16);

    TSURectWithSize();
    CGContextFillRect(v10, v31);
    Image = CGBitmapContextCreateImage(v10);
    v18 = MEMORY[0x277D80828];
    v19 = CGImagePNGRepresentation();
    v21 = objc_msgSend_dataFromNSData_filename_context_(v18, v20, v19, @"posterImage.png", contextCopy);

    CGImageRelease(Image);
    CGContextRelease(v10);
  }

  return v21;
}

- (id)synchronouslyGenerateDefaultPosterImageForContext:(id)context
{
  contextCopy = context;
  v7 = objc_msgSend_movieData(self, v5, v6);
  v10 = v7;
  if (v7 && (v11 = MEMORY[0x277D805F8], objc_msgSend_type(v7, v8, v9), v12 = objc_claimAutoreleasedReturnValue(), LODWORD(v11) = objc_msgSend_canInitWithDataType_(v11, v13, v12), v12, v11))
  {
    v14 = objc_alloc(MEMORY[0x277D805F8]);
    v16 = objc_msgSend_initWithData_delegate_(v14, v15, v10, 0);
    if (objc_msgSend_imageForTime_(v16, v17, v18, self->mPosterTime))
    {
      v19 = MEMORY[0x277D80828];
      v20 = CGImagePNGRepresentation();
      v22 = objc_msgSend_dataFromNSData_filename_context_(v19, v21, v20, @"posterImage.png", contextCopy);

      goto LABEL_8;
    }
  }

  else
  {
    v16 = objc_msgSend_makeAVAsset(self, v8, v9);
    if (v16)
    {
      v22 = objc_msgSend_p_makePosterImageDataWithAVAsset_inContext_time_(self, v23, v16, contextCopy, self->mPosterTime);
      goto LABEL_8;
    }
  }

  v22 = 0;
LABEL_8:

  return v22;
}

- (id)synchronouslyGenerateNewPosterImageForAsset:(id)asset time:(double)time
{
  assetCopy = asset;
  v9 = objc_msgSend_context(self, v7, v8);
  v11 = objc_msgSend_p_makePosterImageDataWithAVAsset_inContext_time_(self, v10, assetCopy, v9, time);

  return v11;
}

- (id)p_makePosterImageDataWithAVAsset:(id)asset inContext:(id)context time:(double)time
{
  assetCopy = asset;
  contextCopy = context;
  v10 = [TSDMoviePosterImageGenerator alloc];
  v12 = objc_msgSend_initWithAsset_(v10, v11, assetCopy);
  CMTimeMakeWithSeconds(&time, time, *MEMORY[0x277D80710]);
  if (assetCopy)
  {
    objc_msgSend_duration(assetCopy, v13, v14);
  }

  else
  {
    memset(&duration, 0, sizeof(duration));
  }

  start = **&MEMORY[0x277CC08F0];
  CMTimeRangeMake(&range, &start, &duration);
  CMTimeClampToRange(&duration, &time, &range);
  v32 = 0;
  v16 = objc_msgSend_copyCGImageAtTime_error_(v12, v15, &duration, &v32);
  v17 = v32;
  v20 = v17;
  if (v16)
  {
    v21 = MEMORY[0x277D80828];
    v22 = CGImagePNGRepresentation();
    v24 = objc_msgSend_dataFromNSData_filename_context_(v21, v23, v22, @"posterImage.png", contextCopy);

    CGImageRelease(v16);
  }

  else if (v17 && objc_msgSend_code(v17, v18, v19) == -11832 && (objc_msgSend_domain(v20, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v27, v28, *MEMORY[0x277CE5DC0]), v27, isEqualToString))
  {
    v24 = objc_msgSend_generateEmptyPosterImageForContext_(self, v30, contextCopy);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)containsProperty:(int)property
{
  if ((property - 533) < 7)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = TSDMovieInfo;
  return [(TSDMovieInfo *)&v6 containsProperty:?];
}

- (id)objectForProperty:(int)property
{
  if (property == 534)
  {
    v3 = objc_msgSend_posterImageData(self, a2, *&property);
  }

  else if (property == 533)
  {
    v3 = objc_msgSend_movieData(self, a2, *&property);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TSDMovieInfo;
    v3 = [(TSDStyledInfo *)&v5 objectForProperty:?];
  }

  return v3;
}

- (double)doubleValueForProperty:(int)property
{
  switch(property)
  {
    case 537:

      objc_msgSend_posterTime(self, a2, *&property);
      break;
    case 536:

      objc_msgSend_endTime(self, a2, *&property);
      break;
    case 535:

      objc_msgSend_startTime(self, a2, *&property);
      break;
    default:
      v7 = v3;
      v8 = v4;
      v6.receiver = self;
      v6.super_class = TSDMovieInfo;
      [(TSDMovieInfo *)&v6 doubleValueForProperty:?];
      break;
  }

  return result;
}

- (float)floatValueForProperty:(int)property
{
  if (property == 539)
  {

    objc_msgSend_volume(self, a2, *&property);
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = TSDMovieInfo;
    [(TSDMovieInfo *)&v6 floatValueForProperty:?];
  }

  return result;
}

- (int)intValueForProperty:(int)property
{
  if (property == 538)
  {
    v3 = objc_msgSend_loopOption(self, a2, *&property);
    if (v3 >= 0x80000000)
    {
      sub_276808874();
      LODWORD(v3) = 0x7FFFFFFF;
    }

    else if (v3 <= 0xFFFFFFFF7FFFFFFFLL)
    {
      sub_2768087F8();
      LODWORD(v3) = 0x80000000;
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TSDMovieInfo;
    LODWORD(v3) = [(TSDMovieInfo *)&v5 intValueForProperty:?];
  }

  return v3;
}

- (BOOL)supportsHyperlinks
{
  if (self->mAudioOnly)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = TSDMovieInfo;
  if (![(TSDDrawableInfo *)&v9 supportsHyperlinks])
  {
    return 0;
  }

  v4 = objc_msgSend_sharedDelegate(MEMORY[0x277D80610], v2, v3);
  v7 = objc_msgSend_supportsMovieHyperlinks(v4, v5, v6);

  return v7;
}

- (BOOL)needsDownload
{
  v4 = objc_msgSend_movieData(self, a2, v2);
  v7 = objc_msgSend_needsDownload(v4, v5, v6);

  if (!self->mAudioOnly)
  {
    v10 = objc_msgSend_posterImageData(self, v8, v9);
    v7 |= objc_msgSend_needsDownload(v10, v11, v12);
  }

  return v7;
}

- (BOOL)canCopyData
{
  v4 = objc_msgSend_movieData(self, a2, v2);
  if (objc_msgSend_needsDownload(v4, v5, v6) && !objc_msgSend_isApplicationData(v4, v7, v8))
  {
    isApplicationData = 0;
  }

  else if (self->mAudioOnly)
  {
    isApplicationData = 1;
  }

  else
  {
    v10 = objc_msgSend_posterImageData(self, v7, v8);
    if (objc_msgSend_needsDownload(v10, v11, v12))
    {
      isApplicationData = objc_msgSend_isApplicationData(v10, v13, v14);
    }

    else
    {
      isApplicationData = 1;
    }
  }

  return isApplicationData;
}

- (id)promisedDataForType:(id)type
{
  typeCopy = type;
  v7 = objc_msgSend_movieData(self, v5, v6);
  v10 = objc_msgSend_type(v7, v8, v9);
  isEqual = objc_msgSend_isEqual_(typeCopy, v11, v10);

  if (isEqual)
  {
    v15 = objc_msgSend_movieData(self, v13, v14);
    v18 = objc_msgSend_NSData(v15, v16, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)promisedTSPDataForType:(id)type
{
  typeCopy = type;
  v7 = objc_msgSend_movieData(self, v5, v6);
  v10 = objc_msgSend_type(v7, v8, v9);
  isEqual = objc_msgSend_isEqual_(typeCopy, v11, v10);

  if (isEqual)
  {
    v15 = objc_msgSend_movieData(self, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)typesToPromiseWhenCopyingSingleDrawable
{
  if (objc_msgSend_isStreaming(self, a2, v2) & 1) != 0 || (objc_msgSend_needsDownload(self, v4, v5))
  {
    v8 = 0;
  }

  else
  {
    v9 = objc_msgSend_movieData(self, v6, v7);
    v12 = objc_msgSend_type(v9, v10, v11);

    v8 = objc_msgSend_tsu_arrayWithNonNilObject_(MEMORY[0x277CBEA60], v13, v12);
  }

  return v8;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 8))
  {
    v7 = *(archive + 8);
  }

  else
  {
    v7 = &TSD::_DrawableArchive_default_instance_;
  }

  v78.receiver = self;
  v78.super_class = TSDMovieInfo;
  [(TSDDrawableInfo *)&v78 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v10 = *(archive + 10);
  if ((v10 & 8) != 0)
  {
    v17 = *(archive + 9);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = sub_2766B4DB0;
    v77[3] = &unk_27A6CC8D0;
    v77[4] = self;
    v18 = unarchiverCopy;
    v19 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v18, v20, v17, v19, 0, v77);
  }

  else if ((v10 & 0x40) != 0)
  {
    v21 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v8, *(archive + 12));
    mMovieData = self->mMovieData;
    self->mMovieData = v21;
  }

  else if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CBEBC0]);
    v13 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v12, *(archive + 6) & 0xFFFFFFFFFFFFFFFELL);
    v15 = objc_msgSend_initWithString_(v11, v14, v13);
    mMovieRemoteURL = self->mMovieRemoteURL;
    self->mMovieRemoteURL = v15;
  }

  v23 = *(archive + 10);
  if ((v23 & 0x1000) != 0)
  {
    v24 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v8, *(archive + 18));
    mImportedAuxiliaryMovieData = self->mImportedAuxiliaryMovieData;
    self->mImportedAuxiliaryMovieData = v24;

    v23 = *(archive + 10);
  }

  if ((v23 & 2) != 0)
  {
    v26 = objc_alloc(MEMORY[0x277CCACA8]);
    v28 = objc_msgSend_tsp_initWithProtobufString_(v26, v27, *(archive + 7) & 0xFFFFFFFFFFFFFFFELL);
    mImportedAuxiliaryMovieDataOriginalFilename = self->mImportedAuxiliaryMovieDataOriginalFilename;
    self->mImportedAuxiliaryMovieDataOriginalFilename = v28;

    v23 = *(archive + 10);
  }

  if ((v23 & 0x10) != 0)
  {
    v32 = *(archive + 10);
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = sub_2766B4E2C;
    v76[3] = &unk_27A6CC8D0;
    v76[4] = self;
    v33 = unarchiverCopy;
    v34 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v33, v35, v32, v34, 0, v76);
  }

  else if ((v23 & 0x80) != 0)
  {
    v30 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v8, *(archive + 13));
    mPosterImageData = self->mPosterImageData;
    self->mPosterImageData = v30;
  }

  self->mPosterImageGeneratedWithAlphaSupport = *(archive + 205);
  v36 = *(archive + 10);
  if ((v36 & 0x20) != 0)
  {
    v39 = *(archive + 11);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_2766B4EA8;
    v75[3] = &unk_27A6CC8D0;
    v75[4] = self;
    v40 = unarchiverCopy;
    v41 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v40, v42, v39, v41, 0, v75);
  }

  else if ((v36 & 0x100) != 0)
  {
    v37 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v8, *(archive + 14));
    mAudioOnlyImageData = self->mAudioOnlyImageData;
    self->mAudioOnlyImageData = v37;
  }

  if ((*(archive + 41) & 2) != 0)
  {
    v43 = *(archive + 15);
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = sub_2766B4F24;
    v74[3] = &unk_27A6CC8F8;
    v74[4] = self;
    v44 = unarchiverCopy;
    v45 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v44, v46, v43, v45, 0, v74);
  }

  v47 = *(archive + 8);
  if (!v47)
  {
    v47 = &TSD::_DrawableArchive_default_instance_;
  }

  if ((v47[17] & 2) == 0)
  {
    self->super.super.super.mAspectRatioLocked = 1;
  }

  v48 = *(archive + 43);
  self->mStartTime = *(archive + 42);
  self->mEndTime = v48;
  self->mPosterTime = *(archive + 44);
  self->mAudioOnly = *(archive + 197);
  self->mStreaming = *(archive + 198);
  self->mNativeAudioRecording = *(archive + 199);
  self->mPlaysAcrossSlides = *(archive + 204);
  v49 = *(archive + 10);
  if ((v49 & 0x40000) != 0)
  {
    LODWORD(v51) = *(archive + 45);
    if (v51 <= 2)
    {
      v51 = v51;
    }

    else
    {
      v51 = 0;
    }

    goto LABEL_37;
  }

  if ((v49 & 0x4000000) == 0)
  {
    goto LABEL_38;
  }

  v50 = *(archive + 50);
  switch(v50)
  {
    case 2:
      v51 = 2;
      goto LABEL_37;
    case 1:
      v51 = 1;
LABEL_37:
      self->mLoopOption = v51;
      break;
    case 0:
      self->mLoopOption = 0;
      break;
  }

LABEL_38:
  self->mVolume = *(archive + 46);
  if (objc_msgSend_preUFFVersion(unarchiverCopy, v8, v9) < 0x774114C68 && self->mVolume == 0.0)
  {
    objc_msgSend_willModifyForUpgrade(self, v52, v53);
    self->mVolume = 1.0;
  }

  v54 = *(archive + 10);
  if ((v54 & 0x200000) != 0)
  {
    objc_msgSend_setFlags_(self, v52, *(archive + 48));
    v54 = *(archive + 10);
  }

  if ((v54 & 0x400) != 0)
  {
    TSPCGSizeCreateFromMessage(*(archive + 16));
  }

  else
  {
    objc_msgSend_defaultOriginalSize(self, v52, v53);
  }

  self->super._originalSize.width = v56;
  self->super._originalSize.height = v57;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v58 = *(archive + 10);
  if ((v58 & 0x800) != 0)
  {
    TSPCGSizeCreateFromMessage(*(archive + 17));
    self->mNaturalSize.width = v59;
    self->mNaturalSize.height = v60;
    *(v71 + 24) = 1;
    v58 = *(archive + 10);
  }

  if ((v58 & 0x2000) != 0)
  {
    v61 = [TSDAttribution alloc];
    if (*(archive + 19))
    {
      v63 = objc_msgSend_initFromMessage_unarchiver_(v61, v62, *(archive + 19), unarchiverCopy);
    }

    else
    {
      v63 = objc_msgSend_initFromMessage_unarchiver_(v61, v62, &TSD::_Attribution_default_instance_, unarchiverCopy);
    }

    attribution = self->super._attribution;
    self->super._attribution = v63;

    v58 = *(archive + 10);
  }

  if ((v58 & 0x4000) != 0)
  {
    v65 = [TSDMovieFingerprint alloc];
    if (*(archive + 20))
    {
      v67 = objc_msgSend_initFromMessage_unarchiver_(v65, v66, *(archive + 20), unarchiverCopy);
    }

    else
    {
      v67 = objc_msgSend_initFromMessage_unarchiver_(v65, v66, &TSD::_MovieFingerprint_default_instance_, unarchiverCopy);
    }

    mFingerprint = self->mFingerprint;
    self->mFingerprint = v67;
  }

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = sub_2766B4F3C;
  v69[3] = &unk_27A6CCC00;
  v69[4] = self;
  v69[5] = &v70;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v55, v69);
  _Block_object_dispose(&v70, 8);
}

- (BOOL)validatedLoadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812F5188[90]);

  if (objc_msgSend_sourceType(unarchiverCopy, v7, v8) == 2 && (*(v6 + 43) & 0x20) != 0 && (*(v6 + 206) & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    objc_msgSend_loadFromArchive_unarchiver_(self, v9, v6, unarchiverCopy);
    v10 = 1;
  }

  return v10;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v66 = MEMORY[0x277D85DD0];
  v67 = 3221225472;
  v68 = sub_2766B5A68;
  v69 = &unk_27A6CC520;
  archiveCopy = archive;
  v7 = archiverCopy;
  v70 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, archive, &v66);
  mMovieData = self->mMovieData;
  if (mMovieData)
  {
    *(archive + 10) |= 0x40u;
    v12 = *(archive + 12);
    if (!v12)
    {
      v13 = *(archive + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C9BA90](v13);
      *(archive + 12) = v12;
    }

    objc_msgSend_setDataReference_message_(v7, v9, mMovieData, v12, v66, v67, v68, v69);
  }

  else
  {
    mMovieRemoteURL = self->mMovieRemoteURL;
    if (mMovieRemoteURL)
    {
      v15 = objc_msgSend_absoluteString(mMovieRemoteURL, v9, v10, v66, v67, v68, v69);
      v18 = objc_msgSend_tsp_protobufString(v15, v16, v17);
      *(archive + 10) |= 1u;
      sub_276658080(__p, v18);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v74 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  mImportedAuxiliaryMovieData = self->mImportedAuxiliaryMovieData;
  if (mImportedAuxiliaryMovieData)
  {
    *(archive + 10) |= 0x1000u;
    v20 = *(archive + 18);
    if (!v20)
    {
      v21 = *(archive + 1);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C9BA90](v21);
      *(archive + 18) = v20;
    }

    objc_msgSend_setDataReference_message_(v7, v9, mImportedAuxiliaryMovieData, v20, v66, v67, v68, v69);
  }

  mImportedAuxiliaryMovieDataOriginalFilename = self->mImportedAuxiliaryMovieDataOriginalFilename;
  if (mImportedAuxiliaryMovieDataOriginalFilename)
  {
    v23 = objc_msgSend_tsp_protobufString(mImportedAuxiliaryMovieDataOriginalFilename, v9, v10);
    *(archive + 10) |= 2u;
    sub_276658080(__p, v23);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v74 < 0)
    {
      operator delete(__p[0]);
    }
  }

  mPosterImageData = self->mPosterImageData;
  if (mPosterImageData)
  {
    *(archive + 10) |= 0x80u;
    v25 = *(archive + 13);
    if (!v25)
    {
      v26 = *(archive + 1);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x277C9BA90](v26);
      *(archive + 13) = v25;
    }

    objc_msgSend_setDataReference_message_(v7, v9, mPosterImageData, v25, v66, v67, v68, v69);
  }

  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v7, v9, 23, archive, v66, v67, v68, v69);
  mPosterImageGeneratedWithAlphaSupport = self->mPosterImageGeneratedWithAlphaSupport;
  v29 = *(archive + 10);
  v30 = v29 | 0x10000000;
  *(archive + 10) = v29 | 0x10000000;
  *(archive + 205) = mPosterImageGeneratedWithAlphaSupport;
  mAudioOnlyImageData = self->mAudioOnlyImageData;
  if (mAudioOnlyImageData)
  {
    *(archive + 10) = v29 | 0x10000100;
    v32 = *(archive + 14);
    if (!v32)
    {
      v33 = *(archive + 1);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = MEMORY[0x277C9BA90](v33);
      *(archive + 14) = v32;
    }

    objc_msgSend_setDataReference_message_(v7, v27, mAudioOnlyImageData, v32);
    v30 = *(archive + 10);
  }

  mStyle = self->mStyle;
  if (mStyle)
  {
    *(archive + 10) = v30 | 0x200;
    v35 = *(archive + 15);
    if (!v35)
    {
      v36 = *(archive + 1);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = MEMORY[0x277C9BB20](v36);
      *(archive + 15) = v35;
    }

    objc_msgSend_setStrongReference_message_(v7, v27, mStyle, v35);
    v30 = *(archive + 10);
  }

  mStartTime = self->mStartTime;
  *(archive + 42) = mStartTime;
  mEndTime = self->mEndTime;
  *(archive + 43) = mEndTime;
  mPosterTime = self->mPosterTime;
  v40 = v30 | 0x38000;
  *(archive + 10) = v30 | 0x38000;
  *(archive + 44) = mPosterTime;
  mLoopOption = self->mLoopOption;
  if (mLoopOption <= 2)
  {
    v40 = v30 | 0x4038000;
    *(archive + 10) = v30 | 0x4038000;
    *(archive + 50) = mLoopOption;
  }

  *(archive + 46) = LODWORD(self->mVolume);
  *(archive + 197) = self->mAudioOnly;
  *(archive + 198) = self->mStreaming;
  mPlaysAcrossSlides = self->mPlaysAcrossSlides;
  *(archive + 10) = v40 | 0x9880000;
  *(archive + 204) = mPlaysAcrossSlides;
  objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v7, v27, 28, archive);
  if (self->mPlaysAcrossSlides)
  {
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v7, v43, *MEMORY[0x277D80968], *MEMORY[0x277D808D0], @"TSDMovieInfoPlaysAcrossSlides");
  }

  width = self->super._originalSize.width;
  height = self->super._originalSize.height;
  *(archive + 10) |= 0x400u;
  v46 = *(archive + 16);
  if (!v46)
  {
    v47 = *(archive + 1);
    if (v47)
    {
      v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
    }

    v46 = MEMORY[0x277C9BAD0](v47);
    *(archive + 16) = v46;
  }

  v75.width = width;
  v75.height = height;
  TSPCGSizeCopyToMessage(v75, v46);
  v48 = self->mNaturalSize.width;
  v49 = self->mNaturalSize.height;
  *(archive + 10) |= 0x800u;
  v50 = *(archive + 17);
  if (!v50)
  {
    v51 = *(archive + 1);
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    v50 = MEMORY[0x277C9BAD0](v51);
    *(archive + 17) = v50;
  }

  v76.width = v48;
  v76.height = v49;
  TSPCGSizeCopyToMessage(v76, v50);
  if (self->mNativeAudioRecording)
  {
    *(archive + 10) |= 0x2000000u;
    *(archive + 199) = 1;
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v7, v52, 27, archive);
  }

  objc_msgSend_flags(self, v52, v53);
  v56 = objc_msgSend_flags(self, v54, v55);
  *(archive + 10) |= 0x200000u;
  *(archive + 48) = v56;
  if (self->super._attribution)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v7, v57, 26, archive);
    attribution = self->super._attribution;
    *(archive + 10) |= 0x2000u;
    v60 = *(archive + 19);
    if (!v60)
    {
      v61 = *(archive + 1);
      if (v61)
      {
        v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
      }

      v60 = google::protobuf::Arena::CreateMaybeMessage<TSD::Attribution>(v61);
      *(archive + 19) = v60;
    }

    objc_msgSend_saveToMessage_archiver_(attribution, v58, v60, v7);
  }

  if (self->mFingerprint)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v7, v57, 29, archive);
    mFingerprint = self->mFingerprint;
    *(archive + 10) |= 0x4000u;
    v64 = *(archive + 20);
    if (!v64)
    {
      v65 = *(archive + 1);
      if (v65)
      {
        v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
      }

      v64 = google::protobuf::Arena::CreateMaybeMessage<TSD::MovieFingerprint>(v65);
      *(archive + 20) = v64;
    }

    objc_msgSend_saveToMessage_archiver_(mFingerprint, v62, v64, v7);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2766B5BAC, off_2812F5188[90]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

@end