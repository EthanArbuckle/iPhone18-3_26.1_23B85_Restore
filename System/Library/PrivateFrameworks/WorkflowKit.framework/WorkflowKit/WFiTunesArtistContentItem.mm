@interface WFiTunesArtistContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
- (BOOL)getListSubtitle:(id)subtitle;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
@end

@implementation WFiTunesArtistContentItem

- (BOOL)getListSubtitle:(id)subtitle
{
  if (subtitle)
  {
    subtitleCopy = subtitle;
    object = [(WFiTunesObjectContentItem *)self object];
    genre = [object genre];
    (*(subtitle + 2))(subtitleCopy, genre);
  }

  return 1;
}

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  optionsCopy = options;
  if (objc_opt_class() == class)
  {
    v10 = MEMORY[0x1E6996EC8];
    name = [(WFiTunesArtistContentItem *)self name];
    v9 = [v10 object:name];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFiTunesArtistContentItem;
    v9 = [(WFiTunesObjectContentItem *)&v13 generateObjectRepresentationForClass:class options:optionsCopy error:error];
  }

  return v9;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"iTunes artists", @"iTunes artists");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"iTunes artist", @"iTunes artist");
  v5 = [contextCopy localize:v4];

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
  v3 = [self propertyForName:@"Name"];
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