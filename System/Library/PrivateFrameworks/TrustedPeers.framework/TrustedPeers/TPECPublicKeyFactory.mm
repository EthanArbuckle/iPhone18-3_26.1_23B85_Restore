@interface TPECPublicKeyFactory
- (id)keyFromSPKI:(id)i;
@end

@implementation TPECPublicKeyFactory

- (id)keyFromSPKI:(id)i
{
  iCopy = i;
  if ([iCopy length])
  {
    v4 = [MEMORY[0x277D4D2F0] keyWithSubjectPublicKeyInfo:iCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end