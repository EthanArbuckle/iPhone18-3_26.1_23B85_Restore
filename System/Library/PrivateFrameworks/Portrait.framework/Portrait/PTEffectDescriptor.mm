@interface PTEffectDescriptor
- (BOOL)isEqual:(id)equal includeSyncInit:(BOOL)init;
- (CGSize)colorSize;
- (CGSize)externalDisparitySize;
- (PTEffectDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PTEffectDescriptor

- (PTEffectDescriptor)init
{
  v6.receiver = self;
  v6.super_class = PTEffectDescriptor;
  v2 = [(PTEffectDescriptor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (BOOL)isEqual:(id)equal includeSyncInit:(BOOL)init
{
  initCopy = init;
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equalCopy;
      metalCommandQueue = self->_metalCommandQueue;
      metalCommandQueue = [(PTEffectDescriptor *)v8 metalCommandQueue];
      if (metalCommandQueue == metalCommandQueue || (v11 = self->_metalCommandQueue, [(PTEffectDescriptor *)v8 metalCommandQueue], v4 = objc_claimAutoreleasedReturnValue(), [(MTLCommandQueue *)v11 isEqual:v4]))
      {
        if ((!initCopy || (syncInitialization = self->_syncInitialization, syncInitialization == [(PTEffectDescriptor *)v8 syncInitialization])) && (width = self->_colorSize.width, height = self->_colorSize.height, [(PTEffectDescriptor *)v8 colorSize], width == v18) && height == v17 && (v20 = self->_externalDisparitySize.width, v19 = self->_externalDisparitySize.height, [(PTEffectDescriptor *)v8 externalDisparitySize], v20 == v22) && v19 == v21 && (availableEffectTypes = self->_availableEffectTypes, availableEffectTypes == [(PTEffectDescriptor *)v8 availableEffectTypes]) && (activeEffectType = self->_activeEffectType, activeEffectType == [(PTEffectDescriptor *)v8 activeEffectType]) && (effectQuality = self->_effectQuality, effectQuality == [(PTEffectDescriptor *)v8 effectQuality]) && (prewarmOnly = self->_prewarmOnly, prewarmOnly == [(PTEffectDescriptor *)v8 prewarmOnly]) && (laguna = self->_laguna, laguna == [(PTEffectDescriptor *)v8 laguna]) && (externalHandDetectionsEnabled = self->_externalHandDetectionsEnabled, externalHandDetectionsEnabled == [(PTEffectDescriptor *)v8 externalHandDetectionsEnabled]) && (allowSkipOutColorBufferWrite = self->_allowSkipOutColorBufferWrite, allowSkipOutColorBufferWrite == [(PTEffectDescriptor *)v8 allowSkipOutColorBufferWrite]))
        {
          externalCamera = self->_externalCamera;
          v12 = externalCamera == [(PTEffectDescriptor *)v8 externalCamera];
          v13 = v12;
        }

        else
        {
          v12 = 0;
          v13 = 0;
        }

        if (metalCommandQueue == metalCommandQueue)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
LABEL_25:

      goto LABEL_26;
    }

    v13 = 0;
  }

LABEL_26:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  metalCommandQueue = [(PTEffectDescriptor *)self metalCommandQueue];
  [v4 setMetalCommandQueue:metalCommandQueue];

  [(PTEffectDescriptor *)self colorSize];
  [v4 setColorSize:?];
  [(PTEffectDescriptor *)self externalDisparitySize];
  [v4 setExternalDisparitySize:?];
  [v4 setAvailableEffectTypes:{-[PTEffectDescriptor availableEffectTypes](self, "availableEffectTypes")}];
  [v4 setActiveEffectType:{-[PTEffectDescriptor activeEffectType](self, "activeEffectType")}];
  [v4 setEffectQuality:{-[PTEffectDescriptor effectQuality](self, "effectQuality")}];
  [v4 setPrewarmOnly:{-[PTEffectDescriptor prewarmOnly](self, "prewarmOnly")}];
  [v4 setLaguna:{-[PTEffectDescriptor laguna](self, "laguna")}];
  [v4 setExternalHandDetectionsEnabled:{-[PTEffectDescriptor externalHandDetectionsEnabled](self, "externalHandDetectionsEnabled")}];
  [v4 setAllowSkipOutColorBufferWrite:{-[PTEffectDescriptor allowSkipOutColorBufferWrite](self, "allowSkipOutColorBufferWrite")}];
  asyncInitQueue = [(PTEffectDescriptor *)self asyncInitQueue];
  [v4 setAsyncInitQueue:asyncInitQueue];

  asyncProcessingQueue = [(PTEffectDescriptor *)self asyncProcessingQueue];
  [v4 setAsyncProcessingQueue:asyncProcessingQueue];

  [v4 setSyncInitialization:{-[PTEffectDescriptor syncInitialization](self, "syncInitialization")}];
  [v4 setExternalCamera:{-[PTEffectDescriptor externalCamera](self, "externalCamera")}];
  return v4;
}

- (CGSize)colorSize
{
  objc_copyStruct(v4, &self->_colorSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)externalDisparitySize
{
  objc_copyStruct(v4, &self->_externalDisparitySize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end