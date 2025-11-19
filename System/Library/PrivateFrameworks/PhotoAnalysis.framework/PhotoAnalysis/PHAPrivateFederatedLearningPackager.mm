@interface PHAPrivateFederatedLearningPackager
- (_NSRange)privacyIdentifierLargeRange;
- (_NSRange)privacyIdentifierRange;
- (_NSRange)privacyIdentifierSmallRange;
- (id)_flattenTrainingResults:(id)a3;
- (id)_generateErrorWithErrorCode:(int64_t)a3 errorMessage:(id)a4 underlyingError:(id)a5;
- (id)dataPackageFromTrainingResults:(id)a3 error:(id *)a4;
@end

@implementation PHAPrivateFederatedLearningPackager

- (_NSRange)privacyIdentifierLargeRange
{
  length = self->_privacyIdentifierLargeRange.length;
  location = self->_privacyIdentifierLargeRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)privacyIdentifierSmallRange
{
  length = self->_privacyIdentifierSmallRange.length;
  location = self->_privacyIdentifierSmallRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)privacyIdentifierRange
{
  length = self->_privacyIdentifierRange.length;
  location = self->_privacyIdentifierRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)_generateErrorWithErrorCode:(int64_t)a3 errorMessage:(id)a4 underlyingError:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CBEB38];
  v9 = a4;
  v10 = objc_alloc_init(v8);
  [v10 setObject:v9 forKey:*MEMORY[0x277CCA450]];

  if (v7)
  {
    [v10 setObject:v7 forKey:*MEMORY[0x277CCA7E8]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningPackager" code:a3 userInfo:v10];

  return v11;
}

- (id)_flattenTrainingResults:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D22C68]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 weightDeltas];
        [v4 appendVector:v11];

        v12 = [v10 biasDeltas];
        [v4 appendVector:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)dataPackageFromTrainingResults:(id)a3 error:(id *)a4
{
  v6 = [(PHAPrivateFederatedLearningPackager *)self _flattenTrainingResults:a3];
  if ([v6 count])
  {
    v7 = [v6 data];
  }

  else if (a4)
  {
    [(PHAPrivateFederatedLearningPackager *)self _generateErrorWithErrorCode:1 errorMessage:@"Training results are empty underlyingError:will not continue.", 0];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end