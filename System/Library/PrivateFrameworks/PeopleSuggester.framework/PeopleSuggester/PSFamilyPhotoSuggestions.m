@interface PSFamilyPhotoSuggestions
@end

@implementation PSFamilyPhotoSuggestions

void __67___PSFamilyPhotoSuggestions_photosRelationshipKnowledgeSuggestions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___PSFamilyPhotoSuggestions_photosRelationshipKnowledgeSuggestions__block_invoke_2;
  v8[3] = &unk_1E7C26A60;
  v6 = *(a1 + 32);
  v11 = *(a1 + 40);
  v9 = v6;
  v10 = v5;
  v7 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
}

void __67___PSFamilyPhotoSuggestions_photosRelationshipKnowledgeSuggestions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = objc_opt_class();
  v8 = [v6 unsignedIntegerValue];

  if ([v7 _allowRelationship:v8])
  {
    [v10 floatValue];
    if (v9 >= 0.2)
    {
      [*(a1 + 32) addObject:*(a1 + 40)];
    }
  }
}

@end