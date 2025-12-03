@interface WFiTunesArtistObject
+ (id)JSONKeyPathsByPropertyKey;
@end

@implementation WFiTunesArtistObject

+ (id)JSONKeyPathsByPropertyKey
{
  v9[7] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___WFiTunesArtistObject;
  v2 = objc_msgSendSuper2(&v7, sel_JSONKeyPathsByPropertyKey);
  v3 = [v2 mutableCopy];

  v8[0] = @"identifier";
  v8[1] = @"name";
  v9[0] = @"artistId";
  v9[1] = @"artistName";
  v8[2] = @"censoredName";
  v8[3] = @"kind";
  v9[2] = @"artistCensoredName";
  v9[3] = @"kind";
  v8[4] = @"viewURL";
  v8[5] = @"type";
  v9[4] = @"artistLinkUrl";
  v9[5] = @"artistType";
  v8[6] = @"genre";
  v9[6] = @"primaryGenreName";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:7];
  [v3 addEntriesFromDictionary:v4];

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

@end