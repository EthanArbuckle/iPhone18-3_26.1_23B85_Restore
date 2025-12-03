@interface PHPerson(PNPersonProtocol)
- (__CFString)anonymizedName;
- (id)keyFace;
- (id)personLocalIdentifiers;
- (void)pn_addMergeCandidatePersons:()PNPersonProtocol;
- (void)setIsVerified:()PNPersonProtocol;
- (void)setKeyFace:()PNPersonProtocol;
- (void)setManualOrder:()PNPersonProtocol;
@end

@implementation PHPerson(PNPersonProtocol)

- (id)personLocalIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  localIdentifier = [self localIdentifier];
  v4[0] = localIdentifier;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)pn_addMergeCandidatePersons:()PNPersonProtocol
{
  v4 = MEMORY[0x1E6978990];
  v5 = a3;
  v6 = [v4 changeRequestForPerson:self];
  [v6 addMergeCandidatePersons:v5];
}

- (void)setKeyFace:()PNPersonProtocol
{
  v9 = a3;
  keyFace = [self keyFace];
  localIdentifier = [keyFace localIdentifier];
  localIdentifier2 = [v9 localIdentifier];
  v7 = [localIdentifier isEqualToString:localIdentifier2];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x1E6978990] changeRequestForPerson:self];
    [v8 setKeyFace:v9 forCluster:0];
  }
}

- (id)keyFace
{
  v1 = [MEMORY[0x1E69787C8] fetchKeyFaceForPerson:self options:0];
  firstObject = [v1 firstObject];

  return firstObject;
}

- (void)setManualOrder:()PNPersonProtocol
{
  v4 = [MEMORY[0x1E6978990] changeRequestForPerson:self];
  [v4 setManualOrder:a3];
}

- (void)setIsVerified:()PNPersonProtocol
{
  v1 = [MEMORY[0x1E6978990] changeRequestForPerson:self];
  [v1 setVerifiedType:2];
}

- (__CFString)anonymizedName
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_getAssociatedObject(self, &PHPersonPVPersonProtocolAnonymizedNameKey);
  if (!v2)
  {
    name = [self name];
    if ([name length])
    {
      v4 = [name dataUsingEncoding:1 allowLossyConversion:1];
      CC_SHA1([v4 bytes], objc_msgSend(v4, "length"), md);
      v5 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:20];
      v2 = [v5 base64EncodedStringWithOptions:0];
    }

    else
    {
      v2 = 0;
    }

    if (v2)
    {
      v6 = v2;
    }

    else
    {
      v6 = &stru_1F46CD000;
    }

    objc_setAssociatedObject(self, &PHPersonPVPersonProtocolAnonymizedNameKey, v6, 1);
  }

  if ([(__CFString *)v2 length])
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

@end