@interface VMVoicemail
- (TUHandle)csd_callbackHandle;
- (TUHandle)csd_senderHandle;
@end

@implementation VMVoicemail

- (TUHandle)csd_callbackHandle
{
  v3 = [(VMVoicemail *)self callbackDestinationID];
  if ([v3 length])
  {
    v4 = [(VMVoicemail *)self callbackISOCountryCode];
    v5 = [TUHandle normalizedPhoneNumberHandleForValue:v3 isoCountryCode:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TUHandle)csd_senderHandle
{
  v3 = [(VMVoicemail *)self senderDestinationID];
  if ([v3 length])
  {
    v4 = [(VMVoicemail *)self senderISOCountryCode];
    v5 = [TUHandle normalizedPhoneNumberHandleForValue:v3 isoCountryCode:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end