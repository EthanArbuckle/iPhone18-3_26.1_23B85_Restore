@interface VKMapViewDescriptor
+ (id)descriptorWithShouldRasterize:(BOOL)rasterize inBackground:(BOOL)background contentScale:(double)scale auditToken:(id)token mapViewPurpose:(int64_t)purpose allowsAntialiasing:(BOOL)antialiasing;
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

+ (id)descriptorWithShouldRasterize:(BOOL)rasterize inBackground:(BOOL)background contentScale:(double)scale auditToken:(id)token mapViewPurpose:(int64_t)purpose allowsAntialiasing:(BOOL)antialiasing
{
  antialiasingCopy = antialiasing;
  backgroundCopy = background;
  rasterizeCopy = rasterize;
  tokenCopy = token;
  v15 = objc_alloc_init(self);
  [v15 setShouldRasterize:rasterizeCopy];
  [v15 setInBackground:backgroundCopy];
  [v15 setContentScale:scale];
  [v15 setAuditToken:tokenCopy];
  [v15 setMapViewPurpose:purpose];
  [v15 setAllowsAntialiasing:antialiasingCopy];

  return v15;
}

@end