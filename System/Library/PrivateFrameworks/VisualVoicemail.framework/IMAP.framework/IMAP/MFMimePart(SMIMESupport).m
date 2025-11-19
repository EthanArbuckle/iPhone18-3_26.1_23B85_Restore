@interface MFMimePart(SMIMESupport)
- (uint64_t)copySigners;
@end

@implementation MFMimePart(SMIMESupport)

- (uint64_t)copySigners
{
  v1 = [*(a1 + *MEMORY[0x277D25040]) objectForKey:@"x-apple-smime-signers"];
  v2 = [v1 copy];

  return v2;
}

@end