@interface VUIMediaItemEntityTypesFetchResponse
- (BOOL)_updateWithResponse:(id)a3 changes:(id)a4 replaceContentsOnNilChanges:(BOOL)a5;
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
    v3 = [MEMORY[0x1E695DFB8] orderedSet];
    mediaItemEntityTypes = v2->_mediaItemEntityTypes;
    v2->_mediaItemEntityTypes = v3;
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
  v6 = [(VUIMediaItemEntityTypesFetchResponse *)self mediaItemEntityTypes];
  v7 = [v5 stringWithFormat:@"%@=%@", @"mediaItemEntityTypes", v6];
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

- (BOOL)_updateWithResponse:(id)a3 changes:(id)a4 replaceContentsOnNilChanges:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(VUIMediaItemEntityTypesFetchResponse *)self mediaItemEntityTypes];
  v11 = [v10 array];
  v12 = [v11 mutableCopy];

  v13 = [v8 mediaItemEntityTypes];
  v14 = [v13 array];

  v15 = [v9 mediaItemEntityTypesChangeSet];
  v16 = [v12 vui_applyChangeSetIfAvailable:v15 destinationObjects:v14 replaceContentsOnNilChanges:v5];

  if (v16)
  {
    v17 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v12];
    [(VUIMediaItemEntityTypesFetchResponse *)self setMediaItemEntityTypes:v17];
  }

  if ([v9 localMediaItemsAvailableDidChange])
  {
    -[VUIMediaItemEntityTypesFetchResponse setLocalMediaItemsAvailable:](self, "setLocalMediaItemsAvailable:", [v8 areLocalMediaItemsAvailable]);
    LOBYTE(v16) = 1;
  }

  return v16;
}

@end