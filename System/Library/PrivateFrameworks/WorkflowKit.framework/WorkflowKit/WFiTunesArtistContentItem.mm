@interface WFiTunesArtistContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
- (BOOL)getListSubtitle:(id)a3;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
@end

@implementation WFiTunesArtistContentItem

- (BOOL)getListSubtitle:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(WFiTunesObjectContentItem *)self object];
    v7 = [v6 genre];
    (*(a3 + 2))(v5, v7);
  }

  return 1;
}

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (objc_opt_class() == a3)
  {
    v10 = MEMORY[0x1E6996EC8];
    v11 = [(WFiTunesArtistContentItem *)self name];
    v9 = [v10 object:v11];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFiTunesArtistContentItem;
    v9 = [(WFiTunesObjectContentItem *)&v13 generateObjectRepresentationForClass:a3 options:v8 error:a5];
  }

  return v9;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"iTunes artists", @"iTunes artists");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"iTunes artist", @"iTunes artist");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E6996FD8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)stringConversionBehavior
{
  v2 = MEMORY[0x1E6996D70];
  v3 = [a1 propertyForName:@"Name"];
  v4 = [v2 accessingProperty:v3];

  return v4;
}

+ (id)propertyBuilders
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6996D90];
  v3 = WFLocalizedContentPropertyNameMarker(@"Genre");
  v4 = [v2 keyPath:@"object.genre" name:v3 class:objc_opt_class()];
  v11[0] = v4;
  v5 = MEMORY[0x1E6996D90];
  v6 = WFLocalizedContentPropertyNameMarker(@"Type");
  v7 = [v5 keyPath:@"object.type" name:v6 class:objc_opt_class()];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end