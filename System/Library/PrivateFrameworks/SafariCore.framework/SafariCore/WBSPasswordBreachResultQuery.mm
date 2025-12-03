@interface WBSPasswordBreachResultQuery
- (NSDictionary)dictionaryRepresentation;
- (WBSPasswordBreachResultQuery)initWithDictionaryRepresentation:(id)representation;
- (WBSPasswordBreachResultQuery)initWithPersistentIdentifier:(id)identifier dateLastModified:(id)modified;
@end

@implementation WBSPasswordBreachResultQuery

- (WBSPasswordBreachResultQuery)initWithPersistentIdentifier:(id)identifier dateLastModified:(id)modified
{
  identifierCopy = identifier;
  modifiedCopy = modified;
  v13.receiver = self;
  v13.super_class = WBSPasswordBreachResultQuery;
  v9 = [(WBSPasswordBreachResultQuery *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistentIdentifier, identifier);
    objc_storeStrong(&v10->_dateLastModified, modified);
    v11 = v10;
  }

  return v10;
}

- (WBSPasswordBreachResultQuery)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy safari_dataForKey:@"PersistentIdentifier"];
  if (v5)
  {
    v6 = [representationCopy safari_dateForKey:@"DateLastModified"];
    if (v6)
    {
      self = [(WBSPasswordBreachResultQuery *)self initWithPersistentIdentifier:v5 dateLastModified:v6];
      selfCopy = self;
    }

    else
    {
      v9 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachResultQuery initWithDictionaryRepresentation:v9];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachResultQuery initWithDictionaryRepresentation:v8];
    }

    selfCopy = 0;
  }

  return selfCopy;
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