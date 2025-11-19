@interface NSError(SSBExtras)
- (id)ssb_privacyPreservingDescription;
@end

@implementation NSError(SSBExtras)

- (id)ssb_privacyPreservingDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 domain];
  v4 = [v2 stringWithFormat:@"Error: domain=%@, code=%ld", v3, objc_msgSend(a1, "code")];

  return v4;
}

@end