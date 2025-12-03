@interface TSCHChartTypeLine3D
- (TSCH3DChartRotationLimit)rotation3DLimit;
- (id)defaultDataFileName;
- (id)imageWithPreset:(id)preset target:(int)target imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame documentRoot:(id)root shouldCache:(BOOL *)cache;
- (id)name;
- (id)userInterfaceName;
@end

@implementation TSCHChartTypeLine3D

- (TSCH3DChartRotationLimit)rotation3DLimit
{
  v2 = -40.0;
  v3 = 40.0;
  v4 = -30.0;
  v5 = 9.0;
  result.var3 = v5;
  result.var2 = v4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"3D Line", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)defaultDataFileName
{
  v6 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], a2, v2, v3, v4);
  if (objc_msgSend_designModeEnabled(v6, v7, v8, v9, v10))
  {
    v15 = @"TSCHDesignDefaultData3DLine.plist";
  }

  else
  {
    v16 = objc_msgSend_feature(self, v11, v12, v13, v14);
    v15 = objc_msgSend_defaultDataFileName(v16, v17, v18, v19, v20);
  }

  return v15;
}

- (id)imageWithPreset:(id)preset target:(int)target imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame documentRoot:(id)root shouldCache:(BOOL *)cache
{
  v11.receiver = self;
  v11.super_class = TSCHChartTypeLine3D;
  v9 = [(TSCHChartType *)&v11 imageWithPreset:preset target:*&target imageSize:root imageScale:cache swatchFrame:size.width documentRoot:size.height shouldCache:scale, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return v9;
}

- (id)name
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"3D Line Chart", &stru_288528678, @"TSCharts");

  return v10;
}

@end