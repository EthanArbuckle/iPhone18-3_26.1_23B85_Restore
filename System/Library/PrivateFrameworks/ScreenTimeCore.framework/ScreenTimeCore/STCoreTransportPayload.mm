@interface STCoreTransportPayload
+ (id)fetchLastTransportPayloadInContext:(id)context ofType:(id)type error:(id *)error;
+ (id)fetchRequestForPayloadsOfType:(id)type;
+ (id)fetchTransportPayloadContext:(id)context withIdentifier:(id)identifier error:(id *)error;
- (NSArray)destinations;
- (id)description;
- (void)setDestinations:(id)destinations;
@end

@implementation STCoreTransportPayload

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  type = [(STCoreTransportPayload *)self type];
  destinations = [(STCoreTransportPayload *)self destinations];
  v6 = [v3 stringWithFormat:@"%p - TYPE: %@ DEST: %@", self, type, destinations];

  return v6;
}

- (void)setDestinations:(id)destinations
{
  v18 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(destinationsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = destinationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        dictionaryRepresentation = [*(*(&v13 + 1) + 8 * v10) dictionaryRepresentation];
        [v5 addObject:dictionaryRepresentation];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(STCoreTransportPayload *)self managedObjectOriginal_setDestinations:v5];
  v12 = *MEMORY[0x1E69E9840];
}

- (NSArray)destinations
{
  v18 = *MEMORY[0x1E69E9840];
  managedObjectOriginal_destinations = [(STCoreTransportPayload *)self managedObjectOriginal_destinations];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(managedObjectOriginal_destinations, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = managedObjectOriginal_destinations;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = objc_opt_new();
        [v10 updateWithDictionaryRepresentation:{v9, v13}];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)fetchRequestForPayloadsOfType:(id)type
{
  typeCopy = type;
  fetchRequest = [self fetchRequest];
  typeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"type", typeCopy];

  [fetchRequest setPredicate:typeCopy];

  return fetchRequest;
}

+ (id)fetchLastTransportPayloadInContext:(id)context ofType:(id)type error:(id *)error
{
  v6 = [self fetchRequestForPayloadsOfType:type];
  v7 = [v6 execute:error];
  v8 = v7;
  if (v7)
  {
    lastObject = [v7 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

+ (id)fetchTransportPayloadContext:(id)context withIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  fetchRequest = [self fetchRequest];
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", identifierCopy];

  [fetchRequest setPredicate:identifierCopy];
  v10 = [fetchRequest execute:error];
  v11 = v10;
  if (v10)
  {
    firstObject = [v10 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end