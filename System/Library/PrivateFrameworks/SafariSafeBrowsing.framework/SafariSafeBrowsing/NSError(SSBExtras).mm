@interface NSError(SSBExtras)
- (id)ssb_privacyPreservingDescription;
@end

@implementation NSError(SSBExtras)

- (id)ssb_privacyPreservingDescription
{
  v2 = MEMORY[0x277CCACA8];
  domain = [self domain];
  v4 = [v2 stringWithFormat:@"Error: domain=%@, code=%ld", domain, objc_msgSend(self, "code")];

  return v4;
}

@end