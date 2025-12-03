@interface NSString(RWINSStringExtras)
- (id)rwi_macAddressForBonjourServiceName;
@end

@implementation NSString(RWINSStringExtras)

- (id)rwi_macAddressForBonjourServiceName
{
  v1 = [self componentsSeparatedByString:@"@"];
  if ([v1 count] && (objc_msgSend(v1, "objectAtIndexedSubscript:", 0), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "containsString:", @":"), v2, v3))
  {
    v4 = [v1 objectAtIndexedSubscript:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end