@interface VKARWalkingFeatureDidUpdateInfo
- ($1AB5FA073B851C12C2339EC22442E995)labelPosition;
- (VKARWalkingFeatureDidUpdateInfo)initWithFeature:(id)a3 featureLabelIdentifier:(unint64_t)a4 featureSet:(id)a5 labelPosition:(const void *)a6 updateTypes:(int64_t)a7 isVisible:(BOOL)a8 isDirectlyBehind:(BOOL)a9 screenHeading:()Unit<geo:(double>)a10 :DegreeUnitDescription;
- (id).cxx_construct;
- (id)description;
- (id)stringForUpdateTypes;
@end

@implementation VKARWalkingFeatureDidUpdateInfo

- (id).cxx_construct
{
  *(self + 1) = &unk_1F2A580C8;
  *(self + 2) = 0;
  *(self + 4) = &unk_1F2A3ED40;
  *(self + 5) = 0;
  return self;
}

- ($1AB5FA073B851C12C2339EC22442E995)labelPosition
{
  latitude = self->_labelPosition.latitude;
  longitude = self->_labelPosition.longitude;
  altitude = self->_labelPosition.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = self->_feature._obj;
  latitude = self->_labelPosition.latitude;
  longitude = self->_labelPosition.longitude;
  altitude = self->_labelPosition.altitude;
  v10 = [(VKARWalkingFeatureDidUpdateInfo *)self stringForUpdateTypes];
  v11 = v10;
  v12 = @"NO";
  if (self->_isVisible)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (self->_isDirectlyBehind)
  {
    v12 = @"YES";
  }

  v14 = [v3 stringWithFormat:@"<%@: %p feature:%@ position:(%f, %f, %f) updateTypes:%@ isVisible:%@ isDirectlyBehind:%@ screenHeading:%.2f>", v5, self, v6, *&latitude, *&longitude, *&altitude, v10, v13, v12, *&self->_screenHeading._value];

  return v14;
}

- (id)stringForUpdateTypes
{
  if (self->_updateTypes)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = v3;
    updateTypes = self->_updateTypes;
    if (updateTypes)
    {
      [v3 addObject:@"Heading"];
      updateTypes = self->_updateTypes;
    }

    if ((updateTypes & 2) != 0)
    {
      [v4 addObject:@"Feature"];
      updateTypes = self->_updateTypes;
    }

    if ((updateTypes & 4) != 0)
    {
      [v4 addObject:@"Label"];
      updateTypes = self->_updateTypes;
    }

    if ((updateTypes & 8) != 0)
    {
      [v4 addObject:@"Visibility"];
    }

    v6 = [v4 componentsJoinedByString:@"|"];
  }

  else
  {
    v6 = &stru_1F2A61C40;
  }

  return v6;
}

- (VKARWalkingFeatureDidUpdateInfo)initWithFeature:(id)a3 featureLabelIdentifier:(unint64_t)a4 featureSet:(id)a5 labelPosition:(const void *)a6 updateTypes:(int64_t)a7 isVisible:(BOOL)a8 isDirectlyBehind:(BOOL)a9 screenHeading:()Unit<geo:(double>)a10 :DegreeUnitDescription
{
  v16 = a3;
  v17 = a5;
  v23.receiver = self;
  v23.super_class = VKARWalkingFeatureDidUpdateInfo;
  v18 = [(VKARWalkingFeatureDidUpdateInfo *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_featureLabelIdentifier = a4;
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(&v18->_feature, v16);
    geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(&v19->_featureSet, v17);
    v20 = *(a6 + 2);
    *&v19->_labelPosition.latitude = *a6;
    v19->_labelPosition.altitude = v20;
    v19->_updateTypes = a7;
    v19->_isVisible = a8;
    v19->_isDirectlyBehind = a9;
    v19->_screenHeading._value = *v24;
    v21 = v19;
  }

  return v19;
}

@end