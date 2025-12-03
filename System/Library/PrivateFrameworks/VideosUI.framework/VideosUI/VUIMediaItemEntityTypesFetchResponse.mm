@interface VUIMediaItemEntityTypesFetchResponse
- (BOOL)_updateWithResponse:(id)response changes:(id)changes replaceContentsOnNilChanges:(BOOL)nilChanges;
- (VUIMediaItemEntityTypesFetchResponse)init;
- (id)description;
@end

@implementation VUIMediaItemEntityTypesFetchResponse

- (VUIMediaItemEntityTypesFetchResponse)init
{
  v6.receiver = self;
  v6.super_class = VUIMediaItemEntityTypesFetchResponse;
  v2 = [(VUIMediaItemEntityTypesFetchResponse *)&v6 init];
  if (v2)
  {
    orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
    mediaItemEntityTypes = v2->_mediaItemEntityTypes;
    v2->_mediaItemEntityTypes = orderedSet;
  }

  return v2;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15.receiver = self;
  v15.super_class = VUIMediaItemEntityTypesFetchResponse;
  v4 = [(VUIMediaItemEntityTypesFetchResponse *)&v15 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  mediaItemEntityTypes = [(VUIMediaItemEntityTypesFetchResponse *)self mediaItemEntityTypes];
  v7 = [v5 stringWithFormat:@"%@=%@", @"mediaItemEntityTypes", mediaItemEntityTypes];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  [(VUIMediaItemEntityTypesFetchResponse *)self areLocalMediaItemsAvailable];
  v9 = VUIBoolLogString();
  v10 = [v8 stringWithFormat:@"%@=%@", @"areLocalMediaItemsAvailable", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

- (BOOL)_updateWithResponse:(id)response changes:(id)changes replaceContentsOnNilChanges:(BOOL)nilChanges
{
  nilChangesCopy = nilChanges;
  responseCopy = response;
  changesCopy = changes;
  mediaItemEntityTypes = [(VUIMediaItemEntityTypesFetchResponse *)self mediaItemEntityTypes];
  array = [mediaItemEntityTypes array];
  v12 = [array mutableCopy];

  mediaItemEntityTypes2 = [responseCopy mediaItemEntityTypes];
  array2 = [mediaItemEntityTypes2 array];

  mediaItemEntityTypesChangeSet = [changesCopy mediaItemEntityTypesChangeSet];
  v16 = [v12 vui_applyChangeSetIfAvailable:mediaItemEntityTypesChangeSet destinationObjects:array2 replaceContentsOnNilChanges:nilChangesCopy];

  if (v16)
  {
    v17 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v12];
    [(VUIMediaItemEntityTypesFetchResponse *)self setMediaItemEntityTypes:v17];
  }

  if ([changesCopy localMediaItemsAvailableDidChange])
  {
    -[VUIMediaItemEntityTypesFetchResponse setLocalMediaItemsAvailable:](self, "setLocalMediaItemsAvailable:", [responseCopy areLocalMediaItemsAvailable]);
    LOBYTE(v16) = 1;
  }

  return v16;
}

@end