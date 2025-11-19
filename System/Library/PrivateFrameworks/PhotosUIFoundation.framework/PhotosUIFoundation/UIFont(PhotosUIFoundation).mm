@interface UIFont(PhotosUIFoundation)
+ (id)px_defaultFontForTextStyle:()PhotosUIFoundation withSymbolicTraits:;
+ (id)px_preferredFontForTextStyle:()PhotosUIFoundation contentSizeCategory:withSymbolicTraits:;
+ (id)px_preferredFontForTextStyle:()PhotosUIFoundation maxContentSizeCategory:withSymbolicTraits:;
+ (id)px_preferredFontForTextStyle:()PhotosUIFoundation preferredContentSizeCategory:maxContentSizeCategory:withSymbolicTraits:;
+ (id)px_preferredFontForTextStyle:()PhotosUIFoundation withSymbolicTraits:options:;
@end

@implementation UIFont(PhotosUIFoundation)

+ (id)px_preferredFontForTextStyle:()PhotosUIFoundation withSymbolicTraits:options:
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:? addingSymbolicTraits:? options:?];
  v1 = [MEMORY[0x1E69DB878] fontWithDescriptor:v0 size:0.0];

  return v1;
}

+ (id)px_preferredFontForTextStyle:()PhotosUIFoundation preferredContentSizeCategory:maxContentSizeCategory:withSymbolicTraits:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (*MEMORY[0x1E69DDC90] == v11 || UIContentSizeCategoryCompareToCategory(v10, v11) != NSOrderedDescending)
  {
    v16 = [MEMORY[0x1E69DB878] px_defaultFontForTextStyle:v9 withSymbolicTraits:a6];
  }

  else
  {
    v12 = MEMORY[0x1E69DB880];
    v13 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v11];
    v14 = [v12 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:v13];

    v15 = [v14 fontDescriptorWithSymbolicTraits:a6];

    v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:v15 size:0.0];
  }

  return v16;
}

+ (id)px_preferredFontForTextStyle:()PhotosUIFoundation maxContentSizeCategory:withSymbolicTraits:
{
  v8 = MEMORY[0x1E69DC668];
  v9 = a4;
  v10 = a3;
  v11 = [v8 sharedApplication];
  v12 = [v11 preferredContentSizeCategory];
  v13 = [a1 px_preferredFontForTextStyle:v10 preferredContentSizeCategory:v12 maxContentSizeCategory:v9 withSymbolicTraits:a5];

  return v13;
}

+ (id)px_preferredFontForTextStyle:()PhotosUIFoundation contentSizeCategory:withSymbolicTraits:
{
  v9 = a3;
  v10 = a4;
  if (*MEMORY[0x1E69DDC90] == v10)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"UIFont+PhotosUIFoundation.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"contentSizeCategory != UIContentSizeCategoryUnspecified"}];
  }

  v11 = MEMORY[0x1E69DB880];
  v12 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v10];
  v13 = [v11 preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:v12];

  v14 = [v13 fontDescriptorWithSymbolicTraits:a5];

  v15 = [MEMORY[0x1E69DB878] fontWithDescriptor:v14 size:0.0];

  return v15;
}

+ (id)px_defaultFontForTextStyle:()PhotosUIFoundation withSymbolicTraits:
{
  v4 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:a4 options:0];
  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

@end