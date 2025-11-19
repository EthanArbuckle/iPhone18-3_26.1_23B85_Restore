@interface BMStreamConfiguration
- (NSString)syncIdentifier;
- (id)syncIdentifierForTransport:(unint64_t)a3;
@end

@implementation BMStreamConfiguration

- (NSString)syncIdentifier
{
  v3 = [(BMStreamConfiguration *)self syncPolicy];
  v4 = [v3 legacyDescriptor];
  v5 = [v4 lastPathComponent];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(BMStreamConfiguration *)self streamUUID];
    v7 = [v8 UUIDString];
  }

  return v7;
}

- (id)syncIdentifierForTransport:(unint64_t)a3
{
  if (a3 == 2)
  {
    v4 = [(BMStreamConfiguration *)self syncPolicy];
    v5 = [v4 legacyDescriptor];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = [(BMStreamConfiguration *)self streamUUID];
      v7 = [v8 UUIDString];
    }
  }

  else
  {
    v7 = [(BMStreamConfiguration *)self syncIdentifier];
  }

  return v7;
}

@end