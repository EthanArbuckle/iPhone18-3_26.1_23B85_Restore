@interface PUJoiningMediaProviderPredicateRecord
- (PUJoiningMediaProviderPredicateRecord)initWithMediaProvider:(id)provider predicate:(id)predicate;
@end

@implementation PUJoiningMediaProviderPredicateRecord

- (PUJoiningMediaProviderPredicateRecord)initWithMediaProvider:(id)provider predicate:(id)predicate
{
  providerCopy = provider;
  predicateCopy = predicate;
  v16.receiver = self;
  v16.super_class = PUJoiningMediaProviderPredicateRecord;
  v10 = [(PUJoiningMediaProviderPredicateRecord *)&v16 init];
  if (v10)
  {
    if (providerCopy)
    {
      if (predicateCopy)
      {
LABEL_4:
        objc_storeStrong(&v10->_mediaProvider, provider);
        v11 = [predicateCopy copy];
        predicate = v10->_predicate;
        v10->_predicate = v11;

        goto LABEL_5;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PUJoiningMediaProvider.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider != nil"}];

      if (predicateCopy)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v10 file:@"PUJoiningMediaProvider.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"predicate != nil"}];

    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

@end