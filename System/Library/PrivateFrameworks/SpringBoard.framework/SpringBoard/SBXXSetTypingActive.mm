@interface SBXXSetTypingActive
@end

@implementation SBXXSetTypingActive

uint64_t ___SBXXSetTypingActive_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 64) != 0;
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [SBApp setTypingActive:v1 auditToken:v4];
}

@end