@interface ISODeviceEngagementCapabilities
- (ISODeviceEngagementCapabilities)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
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

- (ISODeviceEngagementCapabilities)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ISODeviceEngagementCapabilities);
  v5->_handoverSessionEstablishmentSupported = [v4 decodeBoolForKey:@"ISODeviceEngagementCapabilitiesHandoverSessionEstablishmentSupported"];
  v5->_extendedRequestSupported = [v4 decodeBoolForKey:@"ISODeviceEngagementCapabilitiesExtendedRequestSupported"];
  v6 = [v4 decodeBoolForKey:@"ISODeviceEngagementCapabilitiesReaderAuthAllSupported"];

  v5->_readerAuthAllSupported = v6;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    handoverSessionEstablishmentSupported = self->_handoverSessionEstablishmentSupported;
    v5 = a3;
    [v5 encodeBool:handoverSessionEstablishmentSupported forKey:@"ISODeviceEngagementCapabilitiesHandoverSessionEstablishmentSupported"];
    [v5 encodeBool:self->_extendedRequestSupported forKey:@"ISODeviceEngagementCapabilitiesExtendedRequestSupported"];
    readerAuthAllSupported = self->_readerAuthAllSupported;
  }

  else
  {
    v7 = a3;
    [v7 encodeBool:0 forKey:@"ISODeviceEngagementCapabilitiesHandoverSessionEstablishmentSupported"];
    [v7 encodeBool:0 forKey:@"ISODeviceEngagementCapabilitiesExtendedRequestSupported"];
    readerAuthAllSupported = 0;
  }

  [a3 encodeBool:readerAuthAllSupported forKey:@"ISODeviceEngagementCapabilitiesReaderAuthAllSupported"];
}

@end