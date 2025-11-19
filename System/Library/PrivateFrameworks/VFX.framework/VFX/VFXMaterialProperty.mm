@interface VFXMaterialProperty
+ (VFXMaterialProperty)materialPropertyWithContents:(id)a3;
+ (__CFXImage)_createCFXImageFromImage:(id)a3;
+ (__CFXImage)copyCFXImageFromImage:(id)a3 textureOptions:(unsigned __int8)a4 wasCached:(BOOL *)a5;
+ (id)captureDeviceOutputConsumerWithOptions:(id)a3;
+ (id)precomputedLightingEnvironmentContentsWithData:(id)a3 error:(id *)a4;
+ (id)precomputedLightingEnvironmentContentsWithURL:(id)a3 error:(id *)a4;
+ (id)precomputedLightingEnvironmentDataForContents:(id)a3 radianceTextureSize:(unint64_t)a4 device:(id)a5 error:(id *)a6;
- ($42C19FAB4E3144CC06073197E1960D27)textureSampler;
- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4;
- (BOOL)_hasDefaultValues;
- (BOOL)isColorManaged;
- (CFXColor4)color4;
- (CGContext)copyBitmap;
- (CGImage)contentsAsCGImage;
- (NSArray)animationKeys;
- (NSString)description;
- (VFXMaterialProperty)init;
- (VFXMaterialProperty)initWithCoder:(id)a3;
- (VFXMaterialProperty)initWithParent:(id)a3 andCustomName:(id)a4;
- (VFXMaterialProperty)initWithParent:(id)a3 propertyType:(char)a4;
- (__CFXAnimationManager)animationManager;
- (__CFXMaterialProperty)materialPropertyCreateIfNeeded:(BOOL)a3;
- (__n128)contentsScale;
- (__n128)contentsTransform;
- (double)contentsOffset;
- (double)linearExtendedSRGBColor;
- (float)contentsRotation;
- (float)intensity;
- (id)UIView;
- (id)_animationPathForKey:(id)a3;
- (id)_vfxAnimationForKey:(id)a3;
- (id)animationPlayerForKey:(id)a3;
- (id)assetValue;
- (id)avPlayer;
- (id)captureDevice;
- (id)captureDeviceOutputConsumerSource;
- (id)color;
- (id)contents;
- (id)contentsAbsoluteURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)floatValue;
- (id)image;
- (id)initPresentationMaterialPropertyWithModelProperty:(id)a3;
- (id)layer;
- (id)mtlTexture;
- (id)precomputedLightingEnvironment;
- (id)presentationMaterialProperty;
- (id)propertyName;
- (id)resolvedURLForContents:(id)a3;
- (id)textureProvider;
- (id)valueForKey:(id)a3;
- (int64_t)_presentationMappingChannel;
- (int64_t)magnificationFilter;
- (int64_t)mappingChannel;
- (int64_t)minificationFilter;
- (int64_t)mipFilter;
- (int64_t)textureComponents;
- (int64_t)wrapS;
- (int64_t)wrapT;
- (uint64_t)setContentsTransform:(__n128)a3;
- (unint64_t)maxAnisotropy;
- (unsigned)_textureOptions;
- (void)__allocateContentTransformIfNeeded;
- (void)_clearContentsForDeallocation:(BOOL)a3;
- (void)_copyAnimationsFrom:(id)a3;
- (void)_copyBindingsFrom:(id)a3;
- (void)_customEncodingOfVFXMaterialProperty:(id)a3;
- (void)_didDecodeVFXMaterialProperty:(id)a3;
- (void)_layerDidChange:(id)a3;
- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5;
- (void)_setColor:(id)a3;
- (void)_setImagePath:(id)a3 withResolvedURL:(id)a4;
- (void)_setParent:(id)a3;
- (void)_setSourceObject:(id)a3 forBinding:(id)a4;
- (void)_syncObjCAnimations;
- (void)_updateCFXImageWithContents:(id)a3;
- (void)_updateMaterialAVPlayer:(id)a3;
- (void)_updateMaterialAsset:(id)a3;
- (void)_updateMaterialCaptureDevice:(id)a3;
- (void)_updateMaterialCaptureDeviceOutputConsumerSource:(id)a3;
- (void)_updateMaterialColor:(id)a3;
- (void)_updateMaterialImage:(id)a3;
- (void)_updateMaterialLayer:(id)a3;
- (void)_updateMaterialMTLTexture:(id)a3;
- (void)_updateMaterialNumber:(id)a3;
- (void)_updateMaterialTextureProvider:(id)a3;
- (void)_updateMaterialUIComponent:(id)a3;
- (void)_updateModelFromPresentation;
- (void)_updatePrecomputedLightingEnvironment:(id)a3;
- (void)_updatePresentationFromModel;
- (void)_updateSampler;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)addAnimationPlayer:(id)a3 forKey:(id)a4;
- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6;
- (void)copyPropertiesFrom:(id)a3 copyContext:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAnimationReferencesUsingBlock:(id)a3;
- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4;
- (void)getCFXImageRef;
- (void)linkCustomPropertyWithParent:(id)a3 andCustomName:(id)a4;
- (void)parentWillDie:(id)a3;
- (void)removeAllAnimations;
- (void)removeAllAnimationsWithBlendOutDuration:(float)a3;
- (void)removeAllBindings;
- (void)removeAnimationForKey:(id)a3;
- (void)removeAnimationForKey:(id)a3 blendOutDuration:(float)a4;
- (void)setAssetValue:(id)a3;
- (void)setAvPlayer:(id)a3;
- (void)setCaptureDevice:(id)a3;
- (void)setCaptureDeviceOutputConsumerSource:(id)a3;
- (void)setColor:(id)a3;
- (void)setColorManaged:(BOOL)a3;
- (void)setContents:(id)a3;
- (void)setContentsOffset:(VFXMaterialProperty *)self;
- (void)setContentsRotation:(float)a3;
- (void)setContentsScale:(VFXMaterialProperty *)self;
- (void)setFloatValue:(id)a3;
- (void)setImage:(id)a3;
- (void)setIntensity:(float)a3;
- (void)setLayer:(id)a3;
- (void)setLinearExtendedSRGBColor:(VFXMaterialProperty *)self;
- (void)setMagnificationFilter:(int64_t)a3;
- (void)setMappingChannel:(int64_t)a3;
- (void)setMaxAnisotropy:(unint64_t)a3;
- (void)setMinificationFilter:(int64_t)a3;
- (void)setMipFilter:(int64_t)a3;
- (void)setMtlTexture:(id)a3;
- (void)setPrecomputedLightingEnvironment:(id)a3;
- (void)setTextureComponents:(int64_t)a3;
- (void)setTextureProvider:(id)a3;
- (void)setUIView:(id)a3;
- (void)setUIWindow:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)setWrapS:(int64_t)a3;
- (void)setWrapT:(int64_t)a3;
- (void)unbindAnimatablePath:(id)a3;
@end

@implementation VFXMaterialProperty

+ (id)precomputedLightingEnvironmentContentsWithURL:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], a2, a3, 1, a4);

  return MEMORY[0x1EEE66B58](a1, sel_precomputedLightingEnvironmentContentsWithData_error_, v6, a4);
}

+ (id)precomputedLightingEnvironmentContentsWithData:(id)a3 error:(id *)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = MEMORY[0x1E696ACD0];
  v8 = objc_opt_class();

  return objc_msgSend_unarchivedObjectOfClass_fromData_error_(v6, v7, v8, a3, a4);
}

+ (id)precomputedLightingEnvironmentDataForContents:(id)a3 radianceTextureSize:(unint64_t)a4 device:(id)a5 error:(id *)a6
{
  v8 = a4;
  v9 = a3;
  v97[1] = *MEMORY[0x1E69E9840];
  objc_msgSend_begin(VFXTransaction, a2, a3, a4);
  objc_msgSend_setImmediateMode_(VFXTransaction, v10, 1, v11);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = objc_msgSend_copy(v9, v12, v13, v14);
    objc_msgSend__forceSynchronousLoading(v9, v16, v17, v18);
  }

  v19 = [VFXWorld alloc];
  v96 = @"VFXWorldLoaderDisableVFXCoreSupport";
  v97[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v20, (isKindOfClass & 1) == 0, v21);
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, v97, &v96, 1);
  v26 = objc_msgSend_initWithOptions_(v19, v24, v23, v25);
  v30 = v26;
  if (isKindOfClass)
  {
    v31 = objc_msgSend_assets(v26, v27, v28, v29);
    v35 = objc_msgSend_rootNode(v31, v32, v33, v34);
    v38 = objc_msgSend_assetNodeWithAsset_(VFXAssetNode, v36, v9, v37);
    objc_msgSend_addChildNode_(v35, v39, v38, v40);
  }

  v41 = objc_msgSend_lightingEnvironment(v30, v27, v28, v29);
  objc_msgSend_setContents_(v41, v42, v9, v43);
  v50 = objc_msgSend_materialProperty(v41, v44, v45, v46);
  if (!v50)
  {
    v51 = sub_1AF0D5194();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF3B20(v51);
    }
  }

  objc_msgSend_commit(VFXTransaction, v47, v48, v49);
  if (sub_1AF166220(v50))
  {
    v53 = objc_msgSend_rendererWithDevice_options_(VFXRenderer, v52, a5, 0);
    objc_msgSend_setWorld_(v53, v54, v30, v55);
    v62 = objc_msgSend__renderContextMetal(v53, v56, v57, v58);
    if (isKindOfClass)
    {
      objc_msgSend_updateAtTime_(v53, v59, v60, v61, 0.0);
    }

    objc_msgSend_beginFrame_(v62, v59, 0, v61);
    v65 = objc_msgSend_textureForMaterialProperty_(v62, v63, v50, v64);
    if (v65 && (v69 = v65, objc_msgSend_textureType(v65, v66, v67, v68) == 5))
    {
      v74 = objc_msgSend_resourceManager(v62, v66, v70, v68);
      if (v8)
      {
        v8 = v8;
      }

      else
      {
        v8 = 256;
      }

      v75 = objc_msgSend_engineContext(v62, v71, v72, v73);
      v77 = objc_msgSend_newRadianceTextureForEnvironmentTexture_size_engineContext_cpuAccessible_(v74, v76, v69, v8, v75, 0);
    }

    else
    {
      v77 = 0;
    }

    v80 = objc_msgSend_irradianceTextureForMaterialProperty_(v62, v66, v50, v68);
    v95 = 5;
    objc_msgSend_endFrameWaitingUntilCompleted_status_error_(v62, v81, 1, &v95, a6);
    v78 = 0;
    if (v77 && v80 && v95 == 4)
    {
      v84 = sub_1AF1F3328(v77, 1, v82, v83);
      v87 = sub_1AF1F3328(v80, 1, v85, v86);
      v78 = objc_alloc_init(VFXPrecomputedLightingEnvironment);
      objc_msgSend_setRadianceData_(v78, v88, v84, v89);
      objc_msgSend_setIrradianceData_(v78, v90, v87, v91);
    }
  }

  else
  {
    if (!sub_1AF1676A0(v50))
    {

      return 0;
    }

    v78 = sub_1AF1676F4(v50);
    v79 = v78;
  }

  if (!v78)
  {
    return 0;
  }

  v93 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v92, v78, 1, a6);

  return v93;
}

- (VFXMaterialProperty)init
{
  v8.receiver = self;
  v8.super_class = VFXMaterialProperty;
  v2 = [(VFXMaterialProperty *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_parent = 0;
    v2->_propertyType = 28;
    *(v2 + 8) &= ~2u;
    v2->_customMaterialProperty = sub_1AF16578C(0, 28);
    v3->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v3, v4, v5, v6);
  }

  return v3;
}

+ (VFXMaterialProperty)materialPropertyWithContents:(id)a3
{
  v4 = [a1 alloc];
  v6 = objc_msgSend_initWithParent_propertyType_(v4, v5, 0, 28);
  objc_msgSend_setContents_(v6, v7, a3, v8);
  return v6;
}

- (VFXMaterialProperty)initWithParent:(id)a3 propertyType:(char)a4
{
  v4 = a4;
  v17.receiver = self;
  v17.super_class = VFXMaterialProperty;
  v6 = [(VFXMaterialProperty *)&v17 init];
  v9 = v6;
  if (v6)
  {
    if (v6 == a3)
    {
      objc_msgSend__setParent_(v6, v7, 0, v8);
    }

    else
    {
      objc_msgSend__setParent_(v6, v7, a3, v8);
    }

    v9->_propertyType = v4;
    *(v9 + 8) = *(v9 + 8) & 0xFD | (2 * (v4 < 22));
    if (v4 <= 21)
    {
      v9->_commonProfile = objc_msgSend_commonProfile(v9->_parent, v10, v11, v12);
    }

    if (!v9->_parent)
    {
      v9->_customMaterialProperty = sub_1AF16578C(0, 28);
    }

    v9->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v9, v10, v11, v12);
    objc_msgSend__syncObjCAnimations(v9, v13, v14, v15);
  }

  return v9;
}

- (VFXMaterialProperty)initWithParent:(id)a3 andCustomName:(id)a4
{
  v20.receiver = self;
  v20.super_class = VFXMaterialProperty;
  v6 = [(VFXMaterialProperty *)&v20 init];
  v9 = v6;
  if (v6)
  {
    if (v6 == a3)
    {
      objc_msgSend__setParent_(v6, v7, 0, v8);
    }

    else
    {
      objc_msgSend__setParent_(v6, v7, a3, v8);
    }

    v9->_propertyType = 28;
    v9->_customMaterialPropertyName = objc_msgSend_copy(a4, v10, v11, v12);
    *(v9 + 8) &= ~2u;
    v9->_animationsLock._os_unfair_lock_opaque = 0;
    objc_msgSend__updateModelFromPresentation(v9, v13, v14, v15);
    objc_msgSend__syncObjCAnimations(v9, v16, v17, v18);
  }

  return v9;
}

- (id)initPresentationMaterialPropertyWithModelProperty:(id)a3
{
  v23.receiver = self;
  v23.super_class = VFXMaterialProperty;
  v7 = [(VFXMaterialProperty *)&v23 init];
  if (v7)
  {
    if (objc_msgSend_parent(a3, v4, v5, v6) == v7)
    {
      objc_msgSend__setParent_(v7, v8, 0, v10);
    }

    else
    {
      v11 = objc_msgSend_parent(a3, v8, v9, v10);
      objc_msgSend__setParent_(v7, v12, v11, v13);
    }

    v17 = objc_msgSend_propertyType(a3, v14, v15, v16);
    v7->_propertyType = v17;
    v21 = *(v7 + 8) & 0xFD | (2 * (v17 < 22));
    *(v7 + 8) = v21;
    if (v17 <= 21)
    {
      v7->_commonProfile = objc_msgSend_commonProfile(v7->_parent, v18, v19, v20);
      v21 = *(v7 + 8);
    }

    *(v7 + 8) = v21 | 1;
    v7->_animationsLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)__allocateContentTransformIfNeeded
{
  if (!self->_contentTransform)
  {
    v4 = malloc_type_malloc(0x60uLL, 0x1000040565EDBD2uLL);
    self->_contentTransform = v4;

    sub_1AF1CCF1C(v4);
  }
}

- (void)dealloc
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2, v3);
  objc_msgSend_removeObserver_(v5, v6, self, v7);

  self->_runtimeResolvedURL = 0;
  objc_msgSend__clearContentsForDeallocation_(self, v8, 1, v9);

  customMaterialProperty = self->_customMaterialProperty;
  if (customMaterialProperty)
  {
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v10, customMaterialProperty, v11);
  }

  commonProfile = self->_commonProfile;
  if (commonProfile)
  {
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v10, commonProfile, v11);
  }

  parentRef = self->_parentRef;
  if (parentRef)
  {
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v10, parentRef, v11);
  }

  free(self->_contentTransform);
  v15.receiver = self;
  v15.super_class = VFXMaterialProperty;
  [(VFXMaterialProperty *)&v15 dealloc];
}

- (id)contentsAbsoluteURL
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_world(self, v3, v4, v5);
    v10 = objc_msgSend_assetPathResolver(v6, v7, v8, v9);
    v15 = objc_msgSend_filename(self->_contents, v11, v12, v13);

    return objc_msgSend_absoluteURLForAssetPath_(v10, v14, v15, v16);
  }

  runtimeResolvedURL = self->_runtimeResolvedURL;
  if (runtimeResolvedURL)
  {
    return runtimeResolvedURL;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  runtimeResolvedURL = self->_contents;
  if (isKindOfClass)
  {
    return runtimeResolvedURL;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v22 = MEMORY[0x1E695DFF8];
  contents = self->_contents;

  return objc_msgSend_fileURLWithPath_(v22, v20, contents, v21);
}

- (void)_setParent:(id)a3
{
  self->_parent = a3;
  parentRef = self->_parentRef;
  if (parentRef != objc_msgSend___CFObject(a3, a2, a3, v3))
  {
    v10 = self->_parentRef;
    if (v10)
    {
      CFRelease(v10);
      self->_parentRef = 0;
    }

    v11 = objc_msgSend___CFObject(a3, v7, v8, v9);
    if (v11)
    {
      v11 = CFRetain(v11);
    }

    self->_parentRef = v11;
  }
}

- (void)linkCustomPropertyWithParent:(id)a3 andCustomName:(id)a4
{
  v5 = a3;
  if (a3 == self)
  {
    a3 = 0;
  }

  objc_msgSend__setParent_(self, a2, a3, a4);

  v10 = objc_msgSend_copy(a4, v7, v8, v9);
  self->_customMaterialPropertyName = v10;
  self->_propertyType = 28;
  *(self + 8) &= ~2u;
  if (v10 && !self->_customMaterialProperty)
  {
    self->_customMaterialProperty = sub_1AF16578C(0, 28);
  }

  if (objc_msgSend___CFObject(v5, v11, v12, v13) == self)
  {
    v17 = 0;
  }

  else
  {
    v17 = objc_msgSend___CFObject(v5, v14, v15, v16);
  }

  self->_customMaterialProperty->var13 = v17;
}

- (__CFXMaterialProperty)materialPropertyCreateIfNeeded:(BOOL)a3
{
  v4 = a3;
  propertyType = self->_propertyType;
  if (propertyType <= 0x19)
  {
    if (propertyType == 23)
    {
      parentRef = self->_parentRef;
      if (!parentRef)
      {
        return 0;
      }

      v20 = CFGetTypeID(parentRef);
      if (v20 != sub_1AF19AF4C())
      {
        return 0;
      }

      v21 = self->_parentRef;
      if (!v21)
      {
        return 0;
      }

      return sub_1AF19B4EC(v21, v4);
    }

    else
    {
      if (propertyType != 25)
      {
LABEL_32:
        v22 = objc_msgSend_commonProfile(self, a2, a3, v3);
        if (v22)
        {
          v23 = self->_propertyType;

          return sub_1AF1656E4(v22, v23, v4);
        }

        return 0;
      }

      v8 = self->_parentRef;
      if (!v8)
      {
        return 0;
      }

      v9 = CFGetTypeID(v8);
      if (v9 != sub_1AF1CF31C())
      {
        return 0;
      }

      v10 = self->_parentRef;
      if (!v10)
      {
        return 0;
      }

      return sub_1AF1D0008(v10, v4);
    }
  }

  else
  {
    if (propertyType != 26)
    {
      if (propertyType == 27)
      {
        v16 = self->_parentRef;
        if (v16)
        {
          v17 = CFGetTypeID(v16);
          if (v17 == sub_1AF162694())
          {
            v18 = self->_parentRef;
            if (v18)
            {
              v7 = sub_1AF162BF0(self->_parentRef);
              if (!v7 && v4)
              {
                v7 = sub_1AF16578C(v18, 27);
                sub_1AF162B68(v18, v7);
                CFRelease(v7);
              }

              return v7;
            }
          }
        }

        return 0;
      }

      if (propertyType == 28)
      {
        return self->_customMaterialProperty;
      }

      goto LABEL_32;
    }

    v12 = self->_parentRef;
    if (!v12)
    {
      return 0;
    }

    v13 = CFGetTypeID(v12);
    v14 = sub_1AF1CF31C();
    v15 = self->_parentRef;
    if (v13 == v14)
    {
      if (!v15)
      {
        return 0;
      }

      return sub_1AF1D005C(v15, v4);
    }

    else
    {
      v24 = CFGetTypeID(v15);
      if (v24 != sub_1AF19AF4C())
      {
        return 0;
      }

      v25 = self->_parentRef;
      if (!v25)
      {
        return 0;
      }

      return sub_1AF19B558(v25, v4);
    }
  }
}

- (id)_animationPathForKey:(id)a3
{
  v5 = objc_msgSend_materialPropertyName(self, a2, a3, v3);
  v8 = objc_msgSend_stringByAppendingString_(v5, v6, @".", v7);

  return objc_msgSend_stringByAppendingString_(v8, v9, a3, v10);
}

- (void)_clearContentsForDeallocation:(BOOL)a3
{
  contentType = self->_contentType;
  v5 = contentType > 0xA;
  v6 = (1 << contentType) & 0x794;
  if (!v5 && v6 != 0)
  {
    contents = self->_contents;
    if (contents)
    {
      v11[0] = 0;
      v11[1] = v11;
      v11[2] = 0x3052000000;
      v11[3] = sub_1AF2DAC84;
      v11[4] = sub_1AF2DAC94;
      v11[5] = contents;
      if (a3)
      {
        v9 = 0;
      }

      else
      {
        v9 = self;
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1AF2DACA0;
      v10[3] = &unk_1E7A7E858;
      v10[4] = v11;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, v9, v10);
      _Block_object_dispose(v11, 8);
    }
  }

  self->_contents = 0;
}

- (void)_setColor:(id)a3
{
  if (self->_contents != a3)
  {
    self->_contents = a3;
    self->_contentType = 0;
  }
}

- (void)setColor:(id)a3
{
  if ((*(self + 8) & 1) != 0 || self->_contents != a3)
  {
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0, v3);
    self->_contents = a3;
    self->_contentType = 0;
    if (a3)
    {
      v8 = objc_msgSend__animationPathForKey_(self, v6, @"contents", v7);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1AF2DAE00;
      v10[3] = &unk_1E7A7E220;
      v10[4] = self;
      v10[5] = a3;
      objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v9, self, v8, v10);
    }
  }
}

- (id)color
{
  if (*(self + 8))
  {
    v6 = objc_msgSend_worldRef(self, a2, v2, v3);
    v10 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6);
    }

    v11 = objc_msgSend_materialProperty(self, v7, v8, v9);
    if (v11 && (v12 = sub_1AF1660D8(v11)) != 0)
    {
      v16 = v12;
      v17 = MEMORY[0x1E69DC888];
      isColorManaged = objc_msgSend_isColorManaged(self, v13, v14, v15);
      v5 = objc_msgSend_vfx_colorWithCFXColor_ignoringColorSpace_(v17, v19, v16, isColorManaged ^ 1u);
      if (!v10)
      {
        return v5;
      }
    }

    else
    {
      v5 = 0;
      if (!v10)
      {
        return v5;
      }
    }

    sub_1AF1CEA9C(v10);
    return v5;
  }

  if (self->_contentType)
  {
    return 0;
  }

  v21 = self->_contents;

  return v21;
}

- (double)linearExtendedSRGBColor
{
  v4 = objc_msgSend_color(a1, a2, a3, a4);

  return CFXColorGetLinearExtendedSRGBComponents(v4);
}

- (void)setLinearExtendedSRGBColor:(VFXMaterialProperty *)self
{
  v4 = sub_1AF16484C(v2);
  v7 = objc_msgSend_colorWithCGColor_(MEMORY[0x1E69DC888], v5, v4, v6);
  objc_msgSend_setColor_(self, v8, v7, v9);
  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)setFloatValue:(id)a3
{
  contents = self->_contents;
  if (contents != a3 && (objc_msgSend_isEqual_(contents, a2, a3, v3) & 1) == 0)
  {
    objc_msgSend__clearContentsForDeallocation_(self, v7, 0, v8);
    self->_contents = a3;
    self->_contentType = 5;
    if (a3)
    {
      v11 = objc_msgSend__animationPathForKey_(self, v9, @"contents", v10);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1AF2DB054;
      v13[3] = &unk_1E7A7E220;
      v13[4] = self;
      v13[5] = a3;
      objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v12, self, v11, v13);
    }
  }
}

- (id)floatValue
{
  if (*(self + 8))
  {
    v7 = objc_msgSend_worldRef(self, a2, v2, v3);
    v11 = v7;
    if (v7)
    {
      sub_1AF1CEA20(v7);
    }

    v12 = objc_msgSend_materialProperty(self, v8, v9, v10);
    if (v12)
    {
      v13 = v12;
      v14 = sub_1AF1660D8(v12);
      if (v14)
      {
        v15 = sub_1AF167CD8(v13);
        v20 = 12;
        if (v15 != 4)
        {
          v20 = 0;
        }

        LODWORD(v19) = *&v14[v20];
        v14 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v16, v17, v18, v19);
      }

      if (!v11)
      {
        return v14;
      }
    }

    else
    {
      v14 = 0;
      if (!v11)
      {
        return v14;
      }
    }

    sub_1AF1CEA9C(v11);
    return v14;
  }

  if (self->_contentType != 5)
  {
    return 0;
  }

  v5 = self->_contents;

  return v5;
}

- (void)setAssetValue:(id)a3
{
  if (self->_contents != a3)
  {
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0, v3);
    self->_contents = a3;
    self->_contentType = 6;
    if (a3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = objc_msgSend_rootLayer(a3, v6, v7, v8);
        if (v9)
        {
          objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v10, self, v26, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], MEMORY[0x1E69E9820], 3221225472, sub_1AF2DB340, &unk_1E7A7E220, self, v9);
        }

        else
        {
          v24 = sub_1AF0D5194();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDF5BC0();
          }
        }
      }

      else if (self->_propertyType == 26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v13 = objc_msgSend_filename(a3, v6, v11, v12), v17 = objc_msgSend_pathExtension(v13, v14, v15, v16), objc_msgSend_isEqualToString_(v17, v18, @"vfxibl", v19)) && (v21 = objc_msgSend_resolvedURLForContents_(self, v6, v13, v20)) != 0 && (v22 = objc_msgSend_precomputedLightingEnvironmentContentsWithURL_error_(VFXMaterialProperty, v6, v21, 0)) != 0)
      {

        MEMORY[0x1EEE66B58](self, sel__updatePrecomputedLightingEnvironment_, v22, v23);
      }

      else
      {
        objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v6, self, v25, MEMORY[0x1E69E9820], 3221225472, sub_1AF2DB34C, &unk_1E7A7E220, self, a3, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5]);
      }
    }
  }
}

- (id)assetValue
{
  if (*(self + 8))
  {
    v7 = objc_msgSend_worldRef(self, a2, v2, v3);
    v11 = v7;
    if (v7)
    {
      sub_1AF1CEA20(v7);
    }

    v12 = objc_msgSend_materialProperty(self, v8, v9, v10);
    if (v12)
    {
      v13 = sub_1AF167054(v12);
      if (!v11)
      {
        return v13;
      }
    }

    else
    {
      v13 = 0;
      if (!v11)
      {
        return v13;
      }
    }

    sub_1AF1CEA9C(v11);
    return v13;
  }

  if (self->_contentType != 6)
  {
    return 0;
  }

  v5 = self->_contents;

  return v5;
}

- (CGImage)contentsAsCGImage
{
  result = self->_contents;
  if (result)
  {
    v4 = CFGetTypeID(result);
    if (v4 == CGImageGetTypeID())
    {
      return self->_contents;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (CGContext)copyBitmap
{
  v4 = objc_msgSend_contentsAbsoluteURL(self, a2, v2, v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = objc_opt_class();
  v9 = objc_msgSend_copyCFXImageFromImage_(v6, v7, v5, v8);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = sub_1AF197BC0(v9, 1);
  CFRelease(v10);
  return v11;
}

- (CFXColor4)color4
{
  v16 = 0;
  v4 = objc_msgSend_color(self, a2, v2, v3);
  v5 = sub_1AF3710D4(v4);
  v7 = objc_msgSend_vfx_CFXColorIgnoringColorSpace_success_(v5, v6, 0, &v16);
  if (v16)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v16)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v16)
  {
    v12 = HIDWORD(v7);
  }

  else
  {
    v12 = 0;
  }

  if (v16)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v10 | (v11 << 32);
  v15 = v13 | (v12 << 32);
  *&result.var0.var1.var2 = v14;
  *result.var0.var0 = v15;
  return result;
}

- (int64_t)minificationFilter
{
  if ((*(self + 8) & 1) == 0)
  {
    return *(self + 74) & 3;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v6)
  {
    return objc_msgSend_textureSampler(self, v7, v8, v9);
  }

  v10 = v6;
  sub_1AF1CEA20(v6);
  v5 = objc_msgSend_textureSampler(self, v11, v12, v13);
  sub_1AF1CEA9C(v10);
  return v5;
}

- (int64_t)magnificationFilter
{
  if ((*(self + 8) & 1) == 0)
  {
    return (*(self + 74) >> 2) & 3;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v6)
  {
    return (objc_msgSend_textureSampler(self, v7, v8, v9) >> 8);
  }

  v10 = v6;
  sub_1AF1CEA20(v6);
  v5 = (objc_msgSend_textureSampler(self, v11, v12, v13) >> 8);
  sub_1AF1CEA9C(v10);
  return v5;
}

- (int64_t)mipFilter
{
  if ((*(self + 8) & 1) == 0)
  {
    return (*(self + 74) >> 4) & 3;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v6)
  {
    return (objc_msgSend_textureSampler(self, v7, v8, v9) >> 16);
  }

  v10 = v6;
  sub_1AF1CEA20(v6);
  v5 = (objc_msgSend_textureSampler(self, v11, v12, v13) >> 16);
  sub_1AF1CEA9C(v10);
  return v5;
}

- (void)setMinificationFilter:(int64_t)a3
{
  v5 = *(self + 74);
  if ((v5 & 3) != a3)
  {
    v6[5] = v3;
    v6[6] = v4;
    *(self + 74) = v5 & 0xFC | a3 & 3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2DB6F0;
    v6[3] = &unk_1E7A7E1D0;
    v6[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (void)setMagnificationFilter:(int64_t)a3
{
  v5 = *(self + 74);
  if (((v5 >> 2) & 3) != a3)
  {
    v6[5] = v3;
    v6[6] = v4;
    *(self + 74) = v5 & 0xF3 | (4 * (a3 & 3));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2DB79C;
    v6[3] = &unk_1E7A7E1D0;
    v6[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (void)setMipFilter:(int64_t)a3
{
  v5 = *(self + 74);
  if (((v5 >> 4) & 3) != a3)
  {
    v6[5] = v3;
    v6[6] = v4;
    *(self + 74) = v5 & 0xCF | (16 * (a3 & 3));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2DB848;
    v6[3] = &unk_1E7A7E1D0;
    v6[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (int64_t)_presentationMappingChannel
{
  v4 = objc_msgSend_materialProperty(self, a2, v2, v3);
  if (!v4)
  {
    return -1;
  }

  return sub_1AF1666D4(v4);
}

- (int64_t)mappingChannel
{
  if ((*(self + 8) & 1) == 0)
  {
    return self->_mappingChannel;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (v6)
  {
    v10 = v6;
    sub_1AF1CEA20(v6);
    v14 = objc_msgSend__presentationMappingChannel(self, v11, v12, v13);
    sub_1AF1CEA9C(v10);
    return v14;
  }

  else
  {

    return objc_msgSend__presentationMappingChannel(self, v7, v8, v9);
  }
}

- (void)setMappingChannel:(int64_t)a3
{
  if (self->_mappingChannel != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_mappingChannel = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2DB994;
    v5[3] = &unk_1E7A7E248;
    v5[4] = self;
    v5[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (int64_t)textureComponents
{
  if (*(self + 8))
  {
    v6 = objc_msgSend_worldRef(self, a2, v2, v3);
    v10 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6);
    }

    v11 = objc_msgSend_materialProperty(self, v7, v8, v9);
    if (v11)
    {
      v5 = sub_1AF167B64(v11);
      if (!v10)
      {
        return v5;
      }
    }

    else
    {
      v5 = 15;
      if (!v10)
      {
        return v5;
      }
    }

    sub_1AF1CEA9C(v10);
    return v5;
  }

  return *(self + 76) & 0xF;
}

- (void)setTextureComponents:(int64_t)a3
{
  v5 = *(self + 76);
  if ((v5 & 0xF) != a3)
  {
    v6[6] = v3;
    v6[7] = v4;
    *(self + 76) = v5 & 0xF0 | a3 & 0xF;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1AF2DBB00;
    v6[3] = &unk_1E7A7E248;
    v6[4] = self;
    v6[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v6);
  }
}

- (void)setIntensity:(float)a3
{
  if ((*(self + 8) & 1) != 0 || self->_intensity != a3)
  {
    self->_intensity = a3;
    v6 = objc_msgSend__animationPathForKey_(self, a2, @"intensity", v3);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF2DBC20;
    v8[3] = &unk_1E7A7E270;
    v8[4] = self;
    v9 = a3;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v7, self, v6, v8);
  }
}

- (float)intensity
{
  if (*(self + 8))
  {
    v6 = objc_msgSend_worldRef(self, a2, v2, v3);
    v10 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6);
    }

    v11 = objc_msgSend_materialProperty(self, v7, v8, v9);
    if (v11)
    {
      v5 = sub_1AF166598(v11);
      if (!v10)
      {
        return v5;
      }
    }

    else
    {
      v5 = 0.0;
      if (!v10)
      {
        return v5;
      }
    }

    sub_1AF1CEA9C(v10);
    return v5;
  }

  return self->_intensity;
}

- (int64_t)wrapS
{
  if ((*(self + 8) & 1) == 0)
  {
    return *(self + 75) & 7;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v6)
  {
    return (objc_msgSend_textureSampler(self, v7, v8, v9) >> 24) + 1;
  }

  v10 = v6;
  sub_1AF1CEA20(v6);
  v5 = (objc_msgSend_textureSampler(self, v11, v12, v13) >> 24) + 1;
  sub_1AF1CEA9C(v10);
  return v5;
}

- (void)setWrapS:(int64_t)a3
{
  if ((a3 - 5) > 0xFFFFFFFFFFFFFFFBLL)
  {
    v4 = *(self + 75);
    if ((v4 & 7) != a3)
    {
      *(self + 75) = v4 & 0xF8 | a3;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = sub_1AF2DBE34;
      v5[3] = &unk_1E7A7E1D0;
      v5[4] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
    }
  }

  else
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5BFC();
    }
  }
}

- (int64_t)wrapT
{
  if ((*(self + 8) & 1) == 0)
  {
    return (*(self + 75) >> 3) & 7;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  v10 = v6;
  if (v6)
  {
    sub_1AF1CEA20(v6);
  }

  v5 = (objc_msgSend_textureSampler(self, v7, v8, v9) >> 32) + 1;
  if (v10)
  {
    sub_1AF1CEA9C(v10);
  }

  return v5;
}

- (void)setWrapT:(int64_t)a3
{
  if ((a3 - 5) > 0xFFFFFFFFFFFFFFFBLL)
  {
    v4 = *(self + 75);
    if (((v4 >> 3) & 7) != a3)
    {
      *(self + 75) = v4 & 0xC7 | (8 * a3);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = sub_1AF2DBF7C;
      v5[3] = &unk_1E7A7E1D0;
      v5[4] = self;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
    }
  }

  else
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5C70();
    }
  }
}

- (BOOL)isColorManaged
{
  v4 = *(self + 8);
  if (v4)
  {
    v5 = self;
    v6 = objc_msgSend_worldRef(self, a2, v2, v3);
    v10 = v6;
    if (v6)
    {
      sub_1AF1CEA20(v6);
    }

    v11 = objc_msgSend_materialProperty(v5, v7, v8, v9);
    LOBYTE(v5) = sub_1AF167CE0(v11);
    if (v10)
    {
      sub_1AF1CEA9C(v10);
    }
  }

  else
  {
    LODWORD(v5) = (v4 >> 2) & 1;
  }

  return v5;
}

- (void)setColorManaged:(BOOL)a3
{
  v3 = *(self + 8);
  if (((((v3 & 4) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 8) = v3 & 0xFB | v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2DC098;
    v5[3] = &unk_1E7A7E298;
    v5[4] = self;
    v6 = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (unsigned)_textureOptions
{
  IfNeeded = objc_msgSend_materialPropertyCreateIfNeeded_(self, a2, 0, v2);
  if (IfNeeded)
  {
    v8 = IfNeeded;
    v9 = objc_msgSend_worldRef(self, v5, v6, v7);
    if (v9)
    {
      v10 = v9;
      sub_1AF1CEA20(v9);
      v11 = sub_1AF1678F4(v8);
      sub_1AF1CEA9C(v10);
      return v11;
    }

    else
    {

      return sub_1AF1678F4(v8);
    }
  }

  else
  {
    propertyType = self->_propertyType;
    v14 = (*(self + 8) >> 2) & 1;

    return sub_1AF167D24(propertyType, v14);
  }
}

- (id)resolvedURLForContents:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v8 = objc_msgSend_world(self, v5, v6, v7), (v12 = objc_msgSend_assetPathResolver(v8, v9, v10, v11)) == 0) || (result = objc_msgSend_absoluteURLForAssetPath_(v12, v13, a3, v14)) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return a3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_updateCFXImageWithContents:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_resolvedURLForContents_(self, a2, a3, v3);
  if (v6)
  {
    v10 = v6;

    self->_runtimeResolvedURL = v10;
    v4 = v10;
  }

  v11 = objc_msgSend__textureOptions(self, v7, v8, v9);
  v13 = objc_msgSend_copyCFXImageFromImage_textureOptions_(VFXMaterialProperty, v12, v4, v11);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1AF2DC2E4;
  v15[3] = &unk_1E7A7E220;
  v15[4] = self;
  v15[5] = v13;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v14, self, v15);
}

- (void)setImage:(id)a3
{
  if (self->_contents != a3)
  {
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0, v3);
    self->_contents = a3;
    self->_contentType = 1;

    objc_msgSend__updateCFXImageWithContents_(self, v7, a3, v8);
  }
}

- (id)image
{
  if (self->_contentType == 1)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setLayer:(id)a3
{
  if (self->_contents != a3)
  {
    v9[8] = v4;
    v9[9] = v5;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0, v3);
    self->_contents = a3;
    self->_contentType = 2;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2DC420;
    v9[3] = &unk_1E7A7E220;
    v9[4] = self;
    v9[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (id)layer
{
  if (self->_contentType == 2)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setAvPlayer:(id)a3
{
  if (self->_contents != a3)
  {
    v9[8] = v4;
    v9[9] = v5;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0, v3);
    self->_contents = a3;
    self->_contentType = 7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2DC4F8;
    v9[3] = &unk_1E7A7E220;
    v9[4] = self;
    v9[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (id)avPlayer
{
  if (self->_contentType == 7)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setCaptureDevice:(id)a3
{
  if (self->_contents != a3)
  {
    v9[8] = v4;
    v9[9] = v5;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0, v3);
    self->_contents = a3;
    self->_contentType = 8;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2DC5D0;
    v9[3] = &unk_1E7A7E220;
    v9[4] = self;
    v9[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (id)captureDevice
{
  if (self->_contentType == 8)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setCaptureDeviceOutputConsumerSource:(id)a3
{
  if (self->_contents != a3)
  {
    v9[8] = v4;
    v9[9] = v5;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0, v3);
    self->_contents = a3;
    self->_contentType = 9;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2DC6A8;
    v9[3] = &unk_1E7A7E220;
    v9[4] = self;
    v9[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (id)captureDeviceOutputConsumerSource
{
  if (self->_contentType == 9)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setTextureProvider:(id)a3
{
  if (self->_contents != a3)
  {
    v9[8] = v4;
    v9[9] = v5;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0, v3);
    self->_contents = a3;
    self->_contentType = 10;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2DC780;
    v9[3] = &unk_1E7A7E220;
    v9[4] = self;
    v9[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (id)textureProvider
{
  if (self->_contentType == 10)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setPrecomputedLightingEnvironment:(id)a3
{
  if (self->_contents != a3)
  {
    v9[8] = v4;
    v9[9] = v5;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0, v3);
    self->_contents = a3;
    self->_contentType = 11;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2DC858;
    v9[3] = &unk_1E7A7E220;
    v9[4] = self;
    v9[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (id)precomputedLightingEnvironment
{
  if (self->_contentType == 11)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)_updateMaterialUIComponent:(id)a3
{
  v6 = objc_msgSend_materialProperty(self, a2, a3, v3);
  if (v6)
  {
    v10 = v6;
    if (a3)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_1AF2DC9C8;
      v20[3] = &unk_1E7A7E880;
      v20[4] = a3;
      v11 = sub_1AF37174C(a3, v20);
      v15 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v12, v13, v14);
      v16 = sub_1AF276608(v11);
      objc_msgSend_addObserver_selector_name_object_(v15, v17, self, sel__layerDidChange_, @"VFXUITreeDidChange", v16);
      sub_1AF1679CC(v10, v11);
    }

    else
    {
      v18 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8, v9);
      objc_msgSend_removeObserver_name_object_(v18, v19, self, @"VFXUITreeDidChange", 0);

      sub_1AF1679CC(v10, 0);
    }
  }
}

- (void)setUIView:(id)a3
{
  if (self->_contents != a3)
  {
    v9[8] = v4;
    v9[9] = v5;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0, v3);
    self->_contents = a3;
    self->_contentType = 4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2DCB08;
    v9[3] = &unk_1E7A7E220;
    v9[4] = self;
    v9[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (id)UIView
{
  if (self->_contentType == 4)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setUIWindow:(id)a3
{
  if (self->_contents != a3)
  {
    v9[8] = v4;
    v9[9] = v5;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0, v3);
    self->_contents = a3;
    self->_contentType = 4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2DCBE0;
    v9[3] = &unk_1E7A7E220;
    v9[4] = self;
    v9[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (void)setContents:(id)a3
{
  if ((*(self + 8) & 1) == 0 && objc_msgSend_contents(self, a2, a3, v3) == a3)
  {
    return;
  }

  self->_runtimeResolvedURL = 0;
  v6 = sub_1AF3710D4(a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_setColor_(self, v7, v6, v8);
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_setLayer_(self, v14, v6, v15);
  }

  else if (objc_msgSend_conformsToProtocol_(v6, v14, &unk_1F2629960, v15))
  {
    objc_msgSend_setMtlTexture_(self, v16, v6, v17);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setUIView_(self, v18, v6, v19);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setUIWindow_(self, v20, v6, v21);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_setFloatValue_(self, v22, v6, v23);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_setAssetValue_(self, v24, v6, v25);
          }

          else
          {
            NSClassFromString(&cfstr_Avplayer.isa);
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_setAvPlayer_(self, v26, v6, v27);
            }

            else
            {
              NSClassFromString(&cfstr_Avcapturedevic.isa);
              if (objc_opt_isKindOfClass())
              {
                objc_msgSend_setCaptureDevice_(self, v28, v6, v29);
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_msgSend_setCaptureDeviceOutputConsumerSource_(self, v30, v6, v31);
                }

                else if (objc_msgSend_conformsToProtocol_(v6, v30, &unk_1F262AD98, v31))
                {
                  objc_msgSend_setTextureProvider_(self, v32, v6, v33);
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
LABEL_8:
                    objc_msgSend_setImage_(self, v9, v6, v10);
                    goto LABEL_9;
                  }

                  objc_msgSend_setPrecomputedLightingEnvironment_(self, v9, v6, v10);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_9:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parent = self->_parent;

    MEMORY[0x1EEE66B58](parent, sel__updateProbeStamp, v11, v12);
  }
}

- (id)contents
{
  if (*(self + 8))
  {
    contentType = self->_contentType;
    if (contentType == 5 || contentType == 0)
    {
      v7 = objc_msgSend_worldRef(self, a2, v2, v3);
      v10 = v7;
      if (v7)
      {
        sub_1AF1CEA20(v7);
      }

      IfNeeded = objc_msgSend_materialPropertyCreateIfNeeded_(self, v8, 0, v9);
      v12 = sub_1AF1660D8(IfNeeded);
      if (v12)
      {
        v16 = sub_1AF371814(v12, v13, v14, v15);
        if (!v10)
        {
          return v16;
        }
      }

      else
      {
        v16 = 0;
        if (!v10)
        {
          return v16;
        }
      }

      sub_1AF1CEA9C(v10);
      return v16;
    }
  }

  v18 = self->_contents;

  return v18;
}

- (void)_setImagePath:(id)a3 withResolvedURL:(id)a4
{
  objc_msgSend__updateCFXImageWithContents_(self, a2, a4, a4);
  objc_msgSend__clearContentsForDeallocation_(self, v7, 0, v8);
  self->_contents = a3;
  self->_contentType = 1;
  runtimeResolvedURL = self->_runtimeResolvedURL;
  if (runtimeResolvedURL != a4)
  {

    self->_runtimeResolvedURL = a4;
  }
}

- (unint64_t)maxAnisotropy
{
  if ((*(self + 8) & 1) == 0)
  {
    return *(self + 77) & 0x1F;
  }

  v6 = objc_msgSend_worldRef(self, a2, v2, v3);
  if (!v6)
  {
    return (objc_msgSend_textureSampler(self, v7, v8, v9) >> 56) & 0x7F;
  }

  v10 = v6;
  sub_1AF1CEA20(v6);
  v5 = (objc_msgSend_textureSampler(self, v11, v12, v13) >> 56) & 0x7F;
  sub_1AF1CEA9C(v10);
  return v5;
}

- (void)setMaxAnisotropy:(unint64_t)a3
{
  v5 = 16;
  if (a3 < 0x10)
  {
    v5 = a3;
  }

  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = *(self + 77);
  if (v5 != (v6 & 0x1F))
  {
    v7[5] = v3;
    v7[6] = v4;
    *(self + 77) = v6 & 0xE0 | v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF2DD130;
    v7[3] = &unk_1E7A7E1D0;
    v7[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v7);
  }
}

- (void)setMtlTexture:(id)a3
{
  if (self->_contents != a3)
  {
    v9[8] = v4;
    v9[9] = v5;
    objc_msgSend__clearContentsForDeallocation_(self, a2, 0, v3);
    self->_contents = a3;
    self->_contentType = 3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF2DD1E8;
    v9[3] = &unk_1E7A7E220;
    v9[4] = self;
    v9[5] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, self, v9);
  }
}

- (id)mtlTexture
{
  if (self->_contentType == 3)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)setContentsTransform:(__n128)a3
{
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v6 = a1[13];
  if (!v6 || (v7 = sub_1AF1CBF20(v6), result = VFXMatrix4EqualToMatrix4(a2, a3, a4, a5, v7, v8, v9, v10), (result & 1) == 0))
  {
    if (VFXMatrix4IsIdentity(a2, a3, a4, a5))
    {
      result = a1[13];
      if (!result)
      {
        return result;
      }

      free(result);
      a1[13] = 0;
    }

    else
    {
      objc_msgSend___allocateContentTransformIfNeeded(a1, v12, v13, v14);
      *&v17 = sub_1AF1CBF04(a1[13], &v30).n128_u64[0];
    }

    v18 = objc_msgSend__animationPathForKey_(a1, v15, @"contentsTransform", v16, v17, *&a2, *&a3, *&a4, *&a5);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1AF2DD33C;
    v24[3] = &unk_1E7A7E578;
    v29 = a1;
    v25 = v30;
    v26 = v31;
    v27 = v32;
    v28 = v33;
    return objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v19, a1, v18, v24);
  }

  return result;
}

- (__n128)contentsTransform
{
  result = VFXMatrix4Identity;
  if ((*(a1 + 8) & 1) == 0)
  {
    v6 = *(a1 + 104);
    if (v6)
    {
      result.n128_u64[0] = sub_1AF1CBF20(v6).n128_u64[0];
    }

    return result;
  }

  v7 = objc_msgSend_worldRef(a1, a2, a3, a4);
  v11 = v7;
  if (v7)
  {
    sub_1AF1CEA20(v7);
  }

  v12 = objc_msgSend_materialProperty(a1, v8, v9, v10);
  if (!v12)
  {
    result = VFXMatrix4Identity;
    if (!v11)
    {
      return result;
    }

    goto LABEL_10;
  }

  v13 = sub_1AF167220(v12);
  result = VFXMatrix4Identity;
  if (v13)
  {
    result = *v13;
  }

  if (v11)
  {
LABEL_10:
    v14 = result;
    sub_1AF1CEA9C(v11);
    return v14;
  }

  return result;
}

- (void)setContentsOffset:(VFXMaterialProperty *)self
{
  v16 = v4;
  contentTransform = self->_contentTransform;
  if (!contentTransform || (v7 = sub_1AF1CCB30(contentTransform), (VFXVector3EqualToVector3(v16, v7) & 1) == 0))
  {
    objc_msgSend___allocateContentTransformIfNeeded(self, a2, v2, v3, *&v16);
    sub_1AF1CCB38(self->_contentTransform, v17);
    v8 = self->_contentTransform;
    v9 = *(v8 + 3);
    v28 = *(v8 + 2);
    v29 = v9;
    v10 = *(v8 + 5);
    v30 = *(v8 + 4);
    v31 = v10;
    v11 = *(v8 + 1);
    v26 = *v8;
    v27 = v11;
    if (sub_1AF1CCE54(v8))
    {
      free(self->_contentTransform);
      self->_contentTransform = 0;
    }

    v14 = objc_msgSend__animationPathForKey_(self, v12, @"contentsTransform", v13);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1AF2DD580;
    v18[3] = &unk_1E7A7E8A8;
    v25 = self;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v19 = v26;
    v20 = v27;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v15, self, v14, v18);
  }
}

- (double)contentsOffset
{
  if (*(a1 + 8))
  {
    v7 = objc_msgSend_worldRef(a1, a2, a3, a4);
    v11 = v7;
    if (v7)
    {
      sub_1AF1CEA20(v7);
    }

    v12 = objc_msgSend_materialProperty(a1, v8, v9, v10);
    result = 0.0;
    if (v12)
    {
      v13 = sub_1AF167270(v12);
      result = 0.0;
      if (v13)
      {
        *&result = sub_1AF1CCB30(v13).n128_u64[0];
      }
    }

    if (v11)
    {
      v14 = result;
      sub_1AF1CEA9C(v11);
      return v14;
    }
  }

  else
  {
    v5 = *(a1 + 104);
    if (v5)
    {
      *&result = sub_1AF1CCB30(v5).n128_u64[0];
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

- (void)setContentsScale:(VFXMaterialProperty *)self
{
  v22 = v4;
  contentTransform = self->_contentTransform;
  if (!contentTransform || (v13 = sub_1AF1CCB48(contentTransform, *v4.i64, v5, v6, v7, v8, v9, v10), (VFXVector3EqualToVector3(v22, v13) & 1) == 0))
  {
    objc_msgSend___allocateContentTransformIfNeeded(self, a2, v2, v3, *&v22);
    sub_1AF1CCB7C(self->_contentTransform, v23);
    v14 = self->_contentTransform;
    v15 = *(v14 + 3);
    v34 = *(v14 + 2);
    v35 = v15;
    v16 = *(v14 + 5);
    v36 = *(v14 + 4);
    v37 = v16;
    v17 = *(v14 + 1);
    v32 = *v14;
    v33 = v17;
    if (sub_1AF1CCE54(v14))
    {
      free(self->_contentTransform);
      self->_contentTransform = 0;
    }

    v20 = objc_msgSend__animationPathForKey_(self, v18, @"contentsTransform", v19);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1AF2DD784;
    v24[3] = &unk_1E7A7E8A8;
    v31 = self;
    v27 = v34;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v25 = v32;
    v26 = v33;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v21, self, v20, v24);
  }
}

- (__n128)contentsScale
{
  if (*(a1 + 8))
  {
    v14 = objc_msgSend_worldRef(a1, a2, a3, a4);
    v18 = v14;
    if (v14)
    {
      sub_1AF1CEA20(v14);
    }

    v19 = objc_msgSend_materialProperty(a1, v15, v16, v17);
    __asm { FMOV            V0.4S, #1.0 }

    if (v19)
    {
      v31 = result;
      v24 = sub_1AF167270(v19);
      result = v31;
      if (v24)
      {
        result = sub_1AF1CCB48(v24, v31.n128_f64[0], v25, v26, v27, v28, v29, v30);
      }
    }

    if (v18)
    {
      v32 = result;
      sub_1AF1CEA9C(v18);
      return v32;
    }
  }

  else
  {
    v12 = *(a1 + 104);
    if (v12)
    {
      result.n128_u64[0] = sub_1AF1CCB48(v12, a5, a6, a7, a8, a9, a10, a11).n128_u64[0];
    }

    else
    {
      __asm { FMOV            V0.4S, #1.0 }
    }
  }

  return result;
}

- (void)setContentsRotation:(float)a3
{
  v11.i64[0] = 0;
  LODWORD(v5) = 1.0;
  v11.i64[1] = __PAIR64__(LODWORD(a3), 1.0);
  v22 = v11;
  contentTransform = self->_contentTransform;
  if (!contentTransform || (sub_1AF1CC9D8(contentTransform, *&a3, v5, 0.0, v6, v7, v8, v9), (VFXVector4EqualToVector4(v22, v13) & 1) == 0))
  {
    objc_msgSend___allocateContentTransformIfNeeded(self, a2, v3, v4, *&v22);
    sub_1AF1CCAD8(self->_contentTransform, v23);
    v14 = self->_contentTransform;
    v15 = *(v14 + 3);
    v34 = *(v14 + 2);
    v35 = v15;
    v16 = *(v14 + 5);
    v36 = *(v14 + 4);
    v37 = v16;
    v17 = *(v14 + 1);
    v32 = *v14;
    v33 = v17;
    if (sub_1AF1CCE54(v14))
    {
      free(self->_contentTransform);
      self->_contentTransform = 0;
    }

    v20 = objc_msgSend__animationPathForKey_(self, v18, @"contentsTransform", v19);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1AF2DD9A0;
    v24[3] = &unk_1E7A7E8A8;
    v31 = self;
    v27 = v34;
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v25 = v32;
    v26 = v33;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v21, self, v20, v24);
  }
}

- (float)contentsRotation
{
  if (*(self + 8))
  {
    v15 = objc_msgSend_worldRef(self, a2, v2, v3);
    v19 = v15;
    if (v15)
    {
      sub_1AF1CEA20(v15);
    }

    v20 = objc_msgSend_materialProperty(self, v16, v17, v18);
    v14 = 0.0;
    if (v20)
    {
      v21 = sub_1AF167270(v20);
      if (v21)
      {
        sub_1AF1CC9D8(v21, v22, v23, v24, v25, v26, v27, v28);
        v14 = v29;
      }
    }

    if (v19)
    {
      sub_1AF1CEA9C(v19);
    }
  }

  else
  {
    contentTransform = self->_contentTransform;
    if (contentTransform)
    {
      sub_1AF1CC9D8(contentTransform, v4, v5, v6, v7, v8, v9, v10);
      return v13;
    }

    else
    {
      return 0.0;
    }
  }

  return v14;
}

- (id)propertyName
{
  objc_msgSend_propertyType(self, a2, v2, v3);
  result = @"diffuse";
  switch(@"diffuse")
  {
    case 0u:
      result = @"emission";
      break;
    case 1u:
      return result;
    case 2u:
      result = @"specular";
      break;
    case 3u:
      result = @"reflective";
      break;
    case 4u:
      result = @"transparent";
      break;
    case 5u:
      result = @"multiply";
      break;
    case 6u:
      result = @"normal";
      break;
    case 7u:
      result = @"ambientOcclusion";
      break;
    case 8u:
      result = @"selfIllumination";
      break;
    case 9u:
      result = @"metalness";
      break;
    case 0xAu:
      result = @"roughness";
      break;
    case 0xBu:
      result = @"clearCoat";
      break;
    case 0xCu:
      result = @"clearCoatRoughness";
      break;
    case 0xDu:
      result = @"clearCoatNormal";
      break;
    case 0xEu:
      result = @"subsurface";
      break;
    case 0xFu:
      result = @"subsurfaceRadius";
      break;
    case 0x10u:
      result = @"transmission";
      break;
    case 0x11u:
      result = @"transmissionColor";
      break;
    case 0x12u:
      result = @"displacement";
      break;
    case 0x17u:
      result = @"gobo";
      break;
    case 0x18u:
      result = @"ies";
      break;
    case 0x19u:
      result = @"background";
      break;
    case 0x1Au:
      objc_msgSend_parent(self, v5, v6, v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        result = @"probeEnvironment";
      }

      else
      {
        result = @"environment";
      }

      break;
    case 0x1Bu:
      result = @"colorGrading";
      break;
    case 0x1Cu:
      result = self->_customMaterialPropertyName;
      break;
    default:
      v9 = sub_1AF0D5194();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF5CE4(self, v9, v10, v11);
      }

      result = 0;
      break;
  }

  return result;
}

- (NSString)description
{
  v5 = objc_msgSend_contents(self, a2, v2, v3);
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v12 = objc_msgSend_propertyName(self, v9, v10, v11);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"<data %p>", v14, v5);
  }

  return objc_msgSend_stringWithFormat_(v6, v13, @"<%@: %p | %@ contents=%@>", v14, v8, self, v12, v5);
}

+ (__CFXImage)_createCFXImageFromImage:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v4, a3, v5);
    if (objc_msgSend_scheme(v6, v7, v8, v9))
    {
      v13 = v6;
LABEL_6:

      return sub_1AF195FC0(v13);
    }

    return sub_1AF196E08(a3, v10, v11, v12);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = a3;
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1AF196004(a3);
    }

    else
    {
      v15 = CFGetTypeID(a3);
      if (v15 == CGImageGetTypeID())
      {

        return sub_1AF196CC4(a3);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          return sub_1AF196DC4(a3);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            return sub_1AF2ED094(a3, v16, v17, v18);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

+ (__CFXImage)copyCFXImageFromImage:(id)a3 textureOptions:(unsigned __int8)a4 wasCached:(BOOL *)a5
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v6 = a4;
  v8 = CFGetTypeID(a3);
  if (v8 != sub_1AF195EF4())
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v15 = isKindOfClass ^ 1;
    if (objc_opt_isKindOfClass())
    {
      if (objc_msgSend_count(a3, v12, v13, v14) != 6)
      {
        v27 = sub_1AF0D5194();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF5D70();
        }

        v10 = 0;
        if (!a5)
        {
          goto LABEL_35;
        }

        v26 = 0;
        goto LABEL_34;
      }

      v18 = 0;
      memset(v38, 0, 48);
      v28 = 0x8400102uLL;
      do
      {
        v19 = objc_msgSend_objectAtIndexedSubscript_(a3, v16, v18, v17, v28);
        v21 = objc_msgSend_copyCFXImageFromImage_textureOptions_wasCached_(a1, v20, v19, v6, 0);
        if (!v21)
        {
          v22 = sub_1AF0D5194();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = objc_msgSend_objectAtIndexedSubscript_(a3, v16, v18, v17);
            *buf = v28;
            v37 = v23;
            _os_log_impl(&dword_1AF0CE000, v22, OS_LOG_TYPE_DEFAULT, "Warning: copyCFXImageFromImage: invalid sub-image %@\n", buf, 0xCu);
          }
        }

        v38[v18++] = v21;
      }

      while (v18 != 6);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1AF2DE274;
      v31[3] = &unk_1E7A7E8D0;
      v31[4] = &v32;
      v31[5] = v38;
      v10 = sub_1AF198494(a3, v15 & 1, v31);
      for (i = 0; i != 6; ++i)
      {
        v25 = v38[i];
        if (v25)
        {
          CFRelease(v25);
          v38[i] = 0;
        }
      }

      if (!v10)
      {
LABEL_28:
        if (!a5)
        {
LABEL_35:
          _Block_object_dispose(&v32, 8);
          return v10;
        }

        v26 = (v33[3] & 1) == 0;
LABEL_34:
        *a5 = v26;
        goto LABEL_35;
      }
    }

    else
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_1AF2DE288;
      v30[3] = &unk_1E7A7E8F8;
      v30[4] = a1;
      v30[5] = a3;
      v30[6] = &v32;
      v10 = sub_1AF198494(a3, (isKindOfClass ^ 1) & 1, v30);
      if (!v10)
      {
        goto LABEL_28;
      }
    }

    if (*(v33 + 24) == 1)
    {
      if ((v6 & 2) != 0)
      {
        sub_1AF197FCC(v10);
      }

      if ((v6 & 8) != 0)
      {
        sub_1AF197F40(v10);
      }
    }

    goto LABEL_28;
  }

  if (a5)
  {
    *a5 = 1;
  }

  return a3;
}

- (void)getCFXImageRef
{
  v5 = objc_msgSend_contents(self, a2, v2, v3);
  v9 = objc_msgSend__textureOptions(self, v6, v7, v8);
  v11 = objc_msgSend_copyCFXImageFromImage_textureOptions_(VFXMaterialProperty, v10, v5, v9);

  return v11;
}

- (void)parentWillDie:(id)a3
{
  if (self->_parent != a3)
  {
    v4 = sub_1AF0D5194();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF5DAC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  self->_parent = 0;
}

- ($42C19FAB4E3144CC06073197E1960D27)textureSampler
{
  v4 = objc_msgSend_materialProperty(self, a2, v2, v3);
  if (v4)
  {

    return sub_1AF16679C(v4);
  }

  else
  {

    return sub_1AF1C4F6C();
  }
}

- (__CFXAnimationManager)animationManager
{
  result = objc_msgSend_worldRef(self, a2, v2, v3);
  if (result)
  {

    return sub_1AF1CF830(result);
  }

  return result;
}

- (BOOL)__removeAnimation:(id)a3 forKey:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_animationsLock);
  v9 = objc_msgSend_objectForKey_(self->_animations, v7, a4, v8);
  v16 = objc_msgSend_animation(v9, v10, v11, v12) == a3;
  if (v16)
  {
    v17 = objc_msgSend_world(self, v13, v14, v15);
    objc_msgSend_removeWorldReference_(v9, v18, v17, v19);
    objc_msgSend_removeObjectForKey_(self->_animations, v20, a4, v21);
    v25 = objc_msgSend___CFObject(self, v22, v23, v24);
    if ((sub_1AF16D234(v25) & 1) == 0)
    {
      v26 = sub_1AF0D5194();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF4558(v26, v27, v28, v29, v30, v31, v32, v33);
      }
    }

    sub_1AF16D870(v25, a4, 1);
  }

  os_unfair_lock_unlock(&self->_animationsLock);
  return v16;
}

- (void)addAnimationPlayer:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v5 = a4;
    if (!a4)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, a3, 0);
      v5 = objc_msgSend_UUIDString(v7, v8, v9, v10);
    }

    if ((*(self + 8) & 1) == 0)
    {
      os_unfair_lock_lock(&self->_animationsLock);
      v14 = objc_msgSend_world(self, v11, v12, v13);
      objc_msgSend_addWorldReference_(a3, v15, v14, v16);
      animations = self->_animations;
      if (!animations)
      {
        animations = objc_alloc_init(VFXOrderedDictionary);
        self->_animations = animations;
      }

      objc_msgSend_setObject_forKey_(animations, v17, a3, v5);
      os_unfair_lock_unlock(&self->_animationsLock);
    }

    v19 = objc_msgSend_timingFunction(VFXTransaction, a2, a3, a4);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1AF2DE61C;
    v22[3] = &unk_1E7A7E2C0;
    v22[4] = a3;
    v22[5] = self;
    v22[6] = v5;
    v22[7] = v19;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v20, self, v22);
  }

  else
  {
    v21 = sub_1AF0D5194();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4E4C();
    }
  }
}

- (void)addAnimation:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    if (!a4)
    {
      v7 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, a3, 0);
      v5 = objc_msgSend_UUIDString(v7, v8, v9, v10);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_msgSend_animationWithCAAnimation_(VFXAnimation, v11, v6, v12);
    }

    v13 = objc_msgSend_animationPlayerWithVFXAnimation_(VFXAnimationPlayer, v11, v6, v12);
    objc_msgSend_addAnimationPlayer_forKey_(self, v14, v13, v5);

    objc_msgSend_play(v13, v15, v16, v17);
  }

  else
  {
    v18 = sub_1AF0D5194();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF4EC0();
    }
  }
}

- (void)removeAllAnimations
{
  v33 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_animationsLock);
  v6 = objc_msgSend_world(self, v3, v4, v5);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  animations = self->_animations;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v8, &v28, v32, 16);
  if (v9)
  {
    v13 = v9;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(animations);
        }

        objc_msgSend_removeWorldReference_(*(*(&v28 + 1) + 8 * i), v10, v6, v12);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(animations, v10, &v28, v32, 16);
    }

    while (v13);
  }

  objc_msgSend_removeAllObjects(self->_animations, v10, v11, v12);
  os_unfair_lock_unlock(&self->_animationsLock);
  objc_msgSend_duration(VFXTransaction, v16, v17, v18);
  if (v22 <= 0.0)
  {
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v19, self, v26, MEMORY[0x1E69E9820], 3221225472, sub_1AF2DE9B0, &unk_1E7A7E1D0, self, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6]);
  }

  else
  {
    v23 = v22;
    v24 = objc_msgSend_timingFunction(VFXTransaction, v19, v20, v21);
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v25, self, v27, v26[0], v26[1], v26[2], v26[3], v26[4], MEMORY[0x1E69E9820], 3221225472, sub_1AF2DE9A0, &unk_1E7A7E2E8, self, v24, *&v23);
  }
}

- (void)removeAnimationForKey:(id)a3
{
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v8 = objc_msgSend_objectForKey_(animations, v5, a3, v6);
      v12 = objc_msgSend_world(self, v9, v10, v11);
      objc_msgSend_removeWorldReference_(v8, v13, v12, v14);
      objc_msgSend_removeObjectForKey_(self->_animations, v15, a3, v16);
    }

    os_unfair_lock_unlock(&self->_animationsLock);
    v20 = objc_msgSend_timingFunction(VFXTransaction, v17, v18, v19);
    objc_msgSend_animationDuration(VFXTransaction, v21, v22, v23);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_1AF2DEAB0;
    v26[3] = &unk_1E7A7E310;
    v26[7] = v24;
    v26[4] = self;
    v26[5] = a3;
    v26[6] = v20;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v25, self, v26);
  }
}

- (NSArray)animationKeys
{
  os_unfair_lock_lock(&self->_animationsLock);
  v6 = objc_msgSend_allKeys(self->_animations, v3, v4, v5);
  os_unfair_lock_unlock(&self->_animationsLock);
  if (objc_msgSend_count(v6, v7, v8, v9))
  {
    return v6;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)_syncObjCAnimations
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  os_unfair_lock_lock(&self->_animationsLock);

  self->_animations = objc_alloc_init(VFXOrderedDictionary);
  os_unfair_lock_unlock(&self->_animationsLock);
  v10 = objc_msgSend___CFObject(self, v7, v8, v9);
  if (v10)
  {
    v11 = v10;
    if ((sub_1AF16D234(v10) & 1) == 0)
    {
      v12 = sub_1AF0D5194();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF46B0(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    v20 = sub_1AF16D614(v11);
    if (v20)
    {
      v21 = v20;
      os_unfair_lock_lock(&self->_animationsLock);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1AF2DEC4C;
      v24[3] = &unk_1E7A7E338;
      v24[4] = self;
      sub_1AF375240(v21, v24, v22, v23);
      os_unfair_lock_unlock(&self->_animationsLock);
    }
  }

  if (v6)
  {
    sub_1AF1CEA9C(v6);
  }
}

- (id)_vfxAnimationForKey:(id)a3
{
  v3 = a3;
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v8 = objc_msgSend_objectForKey_(animations, v5, v3, v6);
      v3 = objc_msgSend_animation(v8, v9, v10, v11);
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return v3;
}

- (void)_copyAnimationsFrom:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_animationKeys(a3, a2, a3, v3, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = objc_msgSend_animationPlayerForKey_(a3, v9, v14, v10);
        v19 = objc_msgSend_copy(v15, v16, v17, v18);
        objc_msgSend_addAnimationPlayer_forKey_(self, v20, v19, v14);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v21, v25, 16);
    }

    while (v11);
  }
}

- (id)animationPlayerForKey:(id)a3
{
  v3 = a3;
  if (a3)
  {
    os_unfair_lock_lock(&self->_animationsLock);
    animations = self->_animations;
    if (animations)
    {
      v3 = objc_msgSend_objectForKey_(animations, v5, v3, v6);
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(&self->_animationsLock);
  }

  return v3;
}

- (void)_pauseAnimation:(BOOL)a3 forKey:(id)a4 pausedByNode:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v9 = objc_msgSend___CFObject(self, a2, a3, a4);
  if (v9)
  {
    v13 = v9;
    v14 = objc_msgSend_animationManager(self, v10, v11, v12);
    if (v14)
    {
      v15 = v14;
      v16 = CACurrentMediaTime();

      sub_1AF118EBC(v15, v13, a4, v7, v5, v16);
    }
  }
}

- (void)bindAnimatablePath:(id)a3 toObject:(id)a4 withKeyPath:(id)a5 options:(id)a6
{
  if (self != a4)
  {
    v25[15] = v6;
    v25[16] = v7;
    v13 = objc_alloc_init(CFXBinding);
    objc_msgSend_setSourceObject_(v13, v14, a4, v15);
    objc_msgSend_setKeyPathDst_(v13, v16, a3, v17);
    objc_msgSend_setKeyPathSrc_(v13, v18, a5, v19);
    objc_msgSend_setOptions_(v13, v20, a6, v21);
    bindings = self->_bindings;
    if (!bindings)
    {
      bindings = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_bindings = bindings;
    }

    objc_msgSend_setValue_forKey_(bindings, v22, v13, a3);

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1AF2DF06C;
    v25[3] = &unk_1E7A7E360;
    v25[4] = self;
    v25[5] = a4;
    v25[6] = a3;
    v25[7] = a5;
    v25[8] = a6;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v24, self, v25);
  }
}

- (void)unbindAnimatablePath:(id)a3
{
  objc_msgSend_removeObjectForKey_(self->_bindings, a2, a3, v3);
  if (!objc_msgSend_count(self->_bindings, v6, v7, v8))
  {

    self->_bindings = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF2DF1B0;
  v10[3] = &unk_1E7A7E220;
  v10[4] = self;
  v10[5] = a3;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
}

- (void)removeAllBindings
{
  self->_bindings = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF2DF27C;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v3, self, v4);
}

- (void)_copyBindingsFrom:(id)a3
{
  v5 = objc_msgSend__vfxBindings(a3, a2, a3, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1AF2DF328;
  v8[3] = &unk_1E7A7E388;
  v8[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v6, v8, v7);
}

- (void)_setSourceObject:(id)a3 forBinding:(id)a4
{
  if (objc_msgSend_sourceObject(a4, a2, a3, a4) != a3)
  {
    objc_msgSend_setSourceObject_(a4, v7, a3, v8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF2DF460;
    v10[3] = &unk_1E7A7E3B0;
    v10[4] = self;
    v10[5] = a4;
    v10[6] = a3;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, self, v10);
  }
}

- (void)enumerateAnimationReferencesUsingBlock:(id)a3
{
  bindings = self->_bindings;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF2DF59C;
  v5[3] = &unk_1E7A7E400;
  v5[4] = self;
  v5[5] = a3;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(bindings, a2, v5, v3);
}

- (void)removeAllAnimationsWithBlendOutDuration:(float)a3
{
  objc_msgSend_begin(VFXTransaction, a2, v3, v4);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v7, v8, v9, a3);
  objc_msgSend_removeAllAnimations(self, v10, v11, v12);

  objc_msgSend_commit(VFXTransaction, v13, v14, v15);
}

- (void)removeAnimationForKey:(id)a3 blendOutDuration:(float)a4
{
  objc_msgSend_begin(VFXTransaction, a2, a3, v4);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v8, v9, v10, a4);
  objc_msgSend_removeAnimationForKey_(self, v11, a3, v12);

  objc_msgSend_commit(VFXTransaction, v13, v14, v15);
}

- (void)_updateModelFromPresentation
{
  v5 = objc_msgSend_worldRef(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5);
  }

  v7 = sub_1AF1C4F78();
  IfNeeded = objc_msgSend_materialPropertyCreateIfNeeded_(self, v8, 0, v9);
  if (IfNeeded)
  {
    v11 = IfNeeded;
    v7 = sub_1AF16679C(IfNeeded);
    self->_intensity = sub_1AF166598(v11);
    self->_mappingChannel = sub_1AF1666D4(v11);
    *(self + 76) = *(self + 76) & 0xF0 | sub_1AF167B64(v11) & 0xF;
    if (sub_1AF167CE0(v11))
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    *(self + 8) = *(self + 8) & 0xFB | v12;
    if (sub_1AF167434(v11))
    {
      objc_msgSend___allocateContentTransformIfNeeded(self, v13, v14, v15);
      contentTransform = self->_contentTransform;
      v17 = sub_1AF167270(v11);
      v18 = v17[1];
      *contentTransform = *v17;
      *(contentTransform + 1) = v18;
      v19 = v17[5];
      v21 = v17[2];
      v20 = v17[3];
      *(contentTransform + 4) = v17[4];
      *(contentTransform + 5) = v19;
      *(contentTransform + 2) = v21;
      *(contentTransform + 3) = v20;
    }

    else
    {
      free(self->_contentTransform);
      self->_contentTransform = 0;
    }
  }

  else
  {
    self->_intensity = 1.0;
    *(self + 76) = *(self + 76) & 0xF0 | sub_1AF167B50(self->_propertyType) & 0xF;
    if (sub_1AF167CB8(self->_propertyType))
    {
      v22 = 4;
    }

    else
    {
      v22 = 0;
    }

    *(self + 8) = *(self + 8) & 0xFB | v22;
  }

  *(self + 74) = *(self + 74) & 0xC0 | v7 & 3 | (v7 >> 6) & 0xC | (v7 >> 12) & 0x30;
  *(self + 75) = *(self + 75) & 0xC0 | (BYTE3(v7) + 1) & 7 | ((v7 >> 29) + 8) & 0x38;
  *(self + 77) = *(self + 77) & 0xE0 | HIBYTE(v7) & 0x1F;
  if (v6)
  {

    sub_1AF1CEA9C(v6);
  }
}

- (void)_updatePresentationFromModel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1AF2DF980;
  v2[3] = &unk_1E7A7E1D0;
  v2[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v2);
}

- (void)copyPropertiesFrom:(id)a3 copyContext:(id)a4
{
  if (*(a3 + 14) && (objc_msgSend_contents(a3, a2, a3, a4), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = objc_msgSend_contents(a3, a2, a3, a4);
    objc_msgSend__setImagePath_withResolvedURL_(self, v8, v7, *(a3 + 14));
  }

  else
  {
    if (a4 && *(a3 + 72) == 6)
    {
      v12 = objc_msgSend_contents(a3, a2, a3, a4);
      v13 = sub_1AF2BED30(v12, a4);
    }

    else
    {
      v13 = objc_msgSend_contents(a3, a2, a3, a4);
    }

    objc_msgSend_setContents_(self, v14, v13, v15);
  }

  v16 = objc_msgSend_minificationFilter(a3, v9, v10, v11);
  objc_msgSend_setMinificationFilter_(self, v17, v16, v18);
  v22 = objc_msgSend_magnificationFilter(a3, v19, v20, v21);
  objc_msgSend_setMagnificationFilter_(self, v23, v22, v24);
  v28 = objc_msgSend_mipFilter(a3, v25, v26, v27);
  objc_msgSend_setMipFilter_(self, v29, v28, v30);
  objc_msgSend_contentsTransform(a3, v31, v32, v33);
  objc_msgSend_setContentsTransform_(self, v34, v35, v36);
  v40 = objc_msgSend_wrapS(a3, v37, v38, v39);
  objc_msgSend_setWrapS_(self, v41, v40, v42);
  v46 = objc_msgSend_wrapT(a3, v43, v44, v45);
  objc_msgSend_setWrapT_(self, v47, v46, v48);
  objc_msgSend_intensity(a3, v49, v50, v51);
  objc_msgSend_setIntensity_(self, v52, v53, v54);
  isColorManaged = objc_msgSend_isColorManaged(a3, v55, v56, v57);
  objc_msgSend_setColorManaged_(self, v59, isColorManaged, v60);
  v64 = objc_msgSend_mappingChannel(a3, v61, v62, v63);
  objc_msgSend_setMappingChannel_(self, v65, v64, v66);
  v70 = objc_msgSend_textureComponents(a3, v67, v68, v69);
  objc_msgSend_setTextureComponents_(self, v71, v70, v72);
  objc_msgSend__copyAnimationsFrom_(self, v73, a3, v74);

  objc_msgSend__copyBindingsFrom_(self, v75, a3, v76);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v7 = objc_msgSend_materialPropertyWithContents_(v4, v5, 0, v6);
  v7[9] = self->_propertyType;
  v8 = v7;
  objc_msgSend_copyPropertiesFrom_copyContext_(v7, v9, self, 0);
  return v7;
}

- (void)enumerateReferencesForOperation:(int64_t)a3 usingBlock:(id)a4
{
  if (self->_contentType == 6)
  {
    v7[5] = v4;
    v7[6] = v5;
    contents = self->_contents;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1AF2DFCB0;
    v7[3] = &unk_1E7A7C0C8;
    v7[4] = self;
    (*(a4 + 2))(a4, contents, 1, v7);
  }
}

- (id)presentationMaterialProperty
{
  v2 = self;
  if ((*(self + 8) & 1) == 0)
  {
    v3 = [VFXMaterialProperty alloc];
    inited = objc_msgSend_initPresentationMaterialPropertyWithModelProperty_(v3, v4, v2, v5);

    return inited;
  }

  return self;
}

- (void)_updateSampler
{
  v5 = objc_msgSend_materialProperty(self, a2, v2, v3);
  if (v5)
  {
    v6 = *(self + 74) & 3 | (((*(self + 74) >> 2) & 3) << 8) & 0xFFFFFFFF00FFFFFFLL | (((*(self + 74) >> 4) & 3) << 16) & 0xFFFFFFFF00FFFFFFLL | (((*(self + 75) & 7) - 1) << 24) | ((((*(self + 75) >> 3) & 7) - 1) << 32) | ((*(self + 77) & 0x1F) << 56);

    sub_1AF1667E4(v5, v6);
  }
}

- (void)_layerDidChange:(id)a3
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3, v3);
  v10 = objc_msgSend_worldRef(self, v6, v7, v8);

  objc_msgSend_postNotificationName_object_(v5, v9, @"kCFXWorldDidUpdateNotification", v10);
}

- (void)_updateMaterialMTLTexture:(id)a3
{
  v5 = objc_msgSend_materialProperty(self, a2, a3, v3);
  if (v5)
  {

    sub_1AF167934(v5, a3);
  }
}

- (void)_updateMaterialLayer:(id)a3
{
  v6 = objc_msgSend_materialProperty(self, a2, a3, v3);
  if (v6)
  {
    v10 = v6;
    if (a3)
    {
      v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8, v9);
      objc_msgSend_addObserver_selector_name_object_(v11, v12, self, sel__layerDidChange_, @"VFXLayerTreeDidChange", a3);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1AF2DFF8C;
      v19[3] = &unk_1E7A7E880;
      v19[4] = a3;
      v13 = sub_1AF37174C(a3, v19);
      sub_1AF1679CC(v10, v13);
    }

    else
    {
      sub_1AF1679CC(v6, 0);
      v17 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v14, v15, v16);

      objc_msgSend_removeObserver_name_object_(v17, v18, self, @"VFXLayerTreeDidChange", 0);
    }
  }
}

- (void)_updateMaterialAVPlayer:(id)a3
{
  v5 = objc_msgSend_materialProperty(self, a2, a3, v3);
  if (v5)
  {
    v6 = v5;
    if (a3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2E00AC;
      v8[3] = &unk_1E7A7E880;
      v8[4] = a3;
      v7 = sub_1AF37174C(a3, v8);
      sub_1AF1679CC(v6, v7);
    }

    else
    {

      sub_1AF1679CC(v5, 0);
    }
  }
}

- (void)_updateMaterialCaptureDevice:(id)a3
{
  v5 = objc_msgSend_materialProperty(self, a2, a3, v3);
  if (v5)
  {
    v6 = v5;
    if (a3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2E01CC;
      v8[3] = &unk_1E7A7E880;
      v8[4] = a3;
      v7 = sub_1AF37174C(a3, v8);
      sub_1AF1679CC(v6, v7);
    }

    else
    {

      sub_1AF1679CC(v5, 0);
    }
  }
}

- (void)_updateMaterialCaptureDeviceOutputConsumerSource:(id)a3
{
  v5 = objc_msgSend_materialProperty(self, a2, a3, v3);
  if (v5)
  {
    v6 = v5;
    if (a3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2E02EC;
      v8[3] = &unk_1E7A7E880;
      v8[4] = a3;
      v7 = sub_1AF37174C(a3, v8);
      sub_1AF1679CC(v6, v7);
    }

    else
    {

      sub_1AF1679CC(v5, 0);
    }
  }
}

- (void)_updateMaterialTextureProvider:(id)a3
{
  v5 = objc_msgSend_materialProperty(self, a2, a3, v3);
  if (v5)
  {
    v6 = v5;
    if (a3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2E03E8;
      v8[3] = &unk_1E7A7E880;
      v8[4] = a3;
      v7 = sub_1AF37174C(a3, v8);
      sub_1AF1679CC(v6, v7);
    }

    else
    {

      sub_1AF1679CC(v5, 0);
    }
  }
}

- (void)_updatePrecomputedLightingEnvironment:(id)a3
{
  v5 = objc_msgSend_materialProperty(self, a2, a3, v3);
  if (v5)
  {

    sub_1AF167A88(v5, a3);
  }
}

- (void)_updateMaterialImage:(id)a3
{
  v5 = objc_msgSend_materialProperty(self, a2, a3, v3);
  if (v5)
  {

    sub_1AF1664F4(v5, a3);
  }
}

- (void)_updateMaterialAsset:(id)a3
{
  if (!a3)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF5E24(v6, a2, a3, v3, v7, v8, v9, v10);
    }
  }

  v11 = objc_msgSend_materialProperty(self, a2, a3, v3);
  if (v11)
  {
    sub_1AF1670B0(v11, a3);
  }
}

- (void)_updateMaterialNumber:(id)a3
{
  if (!a3)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFA20(v6, a2, a3, v3, v7, v8, v9, v10);
    }
  }

  v11 = objc_msgSend_materialProperty(self, a2, a3, v3);
  if (v11)
  {
    v15 = v11;
    objc_msgSend_floatValue(a3, v12, v13, v14);
    v23 = v16;
    if (sub_1AF167CD8(v15) == 4)
    {
      v17 = vdupq_lane_s32(v23, 0);
    }

    else
    {
      __asm { FMOV            V0.4S, #1.0 }

      _Q0.i32[0] = v23.i32[0];
      v17 = vzip1q_s32(_Q0, _Q0);
      v17.i32[2] = v23.i32[0];
    }

    v24 = v17;
    sub_1AF165848(v15, v24.i32);
  }
}

- (void)_updateMaterialColor:(id)a3
{
  if (!a3)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6F14(v6, a2, a3, v3, v7, v8, v9, v10);
    }
  }

  v11 = objc_msgSend_materialProperty(self, a2, a3, v3);
  if (v11)
  {
    v12 = v11;
    v13 = sub_1AF167CD8(v11);
    v14 = sub_1AF167D58(v13);
    v16[0] = sub_1AF371798(a3, v14);
    v16[1] = v15;
    sub_1AF165848(v12, v16);
  }
}

+ (id)captureDeviceOutputConsumerWithOptions:(id)a3
{
  v4 = [VFXCaptureDeviceOutputConsumerSource alloc];
  v7 = objc_msgSend_initWithOptions_(v4, v5, a3, v6);

  return v7;
}

- (id)valueForKey:(id)a3
{
  if (objc_msgSend_isEqualToString_(a3, a2, @"contentsTransform", v3))
  {
    v9 = MEMORY[0x1E696B098];
    objc_msgSend_contentsTransform(self, v6, v7, v8);

    return objc_msgSend_valueWithVFXMatrix4_(v9, v10, v11, v12);
  }

  if (objc_msgSend_isEqualToString_(a3, v6, @"contentsOffset", v8))
  {
    v17 = MEMORY[0x1E696B098];
    objc_msgSend_contentsOffset(self, v14, v15, v16);
LABEL_9:

    return objc_msgSend_valueWithVFXFloat3_(v17, v18, v19, v20);
  }

  if (objc_msgSend_isEqualToString_(a3, v14, @"contentsScale", v16))
  {
    v17 = MEMORY[0x1E696B098];
    objc_msgSend_contentsScale(self, v21, v22, v23);
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(a3, v21, @"linearExtendedSRGBColor", v23))
  {
    v27 = MEMORY[0x1E696B098];
    objc_msgSend_linearExtendedSRGBColor(self, v24, v25, v26);

    return objc_msgSend_valueWithVFXFloat4_(v27, v28, v29, v30);
  }

  else
  {
    v31.receiver = self;
    v31.super_class = VFXMaterialProperty;
    return [(VFXMaterialProperty *)&v31 valueForKey:a3];
  }
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  if (objc_msgSend_isEqualToString_(a4, a2, @"contentsTransform", a4))
  {
    objc_msgSend_VFXMatrix4Value(a3, v7, v8, v9);

    objc_msgSend_setContentsTransform_(self, v10, v11, v12);
  }

  else if (objc_msgSend_isEqualToString_(a4, v7, @"contentsOffset", v9))
  {
    objc_msgSend_VFXFloat3Value(a3, v13, v14, v15);

    MEMORY[0x1EEE66B58](self, sel_setContentsOffset_, v16, v17);
  }

  else if (objc_msgSend_isEqualToString_(a4, v13, @"contentsScale", v15))
  {
    objc_msgSend_VFXFloat3Value(a3, v18, v19, v20);

    MEMORY[0x1EEE66B58](self, sel_setContentsScale_, v21, v22);
  }

  else if (objc_msgSend_isEqualToString_(a4, v18, @"linearExtendedSRGBColor", v20))
  {
    objc_msgSend_VFXFloat4Value(a3, v23, v24, v25);

    MEMORY[0x1EEE66B58](self, sel_setLinearExtendedSRGBColor_, v26, v27);
  }

  else
  {
    v28.receiver = self;
    v28.super_class = VFXMaterialProperty;
    [(VFXMaterialProperty *)&v28 setValue:a3 forKey:a4];
  }
}

- (void)_customEncodingOfVFXMaterialProperty:(id)a3
{
  contentTransform = self->_contentTransform;
  if (contentTransform)
  {
    v63 = sub_1AF1CCB30(contentTransform);
    v64 = sub_1AF1CCB48(self->_contentTransform, v63.n128_f64[0], v6, v7, v8, v9, v10, v11);
    sub_1AF1CC9D8(self->_contentTransform, v64.n128_f64[0], v12, v13, v14, v15, v16, v17);
    v65 = v18;
    sub_1AF371A8C(a3, @"tr_p", v63);
    sub_1AF371A8C(a3, @"tr_s", v64);
    sub_1AF371AF4(a3, @"tr_a", v65);
  }

  p_contents = &self->_contents;
  if (self->_contents)
  {
    contentType = self->_contentType;
    if (contentType == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sub_1AF3741F8(a3, *p_contents, @"imageArray", v22);
        goto LABEL_18;
      }
    }

    else if (contentType == 6)
    {
      objc_msgSend_encodeObject_forKey_(a3, a2, self->_contents, @"asset", *&v63);
      goto LABEL_18;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v28 = objc_msgSend_options(a3, v25, v26, v27), v31 = objc_msgSend_objectForKeyedSubscript_(v28, v29, @"VFXWorldExportEmbedImages", v30), !objc_msgSend_BOOLValue(v31, v32, v33, v34)) || (runtimeResolvedURL = self->_runtimeResolvedURL) == 0)
    {
      runtimeResolvedURL = *p_contents;
    }

    goto LABEL_16;
  }

  runtimeResolvedURL = *p_contents;
  if (!*p_contents)
  {
    goto LABEL_18;
  }

  v43 = self->_contentType;
  if (v43 <= 2)
  {
    if (self->_contentType)
    {
      if (v43 == 1)
      {
LABEL_16:
        v35 = a3;
LABEL_17:
        sub_1AF373CD8(v35, runtimeResolvedURL, @"image");
        goto LABEL_18;
      }

      if (v43 == 2)
      {
        sub_1AF37266C(a3, runtimeResolvedURL, @"layer");
        goto LABEL_18;
      }

      goto LABEL_38;
    }

    v46 = @"color";
LABEL_37:
    objc_msgSend_encodeObject_forKey_(a3, runtimeResolvedURL, *p_contents, v46, *&v63);
    goto LABEL_18;
  }

  if (self->_contentType > 9u)
  {
    if (v43 == 10)
    {
      sub_1AF37448C(a3, runtimeResolvedURL, @"data");
      goto LABEL_18;
    }

    if (v43 != 11)
    {
      goto LABEL_38;
    }

    v46 = @"precomputedLightingEnvironment";
    goto LABEL_37;
  }

  if (v43 == 3)
  {
    v50 = a3;
LABEL_41:
    sub_1AF372510(v50, runtimeResolvedURL, 0, @"data");
    goto LABEL_18;
  }

  if (v43 == 5)
  {
    objc_msgSend_floatValue(*p_contents, runtimeResolvedURL, v23, v24);
    objc_msgSend_encodeFloat_forKey_(a3, v44, @"float", v45);
    goto LABEL_18;
  }

LABEL_38:
  v47 = objc_msgSend_replacementObjectForCoder_(*p_contents, runtimeResolvedURL, a3, v24, *&v63);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = a3;
    runtimeResolvedURL = v47;
    goto LABEL_17;
  }

  if (objc_msgSend_conformsToProtocol_(v47, v48, &unk_1F2629960, v49))
  {
    v50 = a3;
    runtimeResolvedURL = v47;
    goto LABEL_41;
  }

  if (objc_msgSend_conformsToProtocol_(*p_contents, v51, &unk_1F25D6CB0, v52))
  {
    v56 = objc_msgSend_classForCoder(*p_contents, v53, v54, v55);
    v57 = objc_opt_class();
    if (objc_msgSend_isSubclassOfClass_(v56, v58, v57, v59))
    {
      objc_msgSend_encodeObject_forKey_(a3, v60, *p_contents, @"image", *&v63);
    }

    else
    {
      v62 = sub_1AF0D5194();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF5F14(v56, &self->_contents, v62);
      }
    }
  }

  else
  {
    v61 = sub_1AF0D5194();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5E9C();
    }
  }

LABEL_18:
  objc_msgSend_encodeInteger_forKey_(a3, runtimeResolvedURL, self->_mappingChannel, @"mappingChannel", *&v63);
  v37 = *(self + 76);
  if ((v37 & 0xF) != 0xF)
  {
    objc_msgSend_encodeInteger_forKey_(a3, v36, v37 & 0xF, @"textureComponents");
  }

  v38 = *(self + 77);
  if ((v38 & 0x1F) != 0x10)
  {
    objc_msgSend_encodeInteger_forKey_(a3, v36, v38 & 0x1F, @"anisotropy");
  }

  objc_msgSend_encodeInteger_forKey_(a3, v36, *(self + 74) & 3, @"minificationFilter");
  objc_msgSend_encodeInteger_forKey_(a3, v39, (*(self + 74) >> 2) & 3, @"magnificationFilter");
  objc_msgSend_encodeInteger_forKey_(a3, v40, (*(self + 74) >> 4) & 3, @"mipFilter");
  objc_msgSend_encodeInteger_forKey_(a3, v41, *(self + 75) & 7, @"wrapS");
  objc_msgSend_encodeInteger_forKey_(a3, v42, (*(self + 75) >> 3) & 7, @"wrapT");
}

- (void)_didDecodeVFXMaterialProperty:(id)a3
{
  v129 = *MEMORY[0x1E69E9840];
  if (self->_customMaterialPropertyName && !self->_customMaterialProperty)
  {
    self->_customMaterialProperty = sub_1AF16578C(0, 28);
  }

  v5 = sub_1AF373644(a3, @"image");
  if (v5)
  {
    v8 = v5;
    v9 = objc_msgSend_valueForKey_(VFXTransaction, v6, @"VFXWorldLoadingContextKey", v7);
    v12 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"VFXWorldLoaderAssetPathResolver", v11);
    if (v12)
    {
      v13 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = objc_msgSend_absoluteURLForAssetPath_(v13, v14, v8, v15);
        if (v16)
        {
          objc_msgSend__setImagePath_withResolvedURL_(self, v17, v8, v16);
          goto LABEL_30;
        }
      }
    }

    v20 = sub_1AF2CBA78(a3);
    if (v20)
    {
      v23 = VFXResolveImageContents(v8, v20);
      if (v23)
      {
        v24 = v23;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v25, v24, v26);
        }

        objc_msgSend__setImagePath_withResolvedURL_(self, v25, v8, v24);
        goto LABEL_30;
      }
    }

LABEL_29:
    objc_msgSend_setContents_(self, v21, v8, v22);
    goto LABEL_30;
  }

  v27 = objc_opt_class();
  v29 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v28, v27, @"asset");
  if (v29 || (v32 = objc_opt_class(), (v29 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v33, v32, @"data")) != 0))
  {
    objc_msgSend_setContents_(self, v30, v29, v31);
    goto LABEL_30;
  }

  v34 = sub_1AF374344(a3, @"imageArray");
  if (v34)
  {
    v8 = v34;
    v35 = sub_1AF2CBA78(a3);
    if (v35)
    {
      v36 = v35;
      v37 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v21, 6, v22);
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v38, &v124, v128, 16);
      if (!v39)
      {
LABEL_28:
        objc_msgSend__updateCFXImageWithContents_(self, v40, v37, v41);
        objc_msgSend__clearContentsForDeallocation_(self, v47, 0, v48);
        self->_contents = v8;
        self->_contentType = 1;
        goto LABEL_30;
      }

      v42 = v39;
      v43 = *v125;
LABEL_22:
      v44 = 0;
      while (1)
      {
        if (*v125 != v43)
        {
          objc_enumerationMutation(v8);
        }

        v45 = VFXResolveImageContents(*(*(&v124 + 1) + 8 * v44), v36);
        if (!v45)
        {
          break;
        }

        objc_msgSend_addObject_(v37, v21, v45, v22);
        if (v42 == ++v44)
        {
          v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v46, &v124, v128, 16);
          if (v42)
          {
            goto LABEL_22;
          }

          goto LABEL_28;
        }
      }
    }

    goto LABEL_29;
  }

  v83 = objc_opt_class();
  v85 = objc_msgSend_decodeObjectOfClass_forKey_(a3, v84, v83, @"color");
  if (v85)
  {
    objc_msgSend_setColor_(self, v86, v85, v87);
  }

  else
  {
    v91 = pthread_main_np();
    if (!v91)
    {
      objc_msgSend_begin(MEMORY[0x1E6979518], v88, v89, v90);
      objc_msgSend_activateBackground_(MEMORY[0x1E6979518], v92, 1, v93);
    }

    v94 = MEMORY[0x1E695DFD8];
    v95 = objc_opt_class();
    v98 = objc_msgSend_setWithObject_(v94, v96, v95, v97);
    v99 = sub_1AF3726E8(a3, @"layer", v98);
    if (v99)
    {
      objc_msgSend_setLayer_(self, v100, v99, v102);
      if (!v91)
      {
        objc_msgSend_commit(MEMORY[0x1E6979518], v18, v103, v19);
      }
    }

    else
    {
      if (!v91)
      {
        objc_msgSend_commit(MEMORY[0x1E6979518], v100, v101, v102);
      }

      if (objc_msgSend_containsValueForKey_(a3, v100, @"float", v102))
      {
        objc_msgSend_decodeFloatForKey_(a3, v104, @"float", v105);
        v109 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v106, v107, v108);
        objc_msgSend_setFloatValue_(self, v110, v109, v111);
      }

      else if (objc_msgSend_containsValueForKey_(a3, v104, @"precomputedLightingEnvironment", v105))
      {
        v112 = MEMORY[0x1E695DFD8];
        v113 = objc_opt_class();
        v116 = objc_msgSend_setWithObject_(v112, v114, v113, v115);
        v117 = sub_1AF3726E8(a3, @"precomputedLightingEnvironment", v116);
        objc_msgSend_setPrecomputedLightingEnvironment_(self, v118, v117, v119);
      }
    }
  }

LABEL_30:
  v49 = objc_msgSend_decodeIntegerForKey_(a3, v18, @"mappingChannel", v19);
  if (v49 != -1)
  {
    objc_msgSend_setMappingChannel_(self, v50, v49, v51);
  }

  if (objc_msgSend_containsValueForKey_(a3, v50, @"textureComponents", v51))
  {
    v54 = objc_msgSend_decodeIntegerForKey_(a3, v52, @"textureComponents", v53);
    objc_msgSend_setTextureComponents_(self, v55, v54, v56);
  }

  *(self + 74) = *(self + 74) & 0xFC | objc_msgSend_decodeIntegerForKey_(a3, v52, @"minificationFilter", v53) & 3;
  *(self + 74) = (4 * (objc_msgSend_decodeIntegerForKey_(a3, v57, @"magnificationFilter", v58) & 3)) | *(self + 74) & 0xF3;
  *(self + 74) = (16 * (objc_msgSend_decodeIntegerForKey_(a3, v59, @"mipFilter", v60) & 3)) | *(self + 74) & 0xCF;
  *(self + 75) = *(self + 75) & 0xF8 | objc_msgSend_decodeIntegerForKey_(a3, v61, @"wrapS", v62) & 7;
  *(self + 75) = (8 * (objc_msgSend_decodeIntegerForKey_(a3, v63, @"wrapT", v64) & 7)) | *(self + 75) & 0xC7;
  objc_msgSend__updateSampler(self, v65, v66, v67);
  *(self + 77) = *(self + 77) & 0xE0 | 0x10;
  if (objc_msgSend_containsValueForKey_(a3, v68, @"anisotropy", v69))
  {
    v72 = objc_msgSend_decodeIntegerForKey_(a3, v70, @"anisotropy", v71);
    objc_msgSend_setMaxAnisotropy_(self, v73, v72, v74);
  }

  if (objc_msgSend_containsValueForKey_(a3, v70, @"contentsTransform", v71))
  {
    v80 = sub_1AF371C4C(a3, @"contentsTransform").n128_u64[0];
  }

  else
  {
    if (!objc_msgSend_containsValueForKey_(a3, v75, @"tr_p", v76))
    {
      return;
    }

    v81.n128_f64[0] = sub_1AF371BC4(a3, @"tr_p");
    v122 = v81;
    v82.n128_f64[0] = sub_1AF371BC4(a3, @"tr_s");
    v121 = v82;
    v120 = sub_1AF371C0C(a3, @"tr_a");
    memset(v123, 0, sizeof(v123));
    sub_1AF1CCEE0(v123);
    sub_1AF1CCB38(v123, v122);
    sub_1AF1CCB7C(v123, v121);
    sub_1AF1CCAD8(v123, v120);
    v80 = sub_1AF1CBF20(v123).n128_u64[0];
  }

  objc_msgSend_setContentsTransform_(self, v77, v78, v79, *&v80, *&v120);
}

- (BOOL)_hasDefaultValues
{
  if ((*(self + 8) & 2) != 0)
  {
    v18 = v4;
    v19 = v5;
    if (!self->_customMaterialPropertyName && !objc_msgSend_count(self->_animations, a2, v2, v3) && !self->_contentType && !self->_mappingChannel && self->_intensity == 1.0)
    {
      v8 = sub_1AF1C4F78();
      v9 = *(self + 74);
      if ((v9 & 3) == v8 && ((v9 >> 2) & 3) == BYTE1(v8) && ((v9 >> 4) & 3) == BYTE2(v8))
      {
        v10 = *(self + 75);
        if (BYTE3(v8) + 1 == (v10 & 7) && BYTE4(v8) + 1 == ((v10 >> 3) & 7) && (HIBYTE(v8) & 0x7F) == (*(self + 77) & 0x1F) && !self->_contentTransform)
        {
          v11 = *(self + 76) & 0xF;
          if (v11 == sub_1AF167B50(self->_propertyType))
          {
            if (!self->_contents)
            {
              goto LABEL_20;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = sub_1AF1656B8(self->_propertyType);
              v17 = 1;
              v16[0] = objc_msgSend_vfx_CFXColorIgnoringColorSpace_success_(self->_contents, v13, 1, &v17);
              v16[1] = v14;
              if (v17 == 1)
              {
                v6 = sub_1AF163EE0(v16, v12);
                if (!v6)
                {
                  return v6;
                }

LABEL_20:
                LOBYTE(v6) = 1;
                return v6;
              }
            }
          }
        }
      }
    }

    LOBYTE(v6) = 0;
    return v6;
  }

  LOBYTE(v6) = 0;
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  if (*(self + 8))
  {
    objc_msgSend__updateModelFromPresentation(self, a2, a3, v3);
  }

  objc_msgSend__customEncodingOfVFXMaterialProperty_(self, a2, a3, v3);
  objc_msgSend_encodeInt_forKey_(a3, v6, (*(self + 8) >> 1) & 1, @"isCommonProfileProperty");
  parent = self->_parent;
  if (parent)
  {
    objc_msgSend_encodeObject_forKey_(a3, v7, parent, @"parent");
  }

  propertyType = self->_propertyType;
  if (propertyType < 0x1D && ((0x1F87FFFFu >> propertyType) & 1) != 0)
  {
    objc_msgSend_encodeInteger_forKey_(a3, v7, qword_1AFE478F0[self->_propertyType], @"propertyType");
  }

  else
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF5FB4();
    }

    objc_msgSend_encodeInteger_forKey_(a3, v14, 0, @"propertyType");
  }

  customMaterialPropertyName = self->_customMaterialPropertyName;
  if (customMaterialPropertyName)
  {
    objc_msgSend_encodeObject_forKey_(a3, v10, customMaterialPropertyName, @"customMaterialPropertyName");
  }

  *&v12 = self->_intensity;
  objc_msgSend_encodeFloat_forKey_(a3, v10, @"intensity", v11, v12);
  if (objc_msgSend_materialPropertyCreateIfNeeded_(self, v16, 0, v17))
  {
    isColorManaged = objc_msgSend_isColorManaged(self, v18, v19, v20);
    objc_msgSend_encodeBool_forKey_(a3, v22, isColorManaged, @"isColorManaged");
  }

  sub_1AF3728B4(a3, self, v19, v20);
}

- (VFXMaterialProperty)initWithCoder:(id)a3
{
  v55[6] = *MEMORY[0x1E69E9840];
  v54.receiver = self;
  v54.super_class = VFXMaterialProperty;
  v7 = [(VFXMaterialProperty *)&v54 init];
  if (v7)
  {
    v8 = objc_msgSend_immediateMode(VFXTransaction, v4, v5, v6);
    objc_msgSend_setImmediateMode_(VFXTransaction, v9, 1, v10);
    *(v7 + 8) |= 8u;
    v13 = objc_msgSend_decodeIntegerForKey_(a3, v11, @"propertyType", v12);
    if (v13 < 0x1A && ((0x3FFFFFDu >> v13) & 1) != 0)
    {
      v14 = byte_1AFE479D8[v13];
    }

    else
    {
      v15 = sub_1AF0D5194();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF5FF0();
      }

      v14 = 0;
    }

    v7->_propertyType = v14;
    v16 = MEMORY[0x1E695DFD8];
    v55[0] = objc_opt_class();
    v55[1] = objc_opt_class();
    v55[2] = objc_opt_class();
    v55[3] = objc_opt_class();
    v55[4] = objc_opt_class();
    v55[5] = objc_opt_class();
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v17, v55, 6);
    v21 = objc_msgSend_setWithArray_(v16, v19, v18, v20);
    v23 = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v22, v21, @"parent");
    if (v23 == v7)
    {
      objc_msgSend__setParent_(v7, v24, 0, v25);
    }

    else
    {
      objc_msgSend__setParent_(v7, v24, v23, v25);
    }

    objc_msgSend__customDecodingOfVFXMaterialProperty_(v7, v26, a3, v27);
    v30 = objc_msgSend_decodeIntForKey_(a3, v28, @"isCommonProfileProperty", v29);
    *(v7 + 8) = (2 * (v30 & 1)) | *(v7 + 8) & 0xFD;
    if (v30)
    {
      v7->_commonProfile = objc_msgSend_commonProfile(v7->_parent, v31, v32, v33);
    }

    v34 = objc_opt_class();
    v7->_customMaterialPropertyName = objc_msgSend_decodeObjectOfClass_forKey_(a3, v35, v34, @"customMaterialPropertyName");
    objc_msgSend_decodeFloatForKey_(a3, v36, @"intensity", v37);
    objc_msgSend_setIntensity_(v7, v38, v39, v40);
    v41 = @"sRGB";
    if ((objc_msgSend_containsValueForKey_(a3, v42, @"sRGB", v43) & 1) != 0 || (v41 = @"colorManaged", objc_msgSend_containsValueForKey_(a3, v44, @"colorManaged", v45)))
    {
      v46 = objc_msgSend_decodeBoolForKey_(a3, v44, v41, v45);
      objc_msgSend_setColorManaged_(v7, v47, v46, v48);
    }

    v7->_animationsLock._os_unfair_lock_opaque = 0;
    sub_1AF372B94(a3, v7);
    objc_msgSend__didDecodeVFXMaterialProperty_(v7, v49, a3, v50);
    *(v7 + 8) &= ~8u;
    objc_msgSend_setImmediateMode_(VFXTransaction, v51, v8, v52);
  }

  return v7;
}

@end