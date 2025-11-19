@interface PUJoiningMediaProviderPredicateRecord
- (PUJoiningMediaProviderPredicateRecord)initWithMediaProvider:(id)a3 predicate:(id)a4;
@end

@implementation PUJoiningMediaProviderPredicateRecord

- (PUJoiningMediaProviderPredicateRecord)initWithMediaProvider:(id)a3 predicate:(id)a4
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = PUJoiningMediaProviderPredicateRecord;
  v10 = [(PUJoiningMediaProviderPredicateRecord *)&v16 init];
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
LABEL_4:
        objc_storeStrong(&v10->_mediaProvider, a3);
        v11 = [v9 copy];
        predicate = v10->_predicate;
        v10->_predicate = v11;

        goto LABEL_5;
      }
    }

    else
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:v10 file:@"PUJoiningMediaProvider.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider != nil"}];

      if (v9)
      {
        goto LABEL_4;
      }
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:v10 file:@"PUJoiningMediaProvider.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"predicate != nil"}];

    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

@end