@interface _CADeveloperHUDProperties
+ (id)instance;
- (BOOL)addLabel:(id)label after:(id)after;
- (BOOL)captureGPUTrace:(id)trace capturableObject:(id)object timeOut:(unint64_t)out error:(id *)error;
- (BOOL)featureRegisterPopover:(HUDUserFeatureDescriptor *)popover items:(id)items selectedIndex:(unint64_t)index didChange:(id)change;
- (BOOL)featureRegisterPopover:(id)popover envVar:(id)var description:(id)description documtationTitles:(id)titles documentLinks:(id)links options:(unint64_t)options defaultValue:(id)value items:(id)self0 selectedIndex:(unint64_t)self1 didChange:(id)self2;
- (BOOL)featureRegisterPopover:(id)popover title:(id)title envVar:(id)var description:(id)description documtationTitles:(id)titles documentLinks:(id)links options:(unint64_t)options defaultValue:(id)self0 items:(id)self1 selectedIndex:(unint64_t)self2 didChange:(id)self3;
- (BOOL)featureRegisterToggle:(id)toggle envVar:(id)var description:(id)description documtationTitles:(id)titles documentLinks:(id)links options:(unint64_t)options defaultValue:(id)value state:(BOOL)self0 didChange:(id)self1;
- (BOOL)featureRegisterToggle:(id)toggle envVar:(id)var description:(id)description documtationTitles:(id)titles documentLinks:(id)links options:(unint64_t)options defaultValue:(id)value state:(BOOL)self0 valueRef:(char *)self1;
- (BOOL)featureRegisterToggle:(id)toggle title:(id)title envVar:(id)var description:(id)description documtationTitles:(id)titles documentLinks:(id)links options:(unint64_t)options defaultValue:(id)self0 state:(BOOL)self1 didChange:(id)self2;
- (BOOL)featureRegisterToggle:(id)toggle title:(id)title envVar:(id)var description:(id)description documtationTitles:(id)titles documentLinks:(id)links options:(unint64_t)options defaultValue:(id)self0 state:(BOOL)self1 valueRef:(char *)self2;
- (BOOL)insertMetric:(id)metric after:(id)after name:(id)name unit:(id)unit nameColor:(unsigned int)color valueColor:(unsigned int)valueColor visualType:(unsigned int)type options:(unint64_t)self0;
- (BOOL)isHUDElementEnabled:(unint64_t)enabled mainLayer:(BOOL)layer;
- (BOOL)isInsightEnabled:(id)enabled;
- (BOOL)isMetricEnabled:(id)enabled;
- (CAMetalLayer)mainLayer;
- (CGPoint)position;
- (CGSize)size;
- (_CADeveloperHUDProperties)init;
- (const)UTF8StringForName:(id)name;
- (id)addBridgedMetric:(HUDMetricDescriptor *)metric record:(HUDValueHistoryRecord *)record;
- (id)generatedReportURLs;
- (id)getInsight:(id)insight;
- (id)getMetric:(id)metric;
- (id)insertMetric:(HUDMetricDescriptor *)metric after:(id)after;
- (id)metricForStandardMetric:(unint64_t)metric;
- (void)addInsight:(id)insight name:(id)name category:(id)category message:(id)message documtationTitles:(id)titles documentLinks:(id)links supportedAPI:(unint64_t)i options:(unint64_t)self0 isPrototype:(BOOL)self1;
- (void)addWindow:(id)window frame:(CGRect)frame;
- (void)framePacingCommandBufferCommitted:(void *)committed;
- (void)framePacingCommandBufferCreated:(void *)created creationMAT:(unint64_t)t;
- (void)markAccelerationStructureEncoder:(id)encoder component:(unsigned int)component;
- (void)markBlitEncoder:(id)encoder component:(unsigned int)component;
- (void)markCommandBuffer:(id)buffer component:(unsigned int)component;
- (void)markComputeEncoder:(id)encoder component:(unsigned int)component;
- (void)markExplicitFrameBoundary;
- (void)markRenderEncoder:(id)encoder component:(unsigned int)component;
- (void)markResourceStateEncoder:(id)encoder component:(unsigned int)component;
- (void)metalFXFrameInterpolatorDisable;
- (void)metalFXFrameInterpolatorEncodingEnd:(id)end;
- (void)pushGeneratedReportURL:(id)l;
- (void)remove:(id)remove;
- (void)removeMetric:(id)metric;
- (void)resetMetricHistory:(id)history;
- (void)setHUDElementEnabled:(unint64_t)enabled flag:(BOOL)flag mainLayer:(BOOL)layer;
- (void)setPosition:(CGPoint)position;
- (void)updateFloatMetric:(id)metric value:(float)value;
- (void)updateIntegerMetric:(id)metric value:(int)value;
- (void)updateLabel:(id)label value:(id)value;
- (void)updateLabelMetric:(id)metric label:(id)label;
- (void)updateMetricColor:(id)color nameColor:(unsigned int)nameColor valueColor:(unsigned int)valueColor;
- (void)updateMetricName:(id)name name:(id)a4;
- (void)updateMetricOptions:(id)options options:(unint64_t)a4;
@end

@implementation _CADeveloperHUDProperties

+ (id)instance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __37___CADeveloperHUDProperties_instance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (id)metricForStandardMetric:(unint64_t)metric
{
  overiddenMetrics = self->_overiddenMetrics;
  v4 = [NSNumber numberWithUnsignedLongLong:metric];
  v5 = [(NSMutableDictionary *)overiddenMetrics objectForKeyedSubscript:v4];

  return v5;
}

- (void)addWindow:(id)window frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  windowCopy = window;
  v9 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:?];

  if (!v9)
  {
    if ([windowCopy isEqualToString:@"com.apple.hud.overlay.main"])
    {
      v10 = off_687D0;
    }

    else
    {
      v11 = [windowCopy isEqualToString:@"com.apple.hud.overlay.insights"];
      v10 = &off_687D8;
      if (v11)
      {
        v10 = off_687C8;
      }
    }

    v12 = [objc_alloc(*v10) initWithFrame:{x, y, width, height}];
    [(NSMutableDictionary *)self->_windows setObject:v12 forKeyedSubscript:windowCopy];
  }
}

- (void)setHUDElementEnabled:(unint64_t)enabled flag:(BOOL)flag mainLayer:(BOOL)layer
{
  layerCopy = layer;
  flagCopy = flag;
  v8 = HUDGetGlobalConfig();
  if (flagCopy)
  {
    if (layerCopy)
    {
      v9 = *(v8 + 9) | enabled;
LABEL_6:
      *(v8 + 9) = v9;
      return;
    }

    v11 = *(v8 + 10) | enabled;
  }

  else
  {
    v10 = ~enabled;
    if (layerCopy)
    {
      v9 = *(v8 + 9) & v10;
      goto LABEL_6;
    }

    v11 = *(v8 + 10) & v10;
  }

  *(v8 + 10) = v11;
}

- (BOOL)isHUDElementEnabled:(unint64_t)enabled mainLayer:(BOOL)layer
{
  layerCopy = layer;
  v6 = HUDGetGlobalConfig();
  v7 = 40;
  if (layerCopy)
  {
    v7 = 36;
  }

  return (*&v6[v7] & enabled) != 0;
}

- (id)generatedReportURLs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_generatedReportURLs copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)pushGeneratedReportURL:(id)l
{
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_generatedReportURLs addObject:lCopy];
  objc_sync_exit(selfCopy);
}

- (void)remove:(id)remove
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __36___CADeveloperHUDProperties_remove___block_invoke;
  v4[3] = &unk_6A330;
  v4[4] = self;
  removeCopy = remove;
  v3 = removeCopy;
  HUDDispatchQueueAsync(v4);
}

- (const)UTF8StringForName:(id)name
{
  nameCopy = name;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_windows allValues];
  v6 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    uTF8String = "";
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) getMetric:nameCopy];
        if (v11)
        {
          v12 = v11;
          stringValue = [v11 stringValue];
          uTF8String = [stringValue UTF8String];

          goto LABEL_12;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    uTF8String = "";
  }

LABEL_12:

  return uTF8String;
}

- (BOOL)addLabel:(id)label after:(id)after
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __44___CADeveloperHUDProperties_addLabel_after___block_invoke;
  v8[3] = &unk_6A358;
  v8[4] = self;
  labelCopy = label;
  afterCopy = after;
  v5 = afterCopy;
  v6 = labelCopy;
  HUDDispatchQueueAsync(v8);

  return 1;
}

- (void)updateLabel:(id)label value:(id)value
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __47___CADeveloperHUDProperties_updateLabel_value___block_invoke;
  v7[3] = &unk_6A358;
  v7[4] = self;
  labelCopy = label;
  valueCopy = value;
  v5 = valueCopy;
  v6 = labelCopy;
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

- (void)setPosition:(CGPoint)position
{
  y = position.y;
  *&position.x = position.x;
  [(MTLHUDConfigExternal *)self->_configExt setPositionX:position.x];
  configExt = self->_configExt;

  *&v5 = y;
  [(MTLHUDConfigExternal *)configExt setPositionY:v5];
}

- (CGSize)size
{
  v2 = +[HUDMTLLayerTracking mainTracker];
  client = [v2 client];
  [client overlayLayoutRectInPoints];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)addInsight:(id)insight name:(id)name category:(id)category message:(id)message documtationTitles:(id)titles documentLinks:(id)links supportedAPI:(unint64_t)i options:(unint64_t)self0 isPrototype:(BOOL)self1
{
  insightCopy = insight;
  nameCopy = name;
  categoryCopy = category;
  messageCopy = message;
  titlesCopy = titles;
  linksCopy = links;
  v22 = insightCopy;
  v29[0] = v22;
  v23 = nameCopy;
  v29[1] = v23;
  v24 = messageCopy;
  v29[2] = v24;
  v25 = categoryCopy;
  v29[4] = 0;
  v29[5] = 0;
  v29[3] = v25;
  v26 = linksCopy;
  v29[6] = v26;
  v27 = titlesCopy;
  v29[7] = v27;
  v29[8] = options;
  v29[9] = i;
  [(_CADeveloperHUDProperties *)self addInsight:v29 isPrototype:prototype];
  __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(v29);
}

- (BOOL)insertMetric:(id)metric after:(id)after name:(id)name unit:(id)unit nameColor:(unsigned int)color valueColor:(unsigned int)valueColor visualType:(unsigned int)type options:(unint64_t)self0
{
  metricCopy = metric;
  afterCopy = after;
  nameCopy = name;
  unitCopy = unit;
  v20 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_21;
  }

  v22 = [v20 getMetric:metricCopy];

  if (!v22)
  {
    v23 = [(NSDictionary *)self->_identifierToMetric objectForKeyedSubscript:metricCopy];
    unsignedIntValue = [v23 unsignedIntValue];
    if (v23 && unsignedIntValue != 2)
    {
LABEL_5:

      goto LABEL_6;
    }

    if (v23)
    {
      intValue = [v23 intValue];
    }

    else
    {
      intValue = 0x80000000;
    }

    v31 = intValue;
    v27 = HUDReportingComponentFromIdentifier(metricCopy);
    v28 = [(NSDictionary *)self->_knownGPTKMetrics objectForKeyedSubscript:metricCopy];

    if ((options & 1) != 0 || v28)
    {
      HUDMTLOverlaySetIsInGPTK(1);
      v27 = 2;
    }

    else if (v27 == 3)
    {
      if (([metricCopy isEqualToString:@"com.apple.hud-label.metalfx.v2.scaling"] & 1) != 0 || objc_msgSend(metricCopy, "isEqualToString:", @"com.apple.hud-label.metalfx.v2.interpolator"))
      {
        *(HUDGetGlobalConfig() + 11) = 1;
      }

      if ([metricCopy isEqualToString:@"com.apple.hud-label.metalfx"])
      {
        goto LABEL_5;
      }

      if ([metricCopy isEqualToString:@"com.apple.hud-label.metalfx.resolution"])
      {

        nameCopy = @"Input Res";
LABEL_27:
        v27 = 3;
        goto LABEL_20;
      }

      if ([metricCopy isEqualToString:@"com.apple.hud-label.metalfx.content_resolution"])
      {

        nameCopy = @"Dynamic Res";
        goto LABEL_27;
      }

      if (![metricCopy isEqualToString:@"com.apple.hud-label.metalfx.timing"])
      {
        goto LABEL_27;
      }

      nameCopy = @"Time";
      v27 = 3;
      unitCopy = @"ms";
    }

LABEL_20:
    v40 = 0u;
    nameCopy = nameCopy;
    v32 = nameCopy;
    v33 = metricCopy;
    unitCopy = unitCopy;
    v34 = unitCopy;
    colorCopy = color;
    valueColorCopy = valueColor;
    v37 = v31;
    v38 = v27;
    optionsCopy = options;
    LODWORD(v40) = type;
    *(&v40 + 4) = 0x1E00000000;
    v29 = [[HUDUserClientMetric alloc] initWithDescriptor:&v32];
    [v21 addMetric:v29 after:afterCopy];

LABEL_21:
    v25 = 1;
    goto LABEL_22;
  }

LABEL_6:
  v25 = 0;
LABEL_22:

  return v25;
}

- (id)insertMetric:(HUDMetricDescriptor *)metric after:(id)after
{
  metricCopy = metric;
  if (metric)
  {
    windows = self->_windows;
    afterCopy = after;
    v7 = [(NSMutableDictionary *)windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
    metricCopy = [[HUDUserClientMetric alloc] initWithDescriptor:metricCopy];
    [v7 addMetric:metricCopy after:afterCopy];
  }

  return metricCopy;
}

- (void)updateMetricName:(id)name name:(id)a4
{
  nameCopy = name;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 getMetric:nameCopy];
    if (v9)
    {
      v10 = v9;
      [v9 setName:v6];
    }
  }
}

- (void)updateFloatMetric:(id)metric value:(float)value
{
  metricCopy = metric;
  v6 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 getMetric:metricCopy];
    if (v8)
    {
      v9 = v8;
      [v8 setFloatValue:value];
    }
  }
}

- (void)updateIntegerMetric:(id)metric value:(int)value
{
  metricCopy = metric;
  v6 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 getMetric:metricCopy];
    if (v8)
    {
      v9 = v8;
      [v8 setIntValue:value];
    }
  }
}

- (void)updateLabelMetric:(id)metric label:(id)label
{
  metricCopy = metric;
  labelCopy = label;
  v7 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 getMetric:metricCopy];
    if (v9)
    {
      v10 = v9;
      [v9 setStringValue:labelCopy];
    }
  }
}

- (void)resetMetricHistory:(id)history
{
  historyCopy = history;
  v4 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 getMetric:historyCopy];
    if (v6)
    {
      v7 = v6;
      [v6 resetHistory];
    }
  }
}

- (void)updateMetricColor:(id)color nameColor:(unsigned int)nameColor valueColor:(unsigned int)valueColor
{
  colorCopy = color;
  v8 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 getMetric:colorCopy];
    if (v10)
    {
      v11 = v10;
      *([v10 descriptor] + 6) = nameColor;
      *([v11 descriptor] + 7) = valueColor;
    }
  }
}

- (void)updateMetricOptions:(id)options options:(unint64_t)a4
{
  optionsCopy = options;
  v6 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 getMetric:optionsCopy];
    if (v8)
    {
      v9 = v8;
      *([v8 descriptor] + 6) = a4;
    }
  }
}

- (BOOL)isInsightEnabled:(id)enabled
{
  enabledCopy = enabled;
  insightsWindow = [(_CADeveloperHUDProperties *)self insightsWindow];
  v6 = [insightsWindow isInsightEnabled:enabledCopy];

  return v6;
}

- (id)getInsight:(id)insight
{
  insightCopy = insight;
  insightsWindow = [(_CADeveloperHUDProperties *)self insightsWindow];
  v6 = [insightsWindow getInsight:insightCopy];

  return v6;
}

- (BOOL)isMetricEnabled:(id)enabled
{
  enabledCopy = enabled;
  mainWindow = [(_CADeveloperHUDProperties *)self mainWindow];
  v6 = [mainWindow getMetric:enabledCopy];

  if (v6)
  {
    enabled = [v6 enabled];
  }

  else
  {
    enabled = 0;
  }

  return enabled;
}

- (BOOL)featureRegisterToggle:(id)toggle envVar:(id)var description:(id)description documtationTitles:(id)titles documentLinks:(id)links options:(unint64_t)options defaultValue:(id)value state:(BOOL)self0 didChange:(id)self1
{
  if (var)
  {
    toggleCopy = var;
  }

  else
  {
    toggleCopy = toggle;
  }

  changeCopy = change;
  valueCopy = value;
  linksCopy = links;
  titlesCopy = titles;
  descriptionCopy = description;
  varCopy2 = var;
  toggleCopy2 = toggle;
  if (options)
  {
    v25 = @"com.apple.d3dmetal";
  }

  else
  {
    v25 = @"com.apple.hud-label.user";
  }

  v26 = [(__CFString *)v25 stringByAppendingString:toggleCopy];
  LOBYTE(v29) = state;
  v27 = [(_CADeveloperHUDProperties *)self featureRegisterToggle:v26 title:toggleCopy2 envVar:varCopy2 description:descriptionCopy documtationTitles:titlesCopy documentLinks:linksCopy options:options defaultValue:valueCopy state:v29 didChange:changeCopy];

  return v27;
}

- (BOOL)featureRegisterToggle:(id)toggle envVar:(id)var description:(id)description documtationTitles:(id)titles documentLinks:(id)links options:(unint64_t)options defaultValue:(id)value state:(BOOL)self0 valueRef:(char *)self1
{
  if (var)
  {
    toggleCopy = var;
  }

  else
  {
    toggleCopy = toggle;
  }

  valueCopy = value;
  linksCopy = links;
  titlesCopy = titles;
  descriptionCopy = description;
  varCopy2 = var;
  toggleCopy2 = toggle;
  if (options)
  {
    v24 = @"com.apple.d3dmetal";
  }

  else
  {
    v24 = @"com.apple.hud-label.user";
  }

  v25 = [(__CFString *)v24 stringByAppendingString:toggleCopy];
  LOBYTE(v28) = state;
  v26 = [(_CADeveloperHUDProperties *)self featureRegisterToggle:v25 title:toggleCopy2 envVar:varCopy2 description:descriptionCopy documtationTitles:titlesCopy documentLinks:linksCopy options:options defaultValue:valueCopy state:v28 valueRef:ref];

  return v26;
}

- (BOOL)featureRegisterPopover:(id)popover envVar:(id)var description:(id)description documtationTitles:(id)titles documentLinks:(id)links options:(unint64_t)options defaultValue:(id)value items:(id)self0 selectedIndex:(unint64_t)self1 didChange:(id)self2
{
  if (var)
  {
    popoverCopy = var;
  }

  else
  {
    popoverCopy = popover;
  }

  changeCopy = change;
  itemsCopy = items;
  valueCopy = value;
  linksCopy = links;
  titlesCopy = titles;
  descriptionCopy = description;
  varCopy2 = var;
  popoverCopy2 = popover;
  if (options)
  {
    v27 = @"com.apple.d3dmetal";
  }

  else
  {
    v27 = @"com.apple.hud-label.user";
  }

  v28 = [(__CFString *)v27 stringByAppendingString:popoverCopy];
  v29 = [(_CADeveloperHUDProperties *)self featureRegisterPopover:v28 title:popoverCopy2 envVar:varCopy2 description:descriptionCopy documtationTitles:titlesCopy documentLinks:linksCopy options:options defaultValue:valueCopy items:itemsCopy selectedIndex:index didChange:changeCopy];

  return v29;
}

- (BOOL)featureRegisterToggle:(id)toggle title:(id)title envVar:(id)var description:(id)description documtationTitles:(id)titles documentLinks:(id)links options:(unint64_t)options defaultValue:(id)self0 state:(BOOL)self1 didChange:(id)self2
{
  toggleCopy = toggle;
  titleCopy = title;
  varCopy = var;
  descriptionCopy = description;
  titlesCopy = titles;
  linksCopy = links;
  valueCopy = value;
  changeCopy = change;
  LODWORD(title) = HUDReportingComponentFromIdentifier(toggleCopy);
  v23 = toggleCopy;
  v34[0] = v23;
  v24 = titleCopy;
  v34[1] = v24;
  v25 = varCopy;
  v34[2] = v25;
  v34[3] = options;
  v34[4] = title;
  v26 = valueCopy;
  v34[5] = v26;
  v27 = descriptionCopy;
  v34[6] = v27;
  v28 = linksCopy;
  v34[7] = v28;
  v29 = titlesCopy;
  v34[8] = v29;
  LOBYTE(linksCopy) = [(_CADeveloperHUDProperties *)self featureRegisterToggle:v34 state:state didChange:changeCopy];
  __destructor_8_s0_s8_s16_s40_s48_s56_s64(v34);

  return linksCopy;
}

- (BOOL)featureRegisterToggle:(id)toggle title:(id)title envVar:(id)var description:(id)description documtationTitles:(id)titles documentLinks:(id)links options:(unint64_t)options defaultValue:(id)self0 state:(BOOL)self1 valueRef:(char *)self2
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __144___CADeveloperHUDProperties_featureRegisterToggle_title_envVar_description_documtationTitles_documentLinks_options_defaultValue_state_valueRef___block_invoke;
  v14[3] = &__block_descriptor_40_e31_v24__0__NSString_8__NSNumber_16l;
  v14[4] = ref;
  LOBYTE(v13) = state;
  return [(_CADeveloperHUDProperties *)self featureRegisterToggle:toggle title:title envVar:var description:description documtationTitles:titles documentLinks:links options:options defaultValue:value state:v13 didChange:v14];
}

- (BOOL)featureRegisterPopover:(id)popover title:(id)title envVar:(id)var description:(id)description documtationTitles:(id)titles documentLinks:(id)links options:(unint64_t)options defaultValue:(id)self0 items:(id)self1 selectedIndex:(unint64_t)self2 didChange:(id)self3
{
  popoverCopy = popover;
  titleCopy = title;
  varCopy = var;
  descriptionCopy = description;
  titlesCopy = titles;
  linksCopy = links;
  valueCopy = value;
  itemsCopy = items;
  changeCopy = change;
  v25 = popoverCopy;
  v36[0] = v25;
  v26 = titleCopy;
  v36[1] = v26;
  v27 = varCopy;
  v36[2] = v27;
  v36[3] = options;
  v36[4] = 0;
  v28 = valueCopy;
  v36[5] = v28;
  v29 = descriptionCopy;
  v36[6] = v29;
  v30 = linksCopy;
  v36[7] = v30;
  v31 = titlesCopy;
  v36[8] = v31;
  LOBYTE(linksCopy) = [(_CADeveloperHUDProperties *)self featureRegisterPopover:v36 items:itemsCopy selectedIndex:index didChange:changeCopy];
  __destructor_8_s0_s8_s16_s40_s48_s56_s64(v36);

  return linksCopy;
}

- (BOOL)featureRegisterPopover:(HUDUserFeatureDescriptor *)popover items:(id)items selectedIndex:(unint64_t)index didChange:(id)change
{
  changeCopy = change;
  itemsCopy = items;
  v12 = [[HUDUserClientFeatureEntry alloc] initPopover:popover items:itemsCopy selectedIndex:index didChange:changeCopy];

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

    features = [(HUDUserClientFeatureGroup *)v15 features];
    [features addObject:v12];
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
  layer = [v2 layer];

  return layer;
}

- (void)markCommandBuffer:(id)buffer component:(unsigned int)component
{
  bufferCopy = buffer;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
  HUDGPUTimeTrackerMarkCommandBuffer(GlobalInstance, bufferCopy, component);
}

- (void)markRenderEncoder:(id)encoder component:(unsigned int)component
{
  encoderCopy = encoder;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
  HUDGPUTimeTrackerMarkEncoder(GlobalInstance, encoderCopy, component);
}

- (void)markComputeEncoder:(id)encoder component:(unsigned int)component
{
  encoderCopy = encoder;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
  HUDGPUTimeTrackerMarkEncoder(GlobalInstance, encoderCopy, component);
}

- (void)markBlitEncoder:(id)encoder component:(unsigned int)component
{
  encoderCopy = encoder;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
  HUDGPUTimeTrackerMarkEncoder(GlobalInstance, encoderCopy, component);
}

- (void)markAccelerationStructureEncoder:(id)encoder component:(unsigned int)component
{
  encoderCopy = encoder;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
  HUDGPUTimeTrackerMarkEncoder(GlobalInstance, encoderCopy, component);
}

- (void)markResourceStateEncoder:(id)encoder component:(unsigned int)component
{
  encoderCopy = encoder;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
  HUDGPUTimeTrackerMarkEncoder(GlobalInstance, encoderCopy, component);
}

- (void)metalFXFrameInterpolatorEncodingEnd:(id)end
{
  endCopy = end;
  if ((HUDGetGlobalConfig()[6] & 1) == 0)
  {
    [(_CADeveloperHUDProperties *)self addMetric:@"com.apple.hud-label.metalfx.v2.interpolator" name:@"Frame Interpolator" unit:&stru_6ADA0 nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:1 options:0];
    LODWORD(v7) = 1;
    [(_CADeveloperHUDProperties *)self insertMetric:@"com.apple.hud-label.metalfx.v2.interpolator.deltaTime" after:@"com.apple.hud-label.metalfx.v2.interpolator" name:@"Interpolator Delta Time" unit:@"ms" nameColor:0xFFFFFFFFLL valueColor:0xFFFFFFFFLL visualType:v7 options:0];
    [(_CADeveloperHUDProperties *)self updateLabelMetric:@"com.apple.hud-label.metalfx.v2.interpolator" label:@"Enabled"];
    *(HUDGetGlobalConfig() + 12) = 1;
  }

  *(HUDGetGlobalConfig() + 13) = 1;
  v8 = endCopy;
  if (objc_opt_respondsToSelector())
  {
    [v8 deltaTime];
    *&v6 = v5 * 1000.0;
    [(_CADeveloperHUDProperties *)self updateFloatMetric:@"com.apple.hud-label.metalfx.v2.interpolator.deltaTime" value:v6];
  }
}

- (void)removeMetric:(id)metric
{
  metricCopy = metric;
  v4 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
  v5 = v4;
  if (v4)
  {
    [v4 removeMetrics:metricCopy];
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

- (void)framePacingCommandBufferCreated:(void *)created creationMAT:(unint64_t)t
{
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();

  HUDGPUTimeTrackerCommandBufferCreate(GlobalInstance, created);
}

- (void)framePacingCommandBufferCommitted:(void *)committed
{
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();

  HUDGPUTimeTrackerCommandBufferCommit(GlobalInstance, committed);
}

- (BOOL)captureGPUTrace:(id)trace capturableObject:(id)object timeOut:(unint64_t)out error:(id *)error
{
  traceCopy = trace;
  if (traceCopy)
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
    [v11 setOutputURL:traceCopy];
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    v13 = HUDGPUTimeTrackerGetFrameCaptureScopeAndStartCapture(GlobalInstance);
    [v11 setCaptureObject:v13];

    v14 = [v10 startCaptureWithDescriptor:v11 error:error];
    v15 = v14;
    if (out && v14)
    {
      v16 = dispatch_time(0, out);
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

- (id)getMetric:(id)metric
{
  metricCopy = metric;
  mainWindow = [(_CADeveloperHUDProperties *)self mainWindow];
  v6 = [mainWindow getMetric:metricCopy];

  return v6;
}

- (id)addBridgedMetric:(HUDMetricDescriptor *)metric record:(HUDValueHistoryRecord *)record
{
  if (metric)
  {
    v6 = [(NSMutableDictionary *)self->_windows objectForKeyedSubscript:@"com.apple.hud.overlay.main"];
    v7 = [[HUDUserClientMetric alloc] initWithBridgedDescriptor:metric record:record];
    [v6 addMetric:v7 after:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end