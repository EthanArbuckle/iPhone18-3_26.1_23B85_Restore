@interface VKARWalkingContinueFeature
- (BOOL)isEqual:(id)equal;
- (GEOPolylineCoordinateRange)range;
- (VKARWalkingContinueFeature)initWithRoute:(id)route range:(GEOPolylineCoordinateRange)range displayText:(id)text continuePriority:(unint64_t)priority;
- (id).cxx_construct;
- (id)description;
@end

@implementation VKARWalkingContinueFeature

- (id).cxx_construct
{
  *(self + 3) = 0xBF80000000000000;
  *(self + 4) = 0xBF80000000000000;
  *(self + 5) = &unk_1F2A4C308;
  *(self + 6) = 0;
  *(self + 8) = &unk_1F2A3D108;
  *(self + 9) = 0;
  return self;
}

- (GEOPolylineCoordinateRange)range
{
  p_range = &self->_range;
  start = self->_range.start;
  end = p_range->end;
  result.end = end;
  result.start = start;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = self->_displayText._obj;
  v7 = GEOPolylineCoordinateAsFullString();
  v8 = GEOPolylineCoordinateAsFullString();
  v9 = self->_route._obj;
  uniqueRouteID = [(GEOComposedRoute *)v9 uniqueRouteID];
  v11 = [v3 stringWithFormat:@"<%@: %p text:'%@' range.start:%@ range.end:%@ route:%@ continuePriority:%llu>", v5, self, v6, v7, v8, uniqueRouteID, -[VKARWalkingFeature intraFeaturePriority](self, "intraFeaturePriority")];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = VKARWalkingContinueFeature;
  if ([(VKARWalkingFeature *)&v18 isEqual:equalCopy]&& (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    v8 = equalCopy;
    uniqueRouteID = [(GEOComposedRoute *)self->_route._obj uniqueRouteID];
    route = [v8 route];
    uniqueRouteID2 = [route uniqueRouteID];
    v12 = [uniqueRouteID isEqual:uniqueRouteID2];

    if ((v12 & 1) != 0 && (v13 = [v8 range], self->_range.start.index == v13) && vabds_f32(self->_range.start.offset, *(&v13 + 1)) < 0.00000011921 && (objc_msgSend(v8, "range"), self->_range.end.index == v15) && vabds_f32(self->_range.end.offset, v14) < 0.00000011921)
    {
      v16 = self->_displayText._obj;
      displayText = [v8 displayText];
      v6 = [(NSString *)v16 isEqualToString:displayText];
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

- (VKARWalkingContinueFeature)initWithRoute:(id)route range:(GEOPolylineCoordinateRange)range displayText:(id)text continuePriority:(unint64_t)priority
{
  end = range.end;
  start = range.start;
  routeCopy = route;
  textCopy = text;
  v17.receiver = self;
  v17.super_class = VKARWalkingContinueFeature;
  v13 = [(VKARWalkingFeature *)&v17 initWithType:2 intraFeaturePriority:priority];
  v14 = v13;
  if (v13)
  {
    v13->_range.start = start;
    v13->_range.end = end;
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(&v13->_route, routeCopy);
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(&v14->_displayText, textCopy);
    v15 = v14;
  }

  return v14;
}

@end