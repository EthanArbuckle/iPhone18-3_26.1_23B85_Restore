@interface _UISceneHostingTraitCollectionPropagationSettings
- (UIColor)tintColor;
- (UITraitCollection)traitCollection;
- (void)setTintColor:(id)color;
- (void)setTraitCollection:(id)collection;
@end

@implementation _UISceneHostingTraitCollectionPropagationSettings

- (void)setTraitCollection:(id)collection
{
  v5 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:collection];
  [(_UISceneHostingTraitCollectionPropagationSettings *)self setValue:v5 forProperty:a2];
}

- (UITraitCollection)traitCollection
{
  v2 = [(_UISceneHostingTraitCollectionPropagationSettings *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  v3 = [UITraitCollection bs_secureDecodedFromData:v2];

  return v3;
}

- (void)setTintColor:(id)color
{
  v5 = [MEMORY[0x1E695DEF0] bs_secureDataFromObject:color];
  [(_UISceneHostingTraitCollectionPropagationSettings *)self setValue:v5 forProperty:a2];
}

- (UIColor)tintColor
{
  v2 = [(_UISceneHostingTraitCollectionPropagationSettings *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  v3 = [UIColor bs_secureDecodedFromData:v2];

  return v3;
}

@end