@interface VUIMediaEntityFetchResponse
- (BOOL)_updateWithResponse:(id)response changes:(id)changes replaceContentsOnNilChanges:(BOOL)nilChanges;
- (BOOL)isEqual:(id)equal;
- (VUIMediaEntityFetchResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (BOOL)_updateWithResponse:(id)response changes:(id)changes replaceContentsOnNilChanges:(BOOL)nilChanges
{
  nilChangesCopy = nilChanges;
  responseCopy = response;
  changesCopy = changes;
  mediaEntities = [(VUIMediaEntityFetchResponse *)self mediaEntities];
  v11 = [mediaEntities mutableCopy];

  mediaEntitiesChangeSet = [changesCopy mediaEntitiesChangeSet];
  mediaEntities2 = [responseCopy mediaEntities];
  v14 = [v11 vui_applyChangeSetIfAvailable:mediaEntitiesChangeSet destinationObjects:mediaEntities2 replaceContentsOnNilChanges:nilChangesCopy];

  if (v14)
  {
    [(VUIMediaEntityFetchResponse *)self setMediaEntities:v11];
    sortIndexes = [responseCopy sortIndexes];
    [(VUIMediaEntityFetchResponse *)self setSortIndexes:sortIndexes];
  }

  grouping = [(VUIMediaEntityFetchResponse *)self grouping];
  v17 = [grouping mutableCopy];

  grouping2 = [responseCopy grouping];
  v19 = grouping2;
  if (v17)
  {
    if (grouping2)
    {
      groupingChangeSet = [changesCopy groupingChangeSet];
      v21 = [v17 vui_applyChangeSetIfAvailable:groupingChangeSet destinationObjects:v19 replaceContentsOnNilChanges:nilChangesCopy];

      if (v21)
      {
        [(VUIMediaEntityFetchResponse *)self setGrouping:v17];
        groupingSortIndexes = [responseCopy groupingSortIndexes];
        [(VUIMediaEntityFetchResponse *)self setGroupingSortIndexes:groupingSortIndexes];

        LOBYTE(v14) = 1;
      }
    }
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
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
  mediaEntities = [(VUIMediaEntityFetchResponse *)self mediaEntities];
  v4 = [mediaEntities hash];

  sortIndexes = [(VUIMediaEntityFetchResponse *)self sortIndexes];
  v6 = [sortIndexes hash] ^ v4;

  grouping = [(VUIMediaEntityFetchResponse *)self grouping];
  v8 = [grouping hash];

  groupingSortIndexes = [(VUIMediaEntityFetchResponse *)self groupingSortIndexes];
  v10 = v8 ^ [groupingSortIndexes hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        mediaEntities = [(VUIMediaEntityFetchResponse *)self mediaEntities];
        mediaEntities2 = [(VUIMediaEntityFetchResponse *)v6 mediaEntities];
        v9 = mediaEntities;
        v10 = mediaEntities2;
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

        sortIndexes = [(VUIMediaEntityFetchResponse *)self sortIndexes];
        sortIndexes2 = [(VUIMediaEntityFetchResponse *)v6 sortIndexes];
        v9 = sortIndexes;
        v16 = sortIndexes2;
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

        grouping = [(VUIMediaEntityFetchResponse *)self grouping];
        grouping2 = [(VUIMediaEntityFetchResponse *)v6 grouping];
        v9 = grouping;
        v20 = grouping2;
        v11 = v20;
        if (v9 == v20)
        {

LABEL_24:
          groupingSortIndexes = [(VUIMediaEntityFetchResponse *)self groupingSortIndexes];
          groupingSortIndexes2 = [(VUIMediaEntityFetchResponse *)v6 groupingSortIndexes];
          v9 = groupingSortIndexes;
          v24 = groupingSortIndexes2;
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
  mediaEntities = [(VUIMediaEntityFetchResponse *)self mediaEntities];
  v7 = [v5 stringWithFormat:@"%@=%@", @"mediaEntities", mediaEntities];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  sortIndexes = [(VUIMediaEntityFetchResponse *)self sortIndexes];
  v10 = [v8 stringWithFormat:@"%@=%@", @"sortIndexes", sortIndexes];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  grouping = [(VUIMediaEntityFetchResponse *)self grouping];
  v13 = [v11 stringWithFormat:@"%@=%@", @"grouping", grouping];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  groupingSortIndexes = [(VUIMediaEntityFetchResponse *)self groupingSortIndexes];
  v16 = [v14 stringWithFormat:@"%@=%@", @"groupingSortIndexes", groupingSortIndexes];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v17 stringWithFormat:@"<%@>", v18];

  return v19;
}

@end