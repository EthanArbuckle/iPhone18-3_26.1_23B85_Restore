@interface PHAPrivateFederatedLearningPackager
- (_NSRange)privacyIdentifierLargeRange;
- (_NSRange)privacyIdentifierRange;
- (_NSRange)privacyIdentifierSmallRange;
- (id)_flattenTrainingResults:(id)results;
- (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message underlyingError:(id)error;
- (id)dataPackageFromTrainingResults:(id)results error:(id *)error;
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

- (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message underlyingError:(id)error
{
  errorCopy = error;
  v8 = MEMORY[0x277CBEB38];
  messageCopy = message;
  v10 = objc_alloc_init(v8);
  [v10 setObject:messageCopy forKey:*MEMORY[0x277CCA450]];

  if (errorCopy)
  {
    [v10 setObject:errorCopy forKey:*MEMORY[0x277CCA7E8]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningPackager" code:code userInfo:v10];

  return v11;
}

- (id)_flattenTrainingResults:(id)results
{
  v19 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v4 = objc_alloc_init(MEMORY[0x277D22C68]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = resultsCopy;
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
        weightDeltas = [v10 weightDeltas];
        [v4 appendVector:weightDeltas];

        biasDeltas = [v10 biasDeltas];
        [v4 appendVector:biasDeltas];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)dataPackageFromTrainingResults:(id)results error:(id *)error
{
  v6 = [(PHAPrivateFederatedLearningPackager *)self _flattenTrainingResults:results];
  if ([v6 count])
  {
    data = [v6 data];
  }

  else if (error)
  {
    [(PHAPrivateFederatedLearningPackager *)self _generateErrorWithErrorCode:1 errorMessage:@"Training results are empty underlyingError:will not continue.", 0];
    *error = data = 0;
  }

  else
  {
    data = 0;
  }

  return data;
}

@end