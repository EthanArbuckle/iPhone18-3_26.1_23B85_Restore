@interface TSDFrameSpec
+ (TSDFrameSpec)frameSpecWithName:(id)name;
+ (id)p_imageKeys;
+ (void)initialize;
- (CGPoint)i_adornmentPosition;
- (CGSize)i_adornmentSize;
- (TSDFrameSpec)initWithBundle:(id)bundle;
- (id)i_providerForIndex:(int)index mask:(BOOL)mask;
- (id)p_imageDataForKey:(id)key;
- (id)p_infoDictionary;
- (void)i_removeInterestInProviders;
- (void)p_loadImageMetrics;
@end

@implementation TSDFrameSpec

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = dispatch_queue_create("TSDFrameSpec frame dictionary", 0);
    v3 = qword_280A4CA58;
    qword_280A4CA58 = v2;

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = qword_280A4CA60;
    qword_280A4CA60 = v4;

    v6 = qword_280A4CA68;
    qword_280A4CA68 = &unk_28859C7E8;
  }
}

+ (TSDFrameSpec)frameSpecWithName:(id)name
{
  nameCopy = name;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_27679E100;
  v15 = sub_27679E110;
  v16 = 0;
  v4 = qword_280A4CA58;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_27679E118;
  v8[3] = &unk_27A6CDB08;
  v9 = nameCopy;
  v10 = &v11;
  v5 = nameCopy;
  dispatch_sync(v4, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (TSDFrameSpec)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  if (!bundleCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDFrameSpec initWithBundle:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameSpec.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 224, 0, "invalid nil value for '%{public}s'", "bundle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v90.receiver = self;
  v90.super_class = TSDFrameSpec;
  v14 = [(TSDFrameSpec *)&v90 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->mBundle, bundle);
    v18 = objc_msgSend_p_infoDictionary(v15, v16, v17);
    objc_opt_class();
    v20 = objc_msgSend_objectForKey_(v18, v19, @"name");
    v21 = TSUDynamicCast();

    if (!v21)
    {
      v24 = objc_msgSend_bundlePath(bundleCopy, v22, v23);
      v27 = objc_msgSend_lastPathComponent(v24, v25, v26);
      v21 = objc_msgSend_stringByDeletingPathExtension(v27, v28, v29);
    }

    v30 = objc_msgSend_copy(v21, v22, v23);
    mFrameName = v15->mFrameName;
    v15->mFrameName = v30;

    v33 = objc_msgSend_objectForKey_(v18, v32, @"Display");
    v15->mDisplayInPicker = objc_msgSend_BOOLValue(v33, v34, v35);

    v37 = objc_msgSend_objectForKey_(v18, v36, @"Left Frame Inset");
    v15->mLeftInset = objc_msgSend_intValue(v37, v38, v39);

    v41 = objc_msgSend_objectForKey_(v18, v40, @"Right Frame Inset");
    v15->mRightInset = objc_msgSend_intValue(v41, v42, v43);

    v45 = objc_msgSend_objectForKey_(v18, v44, @"Top Frame Inset");
    v15->mTopInset = objc_msgSend_intValue(v45, v46, v47);

    v49 = objc_msgSend_objectForKey_(v18, v48, @"Bottom Frame Inset");
    v15->mBottomInset = objc_msgSend_intValue(v49, v50, v51);

    v53 = objc_msgSend_objectForKey_(v18, v52, @"Stretch Tiles");
    v15->mTilingMode = objc_msgSend_intValue(v53, v54, v55);

    v57 = objc_msgSend_objectForKey_(v18, v56, @"Minimum Asset Scale");

    if (v57)
    {
      v59 = objc_msgSend_objectForKey_(v18, v58, @"Minimum Asset Scale");
      objc_msgSend_floatValue(v59, v60, v61);
      TSUClamp();
      v15->mMinimumAssetScale = v62;
    }

    else
    {
      v15->mMinimumAssetScale = 1.0;
    }

    v63 = objc_msgSend_objectForKey_(v18, v58, @"Adornment Location Relative");

    if (v63)
    {
      v65 = objc_msgSend_objectForKey_(v18, v64, @"Adornment Location Relative");
      objc_msgSend_floatValue(v65, v66, v67);
      v15->mAdornmentPosition.x = v68;

      v70 = objc_msgSend_objectForKey_(v18, v69, @"Adornment Location Absolute");
      objc_msgSend_floatValue(v70, v71, v72);
      v15->mAdornmentPosition.y = v73;
    }

    v74 = objc_msgSend_objectForKey_(v18, v64, @"Top Left");
    v15->mHasImages = v74 != 0;

    v76 = objc_msgSend_objectForKey_(v18, v75, @"Top Left Mask");
    v15->mHasMask = v76 != 0;

    v78 = objc_msgSend_objectForKey_(v18, v77, @"Adornment");
    v15->mHasAdornment = v78 != 0;

    v79 = objc_alloc_init(MEMORY[0x277D812A0]);
    mLoadedImageMetricsOnce = v15->mLoadedImageMetricsOnce;
    v15->mLoadedImageMetricsOnce = v79;

    if (!v15->mInfoDictionary)
    {
      v82 = MEMORY[0x277D81150];
      v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "[TSDFrameSpec initWithBundle:]");
      v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameSpec.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v86, v83, v85, 264, 0, "Info dictionary should have been loaded as part of the frame spec init process");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88);
    }
  }

  return v15;
}

- (id)p_infoDictionary
{
  mInfoDictionary = self->mInfoDictionary;
  if (!mInfoDictionary)
  {
    v4 = MEMORY[0x277CBEAC0];
    v5 = objc_msgSend_pathForResource_ofType_(self->mBundle, a2, @"index", @"plist");
    v7 = objc_msgSend_dictionaryWithContentsOfFile_(v4, v6, v5);
    v8 = self->mInfoDictionary;
    self->mInfoDictionary = v7;

    mInfoDictionary = self->mInfoDictionary;
    if (!mInfoDictionary)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDFrameSpec p_infoDictionary]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameSpec.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 280, 0, "invalid nil value for '%{public}s'", "mInfoDictionary");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
      mInfoDictionary = self->mInfoDictionary;
    }
  }

  return mInfoDictionary;
}

+ (id)p_imageKeys
{
  if (qword_280A4CA78 != -1)
  {
    sub_27680E5A4();
  }

  v3 = qword_280A4CA70;

  return v3;
}

- (id)p_imageDataForKey:(id)key
{
  keyCopy = key;
  v7 = objc_msgSend_p_infoDictionary(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, keyCopy);

  if (!v9 || (objc_msgSend_resourceURL(self->mBundle, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend_URLByAppendingPathComponent_(v12, v13, v9), v14 = objc_claimAutoreleasedReturnValue(), v12, objc_msgSend_readOnlyDataFromURL_(MEMORY[0x277D80828], v15, v14), v16 = objc_claimAutoreleasedReturnValue(), v14, !v16))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSDFrameSpec p_imageDataForKey:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameSpec.m");
    mFrameName = self->mFrameName;
    v24 = objc_msgSend_resourceURL(self->mBundle, v22, v23);
    v26 = objc_msgSend_URLByAppendingPathComponent_(v24, v25, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v27, v18, v20, 304, 0, "Unable to find image data for frame %{public}@ for key %{public}@. Filename %{public}@, URL %{public}@", mFrameName, keyCopy, v9, v26);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    v16 = 0;
  }

  return v16;
}

- (void)p_loadImageMetrics
{
  mLoadedImageMetricsOnce = self->mLoadedImageMetricsOnce;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_27679EDC0;
  v3[3] = &unk_27A6CC658;
  v3[4] = self;
  objc_msgSend_performBlockOnce_(mLoadedImageMetricsOnce, a2, v3);
}

- (void)i_removeInterestInProviders
{
  v19 = *MEMORY[0x277D85DE8];
  if (atomic_fetch_add(&self->mInterest, 0xFFFFFFFF) == 1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = objc_msgSend_allValues(selfCopy->mProvidersByKey, v3, v4, 0);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
    if (v9)
    {
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v5);
          }

          objc_msgSend_flush(*(*(&v14 + 1) + 8 * v11++), v7, v8);
        }

        while (v9 != v11);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v14, v18, 16);
      }

      while (v9);
    }

    objc_msgSend_removeAllObjects(selfCopy->mProvidersByKey, v12, v13);
    objc_sync_exit(selfCopy);
  }
}

- (id)i_providerForIndex:(int)index mask:(BOOL)mask
{
  maskCopy = mask;
  if (index == 8 && mask)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDFrameSpec(Internal) i_providerForIndex:mask:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameSpec.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 402, 0, "Masks for adornments are unsupported.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_opt_class();
  v17 = objc_msgSend_p_imageKeys(v14, v15, v16);
  v19 = objc_msgSend_objectAtIndex_(v17, v18, index);

  if (maskCopy)
  {
    v21 = objc_msgSend_stringByAppendingString_(v19, v20, @" Mask");

    v19 = v21;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v25 = objc_msgSend_objectForKey_(selfCopy->mProvidersByKey, v23, v19);
  if (!v25)
  {
    v26 = objc_msgSend_p_imageDataForKey_(selfCopy, v24, v19);
    if (!v26)
    {
      v61 = MEMORY[0x277D81150];
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSDFrameSpec(Internal) i_providerForIndex:mask:]");
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameSpec.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v65, v62, v64, 435, 0, "Unable to load an image!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67);
      v26 = 0;
      v25 = 0;
      goto LABEL_20;
    }

    v29 = objc_msgSend_sharedPool(TSDImageProviderPool, v27, v28);
    v98 = objc_msgSend_temporaryProviderForData_shouldValidate_(v29, v30, v26, 0);

    objc_opt_class();
    v31 = TSUDynamicCast();
    v25 = v31;
    if (v31)
    {
      if (objc_msgSend_isValid(v31, v32, v33))
      {
        mProvidersByKey = selfCopy->mProvidersByKey;
        if (!mProvidersByKey)
        {
          v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v38 = selfCopy->mProvidersByKey;
          selfCopy->mProvidersByKey = v37;

          mProvidersByKey = selfCopy->mProvidersByKey;
        }

        objc_msgSend_setObject_forKey_(mProvidersByKey, v34, v25, v19);
        if (selfCopy->mProviderWasInvalid)
        {
          v92 = MEMORY[0x277D81150];
          v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSDFrameSpec(Internal) i_providerForIndex:mask:]");
          v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameSpec.m");
          v43 = objc_msgSend_frameName(selfCopy, v41, v42);
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          v48 = objc_msgSend_filename(v26, v46, v47);
          v51 = objc_msgSend_anonymousUniqueIdentifier(v26, v49, v50);
          v54 = objc_msgSend_UUIDString(v51, v52, v53);
          v57 = objc_msgSend_digestString(v26, v55, v56);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v58, v96, v94, 430, 0, "Frame %@ had invalid image datas that have become valid within the same process. data <%{public}@: filename=%@, anonymousUniqueIdentifier=%{public}@, digestString=%@> ", v43, v45, v48, v54, v57);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60);
          selfCopy->mProviderWasInvalid = 0;
        }

        goto LABEL_19;
      }

      v93 = objc_msgSend_validationStatus(v25, v34, v35);
    }

    else
    {
      v93 = 0;
    }

    v91 = MEMORY[0x277D81150];
    v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSDFrameSpec(Internal) i_providerForIndex:mask:]");
    v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDFrameSpec.m");
    v69 = objc_opt_class();
    v70 = NSStringFromClass(v69);
    v73 = objc_msgSend_filename(v26, v71, v72);
    v76 = objc_msgSend_anonymousUniqueIdentifier(v26, v74, v75);
    v79 = objc_msgSend_UUIDString(v76, v77, v78);
    v82 = objc_msgSend_digestString(v26, v80, v81);
    v85 = objc_msgSend_frameName(selfCopy, v83, v84);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v86, v97, v95, 422, 0, "Unable to make a valid image provider for image data <%{public}@: filename=%@, anonymousUniqueIdentifier=%{public}@, digestString=%@>  for frame %@. validation status %zu ", v70, v73, v79, v82, v85, v93);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88);
    selfCopy->mProviderWasInvalid = 1;
LABEL_19:

    goto LABEL_20;
  }

  v26 = 0;
LABEL_20:
  objc_sync_exit(selfCopy);

  v89 = v25;
  return v25;
}

- (CGSize)i_adornmentSize
{
  objc_msgSend_p_loadImageMetrics(self, a2, v2);
  width = self->mAdornmentSize.width;
  height = self->mAdornmentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)i_adornmentPosition
{
  x = self->mAdornmentPosition.x;
  y = self->mAdornmentPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end