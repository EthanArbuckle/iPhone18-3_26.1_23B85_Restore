@interface PBFFocusPosterSuggestionData
- (PBFFocusPosterSuggestionData)initWithPreviews:(id)a3 previewsToSnapshotsMapTable:(id)a4;
- (id)previewForUniqueIdentifier:(id)a3;
@end

@implementation PBFFocusPosterSuggestionData

- (PBFFocusPosterSuggestionData)initWithPreviews:(id)a3 previewsToSnapshotsMapTable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PBFFocusPosterSuggestionData;
  v8 = [(PBFFocusPosterSuggestionData *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    previews = v8->_previews;
    v8->_previews = v9;

    objc_storeStrong(&v8->_previewsToSnapshotsMapTable, a4);
  }

  return v8;
}

- (id)previewForUniqueIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_previews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 previewUniqueIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end