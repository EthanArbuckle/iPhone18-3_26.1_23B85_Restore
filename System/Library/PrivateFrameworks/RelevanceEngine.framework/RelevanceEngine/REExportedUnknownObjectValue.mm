@interface REExportedUnknownObjectValue
- (REExportedUnknownObjectValue)initWithObject:(id)a3;
@end

@implementation REExportedUnknownObjectValue

- (REExportedUnknownObjectValue)initWithObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REExportedUnknownObjectValue;
  v6 = [(REExportedUnknownObjectValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_object, a3);
  }

  return v7;
}

@end