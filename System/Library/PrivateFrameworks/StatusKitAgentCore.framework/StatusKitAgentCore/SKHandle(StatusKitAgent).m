@interface SKHandle(StatusKitAgent)
- (id)idsDestination;
- (id)idsURI;
- (id)normalizedHandleString;
- (uint64_t)isNormalizedEqualToHandle:()StatusKitAgent;
@end

@implementation SKHandle(StatusKitAgent)

- (id)idsDestination
{
  v1 = [a1 handleString];
  if ([v1 ska_appearsToBeEmail])
  {
    v2 = MEMORY[0x223D77450](v1);
  }

  else if (MEMORY[0x223D774B0](v1))
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
  v3 = [a1 handleString];
  v4 = [v2 initWithUnprefixedURI:v3];

  return v4;
}

- (id)normalizedHandleString
{
  v2 = objc_alloc(MEMORY[0x277D18A48]);
  v3 = [a1 handleString];
  v4 = [v2 initWithUnprefixedURI:v3];

  v5 = [v4 unprefixedURI];

  return v5;
}

- (uint64_t)isNormalizedEqualToHandle:()StatusKitAgent
{
  if (a3 == a1)
  {
    return 1;
  }

  v4 = a3;
  v5 = [a1 normalizedHandleString];
  v6 = [v4 normalizedHandleString];

  if (v5 | v6)
  {
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end