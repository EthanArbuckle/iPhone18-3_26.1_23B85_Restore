@interface ICSFreeBusy
- (NSString)x_calendarserver_extended_freebusy;
- (NSString)x_calendarserver_mask_uid;
@end

@implementation ICSFreeBusy

- (NSString)x_calendarserver_mask_uid
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-CALENDARSERVER-MASK-UID"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

- (NSString)x_calendarserver_extended_freebusy
{
  v2 = [(ICSComponent *)self propertiesForName:@"X-CALENDARSERVER-EXTENDED-FREEBUSY"];
  lastObject = [v2 lastObject];
  value = [lastObject value];

  return value;
}

@end