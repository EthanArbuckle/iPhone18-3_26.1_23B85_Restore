@interface _CADeveloperHUDProperties
+ (id)instance;
- (BOOL)addLabel:(id)a3 after:(id)a4;
- (BOOL)captureGPUTrace:(id)a3 capturableObject:(id)a4 timeOut:(unint64_t)a5 error:(id *)a6;
- (BOOL)featureRegisterPopover:(HUDUserFeatureDescriptor *)a3 items:(id)a4 selectedIndex:(unint64_t)a5 didChange:(id)a6;
- (BOOL)featureRegisterPopover:(id)a3 envVar:(id)a4 description:(id)a5 documtationTitles:(id)a6 documentLinks:(id)a7 options:(unint64_t)a8 defaultValue:(id)a9 items:(id)a10 selectedIndex:(unint64_t)a11 didChange:(id)a12;
- (BOOL)featureRegisterPopover:(id)a3 title:(id)a4 envVar:(id)a5 description:(id)a6 documtationTitles:(id)a7 documentLinks:(id)a8 options:(unint64_t)a9 defaultValue:(id)a10 items:(id)a11 selectedIndex:(unint64_t)a12 didChange:(id)a13;
- (BOOL)featureRegisterToggle:(id)a3 envVar:(id)a4 description:(id)a5 documtationTitles:(id)a6 documentLinks:(id)a7 options:(unint64_t)a8 defaultValue:(id)a9 state:(BOOL)a10 didChange:(id)a11;
- (BOOL)featureRegisterToggle:(id)a3 envVar:(id)a4 description:(id)a5 documtationTitles:(id)a6 documentLinks:(id)a7 options:(unint64_t)a8 defaultValue:(id)a9 state:(BOOL)a10 valueRef:(char *)a11;
- (BOOL)featureRegisterToggle:(id)a3 title:(id)a4 envVar:(id)a5 description:(id)a6 documtationTitles:(id)a7 documentLinks:(id)a8 options:(unint64_t)a9 defaultValue:(id)a10 state:(BOOL)a11 didChange:(id)a12;
- (BOOL)featureRegisterToggle:(id)a3 title:(id)a4 envVar:(id)a5 description:(id)a6 documtationTitles:(id)a7 documentLinks:(id)a8 options:(unint64_t)a9 defaultValue:(id)a10 state:(BOOL)a11 valueRef:(char *)a12;
- (BOOL)insertMetric:(id)a3 after:(id)a4 name:(id)a5 unit:(id)a6 nameColor:(unsigned int)a7 valueColor:(unsigned int)a8 visualType:(unsigned int)a9 options:(unint64_t)a10;
- (BOOL)isHUDElementEnabled:(unint64_t)a3 mainLayer:(BOOL)a4;
- (BOOL)isInsightEnabled:(id)a3;
- (BOOL)isMetricEnabled:(id)a3;
- (CAMetalLayer)mainLayer;
- (CGPoint)position;
- (CGSize)size;
- (_CADeveloperHUDProperties)init;
- (const)UTF8StringForName:(id)a3;
- (id)addBridgedMetric:(HUDMetricDescriptor *)a3 record:(HUDValueHistoryRecord *)a4;
- (id)generatedReportURLs;
- (id)getInsight:(id)a3;
- (id)getMetric:(id)a3;
- (id)insertMetric:(HUDMetricDescriptor *)a3 after:(id)a4;
- (id)metricForStandardMetric:(unint64_t)a3;
- (void)addInsight:(id)a3 name:(id)a4 category:(id)a5 message:(id)a6 documtationTitles:(id)a7 documentLinks:(id)a8 supportedAPI:(unint64_t)a9 options:(unint64_t)a10 isPrototype:(BOOL)a11;
- (void)addWindow:(id)a3 frame:(CGRect)a4;
- (void)framePacingCommandBufferCommitted:(void *)a3;
- (void)framePacingCommandBufferCreated:(void *)a3 creationMAT:(unint64_t)a4;
- (void)markAccelerationStructureEncoder:(id)a3 component:(unsigned int)a4;
- (void)markBlitEncoder:(id)a3 component:(unsigned int)a4;
- (void)markCommandBuffer:(id)a3 component:(unsigned int)a4;
- (void)markComputeEncoder:(id)a3 component:(unsigned int)a4;
- (void)markExplicitFrameBoundary;
- (void)markRenderEncoder:(id)a3 component:(unsigned int)a4;
- (void)markResourceStateEncoder:(id)a3 component:(unsigned int)a4;
- (void)metalFXFrameInterpolatorDisable;
- (void)metalFXFrameInterpolatorEncodingEnd:(id)a3;
- (void)pushGeneratedReportURL:(id)a3;
- (void)remove:(id)a3;
- (void)removeMetric:(id)a3;
- (void)resetMetricHistory:(id)a3;
- (void)setHUDElementEnabled:(unint64_t)a3 flag:(BOOL)a4 mainLayer:(BOOL)a5;
- (void)setPosition:(CGPoint)a3;
- (void)updateFloatMetric:(id)a3 value:(float)a4;
- (void)updateIntegerMetric:(id)a3 value:(int)a4;
- (void)updateLabel:(id)a3 value:(id)a4;
- (void)updateLabelMetric:(id)a3 label:(id)a4;
- (void)updateMetricColor:(id)a3 nameColor:(unsigned int)a4 valueColor:(unsigned int)a5;
- (void)updateMetricName:(id)a3 name:(id)a4;
- (void)updateMetricOptions:(id)a3 options:(unint64_t)a4;
@end

@implementation _CADeveloperHUDProperties

+ (id)instance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __37___CADeveloperHUDProperties_instance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (instance_dispatcher != -1)
  {
    dispatch_once(&instance_dispatcher, block);
  }

  v2 = instance_sharedInstance;

  return v2;
}

- (_CADeveloperHUDProperties)init
{
  v25.receiver = self;
  v25.super_class = _CADeveloperHUDProperties;
  v2 = [(_CADeveloperHUDProperties *)&v25 init];
  if (v2)
  {
    v28[0] = @"com.apple.d3dmetal.re-count";
    v28[1] = @"com.apple.d3dmetal.ce-count";
    v29[0] = &off_6F6A0;
    v29[1] = &off_6F6A0;
    v28[2] = @"com.apple.d3dmetal.be-count";
    v28[3] = @"com.apple.d3dmetal.cb-count";
    v29[2] = &off_6F6A0;
    v29[3] = &off_6F6A0;
    v28[4] = @"com.apple.d3dmetal.disp-count";
    v28[5] = @"com.apple.d3dmetal.dispmesh-count";
    v29[4] = &off_6F6A0;
    v29[5] = &off_6F6A0;
    v28[6] = @"com.apple.d3dmetal.fragdraw-count";
    v28[7] = @"com.apple.d3dmetal.geom-count";
    v29[6] = &off_6F6A0;
    v29[7] = &off_6F6A0;
    v28[8] = @"com.apple.d3dmetal.tess-count";
    v28[9] = @"com.apple.d3dmetal.geomtess-count";
    v29[8] = &off_6F6A0;
    v29[9] = &off_6F6A0;
    v28[10] = @"com.apple.d3dmetal.clear-count";
    v28[11] = @"com.apple.d3dmetal.copy-count";
    v29[10] = &off_6F6A0;
    v29[11] = &off_6F6A0;
    v28[12] = @"com.apple.d3dmetal.ei-count";
    v28[13] = @"com.apple.d3dmetal.ae-count";
    v29[12] = &off_6F6A0;
    v29[13] = &off_6F6A0;
    v28[14] = @"com.apple.d3dmetal.dispray-count";
    v28[15] = @"com.apple.d3dmetal.rayquery-count";
    v29[14] = &off_6F6A0;
    v29[15] = &off_6F6A0;
    v28[16] = @"com.apple.d3dmetal.buildbvh-count";
    v28[17] = @"com.apple.d3dmetal.refitbfh-count";
    v29[16] = &off_6F6A0;
    v29[17] = &off_6F6A0;
    v28[18] = @"com.apple.d3dmetal.skipped-global-barrier-count";
    v28[19] = @"com.apple.d3dmetal.global-barrier-count";
    v29[18] = &off_6F6A0;
    v29[19] = &off_6F6A0;
    v3 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:20];
    knownGPTKMetrics = v2->_knownGPTKMetrics;
    v2->_knownGPTKMetrics = v3;

    v26[0] = @"com.apple.hud-label.gpu-and-resolution";
    v26[1] = @"com.apple.hud-label.compositing-and-refresh-rate";
    v27[0] = &off_6F6B8;
    v27[1] = &off_6F6D0;
    v26[2] = @"com.apple.hud-stat.fps";
    v26[3] = @"com.apple.hud-stat.present-interval";
    v27[2] = &off_6F6E8;
    v27[3] = &off_6F700;
    v26[4] = @"com.apple.hud-stat.gpu-time";
    v26[5] = @"com.apple.hud-label.memory";
    v27[4] = &off_6F718;
    v27[5] = &off_6F730;
    v26[6] = @"com.apple.hud-label.rosetta";
    v26[7] = @"com.apple.d3dmetal.re-count";
    v27[6] = &off_6F748;
    v27[7] = &off_6F760;
    v26[8] = @"com.apple.d3dmetal.ce-count";
    v26[9] = @"com.apple.d3dmetal.be-count";
    v27[8] = &off_6F760;
    v27[9] = &off_6F760;
    v26[10] = @"com.apple.d3dmetal.cb-count";
    v27[10] = &off_6F760;
    v5 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:11];
    identifierToMetric = v2->_identifierToMetric;
    v2->_identifierToMetric = v5;

    v7 = objc_opt_new();
    overiddenMetrics = v2->_overiddenMetrics;
    v2->_overiddenMetrics = v7;

    v9 = objc_opt_new();
    numberFormatter = v2->_numberFormatter;
    v2->_numberFormatter = v9;

    v11 = objc_opt_new();
    windows = v2->_windows;
    v2->_windows = v11;

    v13 = objc_opt_new();
    userClientFeatures = v2->_userClientFeatures;
    v2->_userClientFeatures = v13;

    v15 = objc_opt_new();
    generatedReportURLs = v2->_generatedReportURLs;
    v2->_generatedReportURLs = v15;

    v2->_graphicsAPI = 0;
    frameMarker = v2->_frameMarker;
    v2->_frameMarker = &stru_6ADA0;

    [(_CADeveloperHUDProperties *)v2 addWindow:@"com.apple.hud.overlay.main" frame:0.0, 0.0, 0.0, 0.0];
    [(_CADeveloperHUDProperties *)v2 addWindow:@"com.apple.hud.overlay.insights" frame:0.0, 0.0, 0.0, 0.0];
    v18 = [NSString stringWithUTF8String:getprogname()];
    if ([v18 hasSuffix:@".exe"])
    {
      v19 = [v18 substringToIndex:{objc_msgSend(v18, "length") - 4}];

      v18 = v19;
    }

    progName = v2->_progName;
    v2->_progName = v18;
    v21 = v18;

    v22 = objc_alloc_init(MTLHUDConfigExternal);
    configExt = v2->_configExt;
    v2->_configExt = v22;
  }

  return v2;
}

- (id)metricForStandardMetric:(unint64_t)a3
{
  overiddenMetrics = self->_overiddenMetrics;
  v4 = [NSNumber numberWithUnsignedLongLong:a3];
  v5 = [(NSMutableDictionary *)overiddenMetrics objectForKeyedSubscript:v4];

  return v5;
}

- (void)addWindow:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v9 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:?];

  if (!v9)
  {
    if ([v13 isEqualToString:@"com.apple.hud.overlay.main"])
    {
      v10 = off_687D0;
    }

    else
    {
      v11 = [v13 isEqualToString:@"com.apple.hud.overlay.insights"];
      v10 = &off_687D8;
      if (v11)
      {
        v10 = off_687C8;
      }
    }

    v12 = [objc_alloc(*v10) initWithFrame:{x, y, width, height}];
    [(NSMutableDictionary *)self->_windows setObject:v12 forKeyedSubscript:v13];
  }
}

- (void)setHUDElementEnabled:(unint64_t)a3 flag:(BOOL)a4 mainLayer:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = HUDGetGlobalConfig();
  if (v6)
  {
    if (v5)
    {
      v9 = *(v8 + 9) | a3;
LABEL_6:
      *(v8 + 9) = v9;
      return;
    }

    v11 = *(v8 + 10) | a3;
  }

  else
  {
    v10 = ~a3;
    if (v5)
    {
      v9 = *(v8 + 9) & v10;
      goto LABEL_6;
    }

    v11 = *(v8 + 10) & v10;
  }

  *(v8 + 10) = v11;
}

- (BOOL)isHUDElementEnabled:(unint64_t)a3 mainLayer:(BOOL)a4
{
  v4 = a4;
  v6 = HUDGetGlobalConfig();
  v7 = 40;
  if (v4)
  {
    v7 = 36;
  }

  return (*&v6[v7] & a3) != 0;
}

- (id)generatedReportURLs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_generatedReportURLs copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)pushGeneratedReportURL:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableArray *)v4->_generatedReportURLs addObject:v5];
  objc_sync_exit(v4);
}

- (void)remove:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __36___CADeveloperHUDProperties_remove___block_invoke;
  v4[3] = &unk_6A330;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  HUDDispatchQueueAsync(v4);
}

- (const)UTF8StringForName:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(NSMutableDictionary *)self->_windows allValues];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = "";
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) getMetric:v4];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 stringValue];
          v9 = [v13 UTF8String];

          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = "";
  }

LABEL_12:

  return v9;
}

- (BOOL)addLabel:(id)a3 after:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __44___CADeveloperHUDProperties_addLabel_after___block_invoke;
  v8[3] = &unk_6A358;
  v8[4] = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  HUDDispatchQueueAsync(v8);

  return 1;
}

- (void)updateLabel:(id)a3 value:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __47___CADeveloperHUDProperties_updateLabel_value___block_invoke;
  v7[3] = &unk_6A358;
  v7[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  HUDDispatchQueueAsync(v7);
}

- (CGPoint)position
{
  [(MTLHUDConfigExternal *)self->_configExt positionX];
  v4 = v3;
  [(MTLHUDConfigExternal *)self->_configExt positionY];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (void)setPosition:(CGPoint)a3
{
  y = a3.y;
  *&a3.x = a3.x;
  [(MTLHUDConfigExternal *)self->_configExt setPositionX:a3.x];
  configExt = self->_configExt;

  *&v5 = y;
  [(MTLHUDConfigExternal *)configExt setPositionY:v5];
}

- (CGSize)size
{
  v2 = +[HUDMTLLayerTracking mainTracker];
  v3 = [v2 client];
  [v3 overlayLayoutRectInPoints];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)addInsight:(id)a3 name:(id)a4 category:(id)a5 message:(id)a6 documtationTitles:(id)a7 documentLinks:(id)a8 supportedAPI:(unint64_t)a9 options:(unint64_t)a10 isPrototype:(BOOL)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = v16;
  v29[0] = v22;
  v23 = v17;
  v29[1] = v23;
  v24 = v19;
  v29[2] = v24;
  v25 = v18;
  v29[4] = 0;
  v29[5] = 0;
  v29[3] = v25;
  v26 = v21;
  v29[6] = v26;
  v27 = v20;
  v29[7] = v27;
  v29[8] = a10;
  v29[9] = a9;
  [(_CADeveloperHUDProperties *)self addInsight:v29 isPrototype:a11];
  __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(v29);
}

- (BOOL)insertMetric:(id)a3 after:(id)a4 name:(id)a5 unit:(id)a6 nameColor:(unsigned int)a7 valueColor:(unsigned int)a8 visualType:(unsigned int)a9 options:(unint64_t)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_21;
  }

  v22 = [v20 getMetric:v16];

  if (!v22)
  {
    v23 = [(NSDictionary *)self->_identifierToMetric objectForKeyedSubscript:v16];
    v24 = [v23 unsignedIntValue];
    if (v23 && v24 != 2)
    {
LABEL_5:

      goto LABEL_6;
    }

    if (v23)
    {
      v26 = [v23 intValue];
    }

    else
    {
      v26 = 0x80000000;
    }

    v31 = v26;
    v27 = HUDReportingComponentFromIdentifier(v16);
    v28 = [(NSDictionary *)self->_knownGPTKMetrics objectForKeyedSubscript:v16];

    if ((a10 & 1) != 0 || v28)
    {
      HUDMTLOverlaySetIsInGPTK(1);
      v27 = 2;
    }

    else if (v27 == 3)
    {
      if (([v16 isEqualToString:@"com.apple.hud-label.metalfx.v2.scaling"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"com.apple.hud-label.metalfx.v2.interpolator"))
      {
        *(HUDGetGlobalConfig() + 11) = 1;
      }

      if ([v16 isEqualToString:@"com.apple.hud-label.metalfx"])
      {
        goto LABEL_5;
      }

      if ([v16 isEqualToString:@"com.apple.hud-label.metalfx.resolution"])
      {

        v18 = @"Input Res";
LABEL_27:
        v27 = 3;
        goto LABEL_20;
      }

      if ([v16 isEqualToString:@"com.apple.hud-label.metalfx.content_resolution"])
      {

        v18 = @"Dynamic Res";
        goto LABEL_27;
      }

      if (![v16 isEqualToString:@"com.apple.hud-label.metalfx.timing"])
      {
        goto LABEL_27;
      }

      v18 = @"Time";
      v27 = 3;
      v19 = @"ms";
    }

LABEL_20:
    v40 = 0u;
    v18 = v18;
    v32 = v18;
    v33 = v16;
    v19 = v19;
    v34 = v19;
    v35 = a7;
    v36 = a8;
    v37 = v31;
    v38 = v27;
    v39 = a10;
    LODWORD(v40) = a9;
    *(&v40 + 4) = 0x1E00000000;
    v29 = [[HUDUserClientMetric alloc] initWithDescriptor:&v32];
    [v21 addMetric:v29 after:v17];

LABEL_21:
    v25 = 1;
    goto LABEL_22;
  }

LABEL_6:
  v25 = 0;
LABEL_22:

  return v25;
}

- (id)insertMetric:(HUDMetricDescriptor *)a3 after:(id)a4
{
  v4 = a3;
  if (a3)
  {
    windows = self->_windows;
    v6 = a4;
    v7 = [(NSMutableDictionary *)windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
    v4 = [[HUDUserClientMetric alloc] initWithDescriptor:v4];
    [v7 addMetric:v4 after:v6];
  }

  return v4;
}

- (void)updateMetricName:(id)a3 name:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 getMetric:v11];
    if (v9)
    {
      v10 = v9;
      [v9 setName:v6];
    }
  }
}

- (void)updateFloatMetric:(id)a3 value:(float)a4
{
  v10 = a3;
  v6 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 getMetric:v10];
    if (v8)
    {
      v9 = v8;
      [v8 setFloatValue:a4];
    }
  }
}

- (void)updateIntegerMetric:(id)a3 value:(int)a4
{
  v10 = a3;
  v6 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 getMetric:v10];
    if (v8)
    {
      v9 = v8;
      [v8 setIntValue:a4];
    }
  }
}

- (void)updateLabelMetric:(id)a3 label:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 getMetric:v11];
    if (v9)
    {
      v10 = v9;
      [v9 setStringValue:v6];
    }
  }
}

- (void)resetMetricHistory:(id)a3
{
  v8 = a3;
  v4 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 getMetric:v8];
    if (v6)
    {
      v7 = v6;
      [v6 resetHistory];
    }
  }
}

- (void)updateMetricColor:(id)a3 nameColor:(unsigned int)a4 valueColor:(unsigned int)a5
{
  v12 = a3;
  v8 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 getMetric:v12];
    if (v10)
    {
      v11 = v10;
      *([v10 descriptor] + 6) = a4;
      *([v11 descriptor] + 7) = a5;
    }
  }
}

- (void)updateMetricOptions:(id)a3 options:(unint64_t)a4
{
  v10 = a3;
  v6 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 getMetric:v10];
    if (v8)
    {
      v9 = v8;
      *([v8 descriptor] + 6) = a4;
    }
  }
}

- (BOOL)isInsightEnabled:(id)a3
{
  v4 = a3;
  v5 = [(_CADeveloperHUDProperties *)self insightsWindow];
  v6 = [v5 isInsightEnabled:v4];

  return v6;
}

- (id)getInsight:(id)a3
{
  v4 = a3;
  v5 = [(_CADeveloperHUDProperties *)self insightsWindow];
  v6 = [v5 getInsight:v4];

  return v6;
}

- (BOOL)isMetricEnabled:(id)a3
{
  v4 = a3;
  v5 = [(_CADeveloperHUDProperties *)self mainWindow];
  v6 = [v5 getMetric:v4];

  if (v6)
  {
    v7 = [v6 enabled];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)featureRegisterToggle:(id)a3 envVar:(id)a4 description:(id)a5 documtationTitles:(id)a6 documentLinks:(id)a7 options:(unint64_t)a8 defaultValue:(id)a9 state:(BOOL)a10 didChange:(id)a11
{
  if (a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = a3;
  }

  v18 = a11;
  v19 = a9;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  if (a8)
  {
    v25 = @"com.apple.d3dmetal";
  }

  else
  {
    v25 = @"com.apple.hud-label.user";
  }

  v26 = [(__CFString *)v25 stringByAppendingString:v17];
  LOBYTE(v29) = a10;
  v27 = [(_CADeveloperHUDProperties *)self featureRegisterToggle:v26 title:v24 envVar:v23 description:v22 documtationTitles:v21 documentLinks:v20 options:a8 defaultValue:v19 state:v29 didChange:v18];

  return v27;
}

- (BOOL)featureRegisterToggle:(id)a3 envVar:(id)a4 description:(id)a5 documtationTitles:(id)a6 documentLinks:(id)a7 options:(unint64_t)a8 defaultValue:(id)a9 state:(BOOL)a10 valueRef:(char *)a11
{
  if (a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = a3;
  }

  v18 = a9;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  if (a8)
  {
    v24 = @"com.apple.d3dmetal";
  }

  else
  {
    v24 = @"com.apple.hud-label.user";
  }

  v25 = [(__CFString *)v24 stringByAppendingString:v17];
  LOBYTE(v28) = a10;
  v26 = [(_CADeveloperHUDProperties *)self featureRegisterToggle:v25 title:v23 envVar:v22 description:v21 documtationTitles:v20 documentLinks:v19 options:a8 defaultValue:v18 state:v28 valueRef:a11];

  return v26;
}

- (BOOL)featureRegisterPopover:(id)a3 envVar:(id)a4 description:(id)a5 documtationTitles:(id)a6 documentLinks:(id)a7 options:(unint64_t)a8 defaultValue:(id)a9 items:(id)a10 selectedIndex:(unint64_t)a11 didChange:(id)a12
{
  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = a3;
  }

  v19 = a12;
  v20 = a10;
  v21 = a9;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  if (a8)
  {
    v27 = @"com.apple.d3dmetal";
  }

  else
  {
    v27 = @"com.apple.hud-label.user";
  }

  v28 = [(__CFString *)v27 stringByAppendingString:v18];
  v29 = [(_CADeveloperHUDProperties *)self featureRegisterPopover:v28 title:v26 envVar:v25 description:v24 documtationTitles:v23 documentLinks:v22 options:a8 defaultValue:v21 items:v20 selectedIndex:a11 didChange:v19];

  return v29;
}

- (BOOL)featureRegisterToggle:(id)a3 title:(id)a4 envVar:(id)a5 description:(id)a6 documtationTitles:(id)a7 documentLinks:(id)a8 options:(unint64_t)a9 defaultValue:(id)a10 state:(BOOL)a11 didChange:(id)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v31 = a6;
  v32 = a7;
  v20 = a8;
  v21 = a10;
  v22 = a12;
  LODWORD(a4) = HUDReportingComponentFromIdentifier(v17);
  v23 = v17;
  v34[0] = v23;
  v24 = v18;
  v34[1] = v24;
  v25 = v19;
  v34[2] = v25;
  v34[3] = a9;
  v34[4] = a4;
  v26 = v21;
  v34[5] = v26;
  v27 = v31;
  v34[6] = v27;
  v28 = v20;
  v34[7] = v28;
  v29 = v32;
  v34[8] = v29;
  LOBYTE(v20) = [(_CADeveloperHUDProperties *)self featureRegisterToggle:v34 state:a11 didChange:v22];
  __destructor_8_s0_s8_s16_s40_s48_s56_s64(v34);

  return v20;
}

- (BOOL)featureRegisterToggle:(id)a3 title:(id)a4 envVar:(id)a5 description:(id)a6 documtationTitles:(id)a7 documentLinks:(id)a8 options:(unint64_t)a9 defaultValue:(id)a10 state:(BOOL)a11 valueRef:(char *)a12
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __144___CADeveloperHUDProperties_featureRegisterToggle_title_envVar_description_documtationTitles_documentLinks_options_defaultValue_state_valueRef___block_invoke;
  v14[3] = &__block_descriptor_40_e31_v24__0__NSString_8__NSNumber_16l;
  v14[4] = a12;
  LOBYTE(v13) = a11;
  return [(_CADeveloperHUDProperties *)self featureRegisterToggle:a3 title:a4 envVar:a5 description:a6 documtationTitles:a7 documentLinks:a8 options:a9 defaultValue:a10 state:v13 didChange:v14];
}

- (BOOL)featureRegisterPopover:(id)a3 title:(id)a4 envVar:(id)a5 description:(id)a6 documtationTitles:(id)a7 documentLinks:(id)a8 options:(unint64_t)a9 defaultValue:(id)a10 items:(id)a11 selectedIndex:(unint64_t)a12 didChange:(id)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v33 = a6;
  v34 = a7;
  v21 = a8;
  v22 = a10;
  v23 = a11;
  v24 = a13;
  v25 = v18;
  v36[0] = v25;
  v26 = v19;
  v36[1] = v26;
  v27 = v20;
  v36[2] = v27;
  v36[3] = a9;
  v36[4] = 0;
  v28 = v22;
  v36[5] = v28;
  v29 = v33;
  v36[6] = v29;
  v30 = v21;
  v36[7] = v30;
  v31 = v34;
  v36[8] = v31;
  LOBYTE(v21) = [(_CADeveloperHUDProperties *)self featureRegisterPopover:v36 items:v23 selectedIndex:a12 didChange:v24];
  __destructor_8_s0_s8_s16_s40_s48_s56_s64(v36);

  return v21;
}

- (BOOL)featureRegisterPopover:(HUDUserFeatureDescriptor *)a3 items:(id)a4 selectedIndex:(unint64_t)a5 didChange:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [[HUDUserClientFeatureEntry alloc] initPopover:a3 items:v11 selectedIndex:a5 didChange:v10];

  if (v12)
  {
    userClientFeatures = self->_userClientFeatures;
    v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 componenet]);
    v15 = [(NSMutableDictionary *)userClientFeatures objectForKeyedSubscript:v14];

    if (!v15)
    {
      v15 = -[HUDUserClientFeatureGroup initWithCategory:]([HUDUserClientFeatureGroup alloc], "initWithCategory:", [v12 componenet]);
      v16 = self->_userClientFeatures;
      v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 componenet]);
      [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:v17];
    }

    v18 = [(HUDUserClientFeatureGroup *)v15 features];
    [v18 addObject:v12];
  }

  return v12 != 0;
}

- (void)markExplicitFrameBoundary
{
  *(HUDGetGlobalConfig() + 8) = 1;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();

  HUDGPUTimeTrackerMarkFrameBoundary(GlobalInstance);
}

- (CAMetalLayer)mainLayer
{
  v2 = +[HUDMTLLayerTracking mainTracker];
  v3 = [v2 layer];

  return v3;
}

- (void)markCommandBuffer:(id)a3 component:(unsigned int)a4
{
  v6 = a3;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
  HUDGPUTimeTrackerMarkCommandBuffer(GlobalInstance, v6, a4);
}

- (void)markRenderEncoder:(id)a3 component:(unsigned int)a4
{
  v6 = a3;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
  HUDGPUTimeTrackerMarkEncoder(GlobalInstance, v6, a4);
}

- (void)markComputeEncoder:(id)a3 component:(unsigned int)a4
{
  v6 = a3;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
  HUDGPUTimeTrackerMarkEncoder(GlobalInstance, v6, a4);
}

- (void)markBlitEncoder:(id)a3 component:(unsigned int)a4
{
  v6 = a3;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
  HUDGPUTimeTrackerMarkEncoder(GlobalInstance, v6, a4);
}

- (void)markAccelerationStructureEncoder:(id)a3 component:(unsigned int)a4
{
  v6 = a3;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
  HUDGPUTimeTrackerMarkEncoder(GlobalInstance, v6, a4);
}

- (void)markResourceStateEncoder:(id)a3 component:(unsigned int)a4
{
  v6 = a3;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
  HUDGPUTimeTrackerMarkEncoder(GlobalInstance, v6, a4);
}

- (void)metalFXFrameInterpolatorEncodingEnd:(id)a3
{
  v4 = a3;
  if ((HUDGetGlobalConfig()[6] & 1) == 0)
  {
    [(_CADeveloperHUDProperties *)self addMetric:@"com.apple.hud-label.metalfx.v2.interpolator" name:@"Frame Interpolator" unit:&stru_6ADA0 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:1 options:0];
    LODWORD(v7) = 1;
    [(_CADeveloperHUDProperties *)self insertMetric:@"com.apple.hud-label.metalfx.v2.interpolator.deltaTime" after:@"com.apple.hud-label.metalfx.v2.interpolator" name:@"Interpolator Delta Time" unit:@"ms" nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:v7 options:0];
    [(_CADeveloperHUDProperties *)self updateLabelMetric:@"com.apple.hud-label.metalfx.v2.interpolator" label:@"Enabled"];
    *(HUDGetGlobalConfig() + 12) = 1;
  }

  *(HUDGetGlobalConfig() + 13) = 1;
  v8 = v4;
  if (objc_opt_respondsToSelector())
  {
    [v8 deltaTime];
    *&v6 = v5 * 1000.0;
    [(_CADeveloperHUDProperties *)self updateFloatMetric:@"com.apple.hud-label.metalfx.v2.interpolator.deltaTime" value:v6];
  }
}

- (void)removeMetric:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v5 = v4;
  if (v4)
  {
    [v4 removeMetrics:v6];
  }
}

- (void)metalFXFrameInterpolatorDisable
{
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
  HUDGPUTimeTrackerReset(GlobalInstance);
  *(HUDGetGlobalConfig() + 12) = 0;
  [(_CADeveloperHUDProperties *)self removeMetric:@"com.apple.hud-label.metalfx.v2.interpolator"];

  [(_CADeveloperHUDProperties *)self removeMetric:@"com.apple.hud-label.metalfx.v2.interpolator.deltaTime"];
}

- (void)framePacingCommandBufferCreated:(void *)a3 creationMAT:(unint64_t)a4
{
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();

  HUDGPUTimeTrackerCommandBufferCreate(GlobalInstance, a3);
}

- (void)framePacingCommandBufferCommitted:(void *)a3
{
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();

  HUDGPUTimeTrackerCommandBufferCommit(GlobalInstance, a3);
}

- (BOOL)captureGPUTrace:(id)a3 capturableObject:(id)a4 timeOut:(unint64_t)a5 error:(id *)a6
{
  v8 = a3;
  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = +[MTLCaptureManager sharedCaptureManager];
  if (([v10 isCapturing] & 1) != 0 || !objc_msgSend(v10, "supportsDestination:", v9))
  {
    v15 = 0;
  }

  else
  {
    v11 = objc_alloc_init(MTLCaptureDescriptor);
    [v11 setDestination:v9];
    [v11 setOutputURL:v8];
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    v13 = HUDGPUTimeTrackerGetFrameCaptureScopeAndStartCapture(GlobalInstance);
    [v11 setCaptureObject:v13];

    v14 = [v10 startCaptureWithDescriptor:v11 error:a6];
    v15 = v14;
    if (a5 && v14)
    {
      v16 = dispatch_time(0, a5);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __76___CADeveloperHUDProperties_captureGPUTrace_capturableObject_timeOut_error___block_invoke;
      block[3] = &unk_6A3A0;
      v19 = v10;
      dispatch_after(v16, &_dispatch_main_q, block);
    }
  }

  return v15;
}

- (id)getMetric:(id)a3
{
  v4 = a3;
  v5 = [(_CADeveloperHUDProperties *)self mainWindow];
  v6 = [v5 getMetric:v4];

  return v6;
}

- (id)addBridgedMetric:(HUDMetricDescriptor *)a3 record:(HUDValueHistoryRecord *)a4
{
  if (a3)
  {
    v6 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
    v7 = [[HUDUserClientMetric alloc] initWithBridgedDescriptor:a3 record:a4];
    [v6 addMetric:v7 after:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end