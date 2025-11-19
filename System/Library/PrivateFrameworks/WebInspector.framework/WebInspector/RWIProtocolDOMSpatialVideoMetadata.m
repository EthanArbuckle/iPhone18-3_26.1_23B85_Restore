@interface RWIProtocolDOMSpatialVideoMetadata
- (RWIProtocolDOMSpatialVideoMetadata)initWithWidth:(double)a3 height:(double)a4 horizontalFOVDegrees:(double)a5 baseline:(double)a6 disparityAdjustment:(double)a7;
- (double)baseline;
- (double)disparityAdjustment;
- (double)height;
- (double)horizontalFOVDegrees;
- (double)width;
- (void)setBaseline:(double)a3;
- (void)setDisparityAdjustment:(double)a3;
- (void)setHeight:(double)a3;
- (void)setHorizontalFOVDegrees:(double)a3;
- (void)setWidth:(double)a3;
@end

@implementation RWIProtocolDOMSpatialVideoMetadata

- (RWIProtocolDOMSpatialVideoMetadata)initWithWidth:(double)a3 height:(double)a4 horizontalFOVDegrees:(double)a5 baseline:(double)a6 disparityAdjustment:(double)a7
{
  v16.receiver = self;
  v16.super_class = RWIProtocolDOMSpatialVideoMetadata;
  v12 = [(RWIProtocolJSONObject *)&v16 init];
  v13 = v12;
  if (v12)
  {
    [(RWIProtocolDOMSpatialVideoMetadata *)v12 setWidth:a3];
    [(RWIProtocolDOMSpatialVideoMetadata *)v13 setHeight:a4];
    [(RWIProtocolDOMSpatialVideoMetadata *)v13 setHorizontalFOVDegrees:a5];
    [(RWIProtocolDOMSpatialVideoMetadata *)v13 setBaseline:a6];
    [(RWIProtocolDOMSpatialVideoMetadata *)v13 setDisparityAdjustment:a7];
    v14 = v13;
  }

  return v13;
}

- (void)setWidth:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"width" forKey:a3];
}

- (double)width
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"width"];
  return result;
}

- (void)setHeight:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"height" forKey:a3];
}

- (double)height
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"height"];
  return result;
}

- (void)setHorizontalFOVDegrees:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"horizontalFOVDegrees" forKey:a3];
}

- (double)horizontalFOVDegrees
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"horizontalFOVDegrees"];
  return result;
}

- (void)setBaseline:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"baseline" forKey:a3];
}

- (double)baseline
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"baseline"];
  return result;
}

- (void)setDisparityAdjustment:(double)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"disparityAdjustment" forKey:a3];
}

- (double)disparityAdjustment
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMSpatialVideoMetadata;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"disparityAdjustment"];
  return result;
}

@end