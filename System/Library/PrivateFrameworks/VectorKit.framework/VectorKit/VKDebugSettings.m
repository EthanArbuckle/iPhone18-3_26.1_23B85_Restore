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
- (id)nameForPerformanceGroup:(unsigned int)a3;
- (void)addTileToPaint:(GEOTileSetRegion *)a3;
- (void)hidePerformanceGroup:(unsigned int)a3;
- (void)init;
- (void)setAltitudeDisableC3mTextureLoading:(BOOL)a3;
- (void)setArDebugElevationOffset:(float)a3;
- (void)setArDebugMiniMap:(BOOL)a3;
- (void)setArDebugMiniMapMapRectSize:(float)a3;
- (void)setArDebugMiniMapScreenRectSize:(float)a3;
- (void)setArDebugMiniMapScreenRectXOffset:(float)a3;
- (void)setArDebugMiniMapScreenRectYOffset:(float)a3;
- (void)setArDebugSceneFeatureDistance:(float)a3;
- (void)setArDebugSceneFeatureHeading:(float)a3;
- (void)setArDebugSceneFeatureText:(id)a3;
- (void)setArDebugSceneFeatureType:(unsigned __int8)a3;
- (void)setArDebugScenePoiType:(unsigned int)a3;
- (void)setArEnableEnvironmentMap:(BOOL)a3;
- (void)setArEnableRouteLineDebugMeshes:(BOOL)a3;
- (void)setArLabelingStateOverlay:(BOOL)a3;
- (void)setArRenderAtNativeRate:(BOOL)a3;
- (void)setCompressedBuildingsDisabled:(BOOL)a3;
- (void)setConstantlyChangeTileGroup:(BOOL)a3;
- (void)setConstantlyChangeTileGroupInterval:(double)a3;
- (void)setDaVinciASTCTextureSideLoadEnabled:(BOOL)a3;
- (void)setDaVinciCameraController:(BOOL)a3;
- (void)setDaVinciColorBuildings:(BOOL)a3;
- (void)setDaVinciEntityDebugHighlighting:(BOOL)a3;
- (void)setDaVinciResourceOverrideEnabled:(BOOL)a3;
- (void)setDisableBackgroundLabelLayout:(BOOL)a3;
- (void)setDisableBuildingFootprints:(BOOL)a3;
- (void)setDisableIconTextureAtlas:(BOOL)a3;
- (void)setDrawPerformanceHUD:(BOOL)a3;
- (void)setEnableDOF:(BOOL)a3;
- (void)setEnableInjectedAssets:(BOOL)a3;
- (void)setEnableMuninMiniMapCollectionPoints:(BOOL)a3;
- (void)setEnableMuninMiniMapComposedEdgeRoadColoring:(BOOL)a3;
- (void)setEnableMuninMiniMapRoadWidths:(BOOL)a3;
- (void)setEnableMuninMiniMapRoadZData:(BOOL)a3;
- (void)setEnableMuninRoadNetworkMiniMap:(BOOL)a3;
- (void)setEnableNavRoadSignOrientationDebugging:(BOOL)a3;
- (void)setEnableTrafficFeatureLabelDebugging:(BOOL)a3;
- (void)setEnableWindshieldOverrideButton:(BOOL)a3;
- (void)setExpandedPerformanceHUD:(BOOL)a3;
- (void)setHideDirectionalArrows:(BOOL)a3;
- (void)setHighlightRouteLineSnappingRegion:(BOOL)a3;
- (void)setHighlightRouteLineSnappingStatus:(BOOL)a3;
- (void)setLabelHideLineFeatures:(BOOL)a3;
- (void)setLabelHidePhysicalFeatures:(BOOL)a3;
- (void)setLabelHidePointFeatures:(BOOL)a3;
- (void)setLabelRingAnimationEnabled:(BOOL)a3;
- (void)setLabelShowPlaceholderIcons:(BOOL)a3;
- (void)setLabelStyleOverridesDisabled:(BOOL)a3;
- (void)setLogicConsole:(unint64_t)a3 enabled:(BOOL)a4;
- (void)setMapDisplayStyleOverride:(unint64_t)a3;
- (void)setMuninTapState:(id *)a3;
- (void)setNavDisplayRate:(unint64_t)a3;
- (void)setPaintOverlayFoundationAssociation:(BOOL)a3;
- (void)setSelectedMapTilesToPaint:(GEOTileSetRegion *)a3;
- (void)setShadowMapResolution:(int64_t)a3;
- (void)setShowNavLabelOverlay:(BOOL)a3;
- (void)setUseMetalRenderer:(BOOL)a3;
- (void)showPerformanceGroup:(unsigned int)a3;
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
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[117] = [v3 BOOLForKey:@"VKLabelHidePointFeatures"];

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[116] = [v4 BOOLForKey:@"VKLabelHideLineFeatures"];

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[118] = [v5 BOOLForKey:@"VKLabelHidePhysicalFeatures"];

  v2[80] = 1;
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[81] = [v6 BOOLForKey:@"VKDisableBackgroundLabelLayout"];

  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[108] = [v7 BOOLForKey:@"HideDirectionalArrowsKey"];

  *(v2 + 129) = 257;
  *(v2 + 66) = 257;
  v2[134] = 0;
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[135] = [v8 BOOLForKey:@"AltitudeDisableC3mTextureLoadingKey"];

  v2[136] = 0;
  v2[196] = 0;
  v2[127] = 1;
  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[91] = [v9 BOOLForKey:@"HighlightRouteLineSnappingStatusKey"];

  v10 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[1373] = [v10 BOOLForKey:@"VKUseStaticTrafficFeed"];

  v11 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[99] = [v11 BOOLForKey:@"VKDisableIconTextureAtlas"];

  *(v2 + 60) = 257;
  v2[122] = 1;
  v12 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[1374] = [v12 BOOLForKey:@"VKDisableStyleAnimations"];

  *(v2 + 103) = 0;
  v2[209] = 0;
  v2[211] = 1;
  v13 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[86] = [v13 BOOLForKey:@"VKDisableLabelStyleOverrides"];

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
  v15 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[225] = [v15 BOOLForKey:@"NavLabelOverlayKey"];

  v16 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[142] = [v16 BOOLForKey:@"VKPreferOpenGLRendererKey"] ^ 1;

  v17 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[227] = [v17 BOOLForKey:@"VKEnableTrafficFeatureLabelDebuggingKey"];

  *(v2 + 114) = 0;
  *(v2 + 1377) = 0;
  v2[256] = 0;
  *(v2 + 260) = 0x425C0000BFC00000;
  *(v2 + 17) = xmmword_1B33B09D0;
  v18 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[288] = [v18 BOOLForKey:@"VKARRenderAtNativeRateKey"];

  v19 = [MEMORY[0x1E695E000] standardUserDefaults];
  *(v2 + 37) = [v19 integerForKey:@"VKNavDisplayRate"];

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
  v20 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[67] = [v20 BOOLForKey:@"VKDisableBuildingFootprints"];

  v2[316] = 0;
  v21 = +[VKPlatform sharedPlatform];
  v22 = [v21 isPad];

  v23 = -0.1;
  if (v22)
  {
    v23 = -0.08;
  }

  v24 = 0.08;
  if (v22)
  {
    v24 = 0.04;
  }

  *(v2 + 80) = v23;
  *(v2 + 83) = v24;
  *(v2 + 324) = 0x3F40000041C80000;
  *(v2 + 42) = 0x3F8000003F000000;
  v2[344] = 0;
  v25 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[345] = [v25 BOOLForKey:@"EnableMuninRoadNetworkMiniMapKey"];

  v26 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[1379] = [v26 BOOLForKey:@"EnableMuninMiniMapRoadWidthsKey"];

  v27 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[1380] = [v27 BOOLForKey:@"EnableMuninMiniMapComposedEdgeRoadColoringKey"];

  v28 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[1381] = [v28 BOOLForKey:@"EnableMuninMiniMapCollectionPointsKey"];

  v29 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[1382] = [v29 BOOLForKey:@"EnableMuninMiniMapRoadZDataKey"];

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
  v33 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[898] = [v33 BOOLForKey:@"VKDaVinciResourceOverrideEnabledKey"];

  v34 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[899] = [v34 BOOLForKey:@"VKDaVinciASTCTextureSideLoadEnabledKey"];

  v35 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[1150] = [v35 BOOLForKey:@"VKEnableInjectedAssets"];

  v2[900] = 0;
  *(v2 + 230) = 1056964608;
  v2[925] = 1;
  *(v2 + 232) = 1069547520;
  *(v2 + 466) = 257;
  v2[936] = 1;
  *(v2 + 235) = 1095761920;
  v36 = [MEMORY[0x1E695E000] standardUserDefaults];
  *(v2 + 119) = [v36 integerForKey:@"VKDaVinciShadowMapOverwrite"];

  *(v2 + 240) = 1052938076;
  *(v2 + 1389) = 0;
  *(v2 + 177) = 0x4080000040E00000;
  v2[964] = 1;
  *(v2 + 968) = xmmword_1B33B1DF0;
  v2[493] = 1;
  *(v2 + 246) = 0;
  v37 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2[564] = [v37 BOOLForKey:@"EnableNavRoadSignOrientationDebuggingKey"];

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

- (void)setSelectedMapTilesToPaint:(GEOTileSetRegion *)a3
{
  v3 = *&a3->_maxX;
  *&self->_selectedMapTilesToPaint._minY = *&a3->_minY;
  *&self->_selectedMapTilesToPaint._maxX = v3;
}

- (void)setEnableDOF:(BOOL)a3
{
  if (self->_enableDOF != a3)
  {
    self->_enableDOF = a3;
  }
}

- (void)setLogicConsole:(unint64_t)a3 enabled:(BOOL)a4
{
  p_enabledLogicConsoles = &self->_enabledLogicConsoles;
  if (a4)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(p_enabledLogicConsoles, a3);
  }

  else
  {

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>(p_enabledLogicConsoles, a3);
  }
}

- (void)setEnableWindshieldOverrideButton:(BOOL)a3
{
  v3 = a3;
  self->_enableWindshieldOverrideButton = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKEnableWindshieldOverrideButton"];
}

- (void)setMapDisplayStyleOverride:(unint64_t)a3
{
  self->_mapDisplayStyleOverride = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setInteger:a3 forKey:@"VKMapDisplayStyleOverride"];
}

- (void)setDaVinciColorBuildings:(BOOL)a3
{
  if (self->_daVinciColorBuildings != a3)
  {
    self->_daVinciColorBuildings = a3;
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"VKShouldFlushTileCachesNotification" object:0];
  }
}

- (void)setDaVinciCameraController:(BOOL)a3
{
  self->_daVinciCameraController = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v5 setBool:self->_daVinciCameraController forKey:@"VKDaVinciGlobeCameraController_2"];

  self->_daVinciBiasLatitudeGlobeTileSelection = !a3;
  self->_daVinciGlobeScalingCorrection = a3;
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"VKShouldFlushTileCachesNotification" object:0];
}

- (void)setNavDisplayRate:(unint64_t)a3
{
  self->_navDisplayRate = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setInteger:a3 forKey:@"VKNavDisplayRate"];
}

- (void)setArRenderAtNativeRate:(BOOL)a3
{
  self->_arRenderAtNativeRate = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:self->_arRenderAtNativeRate forKey:@"VKARRenderAtNativeRateKey"];
}

- (void)setConstantlyChangeTileGroupInterval:(double)a3
{
  self->_constantlyChangeTileGroupInterval = a3;
  v4 = [MEMORY[0x1E69A2478] modernManager];
  [v4 setConstantlyChangeTileGroupInterval:self->_constantlyChangeTileGroupInterval];
}

- (void)setConstantlyChangeTileGroup:(BOOL)a3
{
  self->_constantlyChangeTileGroup = a3;
  [(VKDebugSettings *)self constantlyChangeTileGroupInterval];
  [(VKDebugSettings *)self setConstantlyChangeTileGroupInterval:?];
  v4 = [MEMORY[0x1E69A2478] modernManager];
  [v4 setConstantlyChangeTileGroup:self->_constantlyChangeTileGroup];
}

- (void)setUseMetalRenderer:(BOOL)a3
{
  self->_useMetalRenderer = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:!self->_useMetalRenderer forKey:@"VKPreferOpenGLRendererKey"];
}

- (void)setAltitudeDisableC3mTextureLoading:(BOOL)a3
{
  self->_altitudeDisableC3mTextureLoading = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:self->_altitudeDisableC3mTextureLoading forKey:@"AltitudeDisableC3mTextureLoadingKey"];
}

- (void)addTileToPaint:(GEOTileSetRegion *)a3
{
  v3 = *&a3->_maxX;
  *&self->_selectedMapTilesToPaint._minY = *&a3->_minY;
  *&self->_selectedMapTilesToPaint._maxX = v3;
}

- (void)hidePerformanceGroup:(unsigned int)a3
{
  v3 = a3;
  v4 = ggl::Performance::Counters::instance(self);
  v5 = *(v4 + 12);
  v6 = ggl::Performance::Counters::instance(v4);

  ggl::Performance::Counters::setGroupMask(v6, v5 & ~(1 << v3));
}

- (void)showPerformanceGroup:(unsigned int)a3
{
  v3 = a3;
  v4 = ggl::Performance::Counters::instance(self);
  v5 = *(v4 + 12);
  v6 = ggl::Performance::Counters::instance(v4);

  ggl::Performance::Counters::setGroupMask(v6, v5 | (1 << v3));
}

- (id)nameForPerformanceGroup:(unsigned int)a3
{
  v4 = ggl::Performance::Counters::instance(self);
  GroupName = ggl::Performance::Counters::getGroupName(*(v4 + 24), a3);
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

- (void)setDisableBuildingFootprints:(BOOL)a3
{
  self->_disableBuildingFootprints = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:self->_disableBuildingFootprints forKey:@"VKDisableBuildingFootprints"];
}

- (void)setEnableInjectedAssets:(BOOL)a3
{
  v3 = a3;
  self->_enableInjectedAssets = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKEnableInjectedAssets"];
}

- (void)setDaVinciASTCTextureSideLoadEnabled:(BOOL)a3
{
  v3 = a3;
  self->_daVinciASTCTextureSideLoadEnabled = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKDaVinciASTCTextureSideLoadEnabledKey"];
}

- (void)setDaVinciResourceOverrideEnabled:(BOOL)a3
{
  v3 = a3;
  self->_daVinciResourceOverrideEnabled = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKDaVinciResourceOverrideEnabledKey"];
}

- (void)setShadowMapResolution:(int64_t)a3
{
  self->_shadowMapResolution = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setInteger:a3 forKey:@"VKDaVinciShadowMapOverwrite"];
}

- (void)setCompressedBuildingsDisabled:(BOOL)a3
{
  v3 = a3;
  self->_compressedBuildingsDisabled = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKDisableCompressedBuildings"];
}

- (void)setEnableMuninRoadNetworkMiniMap:(BOOL)a3
{
  v3 = a3;
  self->_enableMuninRoadNetworkMiniMap = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"EnableMuninRoadNetworkMiniMapKey"];
}

- (void)setEnableMuninMiniMapComposedEdgeRoadColoring:(BOOL)a3
{
  v3 = a3;
  self->_enableMuninMiniMapComposedEdgeRoadColoring = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"EnableMuninMiniMapComposedEdgeRoadColoringKey"];
}

- (void)setEnableMuninMiniMapRoadZData:(BOOL)a3
{
  v3 = a3;
  self->_enableMuninMiniMapRoadZData = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"EnableMuninMiniMapRoadZDataKey"];
}

- (void)setEnableMuninMiniMapCollectionPoints:(BOOL)a3
{
  v3 = a3;
  self->_enableMuninMiniMapCollectionPoints = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"EnableMuninMiniMapCollectionPointsKey"];
}

- (void)setEnableMuninMiniMapRoadWidths:(BOOL)a3
{
  v3 = a3;
  self->_enableMuninMiniMapRoadWidths = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"EnableMuninMiniMapRoadWidthsKey"];
}

- (void)setHighlightRouteLineSnappingRegion:(BOOL)a3
{
  v3 = a3;
  self->_highlightRouteLineSnappingRegion = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"HighlightRouteLineSnappingRegionKey"];
}

- (void)setHighlightRouteLineSnappingStatus:(BOOL)a3
{
  v3 = a3;
  self->_highlightRouteLineSnappingStatus = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"HighlightRouteLineSnappingStatusKey"];
}

- (void)setEnableTrafficFeatureLabelDebugging:(BOOL)a3
{
  v3 = a3;
  self->_enableTrafficFeatureLabelDebugging = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKEnableTrafficFeatureLabelDebuggingKey"];
}

- (void)setLabelShowPlaceholderIcons:(BOOL)a3
{
  v3 = a3;
  self->_labelShowPlaceholderIcons = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKLabelShowPlaceholderIcons"];
}

- (void)setLabelRingAnimationEnabled:(BOOL)a3
{
  v3 = a3;
  self->_labelRingAnimationEnabled = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKLabelRingAnimationEnabled"];
}

- (void)setLabelHidePhysicalFeatures:(BOOL)a3
{
  v3 = a3;
  self->_labelHidePhysicalFeatures = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKLabelHidePhysicalFeatures"];
}

- (void)setLabelHideLineFeatures:(BOOL)a3
{
  v3 = a3;
  self->_labelHideLineFeatures = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKLabelHideLineFeatures"];
}

- (void)setLabelHidePointFeatures:(BOOL)a3
{
  v3 = a3;
  self->_labelHidePointFeatures = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKLabelHidePointFeatures"];
}

- (void)setDisableIconTextureAtlas:(BOOL)a3
{
  v3 = a3;
  self->_disableIconTextureAtlas = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKDisableIconTextureAtlas"];
}

- (void)setLabelStyleOverridesDisabled:(BOOL)a3
{
  v3 = a3;
  self->_labelStyleOverridesDisabled = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKDisableLabelStyleOverrides"];
}

- (void)setDisableBackgroundLabelLayout:(BOOL)a3
{
  v3 = a3;
  self->_disableBackgroundLabelLayout = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKDisableBackgroundLabelLayout"];
}

- (void)setHideDirectionalArrows:(BOOL)a3
{
  v3 = a3;
  self->_hideDirectionalArrows = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"HideDirectionalArrowsKey"];
}

- (void)setArDebugElevationOffset:(float)a3
{
  self->_arCameraElevationOffset = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  *&v4 = a3;
  [v5 setFloat:@"VKARDebugElevationOffset" forKey:v4];
}

- (void)setArEnableRouteLineDebugMeshes:(BOOL)a3
{
  v3 = a3;
  self->_arEnableRouteLineDebugMeshes = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKAREnableRouteLineDebugMeshes"];
}

- (void)setArLabelingStateOverlay:(BOOL)a3
{
  v3 = a3;
  self->_arLabelingStateOverlay = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKARLabelingStateOverlay"];
}

- (void)setArDebugSceneFeatureDistance:(float)a3
{
  self->_arDebugSceneFeatureDistance = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  *&v4 = a3;
  [v5 setFloat:@"VKARDebugSceneFeatureDistance" forKey:v4];
}

- (void)setArDebugSceneFeatureHeading:(float)a3
{
  self->_arDebugSceneFeatureHeading = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  *&v4 = a3;
  [v5 setFloat:@"VKARDebugSceneFeatureHeading" forKey:v4];
}

- (void)setArDebugSceneFeatureType:(unsigned __int8)a3
{
  v3 = a3;
  self->_arDebugSceneFeatureType = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setInteger:v3 forKey:@"VKARDebugSceneFeatureType"];
}

- (void)setArDebugSceneFeatureText:(id)a3
{
  v7 = a3;
  v4 = [v7 copy];
  arDebugSceneFeatureText = self->_arDebugSceneFeatureText;
  self->_arDebugSceneFeatureText = v4;

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v6 setObject:v7 forKey:@"VKARDebugSceneFeatureText"];
}

- (void)setArDebugScenePoiType:(unsigned int)a3
{
  self->_arDebugScenePoiType = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setInteger:a3 forKey:@"VKARDebugScenePoiType"];
}

- (void)setArDebugMiniMapScreenRectYOffset:(float)a3
{
  self->_arDebugMiniMapScreenRectYOffset = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  *&v4 = a3;
  [v5 setFloat:@"VKARDebugMapScreenRectYOffset" forKey:v4];
}

- (void)setArDebugMiniMapScreenRectXOffset:(float)a3
{
  self->_arDebugMiniMapScreenRectXOffset = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  *&v4 = a3;
  [v5 setFloat:@"VKARDebugMapScreenRectXOffset" forKey:v4];
}

- (void)setArDebugMiniMapScreenRectSize:(float)a3
{
  self->_arDebugMiniMapScreenRectSize = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  *&v4 = a3;
  [v5 setFloat:@"VKARDebugMapScreenRectSize" forKey:v4];
}

- (void)setArDebugMiniMapMapRectSize:(float)a3
{
  self->_arDebugMiniMapMapRectSize = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  *&v4 = a3;
  [v5 setFloat:@"VKARDebugMiniMapMapRectSize" forKey:v4];
}

- (void)setArEnableEnvironmentMap:(BOOL)a3
{
  v3 = a3;
  self->_arEnableEnvironmentMap = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKAREnableAREnvironment"];
}

- (void)setArDebugMiniMap:(BOOL)a3
{
  v3 = a3;
  self->_arDebugMiniMap = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKARDebugMiniMap"];
}

- (void)setDaVinciEntityDebugHighlighting:(BOOL)a3
{
  v3 = a3;
  self->_daVinciEntityDebugHighlighting = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKDaVinciEntityDebugHighlight"];
}

- (void)setPaintOverlayFoundationAssociation:(BOOL)a3
{
  v3 = a3;
  self->_paintOverlayFoundationAssociation = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"VKPaintOverlayFoundationAssociation"];
}

- (void)setExpandedPerformanceHUD:(BOOL)a3
{
  v3 = a3;
  self->_expandedPerformanceHUD = a3;
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  if (v3)
  {
    v5 = @"VKExtendedPeformanceHUD";
  }

  else
  {
    v5 = @"VKDMinimalPeformanceHUD";
  }

  v6 = v4;
  [v4 postNotificationName:v5 object:0];
}

- (void)setDrawPerformanceHUD:(BOOL)a3
{
  v3 = a3;
  self->_drawPerformanceHUD = a3;
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  if (v3)
  {
    v5 = @"VKEnablePeformanceHUD";
  }

  else
  {
    v5 = @"VKDisablePeformanceHUD";
  }

  v6 = v4;
  [v4 postNotificationName:v5 object:0];
}

- (void)setEnableNavRoadSignOrientationDebugging:(BOOL)a3
{
  self->_enableNavRoadSignOrientationDebugging = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:self->_enableNavRoadSignOrientationDebugging forKey:@"EnableNavRoadSignOrientationDebuggingKey"];
}

- (void)setShowNavLabelOverlay:(BOOL)a3
{
  self->_showNavLabelOverlay = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:self->_showNavLabelOverlay forKey:@"NavLabelOverlayKey"];
}

- (void)setMuninTapState:(id *)a3
{
  v3 = *&a3->var3;
  *&self->_muninTapState.x = *&a3->var0;
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
  objc_destroyWeak((a1 + 8));

  JUMPOUT(0x1B8C62190);
}

@end