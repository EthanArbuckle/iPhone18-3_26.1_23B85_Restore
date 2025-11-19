@interface AMCopyApplicationDisplayIdentifiers
@end

@implementation AMCopyApplicationDisplayIdentifiers

void ___AMCopyApplicationDisplayIdentifiers_block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 applicationType];
  if ([v3 isEqualToString:*MEMORY[0x277CC1E40]])
  {
  }

  else
  {
    v4 = [v7 applicationType];
    v5 = [v4 isEqualToString:*MEMORY[0x277CC1E30]];

    if (!v5)
    {
      goto LABEL_7;
    }
  }

  v6 = [v7 bundleIdentifier];
  if (v6)
  {
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6);
  }

LABEL_7:
}

@end