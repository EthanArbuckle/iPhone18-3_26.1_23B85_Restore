@interface ICPushNotificationsResponse
- (ICPushNotificationsResponse)initWithResponseDictionary:(id)dictionary;
@end

@implementation ICPushNotificationsResponse

- (ICPushNotificationsResponse)initWithResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(ICPushNotificationsResponse *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"status"];
    if (objc_opt_respondsToSelector())
    {
      v5->_statusCode = [v6 integerValue];
    }
  }

  return v5;
}

@end