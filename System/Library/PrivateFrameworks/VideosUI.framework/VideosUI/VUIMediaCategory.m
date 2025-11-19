@interface VUIMediaCategory
+ (id)mediaCatgeoryForType:(unint64_t)a3;
- (VUIMediaCategory)init;
- (id)_initWithType:(unint64_t)a3;
- (id)description;
@end

@implementation VUIMediaCategory

+ (id)mediaCatgeoryForType:(unint64_t)a3
{
  if (mediaCatgeoryForType____onceToken != -1)
  {
    +[VUIMediaCategory mediaCatgeoryForType:];
  }

  v4 = mediaCatgeoryForType____mediaCategoriesByMediaCategoryType;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = VUIMediaCategoryTypeLogString(a3);
    [v7 raise:v8 format:{@"Unexpected mediaCategoryType parameter: %@", v9}];
  }

  return v6;
}

void __41__VUIMediaCategory_mediaCatgeoryForType___block_invoke()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = mediaCatgeoryForType____mediaCategoriesByMediaCategoryType;
  mediaCatgeoryForType____mediaCategoriesByMediaCategoryType = v0;

  v2 = [[VUIMediaCategory alloc] _initWithType:0];
  [mediaCatgeoryForType____mediaCategoriesByMediaCategoryType setObject:v2 forKey:&unk_1F5E5CF60];
  v3 = [[VUIMediaCategory alloc] _initWithType:2];
  [mediaCatgeoryForType____mediaCategoriesByMediaCategoryType setObject:v3 forKey:&unk_1F5E5CF78];
  v4 = [[VUIMediaCategory alloc] _initWithType:1];
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5E5CF78, &unk_1F5E5CF90, 0}];
  [v4 setSupportedMediaCollectionTypes:v5];
  v8 = &unk_1F5E5CF78;
  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5E5CF90, 0}];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [v4 setSupportedChildMediaCollectionTypes:v7];
  [mediaCatgeoryForType____mediaCategoriesByMediaCategoryType setObject:v4 forKey:&unk_1F5E5CF90];
}

- (VUIMediaCategory)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (id)_initWithType:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = VUIMediaCategory;
  v4 = [(VUIMediaCategory *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v6 = [MEMORY[0x1E695DFD8] set];
    supportedMediaCollectionTypes = v5->_supportedMediaCollectionTypes;
    v5->_supportedMediaCollectionTypes = v6;

    supportedChildMediaCollectionTypes = v5->_supportedChildMediaCollectionTypes;
    v5->_supportedChildMediaCollectionTypes = MEMORY[0x1E695E0F8];
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23.receiver = self;
  v23.super_class = VUIMediaCategory;
  v4 = [(VUIMediaCategory *)&v23 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = VUIMediaCategoryTypeLogString([(VUIMediaCategory *)self type]);
  v7 = [v5 stringWithFormat:@"%@=%@", @"type", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VUIMediaCategory *)self supportedMediaCollectionTypes];
  v10 = [v9 allObjects];
  v11 = VUIMediaCollectionTypesLogString(v10);
  v12 = [v8 stringWithFormat:@"%@=%@", @"supportedMediaCollectionTypes", v11];
  [v3 addObject:v12];

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = [(VUIMediaCategory *)self supportedChildMediaCollectionTypes];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __31__VUIMediaCategory_description__block_invoke;
  v21[3] = &unk_1E87309E8;
  v22 = v13;
  v15 = v13;
  [v14 enumerateKeysAndObjectsUsingBlock:v21];

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@", @"supportedChildMediaCollectionTypes", v15];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v17 stringWithFormat:@"<%@>", v18];

  return v19;
}

void __31__VUIMediaCategory_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = VUIMediaCollectionTypeLogString([a2 unsignedIntegerValue]);
  v6 = [v5 allObjects];

  v7 = VUIMediaCollectionTypesLogString(v6);

  [*(a1 + 32) setObject:v7 forKey:v8];
}

@end