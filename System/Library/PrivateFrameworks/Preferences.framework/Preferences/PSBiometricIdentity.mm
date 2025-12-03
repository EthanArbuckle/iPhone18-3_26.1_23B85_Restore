@interface PSBiometricIdentity
+ (id)identities;
+ (id)nextIdentityName;
+ (int64_t)maximumIdentityCount;
+ (void)removeIdentity:(id)identity;
+ (void)setName:(id)name forIdentity:(id)identity;
@end

@implementation PSBiometricIdentity

+ (id)identities
{
  manager = [MEMORY[0x1E698F3A8] manager];
  v3 = [manager identities:0];

  return v3;
}

+ (int64_t)maximumIdentityCount
{
  manager = [MEMORY[0x1E698F3A8] manager];
  v3 = [manager getMaxIdentityCount:1];

  return v3;
}

+ (void)removeIdentity:(id)identity
{
  v3 = MEMORY[0x1E698F3A8];
  identityCopy = identity;
  manager = [v3 manager];
  [manager removeIdentity:identityCopy];
}

+ (void)setName:(id)name forIdentity:(id)identity
{
  identityCopy = identity;
  [identityCopy setName:name];
  manager = [MEMORY[0x1E698F3A8] manager];
  [manager updateIdentity:identityCopy];
}

+ (id)nextIdentityName
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v32 = 0u;
  identities = [self identities];
  v5 = [identities countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v5)
  {
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(identities);
        }

        v8 = [self nameForIdentity:*(*(&v32 + 1) + 8 * i)];
        if (v8)
        {
          [v3 addObject:v8];
        }
      }

      v5 = [identities countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v5);
  }

  maximumIdentityCount = [self maximumIdentityCount];
  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:maximumIdentityCount];
  v10 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v10 setNumberStyle:0];
  if (maximumIdentityCount)
  {
    for (j = 1; j <= maximumIdentityCount; ++j)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:j];
      v13 = [v10 stringFromNumber:v12];

      v14 = MEMORY[0x1E696AEC0];
      v15 = PSLocalizablePearlStringForKey(@"IDENTITY_NAME_FORMAT_TOUCH_ID");
      v16 = [v14 stringWithFormat:v15, v13];

      [v22 addObject:v16];
    }
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __39__PSBiometricIdentity_nextIdentityName__block_invoke;
  v30[3] = &unk_1E71DCA08;
  v17 = v3;
  v31 = v17;
  v18 = [v22 indexesOfObjectsPassingTest:v30];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0x7FFFFFFFFFFFFFFFLL;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __39__PSBiometricIdentity_nextIdentityName__block_invoke_2;
  v23[3] = &unk_1E71DCA30;
  v19 = v17;
  v24 = v19;
  v25 = &v26;
  [v18 enumerateRangesWithOptions:2 usingBlock:v23];
  if (v27[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 0;
  }

  else
  {
    v20 = [v22 objectAtIndex:?];
  }

  _Block_object_dispose(&v26, 8);

  return v20;
}

unint64_t __39__PSBiometricIdentity_nextIdentityName__block_invoke_2(uint64_t a1, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) count];
  if (result >= a2 && result - a2 < a3)
  {
    result = [*(a1 + 32) count];
    a2 = result;
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  *a4 = 1;
  return result;
}

@end