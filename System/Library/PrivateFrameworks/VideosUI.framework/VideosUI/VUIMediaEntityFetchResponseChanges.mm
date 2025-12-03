@interface VUIMediaEntityFetchResponseChanges
- (VUIMediaEntityFetchResponseChanges)init;
- (VUIMediaEntityFetchResponseChanges)initWithMediaEntitiesChangeSet:(id)set;
- (id)description;
@end

@implementation VUIMediaEntityFetchResponseChanges

- (VUIMediaEntityFetchResponseChanges)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaEntityFetchResponseChanges)initWithMediaEntitiesChangeSet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = VUIMediaEntityFetchResponseChanges;
  v6 = [(VUIMediaEntityFetchResponseChanges *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaEntitiesChangeSet, set);
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15.receiver = self;
  v15.super_class = VUIMediaEntityFetchResponseChanges;
  v4 = [(VUIMediaEntityFetchResponseChanges *)&v15 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  mediaEntitiesChangeSet = [(VUIMediaEntityFetchResponseChanges *)self mediaEntitiesChangeSet];
  v7 = [v5 stringWithFormat:@"%@=%@", @"mediaEntitiesChangeSet", mediaEntitiesChangeSet];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  groupingChangeSet = [(VUIMediaEntityFetchResponseChanges *)self groupingChangeSet];
  v10 = [v8 stringWithFormat:@"%@=%@", @"groupingChangeSet", groupingChangeSet];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

@end