@interface ISODeviceEngagementCapabilities
- (ISODeviceEngagementCapabilities)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISODeviceEngagementCapabilities

- (id)description
{
  v3 = objc_opt_class();
  v4 = @"NO";
  if (self)
  {
    v5 = @"YES";
    if (self->_handoverSessionEstablishmentSupported)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    if (self->_extendedRequestSupported)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if (!self->_readerAuthAllSupported)
    {
      v5 = @"NO";
    }

    v4 = v6;
  }

  else
  {
    v7 = @"NO";
    v5 = @"NO";
  }

  return [NSString stringWithFormat:@"<%@ isHandoverSessionEstablishmentSupported=%@ isExtendedRequestSupported=%@ isReaderAuthAllSupported=%@>", v3, v4, v7, v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[ISODeviceEngagementCapabilities allocWithZone:?]];
  if (self)
  {
    *(result + 8) = self->_handoverSessionEstablishmentSupported;
    *(result + 9) = self->_extendedRequestSupported;
    readerAuthAllSupported = self->_readerAuthAllSupported;
  }

  else
  {
    readerAuthAllSupported = 0;
    *(result + 4) = 0;
  }

  *(result + 10) = readerAuthAllSupported;
  return result;
}

- (ISODeviceEngagementCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(ISODeviceEngagementCapabilities);
  v5->_handoverSessionEstablishmentSupported = [coderCopy decodeBoolForKey:@"ISODeviceEngagementCapabilitiesHandoverSessionEstablishmentSupported"];
  v5->_extendedRequestSupported = [coderCopy decodeBoolForKey:@"ISODeviceEngagementCapabilitiesExtendedRequestSupported"];
  v6 = [coderCopy decodeBoolForKey:@"ISODeviceEngagementCapabilitiesReaderAuthAllSupported"];

  v5->_readerAuthAllSupported = v6;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    handoverSessionEstablishmentSupported = self->_handoverSessionEstablishmentSupported;
    coderCopy = coder;
    [coderCopy encodeBool:handoverSessionEstablishmentSupported forKey:@"ISODeviceEngagementCapabilitiesHandoverSessionEstablishmentSupported"];
    [coderCopy encodeBool:self->_extendedRequestSupported forKey:@"ISODeviceEngagementCapabilitiesExtendedRequestSupported"];
    readerAuthAllSupported = self->_readerAuthAllSupported;
  }

  else
  {
    coderCopy2 = coder;
    [coderCopy2 encodeBool:0 forKey:@"ISODeviceEngagementCapabilitiesHandoverSessionEstablishmentSupported"];
    [coderCopy2 encodeBool:0 forKey:@"ISODeviceEngagementCapabilitiesExtendedRequestSupported"];
    readerAuthAllSupported = 0;
  }

  [coder encodeBool:readerAuthAllSupported forKey:@"ISODeviceEngagementCapabilitiesReaderAuthAllSupported"];
}

@end