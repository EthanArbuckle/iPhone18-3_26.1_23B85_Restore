@interface MOEventBundleLabelFormat
- (MOEventBundleLabelFormat)initWithFormat:(id)a3 capitalizationType:(unint64_t)a4;
- (id)description;
@end

@implementation MOEventBundleLabelFormat

- (MOEventBundleLabelFormat)initWithFormat:(id)a3 capitalizationType:(unint64_t)a4
{
  v7 = a3;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = MOEventBundleLabelFormat;
    v8 = [(MOEventBundleLabelFormat *)&v13 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_format, a3);
      v9->_capitalizationType = a4;
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormat initWithFormat:v11 capitalizationType:?];
    }

    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = [(MOEventBundleLabelFormat *)self format];
  v4 = [NSString stringWithFormat:@"labels, %@, capitalization type, %lu", v3, [(MOEventBundleLabelFormat *)self capitalizationType]];

  return v4;
}

@end