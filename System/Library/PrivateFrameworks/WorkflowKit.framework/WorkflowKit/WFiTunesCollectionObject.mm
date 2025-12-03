@interface WFiTunesCollectionObject
+ (id)JSONKeyPathsByPropertyKey;
@end

@implementation WFiTunesCollectionObject

+ (id)JSONKeyPathsByPropertyKey
{
  v9[9] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___WFiTunesCollectionObject;
  v2 = objc_msgSendSuper2(&v7, sel_JSONKeyPathsByPropertyKey);
  v3 = [v2 mutableCopy];

  v8[0] = @"price";
  v8[1] = @"identifier";
  v9[0] = @"collectionPrice";
  v9[1] = @"collectionId";
  v8[2] = @"name";
  v8[3] = @"censoredName";
  v9[2] = @"collectionName";
  v9[3] = @"collectionCensoredName";
  v8[4] = @"kind";
  v8[5] = @"trackCount";
  v9[4] = @"kind";
  v9[5] = @"trackCount";
  v8[6] = @"genre";
  v8[7] = @"viewURL";
  v9[6] = @"primaryGenreName";
  v9[7] = @"collectionViewUrl";
  v8[8] = @"type";
  v9[8] = @"collectionType";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:9];
  [v3 addEntriesFromDictionary:v4];

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

@end