@interface ACMTicketVerificationResponseImpl
- (NSNumber)personDSID;
@end

@implementation ACMTicketVerificationResponseImpl

- (NSNumber)personDSID
{
  v2 = [-[ACMMessage rawResponseData](self "rawResponseData")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = MEMORY[0x29EDBA070];
    v5 = [(NSNumber *)v2 unsignedLongLongValue];
    v6 = v4;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return v2;
    }

    v7 = [(NSNumber *)v2 longLongValue];
    if (v7 < 0)
    {
      return v2;
    }

    v5 = v7;
    v6 = MEMORY[0x29EDBA070];
  }

  return [v6 numberWithUnsignedLongLong:v5];
}

@end