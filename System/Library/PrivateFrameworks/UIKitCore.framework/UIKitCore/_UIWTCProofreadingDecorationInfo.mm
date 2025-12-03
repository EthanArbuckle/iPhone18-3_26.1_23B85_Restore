@interface _UIWTCProofreadingDecorationInfo
+ (id)highlightInfoWithIdentifier:(id)identifier ranges:(id)ranges decorationPaths:(id)paths containers:(id)containers;
+ (id)underlineInfoWithIdentifier:(id)identifier ranges:(id)ranges decorationPaths:(id)paths containers:(id)containers;
- (_UIWTCProofreadingDecorationInfo)initWithType:(int64_t)type identifier:(id)identifier ranges:(id)ranges decorationPaths:(id)paths containers:(id)containers;
- (id)description;
- (void)addPaths:(id)paths withContainer:(id)container forRange:(id)range;
@end

@implementation _UIWTCProofreadingDecorationInfo

- (_UIWTCProofreadingDecorationInfo)initWithType:(int64_t)type identifier:(id)identifier ranges:(id)ranges decorationPaths:(id)paths containers:(id)containers
{
  v42 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  rangesCopy = ranges;
  pathsCopy = paths;
  containersCopy = containers;
  v17 = [rangesCopy count];
  if (v17 != [containersCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIWTCProofreadingDecorationInfo.m" lineNumber:16 description:@"range<->container count mismatch"];
  }

  v40.receiver = self;
  v40.super_class = _UIWTCProofreadingDecorationInfo;
  v18 = [(_UIWTCProofreadingDecorationInfo *)&v40 init];
  v19 = v18;
  if (v18)
  {
    v34 = identifierCopy;
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_ranges, ranges);
    objc_storeStrong(&v19->_paths, paths);
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    containers = v19->_containers;
    v19->_containers = strongToWeakObjectsMapTable;

    v19->_type = type;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v33 = rangesCopy;
    v22 = rangesCopy;
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
          v30 = [containersCopy objectAtIndexedSubscript:v25];
          [(NSMapTable *)v29 setObject:v30 forKey:v28];

          ++v25;
          ++v27;
        }

        while (v24 != v27);
        v24 = [v22 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v24);
    }

    rangesCopy = v33;
    identifierCopy = v34;
  }

  return v19;
}

+ (id)underlineInfoWithIdentifier:(id)identifier ranges:(id)ranges decorationPaths:(id)paths containers:(id)containers
{
  containersCopy = containers;
  pathsCopy = paths;
  rangesCopy = ranges;
  identifierCopy = identifier;
  v14 = [[self alloc] initWithType:0 identifier:identifierCopy ranges:rangesCopy decorationPaths:pathsCopy containers:containersCopy];

  return v14;
}

+ (id)highlightInfoWithIdentifier:(id)identifier ranges:(id)ranges decorationPaths:(id)paths containers:(id)containers
{
  containersCopy = containers;
  pathsCopy = paths;
  rangesCopy = ranges;
  identifierCopy = identifier;
  v14 = [[self alloc] initWithType:1 identifier:identifierCopy ranges:rangesCopy decorationPaths:pathsCopy containers:containersCopy];

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
  objectEnumerator = [(NSMapTable *)self->_containers objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v8 = [v3 stringByAppendingFormat:@" %@ ID=%@ ranges=%p paths=%p containers=%@", v4, v10, paths, allObjects];

  return v8;
}

- (void)addPaths:(id)paths withContainer:(id)container forRange:(id)range
{
  pathsCopy = paths;
  rangeCopy = range;
  ranges = self->_ranges;
  containerCopy = container;
  v11 = [(NSArray *)ranges mutableCopy];
  v12 = [(NSDictionary *)self->_paths mutableCopy];
  if (![(NSArray *)self->_ranges containsObject:rangeCopy])
  {
    [v11 addObject:rangeCopy];
  }

  [v12 setObject:pathsCopy forKeyedSubscript:rangeCopy];
  [(NSMapTable *)self->_containers setObject:containerCopy forKey:rangeCopy];

  v13 = [v11 copy];
  v14 = self->_ranges;
  self->_ranges = v13;

  v15 = [v12 copy];
  paths = self->_paths;
  self->_paths = v15;
}

@end