@interface UIEnumerateApplicationsInPreferredOrderForOpeningDocument
@end

@implementation UIEnumerateApplicationsInPreferredOrderForOpeningDocument

void ___UIEnumerateApplicationsInPreferredOrderForOpeningDocument_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 applicationIdentifier];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = [v3 applicationIdentifier];
    if ([v6 isEqualToString:*(a1 + 40)])
    {
      v7 = [v3 supportsOpenInPlace];

      if ((v7 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v8 = [v3 sdkVersion];
    v9 = v8;
    v10 = @"1.0";
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [*(a1 + 48) URL];
    v16 = 0;
    [v12 getResourceValue:&v16 forKey:*MEMORY[0x1E695DDA8] error:0];
    v13 = v16;

    if (!v13 || ([v13 BOOLValue] & 1) != 0 || (objc_msgSend(MEMORY[0x1E6963608], "defaultWorkspace"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isVersion:greaterThanOrEqualToVersion:", v11, @"13.0"), v14, v15))
    {
      (*(*(a1 + 56) + 16))();
    }
  }

LABEL_13:
}

@end