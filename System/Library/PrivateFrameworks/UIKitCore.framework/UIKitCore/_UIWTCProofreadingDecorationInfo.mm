@interface _UIWTCProofreadingDecorationInfo
+ (id)highlightInfoWithIdentifier:(id)a3 ranges:(id)a4 decorationPaths:(id)a5 containers:(id)a6;
+ (id)underlineInfoWithIdentifier:(id)a3 ranges:(id)a4 decorationPaths:(id)a5 containers:(id)a6;
- (_UIWTCProofreadingDecorationInfo)initWithType:(int64_t)a3 identifier:(id)a4 ranges:(id)a5 decorationPaths:(id)a6 containers:(id)a7;
- (id)description;
- (void)addPaths:(id)a3 withContainer:(id)a4 forRange:(id)a5;
@end

@implementation _UIWTCProofreadingDecorationInfo

- (_UIWTCProofreadingDecorationInfo)initWithType:(int64_t)a3 identifier:(id)a4 ranges:(id)a5 decorationPaths:(id)a6 containers:(id)a7
{
  v42 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v35 = a6;
  v16 = a7;
  v17 = [v15 count];
  if (v17 != [v16 count])
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"_UIWTCProofreadingDecorationInfo.m" lineNumber:16 description:@"range<->container count mismatch"];
  }

  v40.receiver = self;
  v40.super_class = _UIWTCProofreadingDecorationInfo;
  v18 = [(_UIWTCProofreadingDecorationInfo *)&v40 init];
  v19 = v18;
  if (v18)
  {
    v34 = v14;
    objc_storeStrong(&v18->_identifier, a4);
    objc_storeStrong(&v19->_ranges, a5);
    objc_storeStrong(&v19->_paths, a6);
    v20 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    containers = v19->_containers;
    v19->_containers = v20;

    v19->_type = a3;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v33 = v15;
    v22 = v15;
    v23 = [v22 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v37;
      do
      {
        v27 = 0;
        do
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v36 + 1) + 8 * v27);
          v29 = v19->_containers;
          v30 = [v16 objectAtIndexedSubscript:v25];
          [(NSMapTable *)v29 setObject:v30 forKey:v28];

          ++v25;
          ++v27;
        }

        while (v24 != v27);
        v24 = [v22 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v24);
    }

    v15 = v33;
    v14 = v34;
  }

  return v19;
}

+ (id)underlineInfoWithIdentifier:(id)a3 ranges:(id)a4 decorationPaths:(id)a5 containers:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithType:0 identifier:v13 ranges:v12 decorationPaths:v11 containers:v10];

  return v14;
}

+ (id)highlightInfoWithIdentifier:(id)a3 ranges:(id)a4 decorationPaths:(id)a5 containers:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithType:1 identifier:v13 ranges:v12 decorationPaths:v11 containers:v10];

  return v14;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = _UIWTCProofreadingDecorationInfo;
  v3 = [(_UIWTCProofreadingDecorationInfo *)&v11 description];
  if (self->_type)
  {
    v4 = @"Highlight";
  }

  else
  {
    v4 = @"Underline";
  }

  v10 = *&self->_identifier;
  paths = self->_paths;
  v6 = [(NSMapTable *)self->_containers objectEnumerator];
  v7 = [v6 allObjects];
  v8 = [v3 stringByAppendingFormat:@" %@ ID=%@ ranges=%p paths=%p containers=%@", v4, v10, paths, v7];

  return v8;
}

- (void)addPaths:(id)a3 withContainer:(id)a4 forRange:(id)a5
{
  v17 = a3;
  v8 = a5;
  ranges = self->_ranges;
  v10 = a4;
  v11 = [(NSArray *)ranges mutableCopy];
  v12 = [(NSDictionary *)self->_paths mutableCopy];
  if (![(NSArray *)self->_ranges containsObject:v8])
  {
    [v11 addObject:v8];
  }

  [v12 setObject:v17 forKeyedSubscript:v8];
  [(NSMapTable *)self->_containers setObject:v10 forKey:v8];

  v13 = [v11 copy];
  v14 = self->_ranges;
  self->_ranges = v13;

  v15 = [v12 copy];
  paths = self->_paths;
  self->_paths = v15;
}

@end