@interface WFReverseCircleOverlay
+ (id)circleWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius boundingMapRect:(id)rect;
- ($9AD185B98C4A4E0F06446A487FEC3478)boundingMapRect;
- ($9AD185B98C4A4E0F06446A487FEC3478)boundingRect;
- ($9AD185B98C4A4E0F06446A487FEC3478)innerCircleBoundingMapRect;
@end

@implementation WFReverseCircleOverlay

- ($9AD185B98C4A4E0F06446A487FEC3478)boundingRect
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- ($9AD185B98C4A4E0F06446A487FEC3478)innerCircleBoundingMapRect
{
  v6.receiver = self;
  v6.super_class = WFReverseCircleOverlay;
  [(MKCircle *)&v6 boundingMapRect];
  result.var1.var1 = v5;
  result.var1.var0 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

- ($9AD185B98C4A4E0F06446A487FEC3478)boundingMapRect
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

+ (id)circleWithCenterCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius boundingMapRect:(id)rect
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v7 = rect.var0.var1;
  v8 = rect.var0.var0;
  radius = [(MKCircle *)WFReverseCircleOverlay circleWithCenterCoordinate:coordinate.latitude radius:coordinate.longitude, radius];
  [radius setBoundingRect:{v8, v7, var0, var1}];

  return radius;
}

@end