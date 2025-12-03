@interface RWIProtocolDOMSpatialVideoMetadata
- (RWIProtocolDOMSpatialVideoMetadata)initWithWidth:(double)width height:(double)height horizontalFOVDegrees:(double)degrees baseline:(double)baseline disparityAdjustment:(double)adjustment;
- (double)baseline;
- (double)disparityAdjustment;
- (double)height;
- (double)horizontalFOVDegrees;
- (double)width;
- (void)setBaseline:(double)baseline;
- (void)setDisparityAdjustment:(double)adjustment;
- (void)setHeight:(double)height;
- (void)setHorizontalFOVDegrees:(double)degrees;
- (void)setWidth:(double)width;
@end

@implementation RWIProtocolDOMSpatialVideoMetadata

- (RWIProtocolDOMSpatialVideoMetadata)initWithWidth:(double)width height:(double)height horizontalFOVDegrees:(double)degrees baseline:(double)baseline disparityAdjustment:(double)adjustment
{
  v16.receiver = self;
  v16.super_class = RWIProtocolDOMSpatialVideoMetadata;
  v12 = [(RWIProtocolJSONObject *)&v16 init];
  v13 = v12;
  if (v12)
  {
    [(RWIProtocolDOMSpatialVideoMetadata *)v12 setWidth:width];
    [(RWIProtocolDOMSpatialVideoMetadata *)v13 setHeight:height];
    [(RWIProtocolDOMSpatialVideoMetadata *)v13 setHorizontalFOVDegrees:degrees];
    [(RWIProtocolDOMSpatialVideoMetadata *)v13 setBaseline:baseline];
    [(RWIProtocolDOMSpatialVideoMetadata *)v13 setDisparityAdjustment:adjustment];
    v14 = v13;
  }

  return v13;
}

- (void)setWidth:(double)width
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"width" forKey:width];
}

- (double)width
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"width"];
  return result;
}

- (void)setHeight:(double)height
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"height" forKey:height];
}

- (double)height
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"height"];
  return result;
}

- (void)setHorizontalFOVDegrees:(double)degrees
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"horizontalFOVDegrees" forKey:degrees];
}

- (double)horizontalFOVDegrees
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"horizontalFOVDegrees"];
  return result;
}

- (void)setBaseline:(double)baseline
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"baseline" forKey:baseline];
}

- (double)baseline
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"baseline"];
  return result;
}

- (void)setDisparityAdjustment:(double)adjustment
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"disparityAdjustment" forKey:adjustment];
}

- (double)disparityAdjustment
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"disparityAdjustment"];
  return result;
}

@end