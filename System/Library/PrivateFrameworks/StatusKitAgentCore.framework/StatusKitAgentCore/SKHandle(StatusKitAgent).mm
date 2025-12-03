@interface SKHandle(StatusKitAgent)
- (id)idsDestination;
- (id)idsURI;
- (id)normalizedHandleString;
- (uint64_t)isNormalizedEqualToHandle:()StatusKitAgent;
@end

@implementation SKHandle(StatusKitAgent)

- (id)idsDestination
{
  handleString = [self handleString];
  if ([handleString ska_appearsToBeEmail])
  {
    v2 = MEMORY[0x223D77450](handleString);
  }

  else if (MEMORY[0x223D774B0](handleString))
  {
    v2 = IDSCopyIDForPseudonymID();
  }

  else
  {
    v2 = IDSCopyIDForPhoneNumber();
  }

  v3 = v2;

  return v3;
}

- (id)idsURI
{
  v2 = objc_alloc(MEMORY[0x277D18A48]);
  handleString = [self handleString];
  v4 = [v2 initWithUnprefixedURI:handleString];

  return v4;
}

- (id)normalizedHandleString
{
  v2 = objc_alloc(MEMORY[0x277D18A48]);
  handleString = [self handleString];
  v4 = [v2 initWithUnprefixedURI:handleString];

  unprefixedURI = [v4 unprefixedURI];

  return unprefixedURI;
}

- (uint64_t)isNormalizedEqualToHandle:()StatusKitAgent
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  normalizedHandleString = [self normalizedHandleString];
  normalizedHandleString2 = [v4 normalizedHandleString];

  if (normalizedHandleString | normalizedHandleString2)
  {
    v7 = [normalizedHandleString isEqualToString:normalizedHandleString2];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end