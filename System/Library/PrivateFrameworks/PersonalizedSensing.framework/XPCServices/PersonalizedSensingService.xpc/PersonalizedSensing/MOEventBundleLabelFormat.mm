@interface MOEventBundleLabelFormat
- (MOEventBundleLabelFormat)initWithFormat:(id)format capitalizationType:(unint64_t)type;
- (id)description;
@end

@implementation MOEventBundleLabelFormat

- (MOEventBundleLabelFormat)initWithFormat:(id)format capitalizationType:(unint64_t)type
{
  formatCopy = format;
  if (formatCopy)
  {
    v13.receiver = self;
    v13.super_class = MOEventBundleLabelFormat;
    v8 = [(MOEventBundleLabelFormat *)&v13 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_format, format);
      v9->_capitalizationType = type;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormat initWithFormat:v11 capitalizationType:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  format = [(MOEventBundleLabelFormat *)self format];
  v4 = [NSString stringWithFormat:@"labels, %@, capitalization type, %lu", format, [(MOEventBundleLabelFormat *)self capitalizationType]];

  return v4;
}

@end