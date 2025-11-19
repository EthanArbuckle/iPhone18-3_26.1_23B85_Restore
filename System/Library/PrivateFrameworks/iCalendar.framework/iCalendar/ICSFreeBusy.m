@interface ICSFreeBusy
- (NSString)x_calendarserver_extended_freebusy;
- (NSString)x_calendarserver_mask_uid;
@end

@implementation ICSFreeBusy

- (NSString)x_calendarserver_mask_uid
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-CALENDARSERVER-MASK-UID"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (NSString)x_calendarserver_extended_freebusy
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-CALENDARSERVER-EXTENDED-FREEBUSY"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

@end