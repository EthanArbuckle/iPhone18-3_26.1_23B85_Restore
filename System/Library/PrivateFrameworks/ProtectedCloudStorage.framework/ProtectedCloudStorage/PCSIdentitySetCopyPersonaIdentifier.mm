@interface PCSIdentitySetCopyPersonaIdentifier
@end

@implementation PCSIdentitySetCopyPersonaIdentifier

void *___PCSIdentitySetCopyPersonaIdentifier_block_invoke(void *result)
{
  v1 = result;
  v2 = result[5];
  v3 = *(v2 + 80);
  if (v3)
  {
    result = CFRetain(*(v2 + 80));
  }

  *(*(v1[4] + 8) + 24) = v3;
  return result;
}

@end