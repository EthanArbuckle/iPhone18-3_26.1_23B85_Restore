@interface WBSCyclerRandomnessUtilities
+ (id)_randomStringWithCharactersFromString:(id)string withMaximumLength:(int64_t)length;
+ (id)randomElementOfArray:(id)array;
+ (id)randomElementOfArray:(id)array relativeProbabilities:(id)probabilities;
+ (id)randomURL;
+ (void)initialize;
@end

@implementation WBSCyclerRandomnessUtilities

+ (void)initialize
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];

  [self setSeed:v3];
}

+ (id)randomURL
{
  if ([self randomIntegerWithUpperBound:5])
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [self randomElementOfArray:&unk_1F3A9B198];
    v5 = [v3 URLWithString:v4];
  }

  else
  {
    v4 = [self _randomStringWithCharactersFromString:@"abcdefghijklmnopqrstuvwxyz0123456789" withMaximumLength:200];
    v6 = MEMORY[0x1E695DFF8];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@.com/", v4];
    v5 = [v6 URLWithString:v7];
  }

  return v5;
}

+ (id)randomElementOfArray:(id)array
{
  arrayCopy = array;
  v5 = [arrayCopy objectAtIndexedSubscript:{objc_msgSend(self, "randomIntegerWithUpperBound:", objc_msgSend(arrayCopy, "count"))}];

  return v5;
}

+ (id)randomElementOfArray:(id)array relativeProbabilities:(id)probabilities
{
  v32 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  probabilitiesCopy = probabilities;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [probabilitiesCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = *v28;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(probabilitiesCopy);
        }

        [*(*(&v27 + 1) + 8 * i) doubleValue];
        v9 = v9 + v11;
      }

      v7 = [probabilitiesCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = drand48();
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__9;
  v24 = __Block_byref_object_dispose__9;
  v25 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__WBSCyclerRandomnessUtilities_randomElementOfArray_relativeProbabilities___block_invoke;
  v15[3] = &unk_1E7FC5288;
  v17 = v26;
  v12 = probabilitiesCopy;
  v19 = v9;
  v16 = v12;
  v18 = &v20;
  [arrayCopy enumerateObjectsUsingBlock:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(v26, 8);

  return v13;
}

void __75__WBSCyclerRandomnessUtilities_randomElementOfArray_relativeProbabilities___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v8 doubleValue];
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) - v9 / *(a1 + 56);

  if (*(*(*(a1 + 40) + 8) + 24) <= 0.0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (id)_randomStringWithCharactersFromString:(id)string withMaximumLength:(int64_t)length
{
  stringCopy = string;
  v7 = [self randomIntegerWithUpperBound:length];
  string = [MEMORY[0x1E696AD60] string];
  v9 = [stringCopy length];
  if (v7 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  do
  {
    [string appendFormat:@"%C", objc_msgSend(stringCopy, "characterAtIndex:", objc_msgSend(self, "randomIntegerWithUpperBound:", v9))];
    --v10;
  }

  while (v10);

  return string;
}

@end