@interface PXPhotoKitPeopleSuggestionsDataSource
- (PXPhotoKitPeopleSuggestionsDataSource)initWithState:(id)a3;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
@end

@implementation PXPhotoKitPeopleSuggestionsDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3
{
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v21.receiver = self;
  v21.super_class = PXPhotoKitPeopleSuggestionsDataSource;
  [(PXSimpleIndexPath *)&v21 indexPathForObjectReference:v6];
  v7 = v22;
  if (v22 == *off_1E7721F68)
  {
    if (v6)
    {
      [v6 indexPath];
      v8 = v19;
      v9 = v20 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v20 = 0u;
    }

    if (v8 != v7 && !v9 && *(&v20 + 1) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v6 itemObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = [(PXPhotoKitPeopleSuggestionsDataSource *)self _state];
        v13 = [v12 people];
        v14 = [v6 itemObject];
        v15 = [v14 person];
        v16 = [v13 indexOfObject:v15];

        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = [(PXPhotoKitPeopleSuggestionsDataSource *)self identifier];
          *&v23 = v16;
          *(&v23 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  v17 = v23;
  *&retstr->dataSourceIdentifier = v22;
  *&retstr->item = v17;

  return result;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  v4 = [(PXPhotoKitPeopleSuggestionsDataSource *)self _state];
  v5 = v4;
  if (a3->dataSourceIdentifier != *off_1E7721F68 && a3->item != 0x7FFFFFFFFFFFFFFFLL && a3->subitem == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v4 people];
    v10 = [v9 objectAtIndexedSubscript:a3->item];

    v11 = [v5 personSuggestionsByPerson];
    v8 = [v11 objectForKeyedSubscript:v10];

    if (!v8)
    {
      v8 = [PXPhotoKitPersonSuggestion personSuggestionWithPerson:v10];
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  return v8;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = [(PXPhotoKitPeopleSuggestionsDataSource *)self _state];
  v4 = [v3 people];
  v5 = [v4 count];

  return v5;
}

- (PXPhotoKitPeopleSuggestionsDataSource)initWithState:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXPhotoKitPeopleSuggestionsDataSource;
  v6 = [(PXPhotoKitPeopleSuggestionsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__state, a3);
  }

  return v7;
}

@end