@interface OZFxPlugParameterHandler
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertToFigTime:(SEL)a3 meOffset:(double)a4 motionEffect:(double)a5;
- ($43B88956A48E07FA4329DDDD387A1517)figDurationToFxDuration:(id *)a3 withConversionData:(void *)a4;
- ($43B88956A48E07FA4329DDDD387A1517)figTimeToFxTime:(id *)a3 withConversionData:(void *)a4;
- (BOOL)_floatParameter:(int)a3 hasValidMin:(double)a4 max:(double)a5 sliderMin:(double)a6 sliderMax:(double)a7 defaultValue:(double)a8 paramFlags:(unsigned int)a9;
- (BOOL)_getAngle:(double *)a3 fromParm:(unsigned int)a4 atTime:(id)a5;
- (BOOL)_getBoolValue:(BOOL *)a3 fromParm:(unsigned int)a4 atTime:(id)a5;
- (BOOL)_getCustomParameterValue:(id *)a3 fromParm:(unsigned int)a4 atTime:(id)a5;
- (BOOL)_getFloatValue:(double *)a3 fromParm:(unsigned int)a4 atTime:(id)a5;
- (BOOL)_getGradientSamples:(void *)a3 numSamples:(unint64_t)a4 depth:(unint64_t)a5 fromParm:(unsigned int)a6 atTime:(id)a7;
- (BOOL)_getHistogramBlackIn:(double *)a3 BlackOut:(double *)a4 WhiteIn:(double *)a5 WhiteOut:(double *)a6 Gamma:(double *)a7 forChannel:(unint64_t)a8 fromParm:(unsigned int)a9 atTime:(id)a10;
- (BOOL)_getIntValue:(int *)a3 fromParm:(unsigned int)a4 atTime:(id)a5;
- (BOOL)_getPathID:(void *)a3 fromParm:(unsigned int)a4 atTime:(id)a5;
- (BOOL)_getRedValue:(double *)a3 greenValue:(double *)a4 blueValue:(double *)a5 alphaValue:(double *)a6 fromParm:(unsigned int)a7 atTime:(id)a8;
- (BOOL)_getRedValue:(double *)a3 greenValue:(double *)a4 blueValue:(double *)a5 fromParm:(unsigned int)a6 atTime:(id)a7;
- (BOOL)_getXValue:(double *)a3 YValue:(double *)a4 fromParm:(unsigned int)a5 atTime:(id)a6;
- (BOOL)_intParameter:(int)a3 hasValidMin:(int)a4 max:(int)a5 sliderMin:(int)a6 sliderMax:(int)a7 defaultValue:(int)a8 paramFlags:(unsigned int)a9;
- (BOOL)_setBoolValue:(BOOL)a3 toParm:(unsigned int)a4 atTime:(id)a5;
- (BOOL)_setCustomParameterValue:(id)a3 toParm:(unsigned int)a4 atTime:(id)a5;
- (BOOL)_setFloatValue:(double)a3 toParm:(unsigned int)a4 atTime:(id)a5;
- (BOOL)_setHistogramBlackIn:(double)a3 BlackOut:(double)a4 WhiteIn:(double)a5 WhiteOut:(double)a6 Gamma:(double)a7 forChannel:(unint64_t)a8 fromParm:(unsigned int)a9 atTime:(id)a10;
- (BOOL)_setIntValue:(int)a3 toParm:(unsigned int)a4 atTime:(id)a5;
- (BOOL)_setPathID:(void *)a3 toParm:(unsigned int)a4 atTime:(id)a5;
- (BOOL)_setRedValue:(double)a3 greenValue:(double)a4 blueValue:(double)a5 alphaValue:(double)a6 toParm:(unsigned int)a7 atTime:(id)a8;
- (BOOL)_setRedValue:(double)a3 greenValue:(double)a4 blueValue:(double)a5 toParm:(unsigned int)a6 atTime:(id)a7;
- (BOOL)_setXValue:(double)a3 YValue:(double)a4 toParm:(unsigned int)a5 atTime:(id)a6;
- (BOOL)_setupRenderer;
- (BOOL)add2DScaleWithName:(id)a3 parmId:(unsigned int)a4 defaultX:(double)a5 defaultY:(double)a6 parmFlags:(unsigned int)a7;
- (BOOL)add2DVectorWithName:(id)a3 parmId:(unsigned int)a4 defaultX:(double)a5 defaultY:(double)a6 parmFlags:(unsigned int)a7;
- (BOOL)addAngleSliderWithName:(id)a3 parmId:(unsigned int)a4 defaultValue:(double)a5 parameterMin:(double)a6 parameterMax:(double)a7 parmFlags:(unsigned int)a8;
- (BOOL)addColorParameterWithName:(id)a3 parmId:(unsigned int)a4 defaultRed:(double)a5 defaultGreen:(double)a6 defaultBlue:(double)a7 defaultAlpha:(double)a8 parmFlags:(unsigned int)a9;
- (BOOL)addColorParameterWithName:(id)a3 parmId:(unsigned int)a4 defaultRed:(double)a5 defaultGreen:(double)a6 defaultBlue:(double)a7 parmFlags:(unsigned int)a8;
- (BOOL)addCustomParameterWithName:(id)a3 parmId:(unsigned int)a4 defaultValue:(id)a5 parmFlags:(unsigned int)a6;
- (BOOL)addFloatSliderWithName:(id)a3 parmId:(unsigned int)a4 defaultValue:(double)a5 parameterMin:(double)a6 parameterMax:(double)a7 sliderMin:(double)a8 sliderMax:(double)a9 delta:(double)a10 parmFlags:(unsigned int)a11;
- (BOOL)addGradientPositionedWithName:(id)a3 parmId:(unsigned int)a4 parmFlags:(unsigned int)a5;
- (BOOL)addGradientWithName:(id)a3 parmId:(unsigned int)a4 parmFlags:(unsigned int)a5;
- (BOOL)addHistogramWithName:(id)a3 parmId:(unsigned int)a4 parmFlags:(unsigned int)a5;
- (BOOL)addImageReferenceWithName:(id)a3 parmId:(unsigned int)a4 parmFlags:(unsigned int)a5;
- (BOOL)addIntSliderWithName:(id)a3 parmId:(unsigned int)a4 defaultValue:(int)a5 parameterMin:(int)a6 parameterMax:(int)a7 sliderMin:(int)a8 sliderMax:(int)a9 delta:(int)a10 parmFlags:(unsigned int)a11;
- (BOOL)addLevelsWithName:(id)a3 parmId:(unsigned int)a4 hideGamma:(BOOL)a5 parmFlags:(unsigned int)a6;
- (BOOL)addPercentSliderWithName:(id)a3 parmId:(unsigned int)a4 defaultValue:(double)a5 parameterMin:(double)a6 parameterMax:(double)a7 sliderMin:(double)a8 sliderMax:(double)a9 delta:(double)a10 parmFlags:(unsigned int)a11;
- (BOOL)addPointParameterWithName:(id)a3 parmId:(unsigned int)a4 defaultX:(double)a5 defaultY:(double)a6 parmFlags:(unsigned int)a7;
- (BOOL)addPopupMenuWithNameAndTags:(id)a3 parmId:(unsigned int)a4 defaultValue:(unsigned int)a5 menuEntries:(id)a6 tags:(const int *)a7 tagCount:(int)a8 parmFlags:(unsigned int)a9;
- (BOOL)addStringParameterWithName:(id)a3 parmId:(unsigned int)a4 defaultValue:(id)a5 parmFlags:(unsigned int)a6;
- (BOOL)addToggleButtonWithName:(id)a3 parmId:(unsigned int)a4 defaultValue:(BOOL)a5 parmFlags:(unsigned int)a6;
- (BOOL)containsParameterWithID:(unsigned int)a3;
- (BOOL)endParameterSubGroup;
- (BOOL)endUndoGroup;
- (BOOL)finalizeImage:(id)a3 withSceneNode:(void *)a4 pixelBounds:(PCRect<int>)a5 agent:(void *)a6 andRenderParams:(const void *)a7 atTime:(id)a8;
- (BOOL)folderWasModified:(void *)a3 inDocument:(void *)a4 parameterID:(unsigned int)a5 modifiedParamID:(void *)a6 supportsParametersChanged:(BOOL)a7 paramsChangedArray:(id)a8 target:(id)a9;
- (BOOL)getAnalysisTexture:(id *)a3 requestInfo:(id *)a4 fromParm:(unsigned int)a5 atFxTime:(id)a6;
- (BOOL)getBitmap:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParm:(unsigned int)a7 atTime:(double)a8;
- (BOOL)getCustomParameterValue:(id *)a3 fromParm:(unsigned int)a4;
- (BOOL)getGradientStartEnd:(double *)a3 startY:(double *)a4 endX:(double *)a5 endY:(double *)a6 type:(int *)a7 fromParm:(unsigned int)a8 atTime:(id)a9;
- (BOOL)getHeliumImage:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParm:(unsigned int)a7 atTime:(id)a8;
- (BOOL)getLevelsBlack:(double *)a3 White:(double *)a4 Gamma:(double *)a5 fromParm:(unsigned int)a6 atTime:(id)a7;
- (BOOL)getParameterFlags:(unsigned int *)a3 fromParm:(unsigned int)a4;
- (BOOL)getStringParameterValue:(id *)a3 fromParm:(unsigned int)a4;
- (BOOL)getTexture:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParm:(unsigned int)a7 atTime:(double)a8;
- (BOOL)hasValidParameterID:(int)a3 checkMix:(BOOL)a4 checkSpecialCheckboxIDs:(BOOL)a5;
- (BOOL)parameter:(int)a3 hasValidFlags:(unsigned int)a4;
- (BOOL)retrieveImage:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParm:(unsigned int)a7 atTime:(id)a8 retriever:(SEL)a9 ARGB:(BOOL)a10 imageType:(unint64_t)a11 forAnalysis:(BOOL)a12;
- (BOOL)safeToSetParameters;
- (BOOL)setCustomParameterDefaultValue:(id)a3 parmId:(unsigned int)a4;
- (BOOL)setCustomParameterValue:(id)a3 toParm:(unsigned int)a4;
- (BOOL)setGradientFlags:(BOOL)a3 toParam:(unsigned int)a4;
- (BOOL)setGradientHiddenWithOSC:(BOOL)a3 toParam:(unsigned int)a4;
- (BOOL)setGradientStartEnd:(double)a3 startY:(double)a4 endX:(double)a5 endY:(double)a6 toParm:(unsigned int)a7 atTime:(id)a8;
- (BOOL)setLevelsBlack:(double)a3 White:(double)a4 Gamma:(double)a5 forParm:(unsigned int)a6 atTime:(id)a7;
- (BOOL)setParameterFlags:(unsigned int)a3 toParm:(unsigned int)a4;
- (BOOL)setStringParameterValue:(id)a3 toParm:(unsigned int)a4;
- (BOOL)shouldFlipPoints;
- (BOOL)startParameterSubGroup:(id)a3 parmId:(unsigned int)a4 parmFlags:(unsigned int)a5;
- (BOOL)startUndoGroup:(id)a3;
- (BOOL)suppressUpdates;
- (BOOL)useAbsolutePoints;
- (BOOL)useInputPoints;
- (BOOL)usesRationalTime;
- (OZChannelBase)channelForParameterID:(unsigned int)a3;
- (OZChannelBase)channelWithID:(int)a3;
- (OZChannelBase)parameterAtIndex:(unsigned int)a3;
- (OZChannelBool)absolutePointsChannel;
- (OZChannelBool)flipChannel;
- (OZChannelBool)inputPointsChannel;
- (OZChannelBool)publishOSCChannel;
- (OZChannelPercent)mixChannel;
- (OZFxPlugColorTransformInfo)getColorTransformInfo;
- (OZFxPlugParameterHandler)initWithBaseChannel:(void *)a3 andCopy:(id)a4 Skip:(int)a5 andPluginLock:(shared_ptr<OZFxPlugSharedLock>)a6;
- (OZFxPlugParameterHandler)initWithBaseChannel:(void *)a3 andCopy:(id)a4 andPluginLock:(shared_ptr<OZFxPlugSharedLock>)a5;
- (OZFxPlugParameterHandler)initWithBaseChannel:(void *)a3 andPluginLock:(shared_ptr<OZFxPlugSharedLock>)a4;
- (OZRenderState)getTempContextRenderState;
- (PCNSRef<FFMotionEffect)motionEffectRef;
- (PCPtr<LiImageSource>)makeSourceFromSceneNode:(void *)a3 withRenderParams:(void *)a4;
- (PCRect<double>)getBoundsFromSceneNode:(void *)a3 withRenderParams:(void *)a4;
- (double)getPixelAspectRatioFromSceneNode:(void *)a3;
- (double)mixAmountAtTime:(id)a3;
- (id).cxx_construct;
- (id)decodeLegacyData:(id)a3 forParameterID:(unsigned int)a4;
- (id)displayName;
- (id)motionEffectForLockedSharedBase:(void *)a3;
- (id)transactionForParameterID:(unsigned int)a3 atTime:(id *)a4 transactionID:(unint64_t)a5 pluginSessionID:(unint64_t)a6;
- (unsigned)fxParameterFlagsForChannel:(OZChannelBase *)a3;
- (unsigned)paramIDForImageWellWithSceneNode:(unsigned int)a3;
- (unsigned)parameterCount;
- (vector<unsigned)imageParamIDs;
- (void)_updateUI:(id)a3;
- (void)_updateUIForParm:(int)a3;
- (void)abortAndWait;
- (void)addExistingChannel:(OZChannelBase *)a3;
- (void)addExistingGroup:(void *)a3;
- (void)addFlipCheckbox:(unsigned int)a3 withChannel:(OZChannelBool *)a4;
- (void)addInputPointsCheckbox:(unsigned int)a3 withChannel:(OZChannelBool *)a4;
- (void)addMixSlider:(unsigned int)a3 withChannel:(OZChannelPercent *)a4;
- (void)addPublishOSCCheckbox:(unsigned int)a3;
- (void)callParameterChanged:(id)a3 forParameterID:(unsigned int)a4 modifiedParameterIDs:(void *)a5 changedParameters:(id)a6 supportsParametersChanged:(BOOL)a7;
- (void)clearImageList;
- (void)copyFolderRecursiveFrom:(void *)a3 To:(void *)a4 Skip:(int)a5;
- (void)copyValueGettersFrom:(id)a3;
- (void)dealloc;
- (void)dumpAllChannels;
- (void)dumpChannelFolder:(void *)a3 depth:(int)a4;
- (void)getColorInFxPlugColorSpace:(void *)a3 red:(float *)a4 green:(float *)a5 blue:(float *)a6 alpha:(float *)a7;
- (void)getFieldMode:(int *)a3 fromFootage:(void *)a4;
- (void)getLayerOffsetX:(double *)a3 andOffsetY:(double *)a4 fromSceneNode:(void *)a5 withRenderParams:(const void *)a6;
- (void)getPointChannel:(OZChannel *)a3 nearestPoint:(PCVector2<double>)a4 atTime:(id *)a5;
- (void)getScene;
- (void)getSceneNode;
- (void)markForDynamicParameterUsage;
- (void)movePublishOSCChannelToEnd;
- (void)onVTBUserInteractionEventNotification:(id)a3;
- (void)preGetCMTime:(id *)a3 forChannel:(OZChannelBase *)a4 atFxTime:(id)a5;
- (void)reAddHiddenParameters;
- (void)removeHiddenParameters;
- (void)removeParameter:(unsigned int)a3;
- (void)restoreParameterFlagsForChannel:(OZChannelBase *)a3;
- (void)saveParameterFlags;
- (void)sendNotifications:(id)a3;
- (void)sendUpdateEvent;
- (void)setAgent:(void *)a3 toScaleTo:(const void *)a4;
- (void)setColorFromFxPlugColorSpace:(void *)a3 red:(float)a4 green:(float)a5 blue:(float)a6 alpha:(float)a7;
- (void)setParameterFlags:(unsigned int)a3 forChannel:(OZChannelBase *)a4;
- (void)setRenderParams:(const void *)a3 withLithiumInput:(void *)a4 withLithiumAgent:(void *)a5;
- (void)setupImageParamIDs:(void *)a3;
- (void)updateChannelMap;
- (void)updateInspector;
- (void)updateInspectorAndDeleteChannel:(id)a3;
- (void)updateKeyframeEditor;
@end

@implementation OZFxPlugParameterHandler

- (void)dumpAllChannels
{
  {
    PCMutex::PCMutex(&[OZFxPlugParameterHandler dumpAllChannels]::printLock);
    __cxa_atexit(PCMutex::~PCMutex, &[OZFxPlugParameterHandler dumpAllChannels]::printLock, &dword_25F8F0000);
  }

  PCMutex::lock(&[OZFxPlugParameterHandler dumpAllChannels]::printLock);
  LOBYTE(v3) = 1;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "\n----\n", 6);
  [(OZFxPlugParameterHandler *)self dumpChannelFolder:self->_baseChannel depth:0, &[OZFxPlugParameterHandler dumpAllChannels]::printLock, v3];
  PCMutex::unlock(&[OZFxPlugParameterHandler dumpAllChannels]::printLock);
}

- (void)dumpChannelFolder:(void *)a3 depth:(int)a4
{
  if (a4 >= 1)
  {
    v7 = MEMORY[0x277D82678];
    v8 = a4;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\t", 1);
      --v8;
    }

    while (v8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Folder ", 7);
  CStr = PCString::createCStr(a3 + 4);
  if (CStr)
  {
    v11 = CStr;
    v12 = strlen(CStr);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    free(v11);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ":\n", 2);
  v13 = *(a3 + 14);
  v15 = *v13;
  v14 = v13[1];
  if (*v13 != v14)
  {
    v16 = MEMORY[0x277D82678];
    do
    {
      v17 = *v15;
      if ((BYTE1((*v15)[7].var0) & 0x10) != 0)
      {
      }

      else
      {
        v18 = a4 + 1;
        if ((a4 & 0x80000000) == 0)
        {
          do
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\t", 1);
            --v18;
          }

          while (v18);
          v17 = *v15;
        }

        v19 = PCString::createCStr(v17 + 4);
        if (v19)
        {
          v20 = v19;
          v21 = strlen(v19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v20, v21);
          free(v20);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\n", 1);
      }

      ++v15;
    }

    while (v15 != v14);
  }
}

- (OZFxPlugParameterHandler)initWithBaseChannel:(void *)a3 andPluginLock:(shared_ptr<OZFxPlugSharedLock>)a4
{
  v6.receiver = self;
  v6.super_class = OZFxPlugParameterHandler;
  v7 = a3;
  v4 = [(OZFxPlugParameterHandler *)&v6 init];
  if (v4)
  {
    v4->_viewControllerGroup = 0;
    operator new();
  }

  return 0;
}

- (OZFxPlugParameterHandler)initWithBaseChannel:(void *)a3 andCopy:(id)a4 andPluginLock:(shared_ptr<OZFxPlugSharedLock>)a5
{
  v7.receiver = self;
  v7.super_class = OZFxPlugParameterHandler;
  v8 = a3;
  v5 = [(OZFxPlugParameterHandler *)&v7 init];
  if (v5)
  {
    v5->_viewControllerGroup = 0;
    operator new();
  }

  return 0;
}

- (OZFxPlugParameterHandler)initWithBaseChannel:(void *)a3 andCopy:(id)a4 Skip:(int)a5 andPluginLock:(shared_ptr<OZFxPlugSharedLock>)a6
{
  v8.receiver = self;
  v8.super_class = OZFxPlugParameterHandler;
  v9 = a3;
  v6 = [(OZFxPlugParameterHandler *)&v8 init];
  if (v6)
  {
    v6->_viewControllerGroup = 0;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  channelMap = self->_channelMap;
  v4 = channelMap + 1;
  v5 = *channelMap;
  if (*channelMap != channelMap + 1)
  {
    while (1)
    {
      v6 = v5[5];
      if (!v6)
      {
        goto LABEL_5;
      }

      v7 = *v6;
      {
        break;
      }

LABEL_6:
      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
      if (v9 == v4)
      {
        channelMap = self->_channelMap;
        v5 = *channelMap;
        goto LABEL_13;
      }
    }

    (*(v7 + 8))(v6);
LABEL_5:
    v5[5] = 0;
    goto LABEL_6;
  }

LABEL_13:
  if (v5 != v4)
  {
    do
    {
      v11 = v5[5];
      if (v11)
      {
        (*(*v11 + 8))(v11);
        v5[5] = 0;
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v10 = *v13 == v5;
          v5 = v13;
        }

        while (!v10);
      }

      v5 = v13;
    }

    while (v13 != v4);
    channelMap = self->_channelMap;
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(channelMap, channelMap[1]);
  *channelMap = channelMap + 1;
  channelMap[2] = 0;
  channelMap[1] = 0;
  flagMap = self->_flagMap;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(flagMap, *(flagMap + 1));
  *flagMap = flagMap + 8;
  *(flagMap + 2) = 0;
  *(flagMap + 1) = 0;
  folderStack = self->_folderStack;
  if (folderStack)
  {
    v17 = std::deque<unsigned long>::~deque[abi:ne200100](folderStack);
    MEMORY[0x2666E9F00](v17, 0x1080C40BE8D5F09);
  }

  self->_folderStack = 0;
  v18 = self->_channelMap;
  if (v18)
  {
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(self->_channelMap, v18[1]);
    MEMORY[0x2666E9F00](v18, 0x1020C4062D53EE8);
  }

  self->_channelMap = 0;
  renderer = self->_renderer;
  if (renderer)
  {
    v20 = OZChannelBase::setRangeName(renderer, v15);
    MEMORY[0x2666E9F00](v20, 0xC400A2AC0F1);
  }

  self->_renderer = 0;
  v21 = self->_flagMap;
  if (v21)
  {
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(self->_flagMap, v21[1]);
    MEMORY[0x2666E9F00](v21, 0x1020C4062D53EE8);
  }

  self->_flagMap = 0;
  v22.receiver = self;
  v22.super_class = OZFxPlugParameterHandler;
  [(OZFxPlugParameterHandler *)&v22 dealloc];
}

- (void)copyFolderRecursiveFrom:(void *)a3 To:(void *)a4 Skip:(int)a5
{
  if (a3)
  {
    if (a4)
    {
      v6 = *(a3 + 14);
      if (v6)
      {
        v7 = *v6;
        v8 = *(*(a3 + 14) + 8);
        for (i = (a5 <= 0 ? v7 : v7 + 8 * (a5 - 1) + 8); i != v8; ++i)
        {
          v11 = (*(**i + 248))(*i, a2);
          OZChannelFolder::push_back(a4, v11);
          channelMap = self->_channelMap;
          LODWORD(v31) = *(*i + 6);
          v35[0] = &v31;
          std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(channelMap, &v31)[5] = v11;
          if (v11)
          {
            if (v36)
            {
              v13 = [(OZFxPlugParameterHandler *)self getScene];
              cntrl = self->_fxPlugLock.__cntrl_;
              ptr = self->_fxPlugLock.__ptr_;
              v34 = cntrl;
              if (cntrl)
              {
                atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
              }

              OZFxPlugLockSentinel::OZFxPlugLockSentinel(v35, &ptr);
              if (v34)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v34);
              }

              v15 = *v35[0];
              v31 = 0;
              v32 = 0;
              LODWORD(v31) = *(v36 + 6);
              HIDWORD(v31) = (*(*v15 + 40))(v15);
              v32 = v13;
              v16 = [MEMORY[0x277CBEA90] dataWithBytes:&v31 length:16];
              OZChannelBlindData::setInterpolateContext(v36, v16);
              std::vector<TXTabStop *>::push_back[abi:ne200100](&self->_customParameterList, &v36);
              *(v36 + 384) = v17[384];
              OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v35);
            }

            if (v18)
            {
              v19 = v18;
              v20 = self->_fxPlugLock.__cntrl_;
              v29 = self->_fxPlugLock.__ptr_;
              v30 = v20;
              if (v20)
              {
                atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
              }

              OZFxPlugLockSentinel::OZFxPlugLockSentinel(v35, &v29);
              if (v30)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v30);
              }

              v21 = *v35[0];
              PCString::PCString(&v28, &v19->var20);
              v22.var0 = &v28;
              OZChannelButton::setCallbackSelectorAsString(v19, v22, *(v21 + 24));
              PCString::~PCString(&v28);
              OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v35);
            }
          }

          else
          {
            v36 = 0;
          }

          v23 = *i;
          if (*i)
          {
            if (v24)
            {
              if (!v25 && !v26)
              {
                if (v11)
                {
                }

                else
                {
                  v27 = 0;
                }

                [(OZFxPlugParameterHandler *)self copyFolderRecursiveFrom:v24 To:v27];
              }
            }
          }
        }
      }
    }
  }
}

- (void)copyValueGettersFrom:(id)a3
{
  v3 = *(a3 + 4);
  v4 = a3 + 40;
  if (v3 != a3 + 40)
  {
    do
    {
      v6 = std::__tree<std::__value_type<unsigned int,ParameterTransactionHelpers>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,ParameterTransactionHelpers>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,ParameterTransactionHelpers>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&self->_paramCreationMap, v3 + 8);
      v7 = *(v3 + 40);
      v6[7] = *(v3 + 7);
      *(v6 + 5) = v7;
      v8 = *(v3 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 2);
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v4);
  }
}

- (void)clearImageList
{
  ImageList = OZFxPlugRenderContextManager::getImageList(&self->_threadContextManager);

  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::clear[abi:ne200100](ImageList);
}

- (void)getScene
{
  v2 = atomic_load(&self->_pluginRemoved);
  if (v2)
  {
    return 0;
  }

  baseChannel = self->_baseChannel;
  if (!baseChannel)
  {
    return 0;
  }

  ObjectManipulator = OZChannelBase::getObjectManipulator(baseChannel);
  if (!ObjectManipulator)
  {
    return 0;
  }

  v5 = *(*ObjectManipulator + 264);

  return v5();
}

- (void)getSceneNode
{
  baseChannel = self->_baseChannel;
  if (!baseChannel)
  {
    return 0;
  }

  ObjectManipulator = OZChannelBase::getObjectManipulator(baseChannel);
  if (!ObjectManipulator)
  {
    return 0;
  }

  v4 = *(*ObjectManipulator + 232);

  return v4();
}

- (id)motionEffectForLockedSharedBase:(void *)a3
{
  if (a3 && (v3 = atomic_load(&self->_pluginRemoved), (v3 & 1) == 0))
  {
    return TXParagraphStyleFolder_Factory::createInstance(a3, a2);
  }

  else
  {
    return 0;
  }
}

- (PCNSRef<FFMotionEffect)motionEffectRef
{
  v4 = v2;
  *v2 = 0;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v9 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v10, &ptr);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*v10[0])
  {
    PCMakeNSRefAndRetain<EAGLContext *>([(OZFxPlugParameterHandler *)self motionEffectForLockedSharedBase:?], &v7);
    ProCore_Impl::PCNSRefImpl::operator=(v4, &v7);
    ProCore_Impl::PCNSRefImpl::release(&v7);
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v10);
  return v6;
}

- (void)sendUpdateEvent
{
  v2 = [(OZFxPlugParameterHandler *)self getScene];
  if (v2)
  {
    v3 = v2[198];

    OZDocument::postNotification(v3, 2);
  }
}

- (void)callParameterChanged:(id)a3 forParameterID:(unsigned int)a4 modifiedParameterIDs:(void *)a5 changedParameters:(id)a6 supportsParametersChanged:(BOOL)a7
{
  v7 = a7;
  v10 = *&a4;
  v20 = a4;
  v13 = *a5;
  v14 = *(a5 + 1);
  if (*a5 != v14)
  {
    while (*v13 != a4)
    {
      if (++v13 == v14)
      {
        goto LABEL_6;
      }
    }
  }

  if (v13 == v14)
  {
LABEL_6:
    v15 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    if (([v15 isEqualToString:@"com.apple.FinalCut"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"com.apple.iMovieApp"))
    {
      cntrl = self->_fxPlugLock.__cntrl_;
      ptr = self->_fxPlugLock.__ptr_;
      v18 = cntrl;
      if (cntrl)
      {
        atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
      }

      OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v19, &ptr);
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      OZFxPlugRenderContextManager::pushContext([*(*v19 + 40) contextManager], 1);
    }

    if (v7)
    {
      [a6 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", v10)}];
    }

    else
    {
      [a3 parameterChanged:v10];
    }

    std::vector<int>::push_back[abi:ne200100](a5, &v20);
  }
}

- (BOOL)folderWasModified:(void *)a3 inDocument:(void *)a4 parameterID:(unsigned int)a5 modifiedParamID:(void *)a6 supportsParametersChanged:(BOOL)a7 paramsChangedArray:(id)a8 target:(id)a9
{
  v23 = a5;
  v9 = *(a3 + 14);
  v10 = *v9;
  if (*v9 == *(v9 + 8))
  {
    LOBYTE(v16) = 0;
    return v16 & 1;
  }

  v12 = a7;
  v16 = 0;
  while (1)
  {
    v17 = *v10;
    v18 = *(a4 + 21);
    if (v18)
    {
      break;
    }

LABEL_6:
    if (v17)
    {
    }

    else
    {
      v19 = 0;
    }

    if (folderIsParameterType(v19))
    {
      v16 |= [(OZFxPlugParameterHandler *)self folderWasModified:v19 inDocument:a4 parameterID:v23 modifiedParamID:a6 supportsParametersChanged:v12 paramsChangedArray:a8 target:a9];
    }

    if (++v10 == *(v9 + 8))
    {
      return v16 & 1;
    }
  }

  if (!OZNotificationManager::wasChannelModified(v18, v17))
  {
    v17 = *v10;
    goto LABEL_6;
  }

  v20 = *a6;
  v21 = *(a6 + 1);
  if (*a6 != v21)
  {
    while (*v20 != v23)
    {
      if (++v20 == v21)
      {
        goto LABEL_19;
      }
    }
  }

  if (v20 == v21)
  {
LABEL_19:
    if (v12)
    {
      [a8 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", v23)}];
    }

    else
    {
      [a9 parameterChanged:v23];
    }

    std::vector<int>::push_back[abi:ne200100](a6, &v23);
  }

  LOBYTE(v16) = 1;
  return v16 & 1;
}

- (void)sendNotifications:(id)a3
{
  if (!self->_sendingNotifications)
  {
    self->_sendingNotifications = 1;
    v5 = [(OZFxPlugParameterHandler *)self getScene];
    if (v5)
    {
      v6 = v5[198];
      if (v6)
      {
        if (objc_opt_respondsToSelector())
        {
          channelMap = self->_channelMap;
          *(v6 + 101) = 1;
          __p = 0;
          v22 = 0;
          v23 = 0;
          v8 = [MEMORY[0x277CBEB18] array];
          cntrl = self->_fxPlugLock.__cntrl_;
          ptr = self->_fxPlugLock.__ptr_;
          v19 = cntrl;
          if (cntrl)
          {
            atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
          }

          OZFxPlugLockSentinel::OZFxPlugLockSentinel(v20, &ptr);
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          if (!*v20[0])
          {
            v11 = 0;
LABEL_13:
            self->_sendingNotifications = 0;
            *(v6 + 101) = 0;
            OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v20);
            if (v11)
            {
              operator delete(v11);
            }

            return;
          }

          v10 = atomic_load(&self->_pluginRemoved);
          if (v10)
          {
            v11 = __p;
            goto LABEL_13;
          }

          OZFxPlugSharedBase::restartPluginXPCIfNecessary(*v20[0]);
          OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v20);
          v12 = *self->_channelMap;
          if (v12 != channelMap + 8)
          {
            do
            {
              v13 = *(v12 + 5);
              v14 = *(v6 + 168);
              if (v14 && OZNotificationManager::wasChannelModified(v14, *(v12 + 5)))
              {
                [(OZFxPlugParameterHandler *)self callParameterChanged:a3 forParameterID:*(v12 + 8) modifiedParameterIDs:&__p changedParameters:v8 supportsParametersChanged:0];
              }

              else
              {
                if (v13)
                {
                }

                if (folderIsParameterType(v13))
                {
                  [(OZFxPlugParameterHandler *)self folderWasModified:v13 inDocument:v6 parameterID:*(v12 + 8) modifiedParamID:&__p supportsParametersChanged:0 paramsChangedArray:v8 target:a3, ptr];
                }
              }

              v15 = *(v12 + 1);
              if (v15)
              {
                do
                {
                  v16 = v15;
                  v15 = *v15;
                }

                while (v15);
              }

              else
              {
                do
                {
                  v16 = *(v12 + 2);
                  v17 = *v16 == v12;
                  v12 = v16;
                }

                while (!v17);
              }

              v12 = v16;
            }

            while (v16 != channelMap + 8);
          }

          *(v6 + 101) = 0;
          if (__p)
          {
            v22 = __p;
            operator delete(__p);
          }
        }
      }
    }

    self->_sendingNotifications = 0;
  }
}

- (void)updateChannelMap
{
  channelMap = self->_channelMap;
  v4 = (channelMap + 1);
  for (i = *channelMap; i != (channelMap + 1); v4 = (channelMap + 1))
  {
    v6 = i[5];
    v7 = *(v6 + 24);
    v19 = v7;
    v8 = channelMap[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = v4;
    do
    {
      v10 = *(v8 + 8);
      v11 = v10 >= v7;
      v12 = v10 < v7;
      if (v11)
      {
        v9 = v8;
      }

      v8 = v8[v12];
    }

    while (v8);
    if (v9 != v4 && v7 >= *(v9 + 8))
    {
      v17 = i[1];
      if (v17)
      {
        do
        {
          i = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = i;
          i = i[2];
        }

        while (*i != v18);
      }
    }

    else
    {
LABEL_10:
      v13 = i[1];
      v14 = i;
      if (v13)
      {
        do
        {
          v15 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v15 = v14[2];
          v16 = *v15 == v14;
          v14 = v15;
        }

        while (!v16);
      }

      v20 = &v19;
      std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(channelMap, &v19)[5] = v6;
      std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(self->_channelMap, i);
      operator delete(i);
      channelMap = self->_channelMap;
      i = v15;
    }
  }
}

- (vector<unsigned)imageParamIDs
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  begin = self[1].__begin_;
  v5 = *begin;
  if (*begin != begin + 2)
  {
    v6 = self;
    do
    {
      self = v5[5];
      if (self)
      {
        if (self)
        {
          self = OZChanSceneNodeRef::getNode(self);
          if (self)
          {
            std::vector<int>::push_back[abi:ne200100](&retstr->__begin_, v5 + 8);
          }
        }
      }

      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v6[1].__begin_ + 1);
  }

  return self;
}

- (unsigned)paramIDForImageWellWithSceneNode:(unsigned int)a3
{
  if (self)
  {
    [(OZFxPlugParameterHandler *)self imageParamIDs];
    v5 = __p;
    v6 = v15;
    if (__p == v15)
    {
LABEL_8:
      v11 = 0;
    }

    else
    {
      while (1)
      {
        v13 = *v5;
        channelMap = self->_channelMap;
        v17 = &v13;
        v8 = std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(channelMap, &v13)[5];
        if (v8)
        {
          if (v9)
          {
            Node = OZChanSceneNodeRef::getNode(v9);
            if (Node)
            {
              if (Node[20] == a3)
              {
                break;
              }
            }
          }
        }

        if (++v5 == v6)
        {
          goto LABEL_8;
        }
      }

      v11 = v13;
    }

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = 0;
    __p = 0;
    v15 = 0;
    v16 = 0;
  }

  return v11;
}

- (BOOL)containsParameterWithID:(unsigned int)a3
{
  channelMap = self->_channelMap;
  v6 = channelMap[1];
  v4 = (channelMap + 1);
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 8);
    v9 = v8 >= a3;
    v10 = v8 < a3;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 == v4 || *(v7 + 8) > a3)
  {
LABEL_9:
    v7 = v4;
  }

  return v7 != v4;
}

- (void)saveParameterFlags
{
  channelMap = self->_channelMap;
  v3 = *channelMap;
  if (*channelMap != channelMap + 1)
  {
    do
    {
      v5 = v3[5];
      v11 = *(v5 + 24);
      v6 = *(v5 + 56);
      flagMap = self->_flagMap;
      v12 = &v11;
      std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(flagMap, &v11)[5] = v6;
      v8 = v3[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v3[2];
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != self->_channelMap + 1);
  }
}

- (void)restoreParameterFlagsForChannel:(OZChannelBase *)a3
{
  channelMap = self->_channelMap;
  v6 = channelMap[1];
  v4 = (channelMap + 1);
  v5 = v6;
  if (v6)
  {
    var3 = a3->var3;
    v8 = v4;
    do
    {
      v9 = *(v5 + 8);
      v10 = v9 >= var3;
      v11 = v9 < var3;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *&v5[8 * v11];
    }

    while (v5);
    if (v8 != v4 && var3 >= *(v8 + 8) && *(v8 + 5) == a3)
    {
      flagMap = self->_flagMap;
      v15 = flagMap[1];
      v13 = (flagMap + 1);
      v14 = v15;
      if (v15)
      {
        v16 = v13;
        do
        {
          v17 = *(v14 + 8);
          v10 = v17 >= var3;
          v18 = v17 < var3;
          if (v10)
          {
            v16 = v14;
          }

          v14 = *&v14[8 * v18];
        }

        while (v14);
        if (v16 != v13 && var3 >= *(v16 + 8))
        {
          OZChannelBase::setFlags(a3, a3->var7 & 0xFFFFFFFFFFBEFFC3 | *(v16 + 5) & 0x41003CLL);
        }
      }
    }
  }
}

- (OZChannelBase)channelWithID:(int)a3
{
  channelMap = self->_channelMap;
  v6 = channelMap[1];
  v4 = (channelMap + 1);
  v5 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 8);
    v9 = v8 >= a3;
    v10 = v8 < a3;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 != v4 && *(v7 + 8) <= a3)
  {
    return *(v7 + 5);
  }

  else
  {
    return 0;
  }
}

- (unsigned)parameterCount
{
  channelMap = self->_channelMap;
  result = *(channelMap + 4);
  v4 = channelMap + 8;
  v5 = *channelMap;
  if (v4 != v5)
  {
    do
    {
      v6 = *v4;
      v7 = *v4;
      v8 = v4;
      if (*v4)
      {
        do
        {
          v9 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v9 = v8[2];
          v10 = *v9 == v8;
          v8 = v9;
        }

        while (v10);
      }

      v11 = *(v9[5] + 24) >> 4 > 0x270u;
      if (v6)
      {
        do
        {
          v12 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v10 = *v12 == v4;
          v4 = v12;
        }

        while (v10);
      }

      result -= v11;
      v4 = v12;
    }

    while (v12 != v5);
  }

  return result;
}

- (OZChannelBase)parameterAtIndex:(unsigned int)a3
{
  v3 = 0;
  v4 = *self->_channelMap;
  while (v3 != a3)
  {
    v5 = v4[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v4[2];
        v7 = *v6 == v4;
        v4 = v6;
      }

      while (!v7);
    }

    ++v3;
    v4 = v6;
    if (v3 > a3)
    {
      return 0;
    }
  }

  return v4[5];
}

- (void)removeParameter:(unsigned int)a3
{
    ;
  }

  memset(__p, 0, sizeof(__p));
  std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(__p, 1uLL);
}

- (void)updateInspectorAndDeleteChannel:(id)a3
{
  v6 = 0;
  [a3 getValue:&v6];
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v6 = 0;
  }

  v4 = [(OZFxPlugParameterHandler *)self getScene];
  if (v4)
  {
    v5 = v4[198];
    if (v5)
    {
      OZDocument::postNotification(v5, 134742016);
    }
  }
}

- (void)updateInspector
{
  v2 = [(OZFxPlugParameterHandler *)self getScene];
  if (v2)
  {
    v3 = v2[198];
    if (v3)
    {

      OZDocument::postNotification(v3, 134742016);
    }
  }
}

- (void)updateKeyframeEditor
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __48__OZFxPlugParameterHandler_updateKeyframeEditor__block_invoke;
  block[3] = &unk_279AA8060;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__OZFxPlugParameterHandler_updateKeyframeEditor__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 motionEffectRef];
    if (v5)
    {
      goto LABEL_8;
    }

    v2 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v3 = [v2 getScene];
  if (v3)
  {
    v4 = *(v3 + 1584);
    if (v4)
    {
      OZDocument::postNotification(v4, 137216);
    }
  }

LABEL_8:
  ProCore_Impl::PCNSRefImpl::release(&v5);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertToFigTime:(SEL)a3 meOffset:(double)a4 motionEffect:(double)a5
{
  v8 = a4 + a5;
  v9 = [(OZFxPlugParameterHandler *)self getScene];

  return FramesToFigTime(v9, a6, retstr, v8);
}

- ($43B88956A48E07FA4329DDDD387A1517)figTimeToFxTime:(id *)a3 withConversionData:(void *)a4
{
  v15 = 0;
  if (self)
  {
    [(OZFxPlugParameterHandler *)self motionEffectRef:a3];
  }

  else
  {
    v14 = 0;
  }

  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v12 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v13, &ptr);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*v13[0] && (v7 = atomic_load(&self->_pluginRemoved), (v7 & 1) == 0))
  {
    v9 = (*(**v13[0] + 160))(*v13[0]);
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v13);
    if (v9)
    {
      v15 = a3;
    }

    else
    {
      [(OZFxPlugParameterHandler *)self convertFromFigTime:a3 meOffset:v14 motionEffect:0.0, ptr];
      v15 = v10;
    }
  }

  else
  {
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v13);
  }

  ProCore_Impl::PCNSRefImpl::release(&v14);
  return v15;
}

- ($43B88956A48E07FA4329DDDD387A1517)figDurationToFxDuration:(id *)a3 withConversionData:(void *)a4
{
  v5.var0 = COERCE_DOUBLE([(OZFxPlugParameterHandler *)self figTimeToFxTime:a3 withConversionData:a4]);
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v10 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v11, &ptr);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*v11[0])
  {
    v7 = atomic_load(&self->_pluginRemoved);
    if ((v7 & 1) == 0)
    {
      v5.var0 = TXTextLayout::getLineShift(*v11[0]) + v5.var0;
    }
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v11);
  return v5.var1;
}

- (BOOL)usesRationalTime
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v8 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v9, &ptr);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*v9[0] && (v4 = atomic_load(&self->_pluginRemoved), (v4 & 1) == 0))
  {
    v5 = (*(**v9[0] + 160))(*v9[0]);
  }

  else
  {
    v5 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v9);
  return v5;
}

- (void)markForDynamicParameterUsage
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v6 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v7, &ptr);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*v7[0])
  {
    v4 = atomic_load(&self->_pluginRemoved);
    if ((v4 & 1) == 0)
    {
      (*(**v7[0] + 200))(*v7[0], 1);
    }
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v7);
}

- (void)addExistingChannel:(OZChannelBase *)a3
{
  folderStack = self->_folderStack;
  v6 = folderStack[5] + folderStack[4] - 1;
  v7 = *(*(folderStack[1] + ((v6 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v6 & 0x1FF));
  OZChannelBase::registerParent(a3, v7);
  OZChannelFolder::push_back(v7, a3);
  channelMap = self->_channelMap;
  var3 = a3->var3;
  p_var3 = &var3;
  std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(channelMap, &var3)[5] = a3;
  [(OZFxPlugParameterHandler *)self addParamMappingForParameterChannel:a3];
}

- (void)addExistingGroup:(void *)a3
{
  v4 = a3;
  [(OZFxPlugParameterHandler *)self addExistingChannel:?];
  std::deque<OZChannelFolder *>::push_back(self->_folderStack, &v4);
}

- (id)displayName
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v8 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v9, &ptr);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*v9[0] && (v4 = atomic_load(&self->_pluginRemoved), (v4 & 1) == 0))
  {
    v5 = [*(*v9[0] + 16) displayName];
  }

  else
  {
    v5 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v9);
  return v5;
}

- (void)addMixSlider:(unsigned int)a3 withChannel:(OZChannelPercent *)a4
{
  v7 = a3;
  OZChannelBase::resetFlag(a4, 16, 0);
  OZChannelBase::setFlag(a4, 0x100000000, 0);
  channelMap = self->_channelMap;
  v8 = &v7;
  std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(channelMap, &v7)[5] = a4;
}

- (OZChannelPercent)mixChannel
{
  channelMap = self->_channelMap;
  v5 = channelMap[1];
  v3 = (channelMap + 1);
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 8);
    v8 = v7 >= 0x2711;
    v9 = v7 < 0x2711;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v3 && *(v6 + 8) <= 0x2711u && (v10 = *(v6 + 5)) != 0)
  {
  }

  else
  {
    return 0;
  }
}

- (double)mixAmountAtTime:(id)a3
{
  v7 = 1.0;
  v5 = [(OZFxPlugParameterHandler *)self mixChannel];
  if (!v5)
  {
    return 1.0;
  }

  [(OZFxPlugParameterHandler *)self _getFloatValue:&v7 fromParm:v5->var3 atTime:a3.var1];
  return v7;
}

- (void)addFlipCheckbox:(unsigned int)a3 withChannel:(OZChannelBool *)a4
{
  v7 = a3;
  OZChannelBase::setFlag(a4, 4259872, 0);
  OZChannelBase::resetFlag(a4, 16, 0);
  OZChannelBase::setFlag(a4, 0x100000000, 0);
  channelMap = self->_channelMap;
  v8 = &v7;
  std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(channelMap, &v7)[5] = a4;
}

- (OZChannelBool)flipChannel
{
  channelMap = self->_channelMap;
  v5 = channelMap[1];
  v3 = (channelMap + 1);
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 8);
    v8 = v7 >= 0x2712;
    v9 = v7 < 0x2712;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v3 && *(v6 + 8) <= 0x2712u && (v10 = *(v6 + 5)) != 0)
  {
  }

  else
  {
    return 0;
  }
}

- (BOOL)shouldFlipPoints
{
  v2 = [(OZFxPlugParameterHandler *)self flipChannel];
  if (v2)
  {
    LOBYTE(v2) = OZChannel::getValueAsInt(v2, MEMORY[0x277CC08F0], 0.0) == 1;
  }

  return v2;
}

- (void)addInputPointsCheckbox:(unsigned int)a3 withChannel:(OZChannelBool *)a4
{
  v7 = a3;
  OZChannelBase::setFlag(a4, 4259872, 0);
  OZChannelBase::resetFlag(a4, 16, 0);
  OZChannelBase::setFlag(a4, 0x100000000, 0);
  channelMap = self->_channelMap;
  v8 = &v7;
  std::__tree<std::__value_type<unsigned int,OZFactory *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,OZFactory *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,OZFactory *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(channelMap, &v7)[5] = a4;
}

- (BOOL)useInputPoints
{
  v2 = [(OZFxPlugParameterHandler *)self inputPointsChannel];
  if (v2)
  {
    LOBYTE(v2) = OZChannel::getValueAsInt(v2, MEMORY[0x277CC08F0], 0.0) == 1;
  }

  return v2;
}

- (OZChannelBool)inputPointsChannel
{
  channelMap = self->_channelMap;
  v5 = channelMap[1];
  v3 = (channelMap + 1);
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 8);
    v8 = v7 >= 0x2713;
    v9 = v7 < 0x2713;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v3 && *(v6 + 8) >> 2 <= 0x9C4u && (v10 = *(v6 + 5)) != 0)
  {
  }

  else
  {
    return 0;
  }
}

- (BOOL)useAbsolutePoints
{
  v2 = [(OZFxPlugParameterHandler *)self absolutePointsChannel];
  if (v2)
  {
    LOBYTE(v2) = OZChannel::getValueAsInt(v2, MEMORY[0x277CC08F0], 0.0) == 1;
  }

  return v2;
}

- (OZChannelBool)absolutePointsChannel
{
  channelMap = self->_channelMap;
  v5 = channelMap[1];
  v3 = (channelMap + 1);
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 8) >> 2 < 0x9C5u)
    {
      v7 = 1;
    }

    else
    {
      v6 = v4;
      v7 = 0;
    }

    v4 = *&v4[8 * v7];
  }

  while (v4);
  if (v6 != v3 && *(v6 + 8) <= 0x2714u && (v8 = *(v6 + 5)) != 0)
  {
  }

  else
  {
    return 0;
  }
}

- (void)addPublishOSCCheckbox:(unsigned int)a3
{
  if (![(OZFxPlugParameterHandler *)self publishOSCChannel])
  {
    operator new();
  }
}

- (OZChannelBool)publishOSCChannel
{
  channelMap = self->_channelMap;
  v5 = channelMap[1];
  v3 = (channelMap + 1);
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 8);
    v8 = v7 >= 0x2715;
    v9 = v7 < 0x2715;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v3 && *(v6 + 8) <= 0x2715u && (v10 = *(v6 + 5)) != 0)
  {
  }

  else
  {
    return 0;
  }
}

- (void)removeHiddenParameters
{
  folderStack = self->_folderStack;
  v4 = folderStack[5] + folderStack[4] - 1;
  v5 = *(*(folderStack[1] + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
  OZChannelFolder::removeDescendant(v5, [(OZFxPlugParameterHandler *)self mixChannel]);
  OZChannelFolder::removeDescendant(v5, [(OZFxPlugParameterHandler *)self flipChannel]);
  OZChannelFolder::removeDescendant(v5, [(OZFxPlugParameterHandler *)self inputPointsChannel]);
  v6 = [(OZFxPlugParameterHandler *)self absolutePointsChannel];
  if (v6)
  {
    OZChannelFolder::removeDescendant(v5, v6);
  }

  v7 = [(OZFxPlugParameterHandler *)self publishOSCChannel];
  if (v7)
  {

    OZChannelFolder::removeDescendant(v5, v7);
  }
}

- (void)reAddHiddenParameters
{
  folderStack = self->_folderStack;
  v4 = folderStack[5] + folderStack[4] - 1;
  v5 = *(*(folderStack[1] + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
  OZChannelFolder::push_back(v5, [(OZFxPlugParameterHandler *)self mixChannel]);
  OZChannelFolder::push_back(v5, [(OZFxPlugParameterHandler *)self flipChannel]);
  OZChannelFolder::push_back(v5, [(OZFxPlugParameterHandler *)self inputPointsChannel]);
  v6 = [(OZFxPlugParameterHandler *)self absolutePointsChannel];
  if (v6)
  {
    OZChannelFolder::push_back(v5, v6);
  }

  v7 = [(OZFxPlugParameterHandler *)self publishOSCChannel];
  if (v7)
  {
    OZChannelFolder::push_back(v5, v7);
  }

  [(OZFxPlugParameterHandler *)self updateInspector];
}

- (void)movePublishOSCChannelToEnd
{
  v3 = [(OZFxPlugParameterHandler *)self publishOSCChannel];
  if (v3)
  {
    v4 = v3;
    folderStack = self->_folderStack;
    v6 = folderStack[5] + folderStack[4] - 1;
    v7 = *(*(folderStack[1] + ((v6 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v6 & 0x1FF));
    OZChannelFolder::removeDescendant(v7, v3);
    OZChannelFolder::push_back(v7, v4);

    [(OZFxPlugParameterHandler *)self updateInspector];
  }
}

- (void)setParameterFlags:(unsigned int)a3 forChannel:(OZChannelBase *)a4
{
  if (a3)
  {
    (*(a4->var0 + 63))(a4, 0, 0);
    if ((a3 & 2) == 0)
    {
LABEL_3:
      if ((a3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  OZChannelBase::setFlag(a4, 4259872, 0);
  if ((a3 & 4) == 0)
  {
LABEL_4:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  OZChannelBase::setFlag(a4, 4, 0);
  if ((a3 & 0x10) == 0)
  {
LABEL_5:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  OZChannelBase::setFlag(a4, 8, 0);
  OZChannelBase::resetFlag(a4, 0x100000000, 0);
  if ((a3 & 0x20) == 0)
  {
LABEL_6:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  OZChannelBase::resetFlag(a4, 16, 0);
  if ((a3 & 0x200) == 0)
  {
LABEL_7:
    if ((a3 & 0x20000) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    OZChannelBase::setFlag(a4, 0x400000, 0);
    if ((a3 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  OZChannelBase::setFlag(a4, 0x10000, 0);
  if ((a3 & 0x20000) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a3 & 0x40) == 0)
  {
    return;
  }

LABEL_17:

  OZChannelBase::setFlag(a4, 0x1000000000, 0);
}

- (BOOL)addFloatSliderWithName:(id)a3 parmId:(unsigned int)a4 defaultValue:(double)a5 parameterMin:(double)a6 parameterMax:(double)a7 sliderMin:(double)a8 sliderMax:(double)a9 delta:(double)a10 parmFlags:(unsigned int)a11
{
  LODWORD(v12) = a4;
  if ([(OZFxPlugParameterHandler *)self _floatParameter:*&a4 hasValidMin:*&a11 max:a6 sliderMin:a7 sliderMax:a8 defaultValue:a9 paramFlags:a5, v12])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addPercentSliderWithName:(id)a3 parmId:(unsigned int)a4 defaultValue:(double)a5 parameterMin:(double)a6 parameterMax:(double)a7 sliderMin:(double)a8 sliderMax:(double)a9 delta:(double)a10 parmFlags:(unsigned int)a11
{
  LODWORD(v12) = a4;
  if ([(OZFxPlugParameterHandler *)self _floatParameter:*&a4 hasValidMin:*&a11 max:a6 sliderMin:a7 sliderMax:a8 defaultValue:a9 paramFlags:a5, v12])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addIntSliderWithName:(id)a3 parmId:(unsigned int)a4 defaultValue:(int)a5 parameterMin:(int)a6 parameterMax:(int)a7 sliderMin:(int)a8 sliderMax:(int)a9 delta:(int)a10 parmFlags:(unsigned int)a11
{
  LODWORD(v13) = a11;
  v11 = [(OZFxPlugParameterHandler *)self _intParameter:*&a4 hasValidMin:*&a6 max:*&a7 sliderMin:*&a8 sliderMax:a9 defaultValue:*&a5 paramFlags:v13];
  if (v11)
  {
    operator new();
  }

  return v11;
}

- (BOOL)addToggleButtonWithName:(id)a3 parmId:(unsigned int)a4 defaultValue:(BOOL)a5 parmFlags:(unsigned int)a6
{
  v6 = *&a6;
  v7 = *&a4;
  LODWORD(v12) = a4;
  v9 = [(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:0, v12];
  v10 = v9 & [(OZFxPlugParameterHandler *)self parameter:v7 hasValidFlags:v6];
  if (v10)
  {
    operator new();
  }

  return v10;
}

- (BOOL)addAngleSliderWithName:(id)a3 parmId:(unsigned int)a4 defaultValue:(double)a5 parameterMin:(double)a6 parameterMax:(double)a7 parmFlags:(unsigned int)a8
{
  LODWORD(v9) = a4;
  if ([(OZFxPlugParameterHandler *)self _floatParameter:*&a4 hasValidMin:*&a8 max:a6 sliderMin:a7 sliderMax:a6 defaultValue:a7 paramFlags:a5 * 3.14159265 / 180.0, v9])
  {
    operator new();
  }

  return 0;
}

- (OZFxPlugColorTransformInfo)getColorTransformInfo
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v20 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v21, &ptr);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v6 = *v21[0];
  if (*v21[0] && (v7 = atomic_load(&self->_pluginRemoved), (v7 & 1) == 0) && (*(*v6 + 24))(*v21[0]))
  {
    OZFxRenderContextAgentSentry::OZFxRenderContextAgentSentry(v18, &self->_threadContextManager);
    Agent = OZFxRenderContextAgentSentry::getAgent(v18, v6);
    v11 = Agent;
    if (Agent)
    {
      RequestedColorDescription = LiAgent::getRequestedColorDescription(Agent);
      v13 = *RequestedColorDescription;
      retstr->var0._pcColorDesc._colorSpaceRef._obj = *RequestedColorDescription;
      if (v13)
      {
        PCCFRefTraits<CGColorSpace *>::retain(v13);
      }

      v14 = *(RequestedColorDescription + 8);
      retstr->var0._pcColorDesc._toneMapMethod._gain = *(RequestedColorDescription + 16);
      *&retstr->var0._pcColorDesc._dynamicRange = v14;
      retstr->var0._isPremultiplied = *(RequestedColorDescription + 24);
      OZFxPlugSharedBase::getPluginColorDescription(v6, v11, &retstr->var1);
    }

    else
    {
      *&retstr->var1._pcColorDesc._colorSpaceRef._obj = 0u;
      *&retstr->var1._pcColorDesc._toneMapMethod._gain = 0u;
      *&retstr->var0._pcColorDesc._colorSpaceRef._obj = 0u;
      *&retstr->var0._pcColorDesc._toneMapMethod._gain = 0u;
      v15 = PCGetNCLCColorSpace(kPCNCLC_Rec709Linear);
      FxColorDescription::FxColorDescription(retstr, v15, 0, &kPCNoToneMapMethod, 1);
      v16 = PCGetNCLCColorSpace(kPCNCLC_Rec709Linear);
      FxColorDescription::FxColorDescription(&retstr->var1, v16, 0, &kPCNoToneMapMethod, 1);
    }

    OZFxRenderContextAgentSentry::~OZFxRenderContextAgentSentry(v18);
  }

  else
  {
    *&retstr->var1._pcColorDesc._colorSpaceRef._obj = 0u;
    *&retstr->var1._pcColorDesc._toneMapMethod._gain = 0u;
    *&retstr->var0._pcColorDesc._colorSpaceRef._obj = 0u;
    *&retstr->var0._pcColorDesc._toneMapMethod._gain = 0u;
    v8 = PCGetNCLCColorSpace(kPCNCLC_Rec709Linear);
    FxColorDescription::FxColorDescription(retstr, v8, 0, &kPCNoToneMapMethod, 1);
    v9 = PCGetNCLCColorSpace(kPCNCLC_Rec709Linear);
    FxColorDescription::FxColorDescription(&retstr->var1, v9, 0, &kPCNoToneMapMethod, 1);
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v21);
  return result;
}

- (void)getColorInFxPlugColorSpace:(void *)a3 red:(float *)a4 green:(float *)a5 blue:(float *)a6 alpha:(float *)a7
{
  if (self)
  {
    [(OZFxPlugParameterHandler *)self getColorTransformInfo];
  }

  else
  {
    memset(&v23, 0, sizeof(v23));
    memset(&v22, 0, sizeof(v22));
  }

  CGColorSpace = FxColorDescription::getCGColorSpace(&v23);
  DynamicRange = FxColorDescription::getDynamicRange(&v23);
  if (FxColorDescription::isDynamicRangeManaged(&v22))
  {
    ToneMapMethod = FxColorDescription::getToneMapMethod(&v22);
  }

  else
  {
    ToneMapMethod = &kPCNoToneMapMethod;
  }

  v21 = *ToneMapMethod;
  if (FxColorDescription::isHDR(&v22) && FxColorDescription::isSDR(&v23))
  {
    v15 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
    v20 = 0;
    v19 = 0;
    PCColor::getRGBA(a3, &v19, &v19 + 1, &v20, a7, v15, 1, &v21);
    v16 = FxColorDescription::getToneMapMethod(&v23);
    PCColorUtil::transform(v16, &v19, v15, 1, CGColorSpace, DynamicRange, v18);
    v17 = v18[1];
    *a4 = *v18;
    *a5 = v17;
    *a6 = *&v18[2];
  }

  else
  {
    PCColor::getRGBA(a3, a4, a5, a6, a7, CGColorSpace, DynamicRange, &v21);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v23._pcColorDesc._colorSpaceRef._obj);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v22._pcColorDesc._colorSpaceRef._obj);
}

- (void)setColorFromFxPlugColorSpace:(void *)a3 red:(float)a4 green:(float)a5 blue:(float)a6 alpha:(float)a7
{
  if (self)
  {
    [(OZFxPlugParameterHandler *)self getColorTransformInfo];
  }

  else
  {
    memset(&v22, 0, sizeof(v22));
    memset(&v21, 0, sizeof(v21));
  }

  CGColorSpace = FxColorDescription::getCGColorSpace(&v22);
  DynamicRange = FxColorDescription::getDynamicRange(&v22);
  if (FxColorDescription::isDynamicRangeManaged(&v21))
  {
    ToneMapMethod = FxColorDescription::getToneMapMethod(&v21);
  }

  else
  {
    ToneMapMethod = &kPCNoToneMapMethod;
  }

  v20 = *ToneMapMethod;
  if (FxColorDescription::isHDR(&v21) && FxColorDescription::isSDR(&v22))
  {
    v15 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
    v18 = __PAIR64__(LODWORD(a5), LODWORD(a4));
    v19 = a6;
    v16 = FxColorDescription::getToneMapMethod(&v22);
    PCColorUtil::transform(v16, &v18, CGColorSpace, DynamicRange, v15, 1, &v17);
    PCColor::setRGBA(a3, v15, 1, &v20, a4, a5, a6, a7);
  }

  else
  {
    PCColor::setRGBA(a3, CGColorSpace, DynamicRange, &v20, a4, a5, a6, a7);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v22._pcColorDesc._colorSpaceRef._obj);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v21._pcColorDesc._colorSpaceRef._obj);
}

- (BOOL)addColorParameterWithName:(id)a3 parmId:(unsigned int)a4 defaultRed:(double)a5 defaultGreen:(double)a6 defaultBlue:(double)a7 parmFlags:(unsigned int)a8
{
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:1])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addColorParameterWithName:(id)a3 parmId:(unsigned int)a4 defaultRed:(double)a5 defaultGreen:(double)a6 defaultBlue:(double)a7 defaultAlpha:(double)a8 parmFlags:(unsigned int)a9
{
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:1])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addPointParameterWithName:(id)a3 parmId:(unsigned int)a4 defaultX:(double)a5 defaultY:(double)a6 parmFlags:(unsigned int)a7
{
  LODWORD(v8) = a4;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:1, v8])
  {
    operator new();
  }

  return 0;
}

- (BOOL)add2DVectorWithName:(id)a3 parmId:(unsigned int)a4 defaultX:(double)a5 defaultY:(double)a6 parmFlags:(unsigned int)a7
{
  LODWORD(v8) = a4;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:1, v8])
  {
    operator new();
  }

  return 0;
}

- (BOOL)add2DScaleWithName:(id)a3 parmId:(unsigned int)a4 defaultX:(double)a5 defaultY:(double)a6 parmFlags:(unsigned int)a7
{
  LODWORD(v8) = a4;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:1, v8])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addPopupMenuWithNameAndTags:(id)a3 parmId:(unsigned int)a4 defaultValue:(unsigned int)a5 menuEntries:(id)a6 tags:(const int *)a7 tagCount:(int)a8 parmFlags:(unsigned int)a9
{
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:1])
  {
    [a6 componentsJoinedByString:@"|"];
    operator new();
  }

  return 0;
}

- (BOOL)addImageReferenceWithName:(id)a3 parmId:(unsigned int)a4 parmFlags:(unsigned int)a5
{
  LODWORD(v6) = a4;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:1, v6])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addCustomParameterWithName:(id)a3 parmId:(unsigned int)a4 defaultValue:(id)a5 parmFlags:(unsigned int)a6
{
  v24 = a4;
  v23[2] = 0;
  v8 = [(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:1];
  if (v8)
  {
    cntrl = self->_fxPlugLock.__cntrl_;
    ptr = self->_fxPlugLock.__ptr_;
    v22 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    OZFxPlugLockSentinel::OZFxPlugLockSentinel(v23, &ptr);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    v10 = *v23[0];
    if (!*v23[0])
    {
      goto LABEL_8;
    }

    v11 = atomic_load(&self->_pluginRemoved);
    if (v11)
    {
      goto LABEL_8;
    }

    v12 = v24;
    v13 = v24 == 8888 && [(OZFxPlugParameterHandler *)self isColorCorrection];
    v14 = *(v10 + 216);
    OZFxPlugSharedBase::isXPCBasedPlugin(v10);
    if (!((a5 == 0) | v14 & 1))
    {
      v15 = *(v10 + 24);
      if ((v15 == 0) | [v15 useLegacyCoding] & 1)
      {
        if (!v15)
        {
LABEL_8:
          OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v23);
          LOBYTE(v8) = 0;
          return v8;
        }
      }

      else
      {
        v16 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
        [v16 encodeObject:a5 forKey:@"Custom Data"];
        [v16 encodedData];
      }
    }

    if (v13)
    {
      if (atomic_load_explicit(&[OZFxPlugParameterHandler addCustomParameterWithName:parmId:defaultValue:parmFlags:]::once, memory_order_acquire) != -1)
      {
        v18.var0 = &v20;
        v25.var0 = &v18;
        std::__call_once(&-[OZFxPlugParameterHandler addCustomParameterWithName:parmId:defaultValue:parmFlags:]::once, &v25, std::__call_once_proxy[abi:ne200100]<std::tuple<-[OZFxPlugParameterHandler addCustomParameterWithName:parmId:defaultValue:parmFlags:]::$_1 &&>>);
      }

      operator new();
    }

    v18.var0 = v12;
    v19 = [(OZFxPlugParameterHandler *)self getScene];
    [MEMORY[0x277CBEA90] dataWithBytes:&v18 length:16];
    operator new();
  }

  return v8;
}

- (BOOL)setCustomParameterDefaultValue:(id)a3 parmId:(unsigned int)a4
{
  v4 = *&a4;
  v7 = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (v7)
  {
    channelMap = self->_channelMap;
    v11 = channelMap[1];
    v9 = (channelMap + 1);
    v10 = v11;
    if (!v11)
    {
      goto LABEL_17;
    }

    v12 = v9;
    do
    {
      v13 = *(v10 + 8);
      v14 = v13 >= v4;
      v15 = v13 < v4;
      if (v14)
      {
        v12 = v10;
      }

      v10 = *&v10[8 * v15];
    }

    while (v10);
    if (v12 == v9 || *(v12 + 8) > v4)
    {
      goto LABEL_17;
    }

    v16 = *(v12 + 5);
    cntrl = self->_fxPlugLock.__cntrl_;
    ptr = self->_fxPlugLock.__ptr_;
    v24 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    OZFxPlugLockSentinel::OZFxPlugLockSentinel(v25, &ptr);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    v18 = *v25[0];
    if (!*v25[0] || (v19 = atomic_load(&self->_pluginRemoved), (v19 & 1) != 0))
    {
LABEL_16:
      OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v25);
LABEL_17:
      LOBYTE(v7) = 0;
      return v7;
    }

    if (a3 && (*(v18 + 216) & 1) == 0)
    {
      v20 = *(v18 + 24);
      if (!v20)
      {
        goto LABEL_16;
      }

      if (([v20 useLegacyCoding] & 1) == 0)
      {
        v21 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
        [v21 encodeObject:a3 forKey:@"Custom Data"];
        a3 = [v21 encodedData];
      }
    }

    OZChannelBlindData::setDefaultValue(v16, a3);
    [(OZFxPlugParameterHandler *)self _updateUIForParm:v4];
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v25);
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)startParameterSubGroup:(id)a3 parmId:(unsigned int)a4 parmFlags:(unsigned int)a5
{
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:1])
  {
    operator new();
  }

  return 0;
}

- (BOOL)endParameterSubGroup
{
  folderStack = self->_folderStack;
  --folderStack[5];
  std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](folderStack, 1);
  return 1;
}

- (BOOL)addLevelsWithName:(id)a3 parmId:(unsigned int)a4 hideGamma:(BOOL)a5 parmFlags:(unsigned int)a6
{
  LODWORD(v7) = a4;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:1, v7])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addHistogramWithName:(id)a3 parmId:(unsigned int)a4 parmFlags:(unsigned int)a5
{
  LODWORD(v6) = a4;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:1, v6])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addGradientWithName:(id)a3 parmId:(unsigned int)a4 parmFlags:(unsigned int)a5
{
  LODWORD(v6) = a4;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:1, v6])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addGradientPositionedWithName:(id)a3 parmId:(unsigned int)a4 parmFlags:(unsigned int)a5
{
  LODWORD(v6) = a4;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:1, v6])
  {
    operator new();
  }

  return 0;
}

- (BOOL)addStringParameterWithName:(id)a3 parmId:(unsigned int)a4 defaultValue:(id)a5 parmFlags:(unsigned int)a6
{
  v11 = a4;
  if ([(OZFxPlugParameterHandler *)self hasValidParameterID:*&a4 checkMix:1 checkSpecialCheckboxIDs:1])
  {
    PCURL::PCURL(&v10, a3);
    PCURL::PCURL(&v9, a5);
    operator new();
  }

  return 0;
}

- (void)preGetCMTime:(id *)a3 forChannel:(OZChannelBase *)a4 atFxTime:(id)a5
{
  if (self)
  {
    [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a5.var1 withConversionData:0];
  }

  else
  {
    v10 = 0uLL;
    v11 = 0;
  }

  *&a3->var0 = v10;
  v8 = v11;
  a3->var3 = v11;
  v10 = *&a3->var0;
  v11 = v8;
  return [(OZFxPlugParameterHandler *)self beginTimingOperation:&v10 forChannel:a4];
}

- (OZChannelBase)channelForParameterID:(unsigned int)a3
{
  channelMap = self->_channelMap;
  v6 = channelMap[1];
  v4 = (channelMap + 1);
  v5 = v6;
  if (!v6)
  {
    return 0;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 8);
    v9 = v8 >= a3;
    v10 = v8 < a3;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *&v5[8 * v10];
  }

  while (v5);
  if (v7 != v4 && *(v7 + 8) <= a3)
  {
    return *(v7 + 5);
  }

  else
  {
    return 0;
  }
}

- (BOOL)_getFloatValue:(double *)a3 fromParm:(unsigned int)a4 atTime:(id)a5
{
  v8 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&a4];
  if (v8)
  {
    if (self)
    {
      [(OZFxPlugParameterHandler *)self motionEffectRef];
      [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a5.var1 withConversionData:0];
    }

    else
    {
      v14 = 0;
      memset(&v12, 0, sizeof(v12));
    }

    v13 = v12;
    v9 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v12 forChannel:v8];
    OZChannel::getValueAsDouble(v8, &v13, 0.0);
    *a3 = v10;
    [(OZFxPlugParameterHandler *)self endTimingOperation:v9];
    ProCore_Impl::PCNSRefImpl::release(&v14);
  }

  return v8 != 0;
}

- (BOOL)_getIntValue:(int *)a3 fromParm:(unsigned int)a4 atTime:(id)a5
{
  v8 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&a4];
  if (v8)
  {
    if (self)
    {
      [(OZFxPlugParameterHandler *)self motionEffectRef];
      [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a5.var1 withConversionData:0];
    }

    else
    {
      v13 = 0;
      memset(&v11, 0, sizeof(v11));
    }

    v12 = v11;
    v9 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v11 forChannel:v8];
    *a3 = OZChannel::getValueAsInt(v8, &v12, 0.0);
    [(OZFxPlugParameterHandler *)self endTimingOperation:v9];
    ProCore_Impl::PCNSRefImpl::release(&v13);
  }

  return v8 != 0;
}

- (BOOL)_getBoolValue:(BOOL *)a3 fromParm:(unsigned int)a4 atTime:(id)a5
{
  v8 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&a4];
  if (v8)
  {
    if (self)
    {
      [(OZFxPlugParameterHandler *)self motionEffectRef];
      [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a5.var1 withConversionData:0];
    }

    else
    {
      v13 = 0;
      memset(&v11, 0, sizeof(v11));
    }

    v12 = v11;
    v9 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v11 forChannel:v8];
    *a3 = OZChannel::getValueAsInt(v8, &v12, 0.0) != 0;
    [(OZFxPlugParameterHandler *)self endTimingOperation:v9];
    ProCore_Impl::PCNSRefImpl::release(&v13);
  }

  return v8 != 0;
}

- (BOOL)_getRedValue:(double *)a3 greenValue:(double *)a4 blueValue:(double *)a5 fromParm:(unsigned int)a6 atTime:(id)a7
{
  v12 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&a6];
  if (v12)
  {
    if (self)
    {
      [(OZFxPlugParameterHandler *)self motionEffectRef];
      [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a7.var1 withConversionData:0];
    }

    else
    {
      v21 = 0;
      memset(&v18, 0, 24);
    }

    v19 = *&v18.var0.var0;
    v20 = v18.var0.var1[1];
    v13 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v18 forChannel:v12];
    PCColor::PCColor(&v18);
    (*(v12->var0 + 104))(v12, &v19, &v18);
    v16 = 0;
    v17 = 0;
    if (OZChannelColorNoAlpha::isColor(v12))
    {
      [(OZFxPlugParameterHandler *)self getColorInFxPlugColorSpace:&v18 red:&v17 + 4 green:&v17 blue:&v16 + 4 alpha:&v16];
    }

    else
    {
      CGColorSpace = PCColor::getCGColorSpace(&v18);
      PCColor::getRGBA(&v18, &v17 + 1, &v17, &v16 + 1, &v16, CGColorSpace);
    }

    *a3 = *(&v17 + 1);
    *a4 = *&v17;
    *a5 = *(&v16 + 1);
    [(OZFxPlugParameterHandler *)self endTimingOperation:v13, v16];
    PCCFRef<CGColorSpace *>::~PCCFRef(&v18.var1._obj);
    ProCore_Impl::PCNSRefImpl::release(&v21);
  }

  return v12 != 0;
}

- (BOOL)_getRedValue:(double *)a3 greenValue:(double *)a4 blueValue:(double *)a5 alphaValue:(double *)a6 fromParm:(unsigned int)a7 atTime:(id)a8
{
  v14 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&a7];
  if (v14)
  {
    if (self)
    {
      [(OZFxPlugParameterHandler *)self motionEffectRef];
      [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a8.var1 withConversionData:0];
    }

    else
    {
      v23 = 0;
      memset(&v20, 0, 24);
    }

    v21 = *&v20.var0.var0;
    v22 = v20.var0.var1[1];
    v15 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v20 forChannel:v14];
    PCColor::PCColor(&v20);
    (*(v14->var0 + 104))(v14, &v21, &v20);
    v18 = 0;
    v19 = 0;
    if (OZChannelColorNoAlpha::isColor(v14))
    {
      [(OZFxPlugParameterHandler *)self getColorInFxPlugColorSpace:&v20 red:&v19 + 4 green:&v19 blue:&v18 + 4 alpha:&v18];
    }

    else
    {
      CGColorSpace = PCColor::getCGColorSpace(&v20);
      PCColor::getRGBA(&v20, &v19 + 1, &v19, &v18 + 1, &v18, CGColorSpace);
    }

    *a3 = *(&v19 + 1);
    *a4 = *&v19;
    *a5 = *(&v18 + 1);
    *a6 = *&v18;
    [(OZFxPlugParameterHandler *)self endTimingOperation:v15, v18, v19];
    PCCFRef<CGColorSpace *>::~PCCFRef(&v20.var1._obj);
    ProCore_Impl::PCNSRefImpl::release(&v23);
  }

  return v14 != 0;
}

- (BOOL)_getXValue:(double *)a3 YValue:(double *)a4 fromParm:(unsigned int)a5 atTime:(id)a6
{
  v10 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&a5];
  if (v10)
  {
    v11 = v10;
    if (self)
    {
      [(OZFxPlugParameterHandler *)self motionEffectRef];
      v36 = **&MEMORY[0x277CC0898];
      [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a6.var1 withConversionData:0];
    }

    else
    {
      v37 = 0;
      memset(v35, 0, 24);
    }

    v36 = v35[0];
    v13 = [(OZFxPlugParameterHandler *)self beginTimingOperation:v35 forChannel:v11];
    if (a3)
    {
      OZChannel::getValueAsDouble(&v11[1].var3, &v36, 0.0);
      *a3 = v14;
    }

    if (a4)
    {
      OZChannel::getValueAsDouble(&v11[2].var8, &v36, 0.0);
      *a4 = v15;
    }

    if ([(OZFxPlugParameterHandler *)self shouldFlipPoints])
    {
      *a4 = 1.0 - *a4;
    }

    if ([(OZFxPlugParameterHandler *)self useAbsolutePoints])
    {
      OZRenderParams::OZRenderParams(v35);
      cntrl = self->_fxPlugLock.__cntrl_;
      ptr = self->_fxPlugLock.__ptr_;
      v33 = cntrl;
      if (cntrl)
      {
        atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
      }

      OZFxPlugLockSentinel::OZFxPlugLockSentinel(v34, &ptr);
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      v17 = *v34[0];
      if (!*v34[0] || (v18 = atomic_load(&self->_pluginRemoved), (v18 & 1) != 0))
      {
        [(OZFxPlugParameterHandler *)self endTimingOperation:v13];
LABEL_20:
        OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v34);
        OZRenderParams::~OZRenderParams(v35);
        v12 = 0;
LABEL_27:
        ProCore_Impl::PCNSRefImpl::release(&v37);
        return v12;
      }

      v29 = 0;
      v30 = 0;
      __asm { FMOV            V0.2D, #-1.0 }

      v31 = _Q0;
      if (v19)
      {
        v26 = (*v19 + 1488);
        v20 = v19;
      }

      else
      {
        if (!v20)
        {
          [(OZFxPlugParameterHandler *)self endTimingOperation:v13, v29, v30];
          goto LABEL_20;
        }

        v26 = (*v20 + 16);
      }

      (*v26)(v20, &v29, v35);
      v27 = *(&v31 + 1);
      *a3 = *a3 / *&v31 + 0.5;
      *a4 = *a4 / v27 + 0.5;
      OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v34);
      OZRenderParams::~OZRenderParams(v35);
    }

    [(OZFxPlugParameterHandler *)self endTimingOperation:v13, v29, v30];
    v12 = 1;
    goto LABEL_27;
  }

  return 0;
}

- (BOOL)_getAngle:(double *)a3 fromParm:(unsigned int)a4 atTime:(id)a5
{
  v8 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&a4];
  if (v8)
  {
    if (self)
    {
      [(OZFxPlugParameterHandler *)self motionEffectRef];
      [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a5.var1 withConversionData:0];
    }

    else
    {
      v14 = 0;
      memset(&v12, 0, sizeof(v12));
    }

    v13 = v12;
    v9 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v12 forChannel:v8];
    OZChannel::getValueAsDouble(v8, &v13, 0.0);
    *a3 = v10 * 57.2957795;
    [(OZFxPlugParameterHandler *)self endTimingOperation:v9];
    ProCore_Impl::PCNSRefImpl::release(&v14);
  }

  return v8 != 0;
}

- (BOOL)retrieveImage:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParm:(unsigned int)a7 atTime:(id)a8 retriever:(SEL)a9 ARGB:(BOOL)a10 imageType:(unint64_t)a11 forAnalysis:(BOOL)a12
{
  if (self->_appTerminating)
  {
    return 0;
  }

  *a3 = 0;
  if (![(OZFxPlugParameterHandler *)self _setupRenderer])
  {
    return 0;
  }

  channelMap = self->_channelMap;
  v19 = channelMap[1];
  v17 = (channelMap + 1);
  v18 = v19;
  if (v19)
  {
    v20 = v17;
    do
    {
      v21 = *(v18 + 8);
      v22 = v21 >= a7;
      v23 = v21 < a7;
      if (v22)
      {
        v20 = v18;
      }

      v18 = *&v18[8 * v23];
    }

    while (v18);
    if (v20 != v17 && *(v20 + 8) <= a7)
    {
      v25 = *(v20 + 5);
      v26 = [(OZFxPlugParameterHandler *)self getScene];
      if (self)
      {
        [(OZFxPlugParameterHandler *)self motionEffectRef];
        memset(&v43, 0, sizeof(v43));
        [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a8.var1 withConversionData:0];
      }

      else
      {
        v44 = 0;
        memset(&v43, 0, sizeof(v43));
      }

      v39[0] = v43;
      v27 = [(OZFxPlugParameterHandler *)self beginTimingOperation:v39 forChannel:v25];
      ValueAsUint = OZChannel::getValueAsUint(v25, &v43, 0.0);
      if (v26)
      {
        Node = OZScene::getNode(v26, ValueAsUint);
        v30 = Node;
        if (Node)
        {
          if (v32)
          {
            if (v33)
            {
              OZImageElement::isDropZone(v33);
            }

            goto LABEL_21;
          }

          if (v31)
          {
LABEL_21:
            cntrl = self->_fxPlugLock.__cntrl_;
            ptr = self->_fxPlugLock.__ptr_;
            v41 = cntrl;
            if (cntrl)
            {
              atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
            }

            OZFxPlugLockSentinel::OZFxPlugLockSentinel(v42, &ptr);
            if (v41)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v41);
            }

            if (*v42[0])
            {
              RenderParams = OZFxPlugRenderContextManager::getRenderParams(&self->_threadContextManager, *v42[0]);
              OZRenderParams::OZRenderParams(v39, RenderParams);
              OZFxPlugSharedBase::setupRenderParamsForRetrievingImage(v39, a6, v30, &v43, self->_renderer, v36);
            }

            [(OZFxPlugParameterHandler *)self endTimingOperation:v27];
            OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v42);
            v37 = 0;
            v24 = 1;
LABEL_28:
            ProCore_Impl::PCNSRefImpl::release(&v44);
            if (v37)
            {
              return v24;
            }

            return 0;
          }
        }
      }

      v24 = 1;
      [(OZFxPlugParameterHandler *)self endTimingOperation:v27];
      v37 = 1;
      goto LABEL_28;
    }
  }

  return 1;
}

- (BOOL)getBitmap:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParm:(unsigned int)a7 atTime:(double)a8
{
  v8 = *&a6->var2;
  v12[0] = *&a6->var0.var0;
  v12[1] = v8;
  v12[2] = *&a6->var4;
  LOBYTE(v11) = 0;
  LOBYTE(v10) = 1;
  return [(OZFxPlugParameterHandler *)self retrieveImage:a3 layerOffsetX:a4 layerOffsetY:a5 requestInfo:v12 fromParm:*&a7 atTime:*&a8 retriever:sel_textureRetriever_ ARGB:v10 imageType:1 forAnalysis:v11];
}

- (BOOL)getTexture:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParm:(unsigned int)a7 atTime:(double)a8
{
  v8 = *&a6->var2;
  v12[0] = *&a6->var0.var0;
  v12[1] = v8;
  v12[2] = *&a6->var4;
  LOBYTE(v11) = 0;
  LOBYTE(v10) = 1;
  return [(OZFxPlugParameterHandler *)self retrieveImage:a3 layerOffsetX:a4 layerOffsetY:a5 requestInfo:v12 fromParm:*&a7 atTime:*&a8 retriever:sel_textureRetriever_ ARGB:v10 imageType:2 forAnalysis:v11];
}

- (BOOL)getAnalysisTexture:(id *)a3 requestInfo:(id *)a4 fromParm:(unsigned int)a5 atFxTime:(id)a6
{
  v6 = *&a4->var2;
  v10[0] = *&a4->var0.var0;
  v10[1] = v6;
  v10[2] = *&a4->var4;
  LOBYTE(v9) = 1;
  LOBYTE(v8) = 1;
  return [(OZFxPlugParameterHandler *)self retrieveImage:a3 layerOffsetX:0 layerOffsetY:0 requestInfo:v10 fromParm:*&a5 atTime:a6.var1 retriever:sel_textureRetriever_ ARGB:v8 imageType:2 forAnalysis:v9];
}

- (void)setAgent:(void *)a3 toScaleTo:(const void *)a4
{
  v5 = *(a4 + 1);
  v6 = *a4;
  v7 = 0u;
  v8 = 0u;
  v9 = v5;
  v10 = 0u;
  v11 = 0u;
  v12 = 0x3FF0000000000000;
  v13 = 0u;
  v14 = 0u;
  v15 = 0x3FF0000000000000;
  LiRenderingTechnology::setEnableMetalRendering(a3, 0);
  LiAgent::setImageSpace(a3, 0);
  LiAgent::setPixelTransform(a3, &v6);
}

- (BOOL)getHeliumImage:(id *)a3 layerOffsetX:(double *)a4 layerOffsetY:(double *)a5 requestInfo:(id *)a6 fromParm:(unsigned int)a7 atTime:(id)a8
{
  *a3 = 0;
  if ([(OZFxPlugParameterHandler *)self _setupRenderer]&& !self->_appTerminating)
  {
    UseLiEdgeTextureNodeCache = getUseLiEdgeTextureNodeCache();
    setUseLiEdgeTextureNodeCache(0);
    channelMap = self->_channelMap;
    v17 = channelMap[1];
    v15 = (channelMap + 1);
    v16 = v17;
    if (!v17)
    {
      goto LABEL_12;
    }

    v18 = v15;
    do
    {
      v19 = *(v16 + 8);
      v20 = v19 >= a7;
      v21 = v19 < a7;
      if (v20)
      {
        v18 = v16;
      }

      v16 = *&v16[8 * v21];
    }

    while (v16);
    if (v18 == v15 || *(v18 + 8) > a7)
    {
LABEL_12:
      v12 = 1;
LABEL_13:
      setUseLiEdgeTextureNodeCache(UseLiEdgeTextureNodeCache);
      return v12;
    }

    v23 = *(v18 + 5);
    v24 = [(OZFxPlugParameterHandler *)self getScene];
    if (self)
    {
      [(OZFxPlugParameterHandler *)self motionEffectRef];
      memset(&v40, 0, sizeof(v40));
      [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a8.var1 withConversionData:0];
    }

    else
    {
      v41 = 0;
      memset(&v40, 0, sizeof(v40));
    }

    v36[0] = v40;
    v25 = [(OZFxPlugParameterHandler *)self beginTimingOperation:v36 forChannel:v23];
    ValueAsUint = OZChannel::getValueAsUint(v23, &v40, 0.0);
    if (v24)
    {
      Node = OZScene::getNode(v24, ValueAsUint);
      v28 = Node;
      if (Node)
      {
        if (v30)
        {
          if (v31)
          {
            OZImageElement::isDropZone(v31);
          }

          goto LABEL_24;
        }

        if (v29)
        {
LABEL_24:
          cntrl = self->_fxPlugLock.__cntrl_;
          ptr = self->_fxPlugLock.__ptr_;
          v38 = cntrl;
          if (cntrl)
          {
            atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
          }

          OZFxPlugLockSentinel::OZFxPlugLockSentinel(v39, &ptr);
          if (v38)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          }

          if (*v39[0])
          {
            RenderParams = OZFxPlugRenderContextManager::getRenderParams(&self->_threadContextManager, *v39[0]);
            OZRenderParams::OZRenderParams(v36, RenderParams);
            OZFxPlugSharedBase::setupRenderParamsForRetrievingImage(v36, a6, v28, &v40, self->_renderer, v34);
          }

          [(OZFxPlugParameterHandler *)self endTimingOperation:v25];
          OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v39);
          v35 = 0;
          v12 = 1;
          goto LABEL_31;
        }
      }
    }

    v12 = 1;
    [(OZFxPlugParameterHandler *)self endTimingOperation:v25];
    v35 = 1;
LABEL_31:
    ProCore_Impl::PCNSRefImpl::release(&v41);
    if ((v35 & 1) == 0)
    {
      v12 = 0;
    }

    goto LABEL_13;
  }

  return 0;
}

- (BOOL)getCustomParameterValue:(id *)a3 fromParm:(unsigned int)a4
{
  v6 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&a4];
  if (v6)
  {
    if (self)
    {
      [(OZFxPlugParameterHandler *)self motionEffectRef];
    }

    else
    {
      v8 = 0;
    }

    *a3 = OZChannelBlindData::getPluginDataPtr(v6, MEMORY[0x277CC08F0]);
    ProCore_Impl::PCNSRefImpl::release(&v8);
  }

  return v6 != 0;
}

- (BOOL)_getCustomParameterValue:(id *)a3 fromParm:(unsigned int)a4 atTime:(id)a5
{
  v6 = *&a4;
  v9 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&a4];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (self)
  {
    [(OZFxPlugParameterHandler *)self motionEffectRef];
  }

  else
  {
    v27 = 0;
  }

  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v25 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v26, &ptr);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v13 = *v26[0];
  if (*v26[0] && (v14 = atomic_load(&self->_pluginRemoved), (v14 & 1) == 0))
  {
    v23 = **&MEMORY[0x277CC0898];
    [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a5.var1 withConversionData:0];
    v23 = v22;
    v15 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v22 forChannel:v10];
    PluginDataPtr = OZChannelBlindData::getPluginDataPtr(v10, &v23);
    *a3 = PluginDataPtr;
    v11 = 1;
    if ((*(v13 + 216) & 1) == 0 && PluginDataPtr)
    {
      v17 = *(v13 + 24);
      if (v17)
      {
        if (([v17 useLegacyCoding] & 1) == 0)
        {
          v22.value = 0;
          v18 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:*a3 error:&v22];
          if (!v18)
          {
            v19 = MEMORY[0x277CBEAD8];
            v20 = [v22.value localizedFailureReason];
            [v19 raise:*MEMORY[0x277CBE728] format:{@"%@", v20}];
          }

          *a3 = [v18 decodeObjectOfClass:objc_msgSend(*(v13 + 24) forKey:{"classForCustomParameterID:", v6), @"Custom Data"}];
          v11 = 1;
        }
      }

      else
      {
        v11 = 0;
        *a3 = 0;
      }
    }

    [(OZFxPlugParameterHandler *)self endTimingOperation:v15];
  }

  else
  {
    v11 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v26);
  ProCore_Impl::PCNSRefImpl::release(&v27);
  return v11;
}

- (id)decodeLegacyData:(id)a3 forParameterID:(unsigned int)a4
{
  v4 = *&a4;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v13 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v14, &ptr);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (*v14[0] && (v8 = atomic_load(&self->_pluginRemoved), (v8 & 1) == 0) && (v9 = *(*v14[0] + 24), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v10 = [v9 decodeLegacyData:a3 forParameterID:{v4, ptr}];
  }

  else
  {
    v10 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v14);
  return v10;
}

- (BOOL)_getHistogramBlackIn:(double *)a3 BlackOut:(double *)a4 WhiteIn:(double *)a5 WhiteOut:(double *)a6 Gamma:(double *)a7 forChannel:(unint64_t)a8 fromParm:(unsigned int)a9 atTime:(id)a10
{
  v10 = a8;
  v17 = [(OZFxPlugParameterHandler *)self channelForParameterID:a9];
  if (v17)
  {
    if (self)
    {
      [(OZFxPlugParameterHandler *)self motionEffectRef];
      [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a10.var1 withConversionData:0];
    }

    else
    {
      v22 = 0;
      memset(&v20, 0, sizeof(v20));
    }

    v21 = v20;
    v18 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v20 forChannel:v17];
    *a3 = OZChannelHistogram::getBlackInValue(v17, v10, &v21, 0.0);
    *a4 = OZChannelHistogram::getBlackOutValue(v17, v10, &v21, 0.0);
    *a5 = OZChannelHistogram::getWhiteInValue(v17, v10, &v21, 0.0);
    *a6 = OZChannelHistogram::getWhiteOutValue(v17, v10, &v21, 0.0);
    *a7 = OZChannelHistogram::getGammaValue(v17, v10, &v21, 0.0);
    [(OZFxPlugParameterHandler *)self endTimingOperation:v18];
    ProCore_Impl::PCNSRefImpl::release(&v22);
  }

  return v17 != 0;
}

- (BOOL)getLevelsBlack:(double *)a3 White:(double *)a4 Gamma:(double *)a5 fromParm:(unsigned int)a6 atTime:(id)a7
{
  v12 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&a6];
  if (v12)
  {
    if (self)
    {
      [(OZFxPlugParameterHandler *)self motionEffectRef];
      [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a7.var1 withConversionData:0];
    }

    else
    {
      v20 = 0;
      memset(&v18, 0, sizeof(v18));
    }

    v19 = v18;
    v13 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v18 forChannel:v12];
    OZChannelLevels::getBlackValue(v12, &v19, 0.0);
    *a3 = v14;
    OZChannelLevels::getWhiteValue(v12, &v19, 0.0);
    *a4 = v15;
    OZChannelLevels::getGammaValue(v12, &v19, 0.0);
    *a5 = v16;
    [(OZFxPlugParameterHandler *)self endTimingOperation:v13];
    ProCore_Impl::PCNSRefImpl::release(&v20);
  }

  return v12 != 0;
}

- (BOOL)_getGradientSamples:(void *)a3 numSamples:(unint64_t)a4 depth:(unint64_t)a5 fromParm:(unsigned int)a6 atTime:(id)a7
{
  v7 = self;
  LOBYTE(self) = 0;
  if (a5 <= 0x20)
  {
    v8 = a5;
    if (((1 << a5) & 0x100010116) != 0)
    {
      self = [(OZFxPlugParameterHandler *)v7 channelForParameterID:*&a6];
      if (self)
      {
        v12 = self;
        if (v7)
        {
          [(OZFxPlugParameterHandler *)v7 motionEffectRef];
          pcColorDesc = **&MEMORY[0x277CC0898];
          [(OZFxPlugParameterHandler *)v7 fxTimeToFigTime:a7.var1 withConversionData:0];
        }

        else
        {
          v55 = 0;
          memset(&v52, 0, 24);
        }

        pcColorDesc = v52._pcColorDesc;
        v37 = [(OZFxPlugParameterHandler *)v7 beginTimingOperation:&v52 forChannel:v12];
        if (v7)
        {
          [(OZFxPlugParameterHandler *)v7 getColorTransformInfo];
        }

        else
        {
          memset(&v53, 0, sizeof(v53));
          memset(&v52, 0, sizeof(v52));
        }

        CGColorSpace = FxColorDescription::getCGColorSpace(&v53);
        DynamicRange = FxColorDescription::getDynamicRange(&v53);
        if (FxColorDescription::isDynamicRangeManaged(&v52))
        {
          ToneMapMethod = FxColorDescription::getToneMapMethod(&v52);
        }

        else
        {
          ToneMapMethod = &kPCNoToneMapMethod;
        }

        v51 = *ToneMapMethod;
        if (FxColorDescription::isHDR(&v52))
        {
          isSDR = FxColorDescription::isSDR(&v53);
        }

        else
        {
          isSDR = 0;
        }

        std::vector<float>::vector[abi:ne200100](&v49, 4 * a4);
        if (isSDR)
        {
          v17 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020Linear);
          std::vector<float>::vector[abi:ne200100](__p, 4 * a4);
          OZChannelGradient::getGradient(v12, &pcColorDesc, v17, __p[0], a4, 1, &v51);
          v43 = a4;
          v44 = __p[0];
          v45 = 4;
          v46 = v17;
          v47 = 0x100000001;
          v38 = a4;
          v39 = v49;
          v40 = 4;
          v41 = CGColorSpace;
          LODWORD(v42) = 1;
          HIDWORD(v42) = DynamicRange;
          v18 = FxColorDescription::getToneMapMethod(&v53);
          PCColorUtil::transformColorWithDynamicRange(&v43, &v38, v18);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        else
        {
          OZChannelGradient::getGradient(v12, &pcColorDesc, CGColorSpace, v49, a4, DynamicRange, &v51);
        }

        if (((1 << v8) & 0x102) != 0)
        {
          v29 = v49;
          if (v50 != v49)
          {
            v30 = (v50 - v49) >> 2;
            do
            {
              v31 = *v29++;
              v32 = v31;
              if (v31 <= 1.0)
              {
                v33 = v32;
              }

              else
              {
                v33 = 1.0;
              }

              v34 = v33 * 255.0;
              if (v32 >= 0.0)
              {
                v35 = v34;
              }

              else
              {
                v35 = 0.0;
              }

              *a3 = vcvtmd_s64_f64(v35 + 0.5 + 0.0000001);
              a3 = a3 + 1;
              --v30;
            }

            while (v30);
          }
        }

        else if (((1 << v8) & 0x10004) != 0)
        {
          v22 = v49;
          if (v50 != v49)
          {
            v23 = (v50 - v49) >> 2;
            do
            {
              v24 = *v22++;
              v25 = v24;
              if (v24 <= 1.0)
              {
                v26 = v25;
              }

              else
              {
                v26 = 1.0;
              }

              v27 = v26 * 65536.0;
              if (v25 >= 0.0)
              {
                v28 = v27;
              }

              else
              {
                v28 = 0.0;
              }

              *a3 = vcvtmd_s64_f64(v28 + 0.5 + 0.0000001);
              a3 = a3 + 2;
              --v23;
            }

            while (v23);
          }
        }

        else if (((1 << v8) & 0x100000010) != 0)
        {
          v19 = v49;
          if (v50 != v49)
          {
            v20 = (v50 - v49) >> 2;
            do
            {
              v21 = *v19++;
              *a3 = v21;
              a3 = a3 + 4;
              --v20;
            }

            while (v20);
          }
        }

        [(OZFxPlugParameterHandler *)v7 endTimingOperation:v37, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47];
        if (v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        PCCFRef<CGColorSpace *>::~PCCFRef(&v53._pcColorDesc._colorSpaceRef._obj);
        PCCFRef<CGColorSpace *>::~PCCFRef(&v52._pcColorDesc._colorSpaceRef._obj);
        ProCore_Impl::PCNSRefImpl::release(&v55);
        LOBYTE(self) = 1;
      }
    }
  }

  return self;
}

- (BOOL)getGradientStartEnd:(double *)a3 startY:(double *)a4 endX:(double *)a5 endY:(double *)a6 type:(int *)a7 fromParm:(unsigned int)a8 atTime:(id)a9
{
  v15 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&a8];
  if (v15)
  {
    if (self)
    {
      [(OZFxPlugParameterHandler *)self motionEffectRef];
      [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a9.var1 withConversionData:0];
    }

    else
    {
      v20 = 0;
      memset(&v18, 0, sizeof(v18));
    }

    v19 = v18;
    v16 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v18 forChannel:v15];
    *a7 = OZChannel::getValueAsInt(&v15[7].var2, &v19, 0.0);
    OZChannelPosition::getPosition(&v15[9].var6, &v19, a3, a4, 0.0);
    OZChannelPosition::getPosition(&v15[15].var10, &v19, a5, a6, 0.0);
    [(OZFxPlugParameterHandler *)self endTimingOperation:v16];
    ProCore_Impl::PCNSRefImpl::release(&v20);
  }

  return v15 != 0;
}

- (BOOL)getParameterFlags:(unsigned int *)a3 fromParm:(unsigned int)a4
{
  if (!a3)
  {
    return 0;
  }

  *a3 = 0;
  channelMap = self->_channelMap;
  v9 = channelMap[1];
  v7 = (channelMap + 1);
  v8 = v9;
  if (!v9)
  {
    return 0;
  }

  v11 = v7;
  do
  {
    v12 = *(v8 + 8);
    v13 = v12 >= a4;
    v14 = v12 < a4;
    if (v13)
    {
      v11 = v8;
    }

    v8 = *&v8[8 * v14];
  }

  while (v8);
  if (v11 == v7 || *(v11 + 8) > a4)
  {
    return 0;
  }

  v16 = *(v11 + 5);
  if (!v16)
  {
    v17 = 0;
    if (self)
    {
      goto LABEL_14;
    }

LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  if (!self)
  {
    goto LABEL_16;
  }

LABEL_14:
  [(OZFxPlugParameterHandler *)self motionEffectRef];
LABEL_17:
  if (((*(*v16 + 512))(v16) & 1) == 0)
  {
    *a3 |= 1u;
  }

  if ((~*(v16 + 56) & 0x410020) == 0)
  {
    *a3 |= 2u;
  }

  if (OZChannelBase::testFlag(v16, 4))
  {
    *a3 |= 4u;
  }

  if (OZChannelBase::testFlag(v16, 8))
  {
    *a3 |= 0x10u;
  }

  if (OZChannelBase::testFlag(v16, 0x10000) && (~*(v16 + 56) & 0x410020) != 0)
  {
    *a3 |= 0x200u;
  }

  if (!OZChannelBase::testFlag(v16, 16))
  {
    *a3 |= 0x20u;
  }

  if (v17 && OZChannelFolder::testFoldFlag(v17, 4))
  {
    *a3 |= 8u;
  }

  begin = self->_fullWidthCustomParams.__begin_;
  end = self->_fullWidthCustomParams.__end_;
  if (begin != end)
  {
    while (*begin != a4)
    {
      if (++begin == end)
      {
        goto LABEL_39;
      }
    }
  }

  if (begin != end)
  {
    *a3 |= 0x800u;
  }

LABEL_39:
  ProCore_Impl::PCNSRefImpl::release(&v20);
  return 1;
}

- (BOOL)getStringParameterValue:(id *)a3 fromParm:(unsigned int)a4
{
  v6 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&a4];
  if (v6)
  {
    if (self)
    {
      [(OZFxPlugParameterHandler *)self motionEffectRef];
    }

    else
    {
      v9 = 0;
    }

    (*(v6->var0 + 106))(&v8, v6);
    *a3 = [MEMORY[0x277CCACA8] stringWithString:PCString::ns_str(&v8)];
    PCString::~PCString(&v8);
    ProCore_Impl::PCNSRefImpl::release(&v9);
  }

  return v6 != 0;
}

- (BOOL)_getPathID:(void *)a3 fromParm:(unsigned int)a4 atTime:(id)a5
{
  v7 = [(OZFxPlugParameterHandler *)self channelForParameterID:*&a4];
  if (v7)
  {
    if (self)
    {
      [(OZFxPlugParameterHandler *)self motionEffectRef];
    }

    else
    {
      v9 = 0;
    }

    *a3 = OZChanSceneNodeRef::getNode(v7);
    ProCore_Impl::PCNSRefImpl::release(&v9);
  }

  return v7 != 0;
}

- (void)abortAndWait
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = [(OZFxPlugParameterHandler *)self getScene];
    if (v3)
    {
      v4 = v3[188];
      if (v4)
      {

        OZChannelBase::setRangeName(v4, 1);
      }
    }
  }
}

- (BOOL)suppressUpdates
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = self->_suppressChannelChangesStack.c.__size_ + self->_suppressChannelChangesStack.c.__start_ - 1;
    return (*(self->_suppressChannelChangesStack.c.__map_.__begin_ + ((v3 >> 9) & 0x7FFFFFFFFFFFF8)))[v3 & 0xFFF];
  }

  else
  {
    return 0;
  }
}

- (BOOL)safeToSetParameters
{
  if ([MEMORY[0x277CCACC8] isMainThread] && !-[OZFxPlugParameterHandler isRendering](self, "isRendering"))
  {
    return 1;
  }

  if (!self->_showedParameterSettingWarning)
  {
    cntrl = self->_fxPlugLock.__cntrl_;
    ptr = self->_fxPlugLock.__ptr_;
    v8 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    OZFxPlugLockSentinel::OZFxPlugLockSentinel(v9, &ptr);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (*v9[0])
    {
      OZFxPlugSharedBase::getDisplayName(*v9[0], &v6);
      v4 = PCString::ns_str(&v6);
      PCString::~PCString(&v6);
    }

    else
    {
      v4 = @"Unknown";
    }

    NSLog(&cfstr_ErrorInPlugin.isa, v4, @"Setting parameter values from a non-main thread is not allowed.\nPlease do not attempt to set parameter values from within -renderOutput, or\nanother method that may be called on a non-main thread.\nSetting parameters should typically be done in response to -parameterChanged, or\nin response to interactions with a custom UI or onscreen control.\nFor more information, consult the FxPlug documentation");
    self->_showedParameterSettingWarning = 1;
    OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v9);
  }

  return 0;
}

- (BOOL)_setFloatValue:(double)a3 toParm:(unsigned int)a4 atTime:(id)a5
{
  v6 = *&a4;
  v9 = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (v9)
  {
    channelMap = self->_channelMap;
    v13 = channelMap[1];
    v11 = (channelMap + 1);
    v12 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }

    v14 = v11;
    do
    {
      v15 = *(v12 + 8);
      v16 = v15 >= v6;
      v17 = v15 < v6;
      if (v16)
      {
        v14 = v12;
      }

      v12 = *&v12[8 * v17];
    }

    while (v12);
    if (v14 != v11 && *(v14 + 8) <= v6)
    {
      v18 = *(v14 + 5);
      v19 = [(OZFxPlugParameterHandler *)self getScene];
      if (v19 && (*(v19[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v18, 8))
      {
        PCSharedCount::PCSharedCount(v24);
        (*(v18->var0 + 43))(v18, v24);
        PCString::~PCString(v24);
      }

      [(OZFxPlugParameterHandler *)self preChannelChange:v18 flagsOnly:0];
      if (self)
      {
        [(OZFxPlugParameterHandler *)self motionEffectRef];
        v24[0].var0 = 0;
        v24[1].var0 = 0;
        v25 = 0;
        [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a5.var1 withConversionData:0];
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v24[0].var0 = 0;
        v24[1].var0 = 0;
      }

      v22 = *&v24[0].var0;
      v23 = v25;
      v20 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v22 forChannel:v18];
      (*(v18->var0 + 89))(v18, v24, [(OZFxPlugParameterHandler *)self isRendering], a3);
      [(OZFxPlugParameterHandler *)self endTimingOperation:v20];
      [(OZFxPlugParameterHandler *)self postChannelChange:v18 flagsOnly:0];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v6];
      ProCore_Impl::PCNSRefImpl::release(&v26);
      LOBYTE(v9) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (BOOL)_setIntValue:(int)a3 toParm:(unsigned int)a4 atTime:(id)a5
{
  v6 = *&a4;
  v9 = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (v9)
  {
    channelMap = self->_channelMap;
    v13 = channelMap[1];
    v11 = (channelMap + 1);
    v12 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }

    v14 = v11;
    do
    {
      v15 = *(v12 + 8);
      v16 = v15 >= v6;
      v17 = v15 < v6;
      if (v16)
      {
        v14 = v12;
      }

      v12 = *&v12[8 * v17];
    }

    while (v12);
    if (v14 != v11 && *(v14 + 8) <= v6)
    {
      v18 = *(v14 + 5);
      v19 = [(OZFxPlugParameterHandler *)self getScene];
      if (v19 && (*(v19[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v18, 8))
      {
        PCSharedCount::PCSharedCount(v24);
        (*(v18->var0 + 43))(v18, v24);
        PCString::~PCString(v24);
      }

      [(OZFxPlugParameterHandler *)self preChannelChange:v18 flagsOnly:0];
      if (self)
      {
        [(OZFxPlugParameterHandler *)self motionEffectRef];
        v24[0].var0 = 0;
        v24[1].var0 = 0;
        v25 = 0;
        [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a5.var1 withConversionData:0];
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v24[0].var0 = 0;
        v24[1].var0 = 0;
      }

      v22 = *&v24[0].var0;
      v23 = v25;
      v20 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v22 forChannel:v18];
      (*(v18->var0 + 89))(v18, v24, [(OZFxPlugParameterHandler *)self isRendering], a3);
      [(OZFxPlugParameterHandler *)self endTimingOperation:v20];
      [(OZFxPlugParameterHandler *)self postChannelChange:v18 flagsOnly:0];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v6];
      ProCore_Impl::PCNSRefImpl::release(&v26);
      LOBYTE(v9) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (BOOL)_setBoolValue:(BOOL)a3 toParm:(unsigned int)a4 atTime:(id)a5
{
  v6 = *&a4;
  v7 = a3;
  v9 = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (v9)
  {
    channelMap = self->_channelMap;
    v13 = channelMap[1];
    v11 = (channelMap + 1);
    v12 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }

    v14 = v11;
    do
    {
      v15 = *(v12 + 8);
      v16 = v15 >= v6;
      v17 = v15 < v6;
      if (v16)
      {
        v14 = v12;
      }

      v12 = *&v12[8 * v17];
    }

    while (v12);
    if (v14 != v11 && *(v14 + 8) <= v6)
    {
      v18 = *(v14 + 5);
      v19 = [(OZFxPlugParameterHandler *)self getScene];
      if (v19 && (*(v19[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v18, 8))
      {
        PCSharedCount::PCSharedCount(v24);
        (*(v18->var0 + 43))(v18, v24);
        PCString::~PCString(v24);
      }

      [(OZFxPlugParameterHandler *)self preChannelChange:v18 flagsOnly:0];
      if (self)
      {
        [(OZFxPlugParameterHandler *)self motionEffectRef];
        v24[0].var0 = 0;
        v24[1].var0 = 0;
        v25 = 0;
        [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a5.var1 withConversionData:0];
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v24[0].var0 = 0;
        v24[1].var0 = 0;
      }

      v22 = *&v24[0].var0;
      v23 = v25;
      v20 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v22 forChannel:v18];
      (*(v18->var0 + 89))(v18, v24, [(OZFxPlugParameterHandler *)self isRendering], v7);
      [(OZFxPlugParameterHandler *)self endTimingOperation:v20];
      [(OZFxPlugParameterHandler *)self postChannelChange:v18 flagsOnly:0];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v6];
      ProCore_Impl::PCNSRefImpl::release(&v26);
      LOBYTE(v9) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (BOOL)_setRedValue:(double)a3 greenValue:(double)a4 blueValue:(double)a5 toParm:(unsigned int)a6 atTime:(id)a7
{
  v8 = *&a6;
  v13 = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (v13)
  {
    channelMap = self->_channelMap;
    v17 = channelMap[1];
    v15 = (channelMap + 1);
    v16 = v17;
    if (!v17)
    {
      goto LABEL_10;
    }

    v18 = v15;
    do
    {
      v19 = *(v16 + 8);
      v20 = v19 >= v8;
      v21 = v19 < v8;
      if (v20)
      {
        v18 = v16;
      }

      v16 = *&v16[8 * v21];
    }

    while (v16);
    if (v18 != v15 && *(v18 + 8) <= v8)
    {
      v22 = *(v18 + 5);
      v23 = [(OZFxPlugParameterHandler *)self getScene];
      if (v23 && (*(v23[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v22, 8))
      {
        PCSharedCount::PCSharedCount(&v32);
        (*(v22->var0 + 43))(v22, &v32);
        PCString::~PCString(&v32);
      }

      if (self)
      {
        [(OZFxPlugParameterHandler *)self motionEffectRef];
        v33 = 0uLL;
        v34 = 0;
        [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a7.var1 withConversionData:0];
      }

      else
      {
        v35 = 0;
        v33 = 0uLL;
        v34 = 0;
      }

      PCColor::PCColor(&v32);
      *&v24 = a3;
      *&v25 = a4;
      *&v26 = a5;
      LODWORD(v27) = 1.0;
      [(OZFxPlugParameterHandler *)self setColorFromFxPlugColorSpace:&v32 red:v24 green:v25 blue:v26 alpha:v27];
      v30 = v33;
      v31 = v34;
      v28 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v30 forChannel:v22];
      [(OZFxPlugParameterHandler *)self preChannelChange:v22 flagsOnly:0];
      (*(v22->var0 + 105))(v22, &v33, &v32, [(OZFxPlugParameterHandler *)self isRendering]);
      [(OZFxPlugParameterHandler *)self postChannelChange:v22 flagsOnly:0];
      [(OZFxPlugParameterHandler *)self endTimingOperation:v28];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v8];
      PCCFRef<CGColorSpace *>::~PCCFRef(&v32.var1._obj);
      ProCore_Impl::PCNSRefImpl::release(&v35);
      LOBYTE(v13) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (BOOL)_setRedValue:(double)a3 greenValue:(double)a4 blueValue:(double)a5 alphaValue:(double)a6 toParm:(unsigned int)a7 atTime:(id)a8
{
  v9 = *&a7;
  v15 = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (v15)
  {
    channelMap = self->_channelMap;
    v19 = channelMap[1];
    v17 = (channelMap + 1);
    v18 = v19;
    if (!v19)
    {
      goto LABEL_10;
    }

    v20 = v17;
    do
    {
      v21 = *(v18 + 8);
      v22 = v21 >= v9;
      v23 = v21 < v9;
      if (v22)
      {
        v20 = v18;
      }

      v18 = *&v18[8 * v23];
    }

    while (v18);
    if (v20 != v17 && *(v20 + 8) <= v9)
    {
      v24 = *(v20 + 5);
      v25 = [(OZFxPlugParameterHandler *)self getScene];
      if (v25 && (*(v25[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v24, 8))
      {
        PCSharedCount::PCSharedCount(&v34);
        (*(v24->var0 + 43))(v24, &v34);
        PCString::~PCString(&v34);
      }

      if (self)
      {
        [(OZFxPlugParameterHandler *)self motionEffectRef];
        v35 = 0uLL;
        v36 = 0;
        [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a8.var1 withConversionData:0];
      }

      else
      {
        v37 = 0;
        v35 = 0uLL;
        v36 = 0;
      }

      PCColor::PCColor(&v34);
      *&v26 = a3;
      *&v27 = a4;
      *&v28 = a5;
      *&v29 = a6;
      [(OZFxPlugParameterHandler *)self setColorFromFxPlugColorSpace:&v34 red:v26 green:v27 blue:v28 alpha:v29];
      v32 = v35;
      v33 = v36;
      v30 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v32 forChannel:v24];
      [(OZFxPlugParameterHandler *)self preChannelChange:v24 flagsOnly:0];
      (*(v24->var0 + 105))(v24, &v35, &v34, [(OZFxPlugParameterHandler *)self isRendering]);
      [(OZFxPlugParameterHandler *)self postChannelChange:v24 flagsOnly:0];
      [(OZFxPlugParameterHandler *)self endTimingOperation:v30];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v9];
      PCCFRef<CGColorSpace *>::~PCCFRef(&v34.var1._obj);
      ProCore_Impl::PCNSRefImpl::release(&v37);
      LOBYTE(v15) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(v15) = 0;
    }
  }

  return v15;
}

- (BOOL)_setXValue:(double)a3 YValue:(double)a4 toParm:(unsigned int)a5 atTime:(id)a6
{
  v7 = *&a5;
  if (![(OZFxPlugParameterHandler *)self safeToSetParameters])
  {
    goto LABEL_39;
  }

  channelMap = self->_channelMap;
  v14 = channelMap[1];
  v12 = (channelMap + 1);
  v13 = v14;
  if (!v14)
  {
    goto LABEL_39;
  }

  v15 = v12;
  do
  {
    v16 = *(v13 + 8);
    _CF = v16 >= v7;
    v18 = v16 < v7;
    if (_CF)
    {
      v15 = v13;
    }

    v13 = *&v13[8 * v18];
  }

  while (v13);
  if (v15 == v12 || *(v15 + 8) > v7)
  {
    goto LABEL_39;
  }

  v19 = *(v15 + 5);
  if (self)
  {
    [(OZFxPlugParameterHandler *)self motionEffectRef];
  }

  else
  {
    v46 = 0;
  }

  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v44 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v45, &ptr);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v21 = *v45[0];
  if (!*v45[0] || (v22 = atomic_load(&self->_pluginRemoved), (v22 & 1) != 0))
  {
    v23 = 0;
    LOBYTE(v24) = 1;
    goto LABEL_38;
  }

  memset(&v42, 0, sizeof(v42));
  [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a6.var1 withConversionData:0];
  v38[0]._pcColorDesc = v42;
  v25 = [(OZFxPlugParameterHandler *)self beginTimingOperation:v38 forChannel:v19];
  if (v26)
  {
    v27 = v26;
    v24 = v26[3];
    if (v24)
    {
      v41[0] = 0uLL;
      __asm { FMOV            V0.2D, #-1.0 }

      v41[1] = _Q0;
      OZRenderParams::OZRenderParams(v38);
      v38[0]._pcColorDesc = v42;
      v39 = 0;
      v40 = 0;
      v32 = (*(*v27 + 296))(v27);
      WorkingColorSpace = OZScene::getWorkingColorSpace(v32);
      OZRenderParams::setWorkingColorSpace(v38, WorkingColorSpace);
      v34 = *v24;
      if (v35)
      {
        if ((*(*v35 + 2216))(v35, v38))
        {
          OZScene::getSceneBounds(v32, v41);
LABEL_28:
          OZRenderParams::~OZRenderParams(v38);
          LOBYTE(v24) = 1;
          goto LABEL_29;
        }

        v34 = *v24;
      }

      (*(v34 + 80))(v24, v41, v38);
      goto LABEL_28;
    }
  }

  else
  {
    LOBYTE(v24) = 0;
  }

LABEL_29:
  if ([(OZFxPlugParameterHandler *)self shouldFlipPoints:*&v38[0]._pcColorDesc._colorSpaceRef._obj])
  {
    a4 = 1.0 - a4;
  }

  v36 = [(OZFxPlugParameterHandler *)self getScene];
  if (v36 && (*(v36[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v19, 8))
  {
    PCSharedCount::PCSharedCount(v38);
    (*(v19->var0 + 43))(v19, v38);
    PCString::~PCString(v38);
  }

  [(OZFxPlugParameterHandler *)self preChannelChange:v19 flagsOnly:0];
  OZChannel2D::setValue(v19, &v42, a3, a4, [(OZFxPlugParameterHandler *)self isRendering]);
  [(OZFxPlugParameterHandler *)self postChannelChange:v19 flagsOnly:0];
  [(OZFxPlugParameterHandler *)self endTimingOperation:v25];
  if (self->_startActionCalled)
  {
    ++self->_numWriteActions;
  }

  [(OZFxPlugParameterHandler *)self _updateUIForParm:v7];
  v23 = 1;
LABEL_38:
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v45);
  ProCore_Impl::PCNSRefImpl::release(&v46);
  if ((v23 & 1) == 0)
  {
LABEL_39:
    LOBYTE(v24) = 0;
  }

  return v24;
}

- (void)onVTBUserInteractionEventNotification:(id)a3
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v23 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v24, &ptr);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (*v24[0])
  {
    v5 = *(*v24[0] + 24);
    if (objc_opt_respondsToSelector())
    {
      v6 = [a3 userInfo];
      [objc_msgSend(v6 objectForKey:{@"X", "doubleValue"}];
      v8 = v7;
      [objc_msgSend(v6 objectForKey:{@"Y", "doubleValue"}];
      v10 = v9;
      [objc_msgSend(v6 objectForKey:{@"VelocityX", "doubleValue"}];
      v12 = v11;
      [objc_msgSend(v6 objectForKey:{@"VelocityY", "doubleValue"}];
      v14 = v13;
      [objc_msgSend(v6 objectForKey:{@"Scale", "doubleValue"}];
      v16 = v15;
      [objc_msgSend(v6 objectForKey:{@"ScaleVelocity", "doubleValue"}];
      v18 = v17;
      [objc_msgSend(v6 objectForKey:{@"Rotation", "doubleValue"}];
      v20 = v19;
      [objc_msgSend(v6 objectForKey:{@"RotationVelocity", "doubleValue"}];
      [v5 handleUIEventWithPosition:v8 velocity:1.0 - v10 scale:v12 scaleVelocity:-v14 rotation:v16 rotationVelocity:{v18, v20, v21}];
    }
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v24);
}

- (BOOL)setCustomParameterValue:(id)a3 toParm:(unsigned int)a4
{
  v4 = *&a4;
  if (![(OZFxPlugParameterHandler *)self safeToSetParameters])
  {
    return 0;
  }

  channelMap = self->_channelMap;
  v10 = channelMap[1];
  v8 = (channelMap + 1);
  v9 = v10;
  if (!v10)
  {
    return 0;
  }

  v11 = v8;
  do
  {
    v12 = *(v9 + 8);
    v13 = v12 >= v4;
    v14 = v12 < v4;
    if (v13)
    {
      v11 = v9;
    }

    v9 = *&v9[8 * v14];
  }

  while (v9);
  if (v11 == v8 || *(v11 + 8) > v4)
  {
    return 0;
  }

  v15 = *(v11 + 5);
  v16 = [(OZFxPlugParameterHandler *)self getScene];
  if (v16 && (*(v16[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v15, 8))
  {
    PCSharedCount::PCSharedCount(&v28);
    (*(v15->var0 + 43))(v15, &v28);
    PCString::~PCString(&v28);
  }

  [(OZFxPlugParameterHandler *)self preChannelChange:v15 flagsOnly:0];
  if (self)
  {
    [(OZFxPlugParameterHandler *)self motionEffectRef];
  }

  else
  {
    v29 = 0;
  }

  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v27 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(&v28, &ptr);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v18 = *v28.var0;
  if (!*v28.var0 || (v19 = atomic_load(&self->_pluginRemoved), (v19 & 1) != 0))
  {
    [(OZFxPlugParameterHandler *)self postChannelChange:v15 flagsOnly:0];
    v20 = 0;
    v21 = 1;
    goto LABEL_33;
  }

  if (a3 && (*(v18 + 216) & 1) == 0)
  {
    v22 = *(v18 + 24);
    if (!v22)
    {
      v21 = 0;
      goto LABEL_30;
    }

    if (([v22 useLegacyCoding] & 1) == 0)
    {
      v23 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [v23 encodeObject:a3 forKey:@"Custom Data"];
      a3 = [v23 encodedData];
    }
  }

  v24 = [(OZFxPlugParameterHandler *)self isRendering];
  v21 = 1;
  OZChannelBlindData::setPluginDataPtr(v15, MEMORY[0x277CC08F0], a3, v24, 1, 1);
LABEL_30:
  [(OZFxPlugParameterHandler *)self postChannelChange:v15 flagsOnly:0];
  if (self->_startActionCalled)
  {
    ++self->_numWriteActions;
  }

  [(OZFxPlugParameterHandler *)self _updateUIForParm:v4];
  v20 = 1;
LABEL_33:
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(&v28);
  ProCore_Impl::PCNSRefImpl::release(&v29);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  return v21;
}

- (BOOL)_setCustomParameterValue:(id)a3 toParm:(unsigned int)a4 atTime:(id)a5
{
  v6 = *&a4;
  if (![(OZFxPlugParameterHandler *)self safeToSetParameters])
  {
    return 0;
  }

  channelMap = self->_channelMap;
  v12 = channelMap[1];
  v10 = (channelMap + 1);
  v11 = v12;
  if (!v12)
  {
    return 0;
  }

  v13 = v10;
  do
  {
    v14 = *(v11 + 8);
    v15 = v14 >= v6;
    v16 = v14 < v6;
    if (v15)
    {
      v13 = v11;
    }

    v11 = *&v11[8 * v16];
  }

  while (v11);
  if (v13 == v10 || *(v13 + 8) > v6)
  {
    return 0;
  }

  v17 = *(v13 + 5);
  if (self)
  {
    [(OZFxPlugParameterHandler *)self motionEffectRef];
  }

  else
  {
    v32 = 0;
  }

  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v30 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v31, &ptr);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v19 = *v31[0];
  if (!*v31[0] || (v20 = atomic_load(&self->_pluginRemoved), (v20 & 1) != 0))
  {
    v21 = 0;
    v22 = 1;
    goto LABEL_29;
  }

  memset(&v28, 0, sizeof(v28));
  [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a5.var1 withConversionData:0];
  v27 = v28;
  v23 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v27 forChannel:v17];
  [(OZFxPlugParameterHandler *)self preChannelChange:v17 flagsOnly:0];
  if (a3 && (*(v19 + 216) & 1) == 0)
  {
    v24 = *(v19 + 24);
    if (!v24)
    {
      v22 = 0;
      goto LABEL_26;
    }

    if (([v24 useLegacyCoding] & 1) == 0)
    {
      v25 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [v25 encodeObject:a3 forKey:@"Custom Data"];
      a3 = [v25 encodedData];
    }
  }

  v22 = 1;
  OZChannelBlindData::setPluginDataPtr(v17, &v28, a3, [(OZFxPlugParameterHandler *)self isRendering], 1, 1);
LABEL_26:
  [(OZFxPlugParameterHandler *)self _updateUIForParm:v6];
  [(OZFxPlugParameterHandler *)self postChannelChange:v17 flagsOnly:0];
  if (self->_startActionCalled)
  {
    ++self->_numWriteActions;
  }

  [(OZFxPlugParameterHandler *)self endTimingOperation:v23];
  v21 = 1;
LABEL_29:
  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v31);
  ProCore_Impl::PCNSRefImpl::release(&v32);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  return v22;
}

- (BOOL)_setHistogramBlackIn:(double)a3 BlackOut:(double)a4 WhiteIn:(double)a5 WhiteOut:(double)a6 Gamma:(double)a7 forChannel:(unint64_t)a8 fromParm:(unsigned int)a9 atTime:(id)a10
{
  v11 = *&a9;
  v19 = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (v19)
  {
    channelMap = self->_channelMap;
    v23 = channelMap[1];
    v21 = (channelMap + 1);
    v22 = v23;
    if (!v23)
    {
      goto LABEL_10;
    }

    v24 = v21;
    do
    {
      v25 = *(v22 + 8);
      v26 = v25 >= v11;
      v27 = v25 < v11;
      if (v26)
      {
        v24 = v22;
      }

      v22 = *&v22[8 * v27];
    }

    while (v22);
    if (v24 != v21 && *(v24 + 8) <= v11)
    {
      v28 = *(v24 + 5);
      v29 = [(OZFxPlugParameterHandler *)self getScene];
      if (v29 && (*(v29[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v28, 8))
      {
        PCSharedCount::PCSharedCount(v37);
        (*(v28->var0 + 43))(v28, v37);
        PCString::~PCString(v37);
      }

      [(OZFxPlugParameterHandler *)self preChannelChange:v28 flagsOnly:0];
      if (self)
      {
        [(OZFxPlugParameterHandler *)self motionEffectRef];
        v37[0].var0 = 0;
        v37[1].var0 = 0;
        v38 = 0;
        [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a10.var1 withConversionData:0];
      }

      else
      {
        v38 = 0;
        v39 = 0;
        v37[0].var0 = 0;
        v37[1].var0 = 0;
      }

      v35 = *&v37[0].var0;
      v36 = v38;
      v30 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v35 forChannel:v28];
      if (a8 - 1 >= 4)
      {
        v31 = 392;
      }

      else
      {
        v31 = 896 * a8 + 392;
      }

      v32 = [(OZFxPlugParameterHandler *)self isRendering];
      v33 = (&v28->var0 + v31);
      (*(v33[17] + 712))(v33 + 17, v37, v32, a3);
      (*(v33[36] + 712))(v33 + 36, v37, v32, a4);
      (*(v33[55] + 712))(v33 + 55, v37, v32, a5);
      (*(v33[74] + 712))(v33 + 74, v37, v32, a6);
      (*(v33[93] + 712))(v33 + 93, v37, v32, a7);
      [(OZFxPlugParameterHandler *)self endTimingOperation:v30];
      [(OZFxPlugParameterHandler *)self postChannelChange:v28 flagsOnly:0];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v11];
      ProCore_Impl::PCNSRefImpl::release(&v39);
      LOBYTE(v19) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(v19) = 0;
    }
  }

  return v19;
}

- (BOOL)setLevelsBlack:(double)a3 White:(double)a4 Gamma:(double)a5 forParm:(unsigned int)a6 atTime:(id)a7
{
  v8 = *&a6;
  v13 = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (v13)
  {
    channelMap = self->_channelMap;
    v17 = channelMap[1];
    v15 = (channelMap + 1);
    v16 = v17;
    if (!v17)
    {
      goto LABEL_10;
    }

    v18 = v15;
    do
    {
      v19 = *(v16 + 8);
      v20 = v19 >= v8;
      v21 = v19 < v8;
      if (v20)
      {
        v18 = v16;
      }

      v16 = *&v16[8 * v21];
    }

    while (v16);
    if (v18 != v15 && *(v18 + 8) <= v8)
    {
      v22 = *(v18 + 5);
      v23 = [(OZFxPlugParameterHandler *)self getScene];
      if (v23 && (*(v23[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v22, 8))
      {
        PCSharedCount::PCSharedCount(&v27);
        (*(v22->var0 + 43))(v22, &v27);
        PCString::~PCString(&v27);
      }

      if (self)
      {
        [(OZFxPlugParameterHandler *)self motionEffectRef];
        memset(&v27, 0, sizeof(v27));
        [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a7.var1 withConversionData:0];
      }

      else
      {
        v28 = 0;
        memset(&v27, 0, sizeof(v27));
      }

      v26 = v27;
      v24 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v26 forChannel:v22];
      [(OZFxPlugParameterHandler *)self preChannelChange:v22 flagsOnly:0];
      OZChannelLevels::setBlackValue(v22, &v27, a3, 0);
      OZChannelLevels::setWhiteValue(v22, &v27, a4, 0);
      OZChannelLevels::setGammaValue(v22, &v27, a5, 0);
      [(OZFxPlugParameterHandler *)self postChannelChange:v22 flagsOnly:0];
      [(OZFxPlugParameterHandler *)self endTimingOperation:v24];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v8];
      ProCore_Impl::PCNSRefImpl::release(&v28);
      LOBYTE(v13) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (BOOL)setParameterFlags:(unsigned int)a3 toParm:(unsigned int)a4
{
  v4 = *&a4;
  v7 = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (v7)
  {
    channelMap = self->_channelMap;
    v11 = channelMap[1];
    v9 = (channelMap + 1);
    v10 = v11;
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = v9;
    do
    {
      v13 = *(v10 + 8);
      v14 = v13 >= v4;
      v15 = v13 < v4;
      if (v14)
      {
        v12 = v10;
      }

      v10 = *&v10[8 * v15];
    }

    while (v10);
    if (v12 != v9 && *(v12 + 8) <= v4)
    {
      v16 = *(v12 + 5);
      if (v16)
      {
      }

      else
      {
        v17 = 0;
      }

      [(OZFxPlugParameterHandler *)self preChannelChange:v16 flagsOnly:1];
      if (self)
      {
        [(OZFxPlugParameterHandler *)self motionEffectRef];
      }

      else
      {
        v27 = 0;
      }

      if ((((*(v16->var0 + 64))(v16) ^ a3) & 1) == 0)
      {
        (*(v16->var0 + 63))(v16, (a3 & 1) == 0, 0);
      }

      var7 = v16->var7;
      v19 = 4259872;
      if ((a3 & 2) == 0)
      {
        v19 = 0;
      }

      v20 = v19 | a3 & 4 | (a3 >> 1) & 8;
      if ((a3 & 0x20) != 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 | 0x10;
      }

      v22 = var7 ^ v21;
      if (((var7 ^ v21) & 0x410030) != 0)
      {
        v23 = 12;
      }

      else
      {
        v23 = 0;
      }

      if (v21 != (var7 & 0x41003C))
      {
        OZChannelBase::setFlag(v16, v21 | 0x100000000, 1);
        OZChannelBase::resetFlag(v16, ~v21 & 0x41003C, 1);
      }

      if ((a3 & 8) != 0 && v17 && !OZChannelFolder::testFoldFlag(v17, 4))
      {
        OZChannelFolder::setFoldFlag(v17, 4);
      }

      [(OZFxPlugParameterHandler *)self postChannelChange:v16 flagsOnly:1];
      v24 = v23 & 0xFFFF7FFF | (((v22 >> 2) & 1) << 15);
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      v25 = [OZFxPlugParameterHandlerUIUpdate updateWithParamID:v4 notificationFlags:v24];
      if ([(OZFxPlugParameterHandler *)self isRendering])
      {
        [(OZFxPlugParameterHandler *)self performSelectorOnMainThread:sel__updateUI_ withObject:v25 waitUntilDone:0];
      }

      ProCore_Impl::PCNSRefImpl::release(&v27);
      LOBYTE(v7) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (BOOL)setStringParameterValue:(id)a3 toParm:(unsigned int)a4
{
  v4 = *&a4;
  v7 = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (v7)
  {
    channelMap = self->_channelMap;
    v11 = channelMap[1];
    v9 = (channelMap + 1);
    v10 = v11;
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = v9;
    do
    {
      v13 = *(v10 + 8);
      v14 = v13 >= v4;
      v15 = v13 < v4;
      if (v14)
      {
        v12 = v10;
      }

      v10 = *&v10[8 * v15];
    }

    while (v10);
    if (v12 != v9 && *(v12 + 8) <= v4)
    {
      v16 = *(v12 + 5);
      v17 = [(OZFxPlugParameterHandler *)self getScene];
      if (v17 && (*(v17[198] + 101) & 1) == 0 && !OZChannelBase::testFlag(v16, 8))
      {
        PCSharedCount::PCSharedCount(&v20);
        (*(v16->var0 + 43))(v16, &v20);
        PCString::~PCString(&v20);
      }

      [(OZFxPlugParameterHandler *)self preChannelChange:v16 flagsOnly:0];
      if (self)
      {
        [(OZFxPlugParameterHandler *)self motionEffectRef];
      }

      else
      {
        v20.var0 = 0;
      }

      PCURL::PCURL(&v19, a3);
      (*(v16->var0 + 108))(v16, &v19, [(OZFxPlugParameterHandler *)self isRendering], 0);
      PCString::~PCString(&v19);
      [(OZFxPlugParameterHandler *)self postChannelChange:v16 flagsOnly:0];
      if (self->_startActionCalled)
      {
        ++self->_numWriteActions;
      }

      [(OZFxPlugParameterHandler *)self _updateUIForParm:v4];
      ProCore_Impl::PCNSRefImpl::release(&v20.var0);
      LOBYTE(v7) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (BOOL)setGradientStartEnd:(double)a3 startY:(double)a4 endX:(double)a5 endY:(double)a6 toParm:(unsigned int)a7 atTime:(id)a8
{
  channelMap = self->_channelMap;
  v11 = channelMap[1];
  v9 = (channelMap + 1);
  v10 = v11;
  if (!v11)
  {
    return 0;
  }

  v13 = *&a7;
  v19 = v9;
  do
  {
    v20 = *(v10 + 8);
    v21 = v20 >= a7;
    v22 = v20 < a7;
    if (v21)
    {
      v19 = v10;
    }

    v10 = *&v10[8 * v22];
  }

  while (v10);
  if (v19 == v9 || *(v19 + 8) > a7)
  {
    return 0;
  }

  v24 = *(v19 + 5);
  if (self)
  {
    [(OZFxPlugParameterHandler *)self motionEffectRef];
    memset(&v27, 0, sizeof(v27));
    [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a8.var1 withConversionData:0];
  }

  else
  {
    v28 = 0;
    memset(&v27, 0, sizeof(v27));
  }

  v26 = v27;
  v25 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v26 forChannel:v24];
  [(OZFxPlugParameterHandler *)self preChannelChange:v24 + 1056 flagsOnly:0];
  OZChannelPosition::setPosition((v24 + 1056), &v27, a3, a4, [(OZFxPlugParameterHandler *)self isRendering]);
  [(OZFxPlugParameterHandler *)self postChannelChange:v24 + 1056 flagsOnly:0];
  [(OZFxPlugParameterHandler *)self preChannelChange:v24 + 1760 flagsOnly:0];
  OZChannelPosition::setPosition((v24 + 1760), &v27, a5, a6, [(OZFxPlugParameterHandler *)self isRendering]);
  [(OZFxPlugParameterHandler *)self postChannelChange:v24 + 1760 flagsOnly:0];
  [(OZFxPlugParameterHandler *)self endTimingOperation:v25];
  [(OZFxPlugParameterHandler *)self _updateUIForParm:v13];
  ProCore_Impl::PCNSRefImpl::release(&v28);
  return 1;
}

- (BOOL)setGradientFlags:(BOOL)a3 toParam:(unsigned int)a4
{
  channelMap = self->_channelMap;
  v7 = channelMap[1];
  v5 = (channelMap + 1);
  v6 = v7;
  if (!v7)
  {
    return 0;
  }

  v8 = *&a4;
  v9 = a3;
  v11 = v5;
  do
  {
    v12 = *(v6 + 8);
    v13 = v12 >= a4;
    v14 = v12 < a4;
    if (v13)
    {
      v11 = v6;
    }

    v6 = *&v6[8 * v14];
  }

  while (v6);
  if (v11 == v5 || *(v11 + 8) > a4)
  {
    return 0;
  }

  v16 = *(v11 + 5);
  if (self)
  {
    [(OZFxPlugParameterHandler *)self motionEffectRef];
  }

  else
  {
    v17 = 0;
  }

  [(OZFxPlugParameterHandler *)self preChannelChange:v16 + 1056 flagsOnly:1];
  if (v9)
  {
    OZChannelBase::resetFlag((v16 + 1056), 0x8000, 0);
  }

  else
  {
    OZChannelBase::setFlag((v16 + 1056), 0x8000, 0);
  }

  [(OZFxPlugParameterHandler *)self postChannelChange:v16 + 1056 flagsOnly:1];
  [(OZFxPlugParameterHandler *)self preChannelChange:v16 + 1760 flagsOnly:1];
  if (v9)
  {
    OZChannelBase::resetFlag((v16 + 1760), 0x8000, 0);
  }

  else
  {
    OZChannelBase::setFlag((v16 + 1760), 0x8000, 0);
  }

  [(OZFxPlugParameterHandler *)self postChannelChange:v16 + 1760 flagsOnly:1];
  [(OZFxPlugParameterHandler *)self preChannelChange:v16 + 800 flagsOnly:1];
  if (v9)
  {
    OZChannelBase::resetFlag((v16 + 800), 0x8000, 0);
  }

  else
  {
    OZChannelBase::setFlag((v16 + 800), 0x8000, 0);
  }

  [(OZFxPlugParameterHandler *)self postChannelChange:v16 + 800 flagsOnly:1];
  [(OZFxPlugParameterHandler *)self _updateUIForParm:v8];
  ProCore_Impl::PCNSRefImpl::release(&v17);
  return 1;
}

- (BOOL)setGradientHiddenWithOSC:(BOOL)a3 toParam:(unsigned int)a4
{
  channelMap = self->_channelMap;
  v7 = channelMap[1];
  v5 = (channelMap + 1);
  v6 = v7;
  if (!v7)
  {
    return 0;
  }

  v8 = *&a4;
  v9 = a3;
  v11 = v5;
  do
  {
    v12 = *(v6 + 8);
    v13 = v12 >= a4;
    v14 = v12 < a4;
    if (v13)
    {
      v11 = v6;
    }

    v6 = *&v6[8 * v14];
  }

  while (v6);
  if (v11 == v5 || *(v11 + 8) > a4)
  {
    return 0;
  }

  v16 = [(OZFxPlugParameterHandler *)self getScene];
  if (v16)
  {
    v17 = v16[198];
    if (v17)
    {
      OZDocument::postNotification(v17, 32);
    }
  }

  v18 = *(v11 + 5);
  if (self)
  {
    [(OZFxPlugParameterHandler *)self motionEffectRef];
  }

  else
  {
    v19 = 0;
  }

  [(OZFxPlugParameterHandler *)self preChannelChange:OZChannelBase::getChannelRootBase(v18) flagsOnly:1];
  if (v9)
  {
    OZChannelBase::setFlag(v18, 2, 0);
  }

  else
  {
    OZChannelBase::resetFlag(v18, 2, 0);
  }

  [(OZFxPlugParameterHandler *)self postChannelChange:OZChannelBase::getChannelRootBase(v18) flagsOnly:1];
  [(OZFxPlugParameterHandler *)self _updateUIForParm:v8];
  ProCore_Impl::PCNSRefImpl::release(&v19);
  return 1;
}

- (BOOL)_setPathID:(void *)a3 toParm:(unsigned int)a4 atTime:(id)a5
{
  v6 = *&a4;
  v9 = [(OZFxPlugParameterHandler *)self safeToSetParameters];
  if (v9)
  {
    channelMap = self->_channelMap;
    v13 = channelMap[1];
    v11 = (channelMap + 1);
    v12 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }

    v14 = v11;
    do
    {
      v15 = *(v12 + 8);
      v16 = v15 >= v6;
      v17 = v15 < v6;
      if (v16)
      {
        v14 = v12;
      }

      v12 = *&v12[8 * v17];
    }

    while (v12);
    if (v14 != v11 && *(v14 + 8) <= v6)
    {
      v18 = *(v14 + 5);
      if (self)
      {
        [(OZFxPlugParameterHandler *)self motionEffectRef];
        v23 = 0uLL;
        v24 = 0;
        [(OZFxPlugParameterHandler *)self fxTimeToFigTime:a5.var1 withConversionData:0];
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v23 = 0uLL;
      }

      v21 = v23;
      v22 = v24;
      v19 = [(OZFxPlugParameterHandler *)self beginTimingOperation:&v21 forChannel:v18];
      [(OZFxPlugParameterHandler *)self preChannelChange:v18 flagsOnly:0];
      OZChanSceneNodeRef::setNode(v18, a3);
      [(OZFxPlugParameterHandler *)self postChannelChange:v18 flagsOnly:0];
      [(OZFxPlugParameterHandler *)self endTimingOperation:v19];
      [(OZFxPlugParameterHandler *)self _updateUIForParm:v6];
      ProCore_Impl::PCNSRefImpl::release(&v25);
      LOBYTE(v9) = 1;
    }

    else
    {
LABEL_10:
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (BOOL)startUndoGroup:(id)a3
{
  v4 = [(OZFxPlugParameterHandler *)self getScene];
  if (v4)
  {
    v5 = v4[198];
    if (v5)
    {
      v7.var0 = 0;
      PCString::set(&v7, a3);
      OZDocument::startCaptureModifiedChannels(v5, &v7);
      PCString::~PCString(&v7);
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)endUndoGroup
{
  var2 = [(OZFxPlugParameterHandler *)self getScene];
  if (var2)
  {
    var2 = var2[14].var2;
    if (var2)
    {
      OZDocument::endCaptureModifiedChannels(var2, v3);
      LOBYTE(var2) = 1;
    }
  }

  return var2;
}

- (void)_updateUIForParm:(int)a3
{
  v4 = [OZFxPlugParameterHandlerUIUpdate updateWithParamID:*&a3 notificationFlags:8];
  if ([(OZFxPlugParameterHandler *)self isRendering])
  {

    [(OZFxPlugParameterHandler *)self performSelectorOnMainThread:sel__updateUI_ withObject:v4 waitUntilDone:0];
  }

  else
  {

    [(OZFxPlugParameterHandler *)self _updateUI:v4];
  }
}

- (void)_updateUI:(id)a3
{
  v5 = [a3 paramID];
  v6 = v5;
  channelMap = self->_channelMap;
  v10 = channelMap[1];
  v8 = (channelMap + 1);
  v9 = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v8;
  do
  {
    v12 = *(v9 + 8);
    v13 = v12 >= v5;
    v14 = v12 < v5;
    if (v13)
    {
      v11 = v9;
    }

    v9 = *&v9[8 * v14];
  }

  while (v9);
  if (v11 != v8 && v5 >= *(v11 + 8))
  {
    v15 = [(OZFxPlugParameterHandler *)self getScene];
    if (v15)
    {
      v16 = v15[198];
      if (v16)
      {
        v17 = [a3 notificationFlags];

        OZDocument::postNotification(v16, v17);
      }

      else
      {
        NSLog(&cfstr_UnableToFindDo.isa, v6);
      }
    }

    else
    {
      NSLog(&cfstr_UnableToFindSc_0.isa, v6);
    }
  }

  else
  {
LABEL_9:
    NSLog(&cfstr_UnableToFindPa.isa, v5);
  }
}

- (void)setRenderParams:(const void *)a3 withLithiumInput:(void *)a4 withLithiumAgent:(void *)a5
{
  v8.var0 = *a4;
  PCSharedCount::PCSharedCount(&v9, a4 + 1);
  OZFxPlugRenderContextManager::setThreadInfo(&self->_threadContextManager, &v8, a5, a3);
  PCSharedCount::~PCSharedCount(&v9);
}

- (void)getFieldMode:(int *)a3 fromFootage:(void *)a4
{
  if (a4)
  {
    v4 = **&MEMORY[0x277CC08F0];
    *a3 = OZFootage::getFieldDominance(a4, &v4);
  }
}

- (BOOL)hasValidParameterID:(int)a3 checkMix:(BOOL)a4 checkSpecialCheckboxIDs:(BOOL)a5
{
  v5 = a5;
  v7 = *&a3;
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v15 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v16, &ptr);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (!*v16[0])
  {
    goto LABEL_7;
  }

  v10 = atomic_load(&self->_pluginRemoved);
  if (v10)
  {
    goto LABEL_7;
  }

  v13 = !a4;
  v11 = 1;
  if (v7 != 10001)
  {
    v13 = 0;
  }

  if (!v13 && (v7 - 9999) <= 0xFFFFD8F1 && (*(*v16[0] + 216) & 1) != 0 && ((v7 - 10006) < 0xFFFFFFFC || v5))
  {
    NSLog(&cfstr_FxplugErrorPar.isa, v7);
LABEL_7:
    v11 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v16);
  return v11;
}

- (BOOL)parameter:(int)a3 hasValidFlags:(unsigned int)a4
{
  v4 = a4 & 0xFFFDF480;
  if ((a4 & 0xFFFDF480) != 0)
  {
    NSLog(&cfstr_FxplugErrorPar_0.isa, a2, a3, *&a4);
  }

  return v4 == 0;
}

- (BOOL)_floatParameter:(int)a3 hasValidMin:(double)a4 max:(double)a5 sliderMin:(double)a6 sliderMax:(double)a7 defaultValue:(double)a8 paramFlags:(unsigned int)a9
{
  v9 = *&a9;
  v15 = *&a3;
  v17 = [(OZFxPlugParameterHandler *)self hasValidParameterID:*&a3 checkMix:0 checkSpecialCheckboxIDs:1];
  if (v17)
  {
    v17 = [(OZFxPlugParameterHandler *)self parameter:v15 hasValidFlags:v9];
    if ((v9 & 0x100) != 0 || !v17)
    {
      if (!v17)
      {
        return v17;
      }
    }

    else
    {
      if (a4 > a5)
      {
        NSLog(&cfstr_FxplugErrorPar_1.isa, v15, *&a4, *&a5);
LABEL_34:
        LOBYTE(v17) = 0;
        return v17;
      }

      if (a4 > a8 || a8 > a5)
      {
        NSLog(&cfstr_FxplugErrorPar_2.isa, v15, *&a8, *&a4, *&a5);
        goto LABEL_34;
      }

      if (a6 < a4)
      {
        NSLog(&cfstr_FxplugErrorPar_3.isa, v15, *&a6, *&a4);
        goto LABEL_34;
      }

      if (a6 > a5)
      {
        NSLog(&cfstr_FxplugErrorPar_4.isa, v15, *&a6, *&a5);
        goto LABEL_34;
      }

      if (a7 > a5)
      {
        NSLog(&cfstr_FxplugErrorPar_5.isa, v15, *&a7, *&a5);
        goto LABEL_34;
      }

      if (a7 < a4)
      {
        NSLog(&cfstr_FxplugErrorPar_6.isa, v15, *&a7, *&a4);
        goto LABEL_34;
      }
    }

    if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      NSLog(&cfstr_FxplugErrorPar_7.isa, v15, *&a4);
      goto LABEL_34;
    }

    if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      NSLog(&cfstr_FxplugErrorPar_8.isa, v15, *&a5);
      goto LABEL_34;
    }

    if ((*&a8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      NSLog(&cfstr_FxplugErrorPar_9.isa, v15, *&a8);
      goto LABEL_34;
    }

    if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      NSLog(&cfstr_FxplugErrorPar_10.isa, v15, *&a6);
      goto LABEL_34;
    }

    if ((*&a7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      NSLog(&cfstr_FxplugErrorPar_11.isa, v15, *&a7);
      goto LABEL_34;
    }

    if (a6 > a7)
    {
      NSLog(&cfstr_FxplugErrorPar_12.isa, v15, *&a6, *&a7);
      goto LABEL_34;
    }

    if (a6 > a8 || a8 > a7)
    {
      NSLog(&cfstr_FxplugErrorPar_13.isa, v15, *&a8, *&a6, *&a7);
      goto LABEL_34;
    }

    LOBYTE(v17) = 1;
  }

  return v17;
}

- (BOOL)_intParameter:(int)a3 hasValidMin:(int)a4 max:(int)a5 sliderMin:(int)a6 sliderMax:(int)a7 defaultValue:(int)a8 paramFlags:(unsigned int)a9
{
  v9 = *&a8;
  v10 = *&a7;
  v11 = *&a6;
  v12 = *&a5;
  v13 = *&a4;
  v14 = *&a3;
  v16 = [(OZFxPlugParameterHandler *)self hasValidParameterID:*&a3 checkMix:1 checkSpecialCheckboxIDs:1];
  if (v16)
  {
    v16 = [(OZFxPlugParameterHandler *)self parameter:v14 hasValidFlags:a9];
  }

  if ((a9 & 0x100) != 0)
  {
    if (v11 <= v10 || !v16)
    {
      if (!v16)
      {
        return v16;
      }

      goto LABEL_17;
    }

LABEL_10:
    NSLog(&cfstr_FxplugErrorPar_20.isa, v14, v11, v10);
    goto LABEL_22;
  }

  if (v13 > v12)
  {
    NSLog(&cfstr_FxplugErrorPar_14.isa, v14, v13, v12);
LABEL_22:
    LOBYTE(v16) = 0;
    return v16;
  }

  if (v16)
  {
    if (v13 > v9 || v9 > v12)
    {
      NSLog(&cfstr_FxplugErrorPar_15.isa, v14, v9, v13, v12);
      goto LABEL_22;
    }

    if (v11 < v13)
    {
      NSLog(&cfstr_FxplugErrorPar_16.isa, v14, v11, v13);
      goto LABEL_22;
    }

    if (v11 > v12)
    {
      NSLog(&cfstr_FxplugErrorPar_17.isa, v14, v11, v12);
      goto LABEL_22;
    }

    if (v10 > v12)
    {
      NSLog(&cfstr_FxplugErrorPar_18.isa, v14, v10, v12);
      goto LABEL_22;
    }

    if (v10 < v13)
    {
      NSLog(&cfstr_FxplugErrorPar_19.isa, v14, v10, v13);
      goto LABEL_22;
    }

    if (v11 <= v10)
    {
LABEL_17:
      if (v11 > v9 || v9 > v10)
      {
        NSLog(&cfstr_FxplugErrorPar_21.isa, v14, v9, v11, v10);
        goto LABEL_22;
      }

      LOBYTE(v16) = 1;
      return v16;
    }

    goto LABEL_10;
  }

  return v16;
}

- (OZRenderState)getTempContextRenderState
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v10 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v11, &ptr);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*v11[0] && (v6 = atomic_load(&self->_pluginRemoved), (v6 & 1) == 0))
  {
    RenderParams = OZFxPlugRenderContextManager::getRenderParams(&self->_threadContextManager, *v11[0]);
    OZRenderState::OZRenderState(retstr, RenderParams);
  }

  else
  {
    OZRenderState::OZRenderState(retstr);
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v11);
  return result;
}

- (void)getPointChannel:(OZChannel *)a3 nearestPoint:(PCVector2<double>)a4 atTime:(id *)a5
{
  v9.var1 = [(OZFxPlugParameterHandler *)self figTimeToFxTime:v5 withConversionData:0, a4.var0, a4.var1];
  channelMap = self->_channelMap;
  v11 = *channelMap;
  if (*channelMap == channelMap + 1)
  {
    v13 = 0;
  }

  else
  {
    var1 = v9.var1;
    v13 = 0;
    v14 = 3.40282347e38;
    do
    {
      v15 = v11[5];
      if (v15)
      {
        if (v16)
        {
          v17 = v16;
          v22 = 0.0;
          v23 = 0.0;
          [(OZFxPlugParameterHandler *)self _getXValue:&v23 YValue:&v22 fromParm:*(v11 + 8) atTime:var1];
          v18 = sqrt((v23 - *&a5->var0) * (v23 - *&a5->var0) + (v22 - *&a5->var1) * (v22 - *&a5->var1));
          if (v18 < v14)
          {
            v13 = v17;
            v14 = v18;
          }
        }
      }

      v19 = v11[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v11[2];
          v21 = *v20 == v11;
          v11 = v20;
        }

        while (!v21);
      }

      v11 = v20;
    }

    while (v20 != self->_channelMap + 1);
  }

  *a3 = v13;
}

- (PCRect<double>)getBoundsFromSceneNode:(void *)a3 withRenderParams:(void *)a4
{
  v8 = v4;
  *v4 = 0;
  *(v4 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v4 + 16) = _Q0;
  if (!a3)
  {
    v15 = 0;
LABEL_6:
    (*(*v15 + 16))(v15, v8, a4);
    if (!self)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!v14)
  {
    goto LABEL_6;
  }

  (*(*v14 + 1552))(v14, v8, a4);
  if (!self)
  {
LABEL_4:
    v20 = 0;
    goto LABEL_9;
  }

LABEL_7:
  [(OZFxPlugParameterHandler *)self motionEffectRef];
  if (v20)
  {
    [(OZFxPlugParameterHandler *)self isImageWellMediaFlexoMediaForSceneNode:a3];
  }

LABEL_9:
  ProCore_Impl::PCNSRefImpl::release(&v20);
  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (PCPtr<LiImageSource>)makeSourceFromSceneNode:(void *)a3 withRenderParams:(void *)a4
{
  v7 = v4;
  v4->var0 = 0;
  v8 = &v4[1];
  PCSharedCount::PCSharedCount(v4 + 1);
  OZRenderGraphState::OZRenderGraphState(v15);
  if (a3)
  {
  }

  Render360GroupAsEquirectSentry::Render360GroupAsEquirectSentry(v14, a3, a4);
  (*(*a3 + 176))(&v12, a3, a4, v15, 1);
  v7->var0 = v12;
  PCSharedCount::PCSharedCount(&v20, &v13);
  PCSharedCount::operator=(v8, &v20);
  PCSharedCount::~PCSharedCount(&v20);
  PCSharedCount::~PCSharedCount(&v13);
  Render360GroupAsEquirectSentry::~Render360GroupAsEquirectSentry(v14);
  v17 = &unk_2871F25A8;
  if (v18 < 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v18;
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(&v17, 0, v9);
  if (v19)
  {
    MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
  }

  v19 = 0;
  v18 = 0;
  v10 = std::__list_imp<unsigned int>::clear(v16);
  result.var1.var0 = v11;
  result.var0 = v10;
  return result;
}

- (double)getPixelAspectRatioFromSceneNode:(void *)a3
{
  if (!a3)
  {
    return 1.0;
  }

  if (v4)
  {
    (*(*v4 + 1328))(v4);
    if (v5)
    {
      if (result != 1.0)
      {
        return result;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (v5)
    {
LABEL_8:
      v8 = *(*v5 + 1792);
      v9 = v5;

LABEL_20:
      v8(v9);
      return result;
    }

    result = 1.0;
  }

  if (result == 1.0 && v6 != 0)
  {
    v8 = *(*v6 + 40);
    v9 = v6;

    goto LABEL_20;
  }

  return result;
}

- (BOOL)finalizeImage:(id)a3 withSceneNode:(void *)a4 pixelBounds:(PCRect<int>)a5 agent:(void *)a6 andRenderParams:(const void *)a7 atTime:(id)a8
{
  v8 = *&a5.var2;
  v9 = *&a5.var0;
  v43 = a7;
  v42 = *(a6 + 123);
  if (a4)
  {
  }

  [(OZFxPlugParameterHandler *)self getFieldMode:&v42 fromFootage:a4];
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v40 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v41, &ptr);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  v13 = *v41[0];
  if (*v41[0] && (v14 = atomic_load(&self->_pluginRemoved), (v14 & 1) == 0))
  {
    v38 = v42;
    isObjectRef = OZChannelBase::isObjectRef(v13);
    [a3 setFieldOrder:v38];
    [a3 setField:isObjectRef];
    PluginNCLC = OZFxPlugSharedBase::getPluginNCLC(&v13->var0, v8);
    v37 = v17;
    *&v18 = FxConvertPCNCLCCodeToFxNCLCValue(&PluginNCLC);
    [a3 setNCLCValue:{v19, v18}];
    [a3 setColorSpace:{OZFxPlugSharedBase::getPluginColorSpace(&v13->var0, v8)}];
    OZFxPlugSharedBase::getPluginColorDescription(&v13->var0, v8, &v35);
    [a3 setDynamicRangeType:OZFxPlug_ConvertDynamicRangeType(&v35)];
    v20 = v9[1];
    v21.i64[0] = *v9;
    v21.i64[1] = HIDWORD(*v9);
    v22 = vcvtq_f64_s64(v21);
    v21.i64[0] = v20;
    v21.i64[1] = SHIDWORD(v20);
    v33 = v22;
    v34 = vcvtq_f64_s64(v21);
    LiAgent::getInversePixelTransform(v8, 0.0, v32);
    v15 = PCMatrix44Tmpl<double>::transformRect<double>(v32, v33.f64, &v33);
    if (v15)
    {
      [a3 setBounds:{*&v33, *&v34}];
      v23 = *(v8 + 20);
      v24 = v23[3];
      v26 = *v23;
      v25 = v23[1];
      v31[2] = v23[2];
      v31[3] = v24;
      v31[0] = v26;
      v31[1] = v25;
      v27 = v23[7];
      v29 = v23[4];
      v28 = v23[5];
      v31[6] = v23[6];
      v31[7] = v27;
      v31[4] = v29;
      v31[5] = v28;
      [a3 setPixelTransform:FxMatrixFromPCMatrix(v31)];
    }

    PCCFRef<CGColorSpace *>::~PCCFRef(&v35._pcColorDesc._colorSpaceRef._obj);
  }

  else
  {
    v15 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v41);
  return v15;
}

- (void)getLayerOffsetX:(double *)a3 andOffsetY:(double *)a4 fromSceneNode:(void *)a5 withRenderParams:(const void *)a6
{
  if (a5)
  {
    if (v9 && (a3 | a4) != 0)
    {
      v12 = 0.0;
      v13 = 0.0;
      v11 = *a6;
      OZTransformNode::getTranslation(v9, &v13, &v12, &v11);
      if (a3)
      {
        *a3 = v13;
      }

      if (a4)
      {
        *a4 = v12;
      }
    }
  }
}

- (BOOL)_setupRenderer
{
  if (!self->_renderer)
  {
    operator new();
  }

  return 1;
}

- (unsigned)fxParameterFlagsForChannel:(OZChannelBase *)a3
{
  var0 = a3->var0;
  var7 = a3->var7;
  v8 = ~LODWORD(a3->var7);
  v9 = (var0[64])(a3) ^ 1;
  if ((*&v8 & 0x410020) == 0)
  {
    v9 |= 0x20202u;
  }

  v10 = v9 | var7 & 4;
  if (v6 && OZChannelFolder::testFoldFlag(v6, 4))
  {
    v10 |= 8u;
  }

  if ((var7 & 0x10) != 0)
  {
    v11 = v10 | (2 * var7) & 0x10;
  }

  else
  {
    v11 = v10 | (2 * var7) & 0x10 | 0x20;
  }

  if (v5)
  {
    v14 = 0.0;
    (*(**(v5[14] + 8) + 264))(*(v5[14] + 8), &v14);
    v12 = v14;
    if (v14 == -1.79769313e308)
    {
      v14 = 0.0;
      (*(**(v5[14] + 8) + 256))(*(v5[14] + 8), &v14, v12);
      if (v14 == 1.79769313e308)
      {
        v11 |= 0x100u;
      }
    }
  }

  return (var7 >> 5) & 0x20000 | (var7 >> 7) & 0x200 | v11;
}

- (void)setupImageParamIDs:(void *)a3
{
  channelMap = self->_channelMap;
  v4 = *channelMap;
  if (*channelMap != channelMap + 1)
  {
    do
    {
      v7 = v4[5];
      if (v7)
      {
        if (v8)
        {
          v9 = v8[6];
          v11 = *(a3 + 1);
          v10 = *(a3 + 2);
          if (v11 >= v10)
          {
            v13 = *a3;
            v14 = v11 - *a3;
            v15 = v14 >> 2;
            v16 = (v14 >> 2) + 1;
            if (v16 >> 62)
            {
              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            v17 = v10 - v13;
            if (v17 >> 1 > v16)
            {
              v16 = v17 >> 1;
            }

            if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v18 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v16;
            }

            if (v18)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a3, v18);
            }

            *(4 * v15) = v9;
            v12 = 4 * v15 + 4;
            memcpy(0, v13, v14);
            v19 = *a3;
            *a3 = 0;
            *(a3 + 1) = v12;
            *(a3 + 2) = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v11 = v9;
            v12 = (v11 + 1);
          }

          *(a3 + 1) = v12;
        }
      }

      v20 = v4[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v4[2];
          v22 = *v21 == v4;
          v4 = v21;
        }

        while (!v22);
      }

      v4 = v21;
    }

    while (v21 != self->_channelMap + 1);
  }
}

- (id)transactionForParameterID:(unsigned int)a3 atTime:(id *)a4 transactionID:(unint64_t)a5 pluginSessionID:(unint64_t)a6
{
  cntrl = self->_fxPlugLock.__cntrl_;
  ptr = self->_fxPlugLock.__ptr_;
  v33 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  OZFxPlugLockSentinel::OZFxPlugLockSentinel(v34, &ptr);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (!*v34[0])
  {
    goto LABEL_15;
  }

  v12 = atomic_load(&self->_pluginRemoved);
  if (v12)
  {
    goto LABEL_15;
  }

  OZFxPlugSharedBase::getPluginUUID(*v34[0], &v30);
  v13 = PCString::ns_str(&v30);
  PCString::~PCString(&v30);
  left = self->_paramCreationMap.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_15;
  }

  p_end_node = &self->_paramCreationMap.__tree_.__end_node_;
  do
  {
    v16 = left[4].__left_;
    v17 = v16 >= a3;
    v18 = v16 < a3;
    if (v17)
    {
      p_end_node = left;
    }

    left = left[v18].__left_;
  }

  while (left);
  if (p_end_node != &self->_paramCreationMap.__tree_.__end_node_ && LODWORD(p_end_node[4].__left_) <= a3)
  {
    channelMap = self->_channelMap;
    v24 = channelMap[1];
    v22 = (channelMap + 1);
    v23 = v24;
    if (!v24)
    {
      goto LABEL_25;
    }

    v25 = v22;
    do
    {
      v26 = *(v23 + 8);
      v17 = v26 >= a3;
      v27 = v26 < a3;
      if (v17)
      {
        v25 = v23;
      }

      v23 = *&v23[8 * v27];
    }

    while (v23);
    if (v25 == v22 || *(v25 + 8) > a3)
    {
LABEL_25:
      v25 = v22;
    }

    v28 = *(v25 + 5);
    v29 = p_end_node[5].__left_;
    v30 = *&a4->var0;
    var3 = a4->var3;
    v19 = v29(v28, 0, &v30, a5, v13, a6);
  }

  else
  {
LABEL_15:
    v19 = 0;
  }

  OZFxPlugLockSentinel::~OZFxPlugLockSentinel(v34);
  return v19;
}

- (id).cxx_construct
{
  self->_paramCreationMap.__tree_.__size_ = 0;
  self->_paramCreationMap.__tree_.__end_node_.__left_ = 0;
  self->_paramCreationMap.__tree_.__begin_node_ = &self->_paramCreationMap.__tree_.__end_node_;
  self->_customParameterList.__end_ = 0;
  self->_customParameterList.__cap_ = 0;
  self->_customParameterList.__begin_ = 0;
  OZFxPlugRenderContextManager::OZFxPlugRenderContextManager(&self->_threadContextManager);
  *&self->_suppressChannelChangesStack.c.__map_.__end_ = 0u;
  *&self->_suppressChannelChangesStack.c.__start_ = 0u;
  *&self->_suppressChannelChangesStack.c.__map_.__first_ = 0u;
  self->_fullWidthCustomParams.__end_ = 0;
  self->_fullWidthCustomParams.__cap_ = 0;
  self->_fullWidthCustomParams.__begin_ = 0;
  self->_fxPlugLock.__ptr_ = 0;
  self->_fxPlugLock.__cntrl_ = 0;
  return self;
}

@end