@interface VKDebugSettings
+ (id)sharedSettings;
- ($25311016DA3E46AB78CD7EC23DF2C833)landmark2DStrokeSettings;
- ($9DB4204096BA361EBCEA4D052588F96C)getMuninTapState;
- ($9DB4204096BA361EBCEA4D052588F96C)muninTapState;
- (VKDebugSettings)init;
- (const)displayStyleOverride;
- (float)animationTimeMultiplier;
- (float)transitionTimeMultiplier;
- (id).cxx_construct;
- (id)nameForPerformanceGroup:(unsigned int)group;
- (void)addTileToPaint:(GEOTileSetRegion *)paint;
- (void)hidePerformanceGroup:(unsigned int)group;
- (void)init;
- (void)setAltitudeDisableC3mTextureLoading:(BOOL)loading;
- (void)setArDebugElevationOffset:(float)offset;
- (void)setArDebugMiniMap:(BOOL)map;
- (void)setArDebugMiniMapMapRectSize:(float)size;
- (void)setArDebugMiniMapScreenRectSize:(float)size;
- (void)setArDebugMiniMapScreenRectXOffset:(float)offset;
- (void)setArDebugMiniMapScreenRectYOffset:(float)offset;
- (void)setArDebugSceneFeatureDistance:(float)distance;
- (void)setArDebugSceneFeatureHeading:(float)heading;
- (void)setArDebugSceneFeatureText:(id)text;
- (void)setArDebugSceneFeatureType:(unsigned __int8)type;
- (void)setArDebugScenePoiType:(unsigned int)type;
- (void)setArEnableEnvironmentMap:(BOOL)map;
- (void)setArEnableRouteLineDebugMeshes:(BOOL)meshes;
- (void)setArLabelingStateOverlay:(BOOL)overlay;
- (void)setArRenderAtNativeRate:(BOOL)rate;
- (void)setCompressedBuildingsDisabled:(BOOL)disabled;
- (void)setConstantlyChangeTileGroup:(BOOL)group;
- (void)setConstantlyChangeTileGroupInterval:(double)interval;
- (void)setDaVinciASTCTextureSideLoadEnabled:(BOOL)enabled;
- (void)setDaVinciCameraController:(BOOL)controller;
- (void)setDaVinciColorBuildings:(BOOL)buildings;
- (void)setDaVinciEntityDebugHighlighting:(BOOL)highlighting;
- (void)setDaVinciResourceOverrideEnabled:(BOOL)enabled;
- (void)setDisableBackgroundLabelLayout:(BOOL)layout;
- (void)setDisableBuildingFootprints:(BOOL)footprints;
- (void)setDisableIconTextureAtlas:(BOOL)atlas;
- (void)setDrawPerformanceHUD:(BOOL)d;
- (void)setEnableDOF:(BOOL)f;
- (void)setEnableInjectedAssets:(BOOL)assets;
- (void)setEnableMuninMiniMapCollectionPoints:(BOOL)points;
- (void)setEnableMuninMiniMapComposedEdgeRoadColoring:(BOOL)coloring;
- (void)setEnableMuninMiniMapRoadWidths:(BOOL)widths;
- (void)setEnableMuninMiniMapRoadZData:(BOOL)data;
- (void)setEnableMuninRoadNetworkMiniMap:(BOOL)map;
- (void)setEnableNavRoadSignOrientationDebugging:(BOOL)debugging;
- (void)setEnableTrafficFeatureLabelDebugging:(BOOL)debugging;
- (void)setEnableWindshieldOverrideButton:(BOOL)button;
- (void)setExpandedPerformanceHUD:(BOOL)d;
- (void)setHideDirectionalArrows:(BOOL)arrows;
- (void)setHighlightRouteLineSnappingRegion:(BOOL)region;
- (void)setHighlightRouteLineSnappingStatus:(BOOL)status;
- (void)setLabelHideLineFeatures:(BOOL)features;
- (void)setLabelHidePhysicalFeatures:(BOOL)features;
- (void)setLabelHidePointFeatures:(BOOL)features;
- (void)setLabelRingAnimationEnabled:(BOOL)enabled;
- (void)setLabelShowPlaceholderIcons:(BOOL)icons;
- (void)setLabelStyleOverridesDisabled:(BOOL)disabled;
- (void)setLogicConsole:(unint64_t)console enabled:(BOOL)enabled;
- (void)setMapDisplayStyleOverride:(unint64_t)override;
- (void)setMuninTapState:(id *)state;
- (void)setNavDisplayRate:(unint64_t)rate;
- (void)setPaintOverlayFoundationAssociation:(BOOL)association;
- (void)setSelectedMapTilesToPaint:(GEOTileSetRegion *)paint;
- (void)setShadowMapResolution:(int64_t)resolution;
- (void)setShowNavLabelOverlay:(BOOL)overlay;
- (void)setUseMetalRenderer:(BOOL)renderer;
- (void)showPerformanceGroup:(unsigned int)group;
@end

@implementation VKDebugSettings

- (id).cxx_construct
{
  *(self + 83) = 0u;
  *(self + 82) = 0u;
  *(self + 336) = 1065353216;
  *(self + 1352) = 0u;
  return self;
}

void __33__VKDebugSettings_sharedSettings__block_invoke()
{
  v0 = objc_alloc_init(VKDebugSettings);
  v1 = +[VKDebugSettings sharedSettings]::_sharedSettings;
  +[VKDebugSettings sharedSettings]::_sharedSettings = v0;
}

+ (id)sharedSettings
{
  objc_opt_self();
  if (+[VKDebugSettings sharedSettings]::_once != -1)
  {
    dispatch_once(&+[VKDebugSettings sharedSettings]::_once, &__block_literal_global_205);
  }

  v0 = +[VKDebugSettings sharedSettings]::_sharedSettings;

  return v0;
}

- (VKDebugSettings)init
{
  v42 = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = VKDebugSettings;
  v2 = [(VKDebugSettings *)&v41 init];
  objc_initWeak(&location, v2);
  v2[106] = -1;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[117] = [standardUserDefaults BOOLForKey:@"VKLabelHidePointFeatures"];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[116] = [standardUserDefaults2 BOOLForKey:@"VKLabelHideLineFeatures"];

  standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[118] = [standardUserDefaults3 BOOLForKey:@"VKLabelHidePhysicalFeatures"];

  v2[80] = 1;
  standardUserDefaults4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[81] = [standardUserDefaults4 BOOLForKey:@"VKDisableBackgroundLabelLayout"];

  standardUserDefaults5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[108] = [standardUserDefaults5 BOOLForKey:@"HideDirectionalArrowsKey"];

  *(v2 + 129) = 257;
  *(v2 + 66) = 257;
  v2[134] = 0;
  standardUserDefaults6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[135] = [standardUserDefaults6 BOOLForKey:@"AltitudeDisableC3mTextureLoadingKey"];

  v2[136] = 0;
  v2[196] = 0;
  v2[127] = 1;
  standardUserDefaults7 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[91] = [standardUserDefaults7 BOOLForKey:@"HighlightRouteLineSnappingStatusKey"];

  standardUserDefaults8 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[1373] = [standardUserDefaults8 BOOLForKey:@"VKUseStaticTrafficFeed"];

  standardUserDefaults9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[99] = [standardUserDefaults9 BOOLForKey:@"VKDisableIconTextureAtlas"];

  *(v2 + 60) = 257;
  v2[122] = 1;
  standardUserDefaults10 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[1374] = [standardUserDefaults10 BOOLForKey:@"VKDisableStyleAnimations"];

  *(v2 + 103) = 0;
  v2[209] = 0;
  v2[211] = 1;
  standardUserDefaults11 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[86] = [standardUserDefaults11 BOOLForKey:@"VKDisableLabelStyleOverrides"];

  *(v2 + 36) = 1061997773;
  if (MapsFeature_IsEnabled_ShelbyvilleTerrain())
  {
    v14 = GEOConfigGetBOOL() ^ 1;
  }

  else
  {
    v14 = 0;
  }

  v2[148] = v14;
  v2[109] = 0;
  *(v2 + 28) = 1096810496;
  v2[208] = 0;
  v2[215] = 0;
  *(v2 + 27) = 0x4014000000000000;
  v2[224] = 0;
  standardUserDefaults12 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[225] = [standardUserDefaults12 BOOLForKey:@"NavLabelOverlayKey"];

  standardUserDefaults13 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[142] = [standardUserDefaults13 BOOLForKey:@"VKPreferOpenGLRendererKey"] ^ 1;

  standardUserDefaults14 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[227] = [standardUserDefaults14 BOOLForKey:@"VKEnableTrafficFeatureLabelDebuggingKey"];

  *(v2 + 114) = 0;
  *(v2 + 1377) = 0;
  v2[256] = 0;
  *(v2 + 260) = 0x425C0000BFC00000;
  *(v2 + 17) = xmmword_1B33B09D0;
  standardUserDefaults15 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[288] = [standardUserDefaults15 BOOLForKey:@"VKARRenderAtNativeRateKey"];

  standardUserDefaults16 = [MEMORY[0x1E695E000] standardUserDefaults];
  *(v2 + 37) = [standardUserDefaults16 integerForKey:@"VKNavDisplayRate"];

  v2[252] = 1;
  *(v2 + 62) = 15;
  v2[304] = 0;
  *(v2 + 132) = 0x40000000;
  v2[540] = 0;
  *(v2 + 136) = 1056964608;
  v2[548] = 0;
  v2[526] = 0;
  *(v2 + 306) = 0;
  v2[310] = 0;
  standardUserDefaults17 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[67] = [standardUserDefaults17 BOOLForKey:@"VKDisableBuildingFootprints"];

  v2[316] = 0;
  v21 = +[VKPlatform sharedPlatform];
  isPad = [v21 isPad];

  v23 = -0.1;
  if (isPad)
  {
    v23 = -0.08;
  }

  v24 = 0.08;
  if (isPad)
  {
    v24 = 0.04;
  }

  *(v2 + 80) = v23;
  *(v2 + 83) = v24;
  *(v2 + 324) = 0x3F40000041C80000;
  *(v2 + 42) = 0x3F8000003F000000;
  v2[344] = 0;
  standardUserDefaults18 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[345] = [standardUserDefaults18 BOOLForKey:@"EnableMuninRoadNetworkMiniMapKey"];

  standardUserDefaults19 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[1379] = [standardUserDefaults19 BOOLForKey:@"EnableMuninMiniMapRoadWidthsKey"];

  standardUserDefaults20 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[1380] = [standardUserDefaults20 BOOLForKey:@"EnableMuninMiniMapComposedEdgeRoadColoringKey"];

  standardUserDefaults21 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[1381] = [standardUserDefaults21 BOOLForKey:@"EnableMuninMiniMapCollectionPointsKey"];

  standardUserDefaults22 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[1382] = [standardUserDefaults22 BOOLForKey:@"EnableMuninMiniMapRoadZDataKey"];

  *(v2 + 87) = 1144750080;
  *(v2 + 22) = xmmword_1B33B09D0;
  v2[369] = 2;
  *(v2 + 371) = 4;
  *(v2 + 376) = 0u;
  *(v2 + 392) = 0u;
  *(v2 + 408) = vdupq_n_s32(0x42A00000u);
  *(v2 + 53) = 0x4120000041F00000;
  *(v2 + 108) = 1097859072;
  *(v2 + 218) = 0;
  v2[438] = 0;
  v2[550] = 0;
  *(v2 + 69) = 0;
  *(v2 + 140) = 0;
  v2[1000] = 0;
  v30 = *(v2 + 126);
  *(v2 + 126) = 0;

  *(v2 + 508) = 0;
  [v2 setLightingEnableAmbient:1];
  [v2 setLightingEnableLight1:1];
  [v2 setLightingAccelerateTime:0];
  [v2 setDebugEnableSprAtScaleLighting:0];
  [v2 setDaVinciEnableSharpnessBasedNormals:1];
  [v2 setDaVinciOverrideNormalsSharpness:0];
  LODWORD(v31) = 0.5;
  [v2 setDaVinciNormalsSharpnessBias:v31];
  LODWORD(v32) = 1045220557;
  [v2 setDaVinciSharpnessThreshold:v32];
  *(v2 + 398) = 0;
  v2[868] = 12;
  *(v2 + 218) = 1036831949;
  *(v2 + 438) = 17;
  *(v2 + 1400) = xmmword_1B33B0AF0;
  v2[878] = 0;
  *(v2 + 55) = xmmword_1B33B1DE0;
  *(v2 + 788) = 0x416000003DCCCCCDLL;
  *(v2 + 467) = 1;
  v2[799] = 0;
  *(v2 + 100) = 0x3F4CCCCD3ECCCCCDLL;
  *(v2 + 104) = 0x3D23D70A42200000;
  *(v2 + 210) = 1065353216;
  v2[844] = 0;
  *(v2 + 106) = 0x3F0000003F000000;
  v2[856] = 1;
  *(v2 + 860) = 0x3D8F5C293F000000;
  *(v2 + 21) = 0;
  v2[907] = 0;
  *(v2 + 908) = 0x3F80000041180000;
  *(v2 + 458) = 3075;
  v2[919] = 0;
  v2[897] = 1;
  v2[901] = 1;
  v2[1388] = 0;
  standardUserDefaults23 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[898] = [standardUserDefaults23 BOOLForKey:@"VKDaVinciResourceOverrideEnabledKey"];

  standardUserDefaults24 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[899] = [standardUserDefaults24 BOOLForKey:@"VKDaVinciASTCTextureSideLoadEnabledKey"];

  standardUserDefaults25 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[1150] = [standardUserDefaults25 BOOLForKey:@"VKEnableInjectedAssets"];

  v2[900] = 0;
  *(v2 + 230) = 1056964608;
  v2[925] = 1;
  *(v2 + 232) = 1069547520;
  *(v2 + 466) = 257;
  v2[936] = 1;
  *(v2 + 235) = 1095761920;
  standardUserDefaults26 = [MEMORY[0x1E695E000] standardUserDefaults];
  *(v2 + 119) = [standardUserDefaults26 integerForKey:@"VKDaVinciShadowMapOverwrite"];

  *(v2 + 240) = 1052938076;
  *(v2 + 1389) = 0;
  *(v2 + 177) = 0x4080000040E00000;
  v2[964] = 1;
  *(v2 + 968) = xmmword_1B33B1DF0;
  v2[493] = 1;
  *(v2 + 246) = 0;
  standardUserDefaults27 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[564] = [standardUserDefaults27 BOOLForKey:@"EnableNavRoadSignOrientationDebuggingKey"];

  v2[525] = 1;
  *(v2 + 48) = xmmword_1B33B1E00;
  objc_copyWeak(&to, &location);
  operator new();
}

- (const)displayStyleOverride
{
  v2 = self->_mapDisplayStyleOverride - 1;
  if (v2 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7B39180 + v2);
  }
}

- (float)transitionTimeMultiplier
{
  result = 1.0;
  if (self->_slowTransitions)
  {
    return 10.0;
  }

  return result;
}

- (float)animationTimeMultiplier
{
  result = 1.0;
  if (self->_slowAnimations)
  {
    return 10.0;
  }

  return result;
}

- ($9DB4204096BA361EBCEA4D052588F96C)muninTapState
{
  v3 = *&self[12].var2;
  *&retstr->var0 = *&self[11].var4;
  *&retstr->var3 = v3;
  return self;
}

- ($25311016DA3E46AB78CD7EC23DF2C833)landmark2DStrokeSettings
{
  maxAngle = self->_landmark2DStrokeSettings.maxAngle;
  v3 = *&self->_landmark2DStrokeSettings.borders;
  result.var0 = v3;
  result.var1 = BYTE1(v3);
  result.var2 = BYTE2(v3);
  result.var3 = *(&v3 + 1);
  result.var4 = maxAngle;
  return result;
}

- (void)setSelectedMapTilesToPaint:(GEOTileSetRegion *)paint
{
  v3 = *&paint->_maxX;
  *&self->_selectedMapTilesToPaint._minY = *&paint->_minY;
  *&self->_selectedMapTilesToPaint._maxX = v3;
}

- (void)setEnableDOF:(BOOL)f
{
  if (self->_enableDOF != f)
  {
    self->_enableDOF = f;
  }
}

- (void)setLogicConsole:(unint64_t)console enabled:(BOOL)enabled
{
  p_enabledLogicConsoles = &self->_enabledLogicConsoles;
  if (enabled)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(p_enabledLogicConsoles, console);
  }

  else
  {

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>(p_enabledLogicConsoles, console);
  }
}

- (void)setEnableWindshieldOverrideButton:(BOOL)button
{
  buttonCopy = button;
  self->_enableWindshieldOverrideButton = button;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:buttonCopy forKey:@"VKEnableWindshieldOverrideButton"];
}

- (void)setMapDisplayStyleOverride:(unint64_t)override
{
  self->_mapDisplayStyleOverride = override;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setInteger:override forKey:@"VKMapDisplayStyleOverride"];
}

- (void)setDaVinciColorBuildings:(BOOL)buildings
{
  if (self->_daVinciColorBuildings != buildings)
  {
    self->_daVinciColorBuildings = buildings;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VKShouldFlushTileCachesNotification" object:0];
  }
}

- (void)setDaVinciCameraController:(BOOL)controller
{
  self->_daVinciCameraController = controller;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:self->_daVinciCameraController forKey:@"VKDaVinciGlobeCameraController_2"];

  self->_daVinciBiasLatitudeGlobeTileSelection = !controller;
  self->_daVinciGlobeScalingCorrection = controller;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VKShouldFlushTileCachesNotification" object:0];
}

- (void)setNavDisplayRate:(unint64_t)rate
{
  self->_navDisplayRate = rate;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setInteger:rate forKey:@"VKNavDisplayRate"];
}

- (void)setArRenderAtNativeRate:(BOOL)rate
{
  self->_arRenderAtNativeRate = rate;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:self->_arRenderAtNativeRate forKey:@"VKARRenderAtNativeRateKey"];
}

- (void)setConstantlyChangeTileGroupInterval:(double)interval
{
  self->_constantlyChangeTileGroupInterval = interval;
  modernManager = [MEMORY[0x1E69A2478] modernManager];
  [modernManager setConstantlyChangeTileGroupInterval:self->_constantlyChangeTileGroupInterval];
}

- (void)setConstantlyChangeTileGroup:(BOOL)group
{
  self->_constantlyChangeTileGroup = group;
  [(VKDebugSettings *)self constantlyChangeTileGroupInterval];
  [(VKDebugSettings *)self setConstantlyChangeTileGroupInterval:?];
  modernManager = [MEMORY[0x1E69A2478] modernManager];
  [modernManager setConstantlyChangeTileGroup:self->_constantlyChangeTileGroup];
}

- (void)setUseMetalRenderer:(BOOL)renderer
{
  self->_useMetalRenderer = renderer;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:!self->_useMetalRenderer forKey:@"VKPreferOpenGLRendererKey"];
}

- (void)setAltitudeDisableC3mTextureLoading:(BOOL)loading
{
  self->_altitudeDisableC3mTextureLoading = loading;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:self->_altitudeDisableC3mTextureLoading forKey:@"AltitudeDisableC3mTextureLoadingKey"];
}

- (void)addTileToPaint:(GEOTileSetRegion *)paint
{
  v3 = *&paint->_maxX;
  *&self->_selectedMapTilesToPaint._minY = *&paint->_minY;
  *&self->_selectedMapTilesToPaint._maxX = v3;
}

- (void)hidePerformanceGroup:(unsigned int)group
{
  groupCopy = group;
  v4 = ggl::Performance::Counters::instance(self);
  v5 = *(v4 + 12);
  v6 = ggl::Performance::Counters::instance(v4);

  ggl::Performance::Counters::setGroupMask(v6, v5 & ~(1 << groupCopy));
}

- (void)showPerformanceGroup:(unsigned int)group
{
  groupCopy = group;
  v4 = ggl::Performance::Counters::instance(self);
  v5 = *(v4 + 12);
  v6 = ggl::Performance::Counters::instance(v4);

  ggl::Performance::Counters::setGroupMask(v6, v5 | (1 << groupCopy));
}

- (id)nameForPerformanceGroup:(unsigned int)group
{
  v4 = ggl::Performance::Counters::instance(self);
  GroupName = ggl::Performance::Counters::getGroupName(*(v4 + 24), group);
  if (*(GroupName + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *GroupName, *(GroupName + 8));
  }

  else
  {
    v6 = *GroupName;
    __p.__r_.__value_.__r.__words[2] = *(GroupName + 16);
    *&__p.__r_.__value_.__l.__data_ = v6;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      v8 = 0;
      goto LABEL_14;
    }

    p_p = &__p;
    goto LABEL_9;
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
LABEL_9:
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{p_p, __p.__r_.__value_.__r.__words[0]}];
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = 0;
LABEL_13:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_14:

  return v8;
}

- (void)setDisableBuildingFootprints:(BOOL)footprints
{
  self->_disableBuildingFootprints = footprints;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:self->_disableBuildingFootprints forKey:@"VKDisableBuildingFootprints"];
}

- (void)setEnableInjectedAssets:(BOOL)assets
{
  assetsCopy = assets;
  self->_enableInjectedAssets = assets;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:assetsCopy forKey:@"VKEnableInjectedAssets"];
}

- (void)setDaVinciASTCTextureSideLoadEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_daVinciASTCTextureSideLoadEnabled = enabled;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:enabledCopy forKey:@"VKDaVinciASTCTextureSideLoadEnabledKey"];
}

- (void)setDaVinciResourceOverrideEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_daVinciResourceOverrideEnabled = enabled;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:enabledCopy forKey:@"VKDaVinciResourceOverrideEnabledKey"];
}

- (void)setShadowMapResolution:(int64_t)resolution
{
  self->_shadowMapResolution = resolution;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setInteger:resolution forKey:@"VKDaVinciShadowMapOverwrite"];
}

- (void)setCompressedBuildingsDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  self->_compressedBuildingsDisabled = disabled;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:disabledCopy forKey:@"VKDisableCompressedBuildings"];
}

- (void)setEnableMuninRoadNetworkMiniMap:(BOOL)map
{
  mapCopy = map;
  self->_enableMuninRoadNetworkMiniMap = map;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:mapCopy forKey:@"EnableMuninRoadNetworkMiniMapKey"];
}

- (void)setEnableMuninMiniMapComposedEdgeRoadColoring:(BOOL)coloring
{
  coloringCopy = coloring;
  self->_enableMuninMiniMapComposedEdgeRoadColoring = coloring;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:coloringCopy forKey:@"EnableMuninMiniMapComposedEdgeRoadColoringKey"];
}

- (void)setEnableMuninMiniMapRoadZData:(BOOL)data
{
  dataCopy = data;
  self->_enableMuninMiniMapRoadZData = data;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:dataCopy forKey:@"EnableMuninMiniMapRoadZDataKey"];
}

- (void)setEnableMuninMiniMapCollectionPoints:(BOOL)points
{
  pointsCopy = points;
  self->_enableMuninMiniMapCollectionPoints = points;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:pointsCopy forKey:@"EnableMuninMiniMapCollectionPointsKey"];
}

- (void)setEnableMuninMiniMapRoadWidths:(BOOL)widths
{
  widthsCopy = widths;
  self->_enableMuninMiniMapRoadWidths = widths;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:widthsCopy forKey:@"EnableMuninMiniMapRoadWidthsKey"];
}

- (void)setHighlightRouteLineSnappingRegion:(BOOL)region
{
  regionCopy = region;
  self->_highlightRouteLineSnappingRegion = region;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:regionCopy forKey:@"HighlightRouteLineSnappingRegionKey"];
}

- (void)setHighlightRouteLineSnappingStatus:(BOOL)status
{
  statusCopy = status;
  self->_highlightRouteLineSnappingStatus = status;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:statusCopy forKey:@"HighlightRouteLineSnappingStatusKey"];
}

- (void)setEnableTrafficFeatureLabelDebugging:(BOOL)debugging
{
  debuggingCopy = debugging;
  self->_enableTrafficFeatureLabelDebugging = debugging;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:debuggingCopy forKey:@"VKEnableTrafficFeatureLabelDebuggingKey"];
}

- (void)setLabelShowPlaceholderIcons:(BOOL)icons
{
  iconsCopy = icons;
  self->_labelShowPlaceholderIcons = icons;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:iconsCopy forKey:@"VKLabelShowPlaceholderIcons"];
}

- (void)setLabelRingAnimationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_labelRingAnimationEnabled = enabled;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:enabledCopy forKey:@"VKLabelRingAnimationEnabled"];
}

- (void)setLabelHidePhysicalFeatures:(BOOL)features
{
  featuresCopy = features;
  self->_labelHidePhysicalFeatures = features;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:featuresCopy forKey:@"VKLabelHidePhysicalFeatures"];
}

- (void)setLabelHideLineFeatures:(BOOL)features
{
  featuresCopy = features;
  self->_labelHideLineFeatures = features;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:featuresCopy forKey:@"VKLabelHideLineFeatures"];
}

- (void)setLabelHidePointFeatures:(BOOL)features
{
  featuresCopy = features;
  self->_labelHidePointFeatures = features;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:featuresCopy forKey:@"VKLabelHidePointFeatures"];
}

- (void)setDisableIconTextureAtlas:(BOOL)atlas
{
  atlasCopy = atlas;
  self->_disableIconTextureAtlas = atlas;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:atlasCopy forKey:@"VKDisableIconTextureAtlas"];
}

- (void)setLabelStyleOverridesDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  self->_labelStyleOverridesDisabled = disabled;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:disabledCopy forKey:@"VKDisableLabelStyleOverrides"];
}

- (void)setDisableBackgroundLabelLayout:(BOOL)layout
{
  layoutCopy = layout;
  self->_disableBackgroundLabelLayout = layout;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:layoutCopy forKey:@"VKDisableBackgroundLabelLayout"];
}

- (void)setHideDirectionalArrows:(BOOL)arrows
{
  arrowsCopy = arrows;
  self->_hideDirectionalArrows = arrows;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:arrowsCopy forKey:@"HideDirectionalArrowsKey"];
}

- (void)setArDebugElevationOffset:(float)offset
{
  self->_arCameraElevationOffset = offset;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  *&v4 = offset;
  [standardUserDefaults setFloat:@"VKARDebugElevationOffset" forKey:v4];
}

- (void)setArEnableRouteLineDebugMeshes:(BOOL)meshes
{
  meshesCopy = meshes;
  self->_arEnableRouteLineDebugMeshes = meshes;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:meshesCopy forKey:@"VKAREnableRouteLineDebugMeshes"];
}

- (void)setArLabelingStateOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  self->_arLabelingStateOverlay = overlay;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:overlayCopy forKey:@"VKARLabelingStateOverlay"];
}

- (void)setArDebugSceneFeatureDistance:(float)distance
{
  self->_arDebugSceneFeatureDistance = distance;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  *&v4 = distance;
  [standardUserDefaults setFloat:@"VKARDebugSceneFeatureDistance" forKey:v4];
}

- (void)setArDebugSceneFeatureHeading:(float)heading
{
  self->_arDebugSceneFeatureHeading = heading;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  *&v4 = heading;
  [standardUserDefaults setFloat:@"VKARDebugSceneFeatureHeading" forKey:v4];
}

- (void)setArDebugSceneFeatureType:(unsigned __int8)type
{
  typeCopy = type;
  self->_arDebugSceneFeatureType = type;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setInteger:typeCopy forKey:@"VKARDebugSceneFeatureType"];
}

- (void)setArDebugSceneFeatureText:(id)text
{
  textCopy = text;
  v4 = [textCopy copy];
  arDebugSceneFeatureText = self->_arDebugSceneFeatureText;
  self->_arDebugSceneFeatureText = v4;

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setObject:textCopy forKey:@"VKARDebugSceneFeatureText"];
}

- (void)setArDebugScenePoiType:(unsigned int)type
{
  self->_arDebugScenePoiType = type;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setInteger:type forKey:@"VKARDebugScenePoiType"];
}

- (void)setArDebugMiniMapScreenRectYOffset:(float)offset
{
  self->_arDebugMiniMapScreenRectYOffset = offset;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  *&v4 = offset;
  [standardUserDefaults setFloat:@"VKARDebugMapScreenRectYOffset" forKey:v4];
}

- (void)setArDebugMiniMapScreenRectXOffset:(float)offset
{
  self->_arDebugMiniMapScreenRectXOffset = offset;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  *&v4 = offset;
  [standardUserDefaults setFloat:@"VKARDebugMapScreenRectXOffset" forKey:v4];
}

- (void)setArDebugMiniMapScreenRectSize:(float)size
{
  self->_arDebugMiniMapScreenRectSize = size;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  *&v4 = size;
  [standardUserDefaults setFloat:@"VKARDebugMapScreenRectSize" forKey:v4];
}

- (void)setArDebugMiniMapMapRectSize:(float)size
{
  self->_arDebugMiniMapMapRectSize = size;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  *&v4 = size;
  [standardUserDefaults setFloat:@"VKARDebugMiniMapMapRectSize" forKey:v4];
}

- (void)setArEnableEnvironmentMap:(BOOL)map
{
  mapCopy = map;
  self->_arEnableEnvironmentMap = map;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:mapCopy forKey:@"VKAREnableAREnvironment"];
}

- (void)setArDebugMiniMap:(BOOL)map
{
  mapCopy = map;
  self->_arDebugMiniMap = map;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:mapCopy forKey:@"VKARDebugMiniMap"];
}

- (void)setDaVinciEntityDebugHighlighting:(BOOL)highlighting
{
  highlightingCopy = highlighting;
  self->_daVinciEntityDebugHighlighting = highlighting;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:highlightingCopy forKey:@"VKDaVinciEntityDebugHighlight"];
}

- (void)setPaintOverlayFoundationAssociation:(BOOL)association
{
  associationCopy = association;
  self->_paintOverlayFoundationAssociation = association;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:associationCopy forKey:@"VKPaintOverlayFoundationAssociation"];
}

- (void)setExpandedPerformanceHUD:(BOOL)d
{
  dCopy = d;
  self->_expandedPerformanceHUD = d;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  if (dCopy)
  {
    v5 = @"VKExtendedPeformanceHUD";
  }

  else
  {
    v5 = @"VKDMinimalPeformanceHUD";
  }

  v6 = defaultCenter;
  [defaultCenter postNotificationName:v5 object:0];
}

- (void)setDrawPerformanceHUD:(BOOL)d
{
  dCopy = d;
  self->_drawPerformanceHUD = d;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  if (dCopy)
  {
    v5 = @"VKEnablePeformanceHUD";
  }

  else
  {
    v5 = @"VKDisablePeformanceHUD";
  }

  v6 = defaultCenter;
  [defaultCenter postNotificationName:v5 object:0];
}

- (void)setEnableNavRoadSignOrientationDebugging:(BOOL)debugging
{
  self->_enableNavRoadSignOrientationDebugging = debugging;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:self->_enableNavRoadSignOrientationDebugging forKey:@"EnableNavRoadSignOrientationDebuggingKey"];
}

- (void)setShowNavLabelOverlay:(BOOL)overlay
{
  self->_showNavLabelOverlay = overlay;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setBool:self->_showNavLabelOverlay forKey:@"NavLabelOverlayKey"];
}

- (void)setMuninTapState:(id *)state
{
  v3 = *&state->var3;
  *&self->_muninTapState.x = *&state->var0;
  *&self->_muninTapState.longitude = v3;
}

- ($9DB4204096BA361EBCEA4D052588F96C)getMuninTapState
{
  v3 = *&self[12].var2;
  *&retstr->var0 = *&self[11].var4;
  *&retstr->var3 = v3;
  return self;
}

- (void)init
{
  objc_destroyWeak((self + 8));

  JUMPOUT(0x1B8C62190);
}

@end