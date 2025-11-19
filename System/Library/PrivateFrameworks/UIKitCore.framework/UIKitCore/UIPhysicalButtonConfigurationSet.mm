@interface UIPhysicalButtonConfigurationSet
@end

@implementation UIPhysicalButtonConfigurationSet

void __71___UIPhysicalButtonConfigurationSet__initWithConfigurationsDictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v10 = [v4 objectForKey:v5];

  v6 = v10;
  if (v10)
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = [v10 copy];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v7 setObject:v8 forKey:v9];

    v6 = v10;
  }
}

uint64_t __147___UIPhysicalButtonConfigurationSet__validateRequirementsForCandidateButton_andConfiguration_allowingNilRequiredConfiguration_withOutErrorMessage___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v15 + 1) + 8 * v7) unsignedIntegerValue];
        if (v8 != *(a1 + 56))
        {
          v9 = [*(a1 + 32) _configurationForButton:v8];
          if (v9)
          {
            v10 = *(a1 + 40);
            if (v10 != v9 && (!v10 || *(v9 + 24) != *(v10 + 24) || *(v9 + 8) != *(v10 + 8)))
            {
LABEL_18:
              v12 = *(*(a1 + 48) + 8);
              v13 = *(v12 + 40);
              *(v12 + 40) = v9;

              v11 = 1;
              goto LABEL_19;
            }
          }

          else if (*(a1 + 64) != 1)
          {
            goto LABEL_18;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_19:

  return v11;
}

void __71___UIPhysicalButtonConfigurationSet__enumerateConfigurationsWithBlock___block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1[4] + 8);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v8 = [v5 objectForKey:v6];

  v7 = v8;
  if (v8)
  {
    (*(a1[5] + 16))();
    v7 = v8;
    if (*(*(a1[6] + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }
}

void __63___UIPhysicalButtonConfigurationSet__configurationPassingTest___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if ((*(*(a1 + 32) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __75___UIPhysicalButtonConfigurationSet_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 16) withName:@"pauseButtonRequirementValidation" ifEqualTo:1];
  v3 = *(a1 + 32);
  v4 = [v3 activeMultilinePrefix];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75___UIPhysicalButtonConfigurationSet_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v7[3] = &unk_1E70F35B8;
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  [v3 appendBodySectionWithName:0 multilinePrefix:v4 block:v7];
}

void __75___UIPhysicalButtonConfigurationSet_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __75___UIPhysicalButtonConfigurationSet_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v2[3] = &unk_1E712C5B8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _enumerateConfigurationsWithBlock:v2];
}

void __75___UIPhysicalButtonConfigurationSet_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = _NSStringFromUIPhysicalButton([a2 _button]);
  v4 = [v3 appendObject:a2 withName:v5];
}

uint64_t __53___UIPhysicalButtonConfigurationSet_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _button];
  if ((result - 1) <= 6)
  {
    v5 = off_1E712C678[result - 1];
    v6 = *(a1 + 32);

    return [v6 encodeObject:a2 forKey:v5];
  }

  return result;
}

void __51___UIPhysicalButtonConfigurationSet_initWithCoder___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) <= 6)
  {
    v5 = [*(a1 + 32) decodeObjectOfClass:*(a1 + 48) forKey:off_1E712C678[a2 - 1]];
    if (v5)
    {
      v11 = v5;
      v6 = *(*(*(a1 + 40) + 8) + 40);
      if (!v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
        v8 = *(*(a1 + 40) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;

        v6 = *(*(*(a1 + 40) + 8) + 40);
      }

      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
      [v6 setObject:v11 forKey:v10];

      v5 = v11;
    }
  }
}

uint64_t __61___UIPhysicalButtonConfigurationSet_encodeWithXPCDictionary___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _button];
  if ((result - 1) <= 6)
  {
    [(__CFString *)off_1E712C678[result - 1] UTF8String];

    return BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }

  return result;
}

void __59___UIPhysicalButtonConfigurationSet_initWithXPCDictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) <= 6)
  {
    [(__CFString *)off_1E712C678[a2 - 1] UTF8String];
    v5 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey();
    if (v5)
    {
      v11 = v5;
      v6 = *(*(*(a1 + 40) + 8) + 40);
      if (!v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
        v8 = *(*(a1 + 40) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;

        v6 = *(*(*(a1 + 40) + 8) + 40);
      }

      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
      [v6 setObject:v11 forKey:v10];

      v5 = v11;
    }
  }
}

uint64_t __58___UIPhysicalButtonConfigurationSet_encodeWithBSXPCCoder___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _button];
  if ((result - 1) <= 6)
  {
    v5 = off_1E712C678[result - 1];
    v6 = *(a1 + 32);

    return [v6 encodeObject:a2 forKey:v5];
  }

  return result;
}

void __56___UIPhysicalButtonConfigurationSet_initWithBSXPCCoder___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) <= 6)
  {
    v5 = [*(a1 + 32) decodeObjectOfClass:*(a1 + 48) forKey:off_1E712C678[a2 - 1]];
    if (v5)
    {
      v11 = v5;
      v6 = *(*(*(a1 + 40) + 8) + 40);
      if (!v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
        v8 = *(*(a1 + 40) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;

        v6 = *(*(*(a1 + 40) + 8) + 40);
      }

      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
      [v6 setObject:v11 forKey:v10];

      v5 = v11;
    }
  }
}

@end