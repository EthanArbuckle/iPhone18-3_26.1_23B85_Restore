@interface ATXNamedLOI
- (ATXNamedLOI)initWithName:(id)name type:(int64_t)type;
@end

@implementation ATXNamedLOI

- (ATXNamedLOI)initWithName:(id)name type:(int64_t)type
{
  nameCopy = name;
  v8 = objc_opt_new();
  v9 = CLLocationCoordinate2DMake(0.0, 0.0);
  v12.receiver = self;
  v12.super_class = ATXNamedLOI;
  v10 = [(ATXLocationOfInterest *)&v12 initWithUUID:v8 visits:0 coordinate:type type:v9.latitude, v9.longitude];

  if (v10)
  {
    objc_storeStrong(&v10->_name, name);
  }

  return v10;
}

@end