@interface VUIMediaEntityFetchResponse
- (BOOL)_updateWithResponse:(id)a3 changes:(id)a4 replaceContentsOnNilChanges:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (VUIMediaEntityFetchResponse)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation VUIMediaEntityFetchResponse

- (VUIMediaEntityFetchResponse)init
{
  v6.receiver = self;
  v6.super_class = VUIMediaEntityFetchResponse;
  v2 = [(VUIMediaEntityFetchResponse *)&v6 init];
  v3 = v2;
  if (v2)
  {
    mediaEntities = v2->_mediaEntities;
    v2->_mediaEntities = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (BOOL)_updateWithResponse:(id)a3 changes:(id)a4 replaceContentsOnNilChanges:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(VUIMediaEntityFetchResponse *)self mediaEntities];
  v11 = [v10 mutableCopy];

  v12 = [v9 mediaEntitiesChangeSet];
  v13 = [v8 mediaEntities];
  v14 = [v11 vui_applyChangeSetIfAvailable:v12 destinationObjects:v13 replaceContentsOnNilChanges:v5];

  if (v14)
  {
    [(VUIMediaEntityFetchResponse *)self setMediaEntities:v11];
    v15 = [v8 sortIndexes];
    [(VUIMediaEntityFetchResponse *)self setSortIndexes:v15];
  }

  v16 = [(VUIMediaEntityFetchResponse *)self grouping];
  v17 = [v16 mutableCopy];

  v18 = [v8 grouping];
  v19 = v18;
  if (v17)
  {
    if (v18)
    {
      v20 = [v9 groupingChangeSet];
      v21 = [v17 vui_applyChangeSetIfAvailable:v20 destinationObjects:v19 replaceContentsOnNilChanges:v5];

      if (v21)
      {
        [(VUIMediaEntityFetchResponse *)self setGrouping:v17];
        v22 = [v8 groupingSortIndexes];
        [(VUIMediaEntityFetchResponse *)self setGroupingSortIndexes:v22];

        LOBYTE(v14) = 1;
      }
    }
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VUIMediaEntityFetchResponse);
  v5 = [(NSArray *)self->_mediaEntities copy];
  mediaEntities = v4->_mediaEntities;
  v4->_mediaEntities = v5;

  v7 = [(NSArray *)self->_sortIndexes copy];
  sortIndexes = v4->_sortIndexes;
  v4->_sortIndexes = v7;

  v9 = [(NSArray *)self->_grouping copy];
  grouping = v4->_grouping;
  v4->_grouping = v9;

  v11 = [(NSArray *)self->_groupingSortIndexes copy];
  groupingSortIndexes = v4->_groupingSortIndexes;
  v4->_groupingSortIndexes = v11;

  return v4;
}

- (unint64_t)hash
{
  v3 = [(VUIMediaEntityFetchResponse *)self mediaEntities];
  v4 = [v3 hash];

  v5 = [(VUIMediaEntityFetchResponse *)self sortIndexes];
  v6 = [v5 hash] ^ v4;

  v7 = [(VUIMediaEntityFetchResponse *)self grouping];
  v8 = [v7 hash];

  v9 = [(VUIMediaEntityFetchResponse *)self groupingSortIndexes];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(VUIMediaEntityFetchResponse *)self mediaEntities];
        v8 = [(VUIMediaEntityFetchResponse *)v6 mediaEntities];
        v9 = v7;
        v10 = v8;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v10)
          {
            goto LABEL_29;
          }

          v13 = [v9 isEqual:v10];

          if ((v13 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v14 = [(VUIMediaEntityFetchResponse *)self sortIndexes];
        v15 = [(VUIMediaEntityFetchResponse *)v6 sortIndexes];
        v9 = v14;
        v16 = v15;
        v11 = v16;
        if (v9 == v16)
        {
        }

        else
        {
          v12 = 0;
          if (!v9 || !v16)
          {
            goto LABEL_29;
          }

          v17 = [v9 isEqual:v16];

          if ((v17 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v18 = [(VUIMediaEntityFetchResponse *)self grouping];
        v19 = [(VUIMediaEntityFetchResponse *)v6 grouping];
        v9 = v18;
        v20 = v19;
        v11 = v20;
        if (v9 == v20)
        {

LABEL_24:
          v22 = [(VUIMediaEntityFetchResponse *)self groupingSortIndexes];
          v23 = [(VUIMediaEntityFetchResponse *)v6 groupingSortIndexes];
          v9 = v22;
          v24 = v23;
          v11 = v24;
          if (v9 == v24)
          {
            v12 = 1;
          }

          else
          {
            v12 = 0;
            if (v9 && v24)
            {
              v12 = [v9 isEqual:v24];
            }
          }

          goto LABEL_29;
        }

        v12 = 0;
        if (v9 && v20)
        {
          v21 = [v9 isEqual:v20];

          if ((v21 & 1) == 0)
          {
LABEL_22:
            v12 = 0;
LABEL_30:

            goto LABEL_31;
          }

          goto LABEL_24;
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    v12 = 0;
  }

LABEL_31:

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21.receiver = self;
  v21.super_class = VUIMediaEntityFetchResponse;
  v4 = [(VUIMediaEntityFetchResponse *)&v21 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIMediaEntityFetchResponse *)self mediaEntities];
  v7 = [v5 stringWithFormat:@"%@=%@", @"mediaEntities", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VUIMediaEntityFetchResponse *)self sortIndexes];
  v10 = [v8 stringWithFormat:@"%@=%@", @"sortIndexes", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(VUIMediaEntityFetchResponse *)self grouping];
  v13 = [v11 stringWithFormat:@"%@=%@", @"grouping", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(VUIMediaEntityFetchResponse *)self groupingSortIndexes];
  v16 = [v14 stringWithFormat:@"%@=%@", @"groupingSortIndexes", v15];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v17 stringWithFormat:@"<%@>", v18];

  return v19;
}

@end