@interface VUIMediaItemEntityTypesFetchResponseChanges
- (VUIMediaItemEntityTypesFetchResponseChanges)init;
- (VUIMediaItemEntityTypesFetchResponseChanges)initWithMediaItemEntityTypesChangeSet:(id)set localMediaItemsAvailableDidChange:(BOOL)change;
- (id)description;
@end

@implementation VUIMediaItemEntityTypesFetchResponseChanges

- (VUIMediaItemEntityTypesFetchResponseChanges)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaItemEntityTypesFetchResponseChanges)initWithMediaItemEntityTypesChangeSet:(id)set localMediaItemsAvailableDidChange:(BOOL)change
{
  setCopy = set;
  v11.receiver = self;
  v11.super_class = VUIMediaItemEntityTypesFetchResponseChanges;
  v8 = [(VUIMediaItemEntityTypesFetchResponseChanges *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaItemEntityTypesChangeSet, set);
    v9->_localMediaItemsAvailableDidChange = change;
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15.receiver = self;
  v15.super_class = VUIMediaItemEntityTypesFetchResponseChanges;
  v4 = [(VUIMediaItemEntityTypesFetchResponseChanges *)&v15 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  mediaItemEntityTypesChangeSet = [(VUIMediaItemEntityTypesFetchResponseChanges *)self mediaItemEntityTypesChangeSet];
  v7 = [v5 stringWithFormat:@"%@=%@", @"mediaItemEntityTypesChangeSet", mediaItemEntityTypesChangeSet];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  [(VUIMediaItemEntityTypesFetchResponseChanges *)self localMediaItemsAvailableDidChange];
  v9 = VUIBoolLogString();
  v10 = [v8 stringWithFormat:@"%@=%@", @"localMediaItemsAvailableDidChange", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

@end