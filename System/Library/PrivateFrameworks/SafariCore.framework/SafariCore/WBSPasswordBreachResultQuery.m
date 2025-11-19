@interface WBSPasswordBreachResultQuery
- (NSDictionary)dictionaryRepresentation;
- (WBSPasswordBreachResultQuery)initWithDictionaryRepresentation:(id)a3;
- (WBSPasswordBreachResultQuery)initWithPersistentIdentifier:(id)a3 dateLastModified:(id)a4;
@end

@implementation WBSPasswordBreachResultQuery

- (WBSPasswordBreachResultQuery)initWithPersistentIdentifier:(id)a3 dateLastModified:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WBSPasswordBreachResultQuery;
  v9 = [(WBSPasswordBreachResultQuery *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistentIdentifier, a3);
    objc_storeStrong(&v10->_dateLastModified, a4);
    v11 = v10;
  }

  return v10;
}

- (WBSPasswordBreachResultQuery)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 safari_dataForKey:@"PersistentIdentifier"];
  if (v5)
  {
    v6 = [v4 safari_dateForKey:@"DateLastModified"];
    if (v6)
    {
      self = [(WBSPasswordBreachResultQuery *)self initWithPersistentIdentifier:v5 dateLastModified:v6];
      v7 = self;
    }

    else
    {
      v9 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachResultQuery initWithDictionaryRepresentation:v9];
      }

      v7 = 0;
    }
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachResultQuery initWithDictionaryRepresentation:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"PersistentIdentifier";
  v6[1] = @"DateLastModified";
  dateLastModified = self->_dateLastModified;
  v7[0] = self->_persistentIdentifier;
  v7[1] = dateLastModified;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

WBSPasswordBreachResultQuery *__75__WBSPasswordBreachResultQuery_resultQueriesFromDictionaryRepresentations___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSPasswordBreachResultQuery alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

@end