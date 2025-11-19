@interface STCoreTransportPayload
+ (id)fetchLastTransportPayloadInContext:(id)a3 ofType:(id)a4 error:(id *)a5;
+ (id)fetchRequestForPayloadsOfType:(id)a3;
+ (id)fetchTransportPayloadContext:(id)a3 withIdentifier:(id)a4 error:(id *)a5;
- (NSArray)destinations;
- (id)description;
- (void)setDestinations:(id)a3;
@end

@implementation STCoreTransportPayload

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(STCoreTransportPayload *)self type];
  v5 = [(STCoreTransportPayload *)self destinations];
  v6 = [v3 stringWithFormat:@"%p - TYPE: %@ DEST: %@", self, v4, v5];

  return v6;
}

- (void)setDestinations:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
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

        v11 = [*(*(&v13 + 1) + 8 * v10) dictionaryRepresentation];
        [v5 addObject:v11];

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
  v2 = [(STCoreTransportPayload *)self managedObjectOriginal_destinations];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
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

+ (id)fetchRequestForPayloadsOfType:(id)a3
{
  v4 = a3;
  v5 = [a1 fetchRequest];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"type", v4];

  [v5 setPredicate:v6];

  return v5;
}

+ (id)fetchLastTransportPayloadInContext:(id)a3 ofType:(id)a4 error:(id *)a5
{
  v6 = [a1 fetchRequestForPayloadsOfType:a4];
  v7 = [v6 execute:a5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 lastObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)fetchTransportPayloadContext:(id)a3 withIdentifier:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [a1 fetchRequest];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v7];

  [v8 setPredicate:v9];
  v10 = [v8 execute:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 firstObject];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end