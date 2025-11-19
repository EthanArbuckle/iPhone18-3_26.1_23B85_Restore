@interface VKARWalkingManeuverFeature
- ($1AB5FA073B851C12C2339EC22442E995)position;
- (BOOL)isEqual:(id)a3;
- (Coordinate3D<geo::Degrees,)coordinate;
- (VKARWalkingManeuverFeature)initWithDisplayLocation:(id)a3 routeCoordinate:(PolylineCoordinate)a4 maneuverHeading:(double)a5 displayText:(id)a6 maneuverPriority:(unint64_t)a7 elevationModel:(int)a8;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = VKARWalkingManeuverFeature;
  if ([(VKARWalkingFeature *)&v20 isEqual:v4]&& (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    v8 = v4;
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

- (VKARWalkingManeuverFeature)initWithDisplayLocation:(id)a3 routeCoordinate:(PolylineCoordinate)a4 maneuverHeading:(double)a5 displayText:(id)a6 maneuverPriority:(unint64_t)a7 elevationModel:(int)a8
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v16 = a6;
  v26.receiver = self;
  v26.super_class = VKARWalkingManeuverFeature;
  v17 = [(VKARWalkingFeature *)&v26 initWithType:0 intraFeaturePriority:a7];
  v18 = v17;
  if (v17)
  {
    p_latitude = &v17->_position.latitude;
    v17->_position.latitude = var0;
    v17->_position.longitude = var1;
    v17->_position.altitude = var2;
    v17->_routeCoordinate = a4;
    v17->_maneuverHeading = a5;
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(&v17->_displayText, v16);
    v18->_elevationModel = a8;
    if (a8 == 1)
    {
      v20 = +[VKSharedResourcesManager sharedResources];
      v21 = [v20 undulationModel];

      Undulation = md::GeoidModel::getUndulation(v21, *p_latitude, v18->_position.longitude);
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