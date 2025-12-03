@interface BMStreamConfiguration
- (NSString)syncIdentifier;
- (id)syncIdentifierForTransport:(unint64_t)transport;
@end

@implementation BMStreamConfiguration

- (NSString)syncIdentifier
{
  syncPolicy = [(BMStreamConfiguration *)self syncPolicy];
  legacyDescriptor = [syncPolicy legacyDescriptor];
  lastPathComponent = [legacyDescriptor lastPathComponent];
  v6 = lastPathComponent;
  if (lastPathComponent)
  {
    uUIDString = lastPathComponent;
  }

  else
  {
    streamUUID = [(BMStreamConfiguration *)self streamUUID];
    uUIDString = [streamUUID UUIDString];
  }

  return uUIDString;
}

- (id)syncIdentifierForTransport:(unint64_t)transport
{
  if (transport == 2)
  {
    syncPolicy = [(BMStreamConfiguration *)self syncPolicy];
    legacyDescriptor = [syncPolicy legacyDescriptor];
    v6 = legacyDescriptor;
    if (legacyDescriptor)
    {
      uUIDString = legacyDescriptor;
    }

    else
    {
      streamUUID = [(BMStreamConfiguration *)self streamUUID];
      uUIDString = [streamUUID UUIDString];
    }
  }

  else
  {
    uUIDString = [(BMStreamConfiguration *)self syncIdentifier];
  }

  return uUIDString;
}

@end