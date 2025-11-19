@interface PCSIdentitySetSetPersonaIdentifier
@end

@implementation PCSIdentitySetSetPersonaIdentifier

void ___PCSIdentitySetSetPersonaIdentifier_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 80))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(a1 + 40);
      v3 = *(*(a1 + 32) + 80);
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v2;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Identity set persona changed: %@ to %@", &v8, 0x16u);
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    if (v5)
    {
      *(v4 + 80) = 0;
      CFRelease(v5);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRetain(*(a1 + 40));
  }

  *(*(a1 + 32) + 80) = v6;
  v7 = *MEMORY[0x1E69E9840];
}

@end