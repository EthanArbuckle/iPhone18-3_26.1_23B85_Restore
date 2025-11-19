@interface WFINSpeakableStringContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
- (INSpeakableString)speakableString;
- (id)generateObjectRepresentationsForClass:(Class)a3 options:(id)a4 error:(id *)a5;
@end

@implementation WFINSpeakableStringContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Speakable Strings", @"Speakable Strings");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Speakable String", @"Speakable String");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E6996FC8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

- (id)generateObjectRepresentationsForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a3)
  {
    v7 = MEMORY[0x1E6996EC8];
    v8 = [(WFINSpeakableStringContentItem *)self speakableString];
    v9 = [v8 spokenPhrase];
    v10 = [v7 object:v9];
    v13[0] = v10;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (INSpeakableString)speakableString
{
  v3 = objc_opt_class();

  return [(WFINSpeakableStringContentItem *)self objectForClass:v3];
}

@end