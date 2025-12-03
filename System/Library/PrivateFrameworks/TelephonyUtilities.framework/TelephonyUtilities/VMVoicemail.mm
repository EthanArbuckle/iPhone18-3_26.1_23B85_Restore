@interface VMVoicemail
- (TUHandle)csd_callbackHandle;
- (TUHandle)csd_senderHandle;
@end

@implementation VMVoicemail

- (TUHandle)csd_callbackHandle
{
  callbackDestinationID = [(VMVoicemail *)self callbackDestinationID];
  if ([callbackDestinationID length])
  {
    callbackISOCountryCode = [(VMVoicemail *)self callbackISOCountryCode];
    v5 = [TUHandle normalizedPhoneNumberHandleForValue:callbackDestinationID isoCountryCode:callbackISOCountryCode];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TUHandle)csd_senderHandle
{
  senderDestinationID = [(VMVoicemail *)self senderDestinationID];
  if ([senderDestinationID length])
  {
    senderISOCountryCode = [(VMVoicemail *)self senderISOCountryCode];
    v5 = [TUHandle normalizedPhoneNumberHandleForValue:senderDestinationID isoCountryCode:senderISOCountryCode];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end