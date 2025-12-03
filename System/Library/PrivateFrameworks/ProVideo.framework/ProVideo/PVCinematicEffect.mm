@interface PVCinematicEffect
+ (BOOL)assetIsCinematicVideo:(id)video;
+ (BOOL)currentSystemCanRenderAsset:(id)asset;
+ (BOOL)deviceSupportsRendering:(id)rendering;
+ (BOOL)deviceSupportsTracking:(id)tracking;
+ (BOOL)hasAppleNeuralEngine;
+ (id)cinematicMetadataFromAsset:(id)asset;
+ (int64_t)memorySize;
+ (unint64_t)renderingVersionFromAsset:(id)asset error:(id *)error;
+ (void)registerEffectWithID:(id)d displayName:(id)name;
- (BOOL)setAsset:(id)asset;
- (CGAffineTransform)postEffectTransform;
- (CGSize)outputSize;
- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (PVCinematicEffect)init;
- (void)setPostEffectTransform:(CGAffineTransform *)transform;
- (void)setupGlobalMetadata;
- (void)updateDictionary:(id)dictionary completion:(id)completion;
@end

@implementation PVCinematicEffect

- (PVCinematicEffect)init
{
  v8.receiver = self;
  v8.super_class = PVCinematicEffect;
  v2 = [(PVCinematicEffect *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_quality = 75;
    v2->_isCinematographyScriptReady = 0;
    v2->_isAssetOK = 0;
    ptGlobalRenderingMetadata = v2->_ptGlobalRenderingMetadata;
    v2->_ptGlobalRenderingMetadata = 0;

    v6 = *(MEMORY[0x277CBF2C0] + 16);
    v5 = *(MEMORY[0x277CBF2C0] + 32);
    *&v3->_postEffectTransform.a = *MEMORY[0x277CBF2C0];
    *&v3->_postEffectTransform.c = v6;
    *&v3->_postEffectTransform.tx = v5;
  }

  return v3;
}

+ (void)registerEffectWithID:(id)d displayName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{nameCopy, @"FFEffectProperty_DisplayName", @"Helium", @"FFEffectProperty_Category", @"effect.video.filter", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:objc_opt_class() forEffectID:dCopy withProperties:v6];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{nameCopy, @"displayName", @"BuiltIn", @"contentGroup", 0}];
  v8 = +[PVContentRegistry sharedInstance];
  [v8 registerContentClass:objc_opt_class() forID:dCopy type:@"effect.video.filter" withProperties:v7];
}

+ (int64_t)memorySize
{
  if (+[PVCinematicEffect memorySize]::onceToken != -1)
  {
    +[PVCinematicEffect memorySize];
  }

  return +[PVCinematicEffect memorySize]::mem;
}

uint64_t __31__PVCinematicEffect_memorySize__block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  *v2 = 0x1800000006;
  v1 = 8;
  return sysctl(v2, 2u, &+[PVCinematicEffect memorySize]::mem, &v1, 0, 0);
}

+ (BOOL)hasAppleNeuralEngine
{
  if (+[PVCinematicEffect hasAppleNeuralEngine]::onceToken != -1)
  {
    +[PVCinematicEffect hasAppleNeuralEngine];
  }

  return +[PVCinematicEffect hasAppleNeuralEngine]::hasANE;
}

uint64_t __41__PVCinematicEffect_hasAppleNeuralEngine__block_invoke()
{
  v6 = 0;
  v5 = 4;
  result = sysctlbyname("hw.cpufamily", &v6, &v5, 0, 0);
  v1 = 0;
  if (v6 <= 747742333)
  {
    v2 = v6 == -1829029944;
    v3 = -400654602;
  }

  else
  {
    v2 = v6 == 747742334 || v6 == 933271106;
    v3 = 1741614739;
  }

  if (!v2 && v6 != v3)
  {
    v1 = 1;
  }

  +[PVCinematicEffect hasAppleNeuralEngine]::hasANE = v1;
  return result;
}

+ (BOOL)deviceSupportsRendering:(id)rendering
{
  renderingCopy = rendering;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __45__PVCinematicEffect_deviceSupportsRendering___block_invoke;
  block[3] = &unk_279AA4DD8;
  v9 = renderingCopy;
  v4 = +[PVCinematicEffect deviceSupportsRendering:]::onceToken;
  v5 = renderingCopy;
  if (v4 != -1)
  {
    dispatch_once(&+[PVCinematicEffect deviceSupportsRendering:]::onceToken, block);
  }

  v6 = +[PVCinematicEffect deviceSupportsRendering:]::supported;

  return v6;
}

void __45__PVCinematicEffect_deviceSupportsRendering___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MTLCreateSystemDefaultDevice();
  }

  v4 = v2;
  v3 = [MEMORY[0x277D3E8A0] isMetalDeviceSupported:v2];
  if (v3)
  {
    LOBYTE(v3) = +[PVCinematicEffect enoughMemoryForHDR];
  }

  +[PVCinematicEffect deviceSupportsRendering:]::supported = v3;
}

+ (BOOL)deviceSupportsTracking:(id)tracking
{
  trackingCopy = tracking;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __44__PVCinematicEffect_deviceSupportsTracking___block_invoke;
  block[3] = &unk_279AA4DD8;
  v9 = trackingCopy;
  v4 = +[PVCinematicEffect deviceSupportsTracking:]::onceToken;
  v5 = trackingCopy;
  if (v4 != -1)
  {
    dispatch_once(&+[PVCinematicEffect deviceSupportsTracking:]::onceToken, block);
  }

  v6 = +[PVCinematicEffect deviceSupportsTracking:]::supported;

  return v6;
}

uint64_t __44__PVCinematicEffect_deviceSupportsTracking___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    result = [MEMORY[0x277D3E8D8] isSupported];
    +[PVCinematicEffect deviceSupportsTracking:]::supported = result;
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    +[PVCinematicEffect deviceSupportsTracking:]::supported = +[PVCinematicEffect hasAppleNeuralEngine];
    if ((+[PVCinematicEffect deviceSupportsTracking:]::supported & 1) == 0)
    {
      result = 0;
      goto LABEL_8;
    }
  }

  result = [PVCinematicEffect deviceSupportsRendering:*(a1 + 32)];
  if (result)
  {
    result = [MEMORY[0x277CE6598] eligibleForHDRPlayback];
  }

LABEL_8:
  +[PVCinematicEffect deviceSupportsTracking:]::supported = result;
  return result;
}

+ (BOOL)currentSystemCanRenderAsset:(id)asset
{
  assetCopy = asset;
  v9 = 0;
  v5 = [self renderingVersionFromAsset:assetCopy error:&v9];
  v6 = v9;
  if (objc_opt_respondsToSelector())
  {
    v7 = [MEMORY[0x277D3E8A0] isRenderVersionSupported:v5];
  }

  else
  {
    v7 = v5 == 1;
  }

  return v7;
}

+ (BOOL)assetIsCinematicVideo:(id)video
{
  v3 = [self cinematicMetadataFromAsset:video];
  v4 = v3 != 0;

  return v4;
}

+ (id)cinematicMetadataFromAsset:(id)asset
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  metadata = [asset metadata];
  v4 = [metadata countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(metadata);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        identifier = [v7 identifier];
        v9 = [identifier isEqual:@"mdta/com.apple.quicktime.cinematic-video"];

        if (v9)
        {
          v10 = v7;
          goto LABEL_11;
        }
      }

      v4 = [metadata countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (unint64_t)renderingVersionFromAsset:(id)asset error:(id *)error
{
  v5 = [self cinematicMetadataFromAsset:asset];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277D3E888];
    value = [v5 value];
    v9 = [v7 deserializeMetadataWithType:2 fromGlobalMetadata:value error:error];

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (objc_opt_respondsToSelector())
        {
          renderingVersion = [v9 renderingVersion];
LABEL_11:

          goto LABEL_12;
        }

        v11 = @"Global rendering metadata does not respond to renderingVersion selector.";
      }

      else
      {
        v11 = @"Unexpected global rendering metadata class.";
      }
    }

    else
    {
      v11 = @"Deserialize failed.";
    }

    PVLogError(v11, @"ProVideo.Cinematic", error);
    renderingVersion = 0;
    goto LABEL_11;
  }

  PVLogError(@"Can't find global cinematic metadata in asset.", @"ProVideo.Cinematic", error);
  renderingVersion = 0;
LABEL_12:

  return renderingVersion;
}

- (CGSize)outputSize
{
  v2 = vabsq_f64(vaddq_f64(vmulq_n_f64(*&self->_postEffectTransform.a, self->_videoTrackSize.width), vmulq_n_f64(*&self->_postEffectTransform.c, self->_videoTrackSize.height)));
  v3 = v2.f64[1];
  result.width = v2.f64[0];
  result.height = v3;
  return result;
}

- (void)setupGlobalMetadata
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  metadata = [(AVAsset *)self->_avasset metadata];
  v4 = [metadata countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(metadata);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        identifier = [v7 identifier];
        v9 = [identifier isEqualToString:@"mdta/com.apple.quicktime.cinematic-video"];

        if (v9)
        {
          v10 = MEMORY[0x277D3E888];
          value = [v7 value];
          v15 = 0;
          v12 = [v10 deserializeMetadataWithType:2 fromGlobalMetadata:value error:&v15];
          v13 = v15;

          if (v12)
          {
            ptGlobalRenderingMetadata = self->_ptGlobalRenderingMetadata;
            self->_ptGlobalRenderingMetadata = v12;

            goto LABEL_13;
          }
        }
      }

      v4 = [metadata countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (BOOL)setAsset:(id)asset
{
  assetCopy = asset;
  if (self->_avasset != assetCopy)
  {
    objc_storeStrong(&self->_avasset, asset);
    self->_isCinematographyScriptReady = 0;
    self->_isAssetOK = 0;
    avasset = self->_avasset;
    if (avasset)
    {
      v7 = *MEMORY[0x277CE5EA8];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = *"";
      v9[2] = __30__PVCinematicEffect_setAsset___block_invoke;
      v9[3] = &unk_279AA4E28;
      v9[4] = self;
      v10 = assetCopy;
      [(AVAsset *)avasset loadTracksWithMediaType:v7 completionHandler:v9];
    }
  }

  return 1;
}

void __30__PVCinematicEffect_setAsset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6 && [v5 count])
  {
    v7 = [v5 objectAtIndexedSubscript:0];
    v8 = v7;
    if (v7)
    {
      [v7 naturalSize];
      v11 = (*(a1 + 32) + 184);
      *v11 = fabs(v9);
      v11[1] = fabs(v10);
    }

    v12 = dispatch_semaphore_create(0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = *"";
    v16[2] = __30__PVCinematicEffect_setAsset___block_invoke_2;
    v16[3] = &unk_279AA4E00;
    v13 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v14 = v12;
    v17 = v14;
    [v13 loadValuesAsynchronouslyForKeys:&unk_28732D7D8 completionHandler:v16];
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    v15 = *(a1 + 32);
    if (*(v15 + 176))
    {
      *(v15 + 168) = 1;
    }
  }
}

intptr_t __30__PVCinematicEffect_setAsset___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setupGlobalMetadata];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

- (void)updateDictionary:(id)dictionary completion:(id)completion
{
  dictionaryCopy = dictionary;
  completionCopy = completion;
  if (self->_currentCinemtography == dictionaryCopy && self->_isCinematographyScriptReady)
  {
LABEL_7:
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    goto LABEL_10;
  }

  if (!self->_script || !self->_isCinematographyScriptReady)
  {
    self->_isCinematographyScriptReady = 0;
    v9 = objc_alloc_init(MEMORY[0x277D3E850]);
    script = self->_script;
    self->_script = v9;

    v11 = self->_script;
    avasset = self->_avasset;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = *"";
    v14[2] = __49__PVCinematicEffect_updateDictionary_completion___block_invoke;
    v14[3] = &unk_279AA4E50;
    v14[4] = self;
    v15 = dictionaryCopy;
    v16 = completionCopy;
    v13 = [(PTCinematographyScript *)v11 loadWithAsset:avasset changesDictionary:v15 completion:v14];

    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    [(PTCinematographyScript *)self->_script reloadWithChangesDictionary:dictionaryCopy];
    objc_storeStrong(&self->_currentCinemtography, dictionary);
    goto LABEL_7;
  }

LABEL_10:
}

void __49__PVCinematicEffect_updateDictionary_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (a2)
  {
    objc_storeStrong((*(a1 + 32) + 160), *(a1 + 40));
    *(*(a1 + 32) + 169) = 1;
  }

  else
  {
    NSLog(&cfstr_Ptcinematograp.isa, v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v84 = v6;
  v107 = *MEMORY[0x277D85DE8];
  if (!self->_isAssetOK || ([objc_opt_class() deviceSupportsRendering:0] & 1) == 0)
  {
    v40 = HGObject::operator new(0x1A0uLL);
    v41 = HGNode::HGNode(v40);
    *v84 = v40;
    return v41;
  }

  selfCopy = self;
  PVInputHGNodeMap<unsigned int>::GetNode(inputs, 0, &v103);
  PVInputHGNodeMap<unsigned int>::GetNode(inputs, 1u, &v102);
  v9 = v103;
  *v84 = v103;
  v10 = selfCopy;
  if (v9)
  {
    (*(*v9 + 16))(v9);
  }

  v77 = v9;
  v11 = HGObject::operator new(0x1C0uLL);
  HGRenderCinema::HGRenderCinema(v11, 0);
  (*(*v11 + 120))(v11, 0, v103);
  (*(*v11 + 120))(v11, 1, v102);
  v85 = v11;
  ptGlobalRenderingMetadata = selfCopy->_ptGlobalRenderingMetadata;
  if (ptGlobalRenderingMetadata)
  {
    HGRenderCinema::SetGlobalRenderingMetadata(v11, ptGlobalRenderingMetadata, v12);
  }

  v81 = PVInputHGNodeMap<unsigned int>::GetTimedMetadata(inputs, 0);
  v14 = PVInputHGNodeMap<unsigned int>::GetTimedMetadata(inputs, 1u);
  v15 = v81;
  v79 = v14;
  if (!v81)
  {
    v15 = v14;
  }

  v16 = v15;
  v80 = v16;
  if (!v16)
  {
    v21 = 1.0;
    goto LABEL_39;
  }

  items = [v16 items];
  v78 = items;
  if (!items)
  {
    v21 = 1.0;
    goto LABEL_38;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v18 = items;
  v19 = [v18 countByEnumeratingWithState:&v98 objects:v106 count:16];
  if (!v19)
  {
    v21 = 1.0;
    goto LABEL_37;
  }

  v20 = *v99;
  v87 = *MEMORY[0x277CC05B0];
  v21 = 1.0;
  do
  {
    v22 = 0;
    do
    {
      if (*v99 != v20)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v98 + 1) + 8 * v22);
      identifier = [v23 identifier];
      v25 = [identifier isEqualToString:@"mdta/com.apple.quicktime.disparity-float"];

      if (v25)
      {
        value = [v23 value];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_27;
        }

        value2 = [v23 value];
        [value2 floatValue];
        v21 = v29;
        goto LABEL_26;
      }

      value2 = [v23 identifier];
      if (![value2 isEqualToString:@"mdta/com.apple.quicktime.cinematic-video.rendering"])
      {
        goto LABEL_26;
      }

      dataType = [v23 dataType];
      if (([dataType isEqualToString:v87] & 1) == 0)
      {

LABEL_26:
        goto LABEL_27;
      }

      value3 = [v23 value];
      objc_opt_class();
      v32 = objc_opt_isKindOfClass();

      if (v32)
      {
        v33 = selfCopy->_ptGlobalRenderingMetadata;
        if (v33)
        {
          majorVersion = [(PTGlobalRenderingMetadata *)v33 majorVersion];
          minorVersion = [(PTGlobalRenderingMetadata *)selfCopy->_ptGlobalRenderingMetadata minorVersion];
          v36 = MEMORY[0x277D3E900];
          value4 = [v23 value];
          value2 = [v36 objectFromData:value4 withMajorVersion:majorVersion minorVersion:minorVersion];

          if (value2)
          {
            HGRenderCinema::SetTimedRenderingMetadata(v85, value2, v38);
          }

          else
          {
            NSLog(&cfstr_ErrorWPttimedr.isa);
          }

          goto LABEL_26;
        }
      }

LABEL_27:
      ++v22;
    }

    while (v19 != v22);
    v39 = [v18 countByEnumeratingWithState:&v98 objects:v106 count:16];
    v19 = v39;
  }

  while (v39);
LABEL_37:

LABEL_38:
  v10 = selfCopy;
LABEL_39:
  if (v10->_isCinematographyScriptReady)
  {
    var0 = time->var0;
    var1 = time->var1;
    v104 = *&time->var2;
    var3_high = HIDWORD(time->var3);
    memset(v88, 0, 24);
    CMTimeMakeWithSeconds(v88, v10->_clipOffset, var1);
    memset(&v97, 0, sizeof(v97));
    CMTimeMakeWithSeconds(&v97, v10->_clipStart, var1);
    lhs.value = var0;
    lhs.timescale = var1;
    *&lhs.flags = v104;
    HIDWORD(lhs.epoch) = var3_high;
    rhs = *v88;
    CMTimeSubtract(&v95, &lhs, &rhs);
    lhs = v97;
    CMTimeAdd(&v96, &v95, &lhs);
    v104 = *&v96.flags;
    var3_high = HIDWORD(v96.epoch);
    script = v10->_script;
    *v88 = v96;
    v45 = [(PTCinematographyScript *)script frameNearestTime:v88];
    v46 = v45;
    if (v45)
    {
      [v45 aperture];
      v48 = v47;
      [v46 focusDistance];
      v21 = v49;
    }

    else
    {
      v48 = 1068708659;
    }

    v10 = selfCopy;
  }

  else
  {
    v48 = 1068708659;
  }

  [(NSLock *)v10->super.super._inspectablePropertiesLock lock];
  v50 = [(NSMutableDictionary *)v10->super.super._inspectableProperties objectForKeyedSubscript:@"CinematicAperture"];
  [(NSLock *)v10->super.super._inspectablePropertiesLock unlock];
  if (v50)
  {
    [v50 floatValue];
    v48 = v51;
  }

  v52 = *MEMORY[0x277CC4CD8];
  v53 = PVInstructionGraphContext::WorkingColorSpace(*context.m_Obj);
  if (([v53 isRec709GammaColorSpace] & 1) == 0)
  {
    if ([v53 isRec2020LinearColorSpace])
    {
      v54 = *MEMORY[0x277CC04E0];

      v52 = v54;
      v10 = selfCopy;
    }

    else
    {
      NSLog(&cfstr_UnexpectedWork.isa);
    }
  }

  HGRenderCinema::SetSingleChannelDepthConversion(v85);
  quality = v10->_quality;
  if (quality)
  {
    v57 = quality;
  }

  else
  {
    v57 = 75;
  }

  HGRenderCinema::SetRenderQuality(v85, v57, v55);
  v58.n128_u32[0] = v48;
  HGRenderCinema::SetFXParameter(v85, 0, v59, v58, v60, v61, v62);
  v63.n128_u32[0] = v21;
  HGRenderCinema::SetFXParameter(v85, 1, v64, v63, v65, v66, v67);
  HGRenderCinema::SetDisplayMode(v85, 0, v68);
  v69 = v52;
  uTF8String = [v52 UTF8String];
  v71 = strlen(uTF8String);
  if (v71 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v73 = v71;
  if (v71 >= 0x17)
  {
    operator new();
  }

  v92 = v71;
  if (v71)
  {
    memmove(&__dst, uTF8String, v71);
  }

  *(&__dst + v73) = 0;
  HGRenderCinema::SetTransferFunction(v85, &__dst, v72);
  if (v92 < 0)
  {
    operator delete(__dst);
  }

  v74 = *v84;
  if (*v84 == v85)
  {
    (*(*v85 + 24))(v85);
  }

  else
  {
    if (v74)
    {
      (*(*v74 + 24))(*v84);
    }

    v74 = v85;
    *v84 = v85;
  }

  v90 = v74;
  if (v74)
  {
    (*(*v74 + 16))(v74);
  }

  v75 = *&selfCopy->_postEffectTransform.c;
  *v88 = *&selfCopy->_postEffectTransform.a;
  *&v88[16] = v75;
  v89 = *&selfCopy->_postEffectTransform.tx;
  HGXFormForCGAffineTransform(&v90, v88, 1, &v97);
  value = v97.value;
  if (v74 == v97.value)
  {
    if (v74)
    {
      (*(*v97.value + 24))();
    }
  }

  else
  {
    if (v74)
    {
      (*(*v74 + 24))(v74);
      value = v97.value;
    }

    *v84 = value;
    v97.value = 0;
  }

  if (v90)
  {
    (*(*v90 + 24))(v90);
  }

  if (v102)
  {
    (*(*v102 + 24))(v102);
  }

  v41 = v103;
  if (v103)
  {
    return (*(*v103 + 24))(v103);
  }

  return v41;
}

- (CGAffineTransform)postEffectTransform
{
  v3 = *&self[5].a;
  *&retstr->a = *&self[4].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[5].c;
  return self;
}

- (void)setPostEffectTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_postEffectTransform.a = *&transform->a;
  *&self->_postEffectTransform.c = v4;
  *&self->_postEffectTransform.tx = v3;
}

@end