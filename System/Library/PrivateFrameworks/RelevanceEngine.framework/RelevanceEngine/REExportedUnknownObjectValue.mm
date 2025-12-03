@interface REExportedUnknownObjectValue
- (REExportedUnknownObjectValue)initWithObject:(id)object;
@end

@implementation REExportedUnknownObjectValue

- (REExportedUnknownObjectValue)initWithObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = REExportedUnknownObjectValue;
  v6 = [(REExportedUnknownObjectValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, object);
  }

  return v7;
}

@end