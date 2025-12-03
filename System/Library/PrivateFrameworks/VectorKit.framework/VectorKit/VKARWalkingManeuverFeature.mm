@interface VKARWalkingManeuverFeature
- ($1AB5FA073B851C12C2339EC22442E995)position;
- (BOOL)isEqual:(id)equal;
- (Coordinate3D<geo::Degrees,)coordinate;
- (VKARWalkingManeuverFeature)initWithDisplayLocation:(id)location routeCoordinate:(PolylineCoordinate)coordinate maneuverHeading:(double)heading displayText:(id)text maneuverPriority:(unint64_t)priority elevationModel:(int)model;
- (id).cxx_construct;
- (id)description;
@end

@implementation VKARWalkingManeuverFeature

- (id).cxx_construct
{
  *(self + 6) = 0xBF80000000000000;
  *(self + 8) = &unk_1F2A3D108;
  *(self + 9) = 0;
  return self;
}

- ($1AB5FA073B851C12C2339EC22442E995)position
{
  latitude = self->_position.latitude;
  longitude = self->_position.longitude;
  altitude = self->_position.altitude;
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
  v6 = self->_displayText._obj;
  latitude = self->_position.latitude;
  longitude = self->_position.longitude;
  altitude = self->_position.altitude;
  v10 = GEOPolylineCoordinateAsFullString();
  v11 = [v3 stringWithFormat:@"<%@: %p text:'%@' position:%f, %f, %f routeCoordinate:%@ heading:%.2f maneuverPriority:%llu>", v5, self, v6, *&latitude, *&longitude, *&altitude, v10, *&self->_maneuverHeading, -[VKARWalkingFeature intraFeaturePriority](self, "intraFeaturePriority")];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v20.receiver = self;
  v20.super_class = VKARWalkingManeuverFeature;
  if ([(VKARWalkingFeature *)&v20 isEqual:equalCopy]&& (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    v8 = equalCopy;
    latitude = self->_position.latitude;
    longitude = self->_position.longitude;
    altitude = self->_position.altitude;
    [v8 position];
    if (vabdd_f64(latitude, v14) < 0.000001 && vabdd_f64(longitude, v12) < 0.000001 && vabdd_f64(altitude, v13) < 0.000001 && ([v8 routeCoordinate], GEOPolylineCoordinateEqualEps()) && (v15 = self->_displayText._obj, objc_msgSend(v8, "displayText"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[NSString isEqualToString:](v15, "isEqualToString:", v16), v16, v15, v17))
    {
      maneuverHeading = self->_maneuverHeading;
      [v8 maneuverHeading];
      v6 = vabdd_f64(maneuverHeading, v19) <= 0.01;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (Coordinate3D<geo::Degrees,)coordinate
{
  altitude = self->_position.altitude;
  v4 = *&self->_position.latitude;
  *v2 = v4;
  *(v2 + 16) = altitude;
  result.longitude = v4;
  result.latitude = *&altitude;
  return result;
}

- (VKARWalkingManeuverFeature)initWithDisplayLocation:(id)location routeCoordinate:(PolylineCoordinate)coordinate maneuverHeading:(double)heading displayText:(id)text maneuverPriority:(unint64_t)priority elevationModel:(int)model
{
  var2 = location.var2;
  var1 = location.var1;
  var0 = location.var0;
  textCopy = text;
  v26.receiver = self;
  v26.super_class = VKARWalkingManeuverFeature;
  v17 = [(VKARWalkingFeature *)&v26 initWithType:0 intraFeaturePriority:priority];
  v18 = v17;
  if (v17)
  {
    p_latitude = &v17->_position.latitude;
    v17->_position.latitude = var0;
    v17->_position.longitude = var1;
    v17->_position.altitude = var2;
    v17->_routeCoordinate = coordinate;
    v17->_maneuverHeading = heading;
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(&v17->_displayText, textCopy);
    v18->_elevationModel = model;
    if (model == 1)
    {
      v20 = +[VKSharedResourcesManager sharedResources];
      undulationModel = [v20 undulationModel];

      Undulation = md::GeoidModel::getUndulation(undulationModel, *p_latitude, v18->_position.longitude);
      v23 = *&Undulation;
      if (!HIDWORD(Undulation))
      {
        v23 = 0.0;
      }

      v18->_position.altitude = v18->_position.altitude - v23;
    }

    v24 = v18;
  }

  return v18;
}

@end