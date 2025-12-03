@interface NSUUID
+ (id)uuidFromString:(id)string;
@end

@implementation NSUUID

+ (id)uuidFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] < 0xC)
  {
    stringCopy = [NSString stringWithFormat:@"%@%@%@%@", stringCopy, stringCopy, stringCopy, stringCopy];
    v4 = [stringCopy dataUsingEncoding:4];
  }

  else
  {
    v4 = [stringCopy dataUsingEncoding:4];
  }

  if ([v4 length] < 0xC)
  {
    v6 = +[NSUUID UUID];
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v10 = stringCopy;
      LOWORD(v11[0]) = 2112;
      *(v11 + 2) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Input string is not valid, string, %@, UUID, %@", buf, 0x16u);
    }
  }

  else
  {
    [v4 getBytes:buf range:{0, 12}];
    v11[0] = [stringCopy hash];
    v6 = [[NSUUID alloc] initWithUUIDBytes:buf];
  }

  return v6;
}

@end