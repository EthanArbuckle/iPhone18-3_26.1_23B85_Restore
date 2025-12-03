@interface PXPhotoKitPeopleSuggestionsDataSource
- (PXPhotoKitPeopleSuggestionsDataSource)initWithState:(id)state;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
@end

@implementation PXPhotoKitPeopleSuggestionsDataSource

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference
{
  v6 = a4;
  identifier = 0u;
  v23 = 0u;
  v21.receiver = self;
  v21.super_class = PXPhotoKitPeopleSuggestionsDataSource;
  [(PXSimpleIndexPath *)&v21 indexPathForObjectReference:v6];
  v7 = identifier;
  if (identifier == *off_1E7721F68)
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
      itemObject = [v6 itemObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        _state = [(PXPhotoKitPeopleSuggestionsDataSource *)self _state];
        people = [_state people];
        itemObject2 = [v6 itemObject];
        person = [itemObject2 person];
        v16 = [people indexOfObject:person];

        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          identifier = [(PXPhotoKitPeopleSuggestionsDataSource *)self identifier];
          *&v23 = v16;
          *(&v23 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  v17 = v23;
  *&retstr->dataSourceIdentifier = identifier;
  *&retstr->item = v17;

  return result;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  _state = [(PXPhotoKitPeopleSuggestionsDataSource *)self _state];
  v5 = _state;
  if (path->dataSourceIdentifier != *off_1E7721F68 && path->item != 0x7FFFFFFFFFFFFFFFLL && path->subitem == 0x7FFFFFFFFFFFFFFFLL)
  {
    people = [_state people];
    v10 = [people objectAtIndexedSubscript:path->item];

    personSuggestionsByPerson = [v5 personSuggestionsByPerson];
    null = [personSuggestionsByPerson objectForKeyedSubscript:v10];

    if (!null)
    {
      null = [PXPhotoKitPersonSuggestion personSuggestionWithPerson:v10];
    }
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  return null;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  _state = [(PXPhotoKitPeopleSuggestionsDataSource *)self _state];
  people = [_state people];
  v5 = [people count];

  return v5;
}

- (PXPhotoKitPeopleSuggestionsDataSource)initWithState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = PXPhotoKitPeopleSuggestionsDataSource;
  v6 = [(PXPhotoKitPeopleSuggestionsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__state, state);
  }

  return v7;
}

@end