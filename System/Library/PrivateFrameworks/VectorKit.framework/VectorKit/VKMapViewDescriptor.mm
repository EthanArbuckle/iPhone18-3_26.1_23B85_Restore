@interface VKMapViewDescriptor
+ (id)descriptorWithShouldRasterize:(BOOL)a3 inBackground:(BOOL)a4 contentScale:(double)a5 auditToken:(id)a6 mapViewPurpose:(int64_t)a7 allowsAntialiasing:(BOOL)a8;
- (VKMapViewDescriptor)init;
@end

@implementation VKMapViewDescriptor

- (VKMapViewDescriptor)init
{
  v3.receiver = self;
  v3.super_class = VKMapViewDescriptor;
  result = [(VKMapViewDescriptor *)&v3 init];
  if (result)
  {
    result->_shouldRasterize = 1;
    *&result->_mapKitUsage = 256;
    result->_mapKitClientMode = 0;
  }

  return result;
}

+ (id)descriptorWithShouldRasterize:(BOOL)a3 inBackground:(BOOL)a4 contentScale:(double)a5 auditToken:(id)a6 mapViewPurpose:(int64_t)a7 allowsAntialiasing:(BOOL)a8
{
  v8 = a8;
  v11 = a4;
  v12 = a3;
  v14 = a6;
  v15 = objc_alloc_init(a1);
  [v15 setShouldRasterize:v12];
  [v15 setInBackground:v11];
  [v15 setContentScale:a5];
  [v15 setAuditToken:v14];
  [v15 setMapViewPurpose:a7];
  [v15 setAllowsAntialiasing:v8];

  return v15;
}

@end