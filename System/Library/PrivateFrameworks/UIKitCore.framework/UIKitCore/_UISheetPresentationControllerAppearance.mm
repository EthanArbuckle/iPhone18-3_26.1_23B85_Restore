@interface _UISheetPresentationControllerAppearance
+ (_UISheetPresentationControllerAppearance)appearanceWithLargestUndimmedDetentIdentifier:(id)a3;
+ (_UISheetPresentationControllerAppearance)appearanceWithSmallestDimmedDetentIdentifier:(id)a3;
+ (id)appearancePreferringDimmingVisible:(BOOL)a3;
- (BOOL)_isDimmingAlwaysVisible;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UISheetPresentationControllerAppearance)initWithBSXPCCoder:(id)a3;
- (_UISheetPresentationControllerAppearance)initWithCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UISheetPresentationControllerAppearance

- (BOOL)_isDimmingAlwaysVisible
{
  if (![(_UISheetPresentationControllerAppearance *)self _prefersDimmingVisible])
  {
    return 0;
  }

  v3 = [(_UISheetPresentationControllerAppearance *)self _largestUndimmedDetentIdentifier];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(_UISheetPresentationControllerAppearance *)self _smallestDimmedDetentIdentifier];
    v4 = v5 == 0;
  }

  return v4;
}

+ (id)appearancePreferringDimmingVisible:(BOOL)a3
{
  v4 = objc_alloc_init(_UISheetPresentationControllerAppearance);
  v4->__prefersDimmingVisible = a3;

  return v4;
}

+ (_UISheetPresentationControllerAppearance)appearanceWithLargestUndimmedDetentIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_UISheetPresentationControllerAppearance);
  v4->__prefersDimmingVisible = 1;
  largestUndimmedDetentIdentifier = v4->__largestUndimmedDetentIdentifier;
  v4->__largestUndimmedDetentIdentifier = v3;

  return v4;
}

+ (_UISheetPresentationControllerAppearance)appearanceWithSmallestDimmedDetentIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_UISheetPresentationControllerAppearance);
  v4->__prefersDimmingVisible = 0;
  smallestDimmedDetentIdentifier = v4->__smallestDimmedDetentIdentifier;
  v4->__smallestDimmedDetentIdentifier = v3;

  return v4;
}

- (NSString)description
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel__prefersDimmingVisible);
  v9 = v3;
  v4 = NSStringFromSelector(sel__largestUndimmedDetentIdentifier);
  v10 = v4;
  v5 = NSStringFromSelector(sel__smallestDimmedDetentIdentifier);
  v11 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:3];
  v7 = [UIDescriptionBuilder descriptionForObject:self keys:v6, v9, v10];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_UISheetPresentationControllerAppearance *)self _prefersDimmingVisible];
    if (v6 != [v5 _prefersDimmingVisible])
    {
      LOBYTE(v7) = 0;
LABEL_19:

      goto LABEL_20;
    }

    v8 = [(_UISheetPresentationControllerAppearance *)self _largestUndimmedDetentIdentifier];
    v9 = [v5 _largestUndimmedDetentIdentifier];
    v10 = v8;
    v11 = v9;
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      LOBYTE(v7) = 0;
      v13 = v11;
      v14 = v10;
      if (!v10 || !v11)
      {
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      v7 = [v10 isEqual:v11];

      if (!v7)
      {
        goto LABEL_18;
      }
    }

    v15 = [(_UISheetPresentationControllerAppearance *)self _smallestDimmedDetentIdentifier];
    v16 = [v5 _smallestDimmedDetentIdentifier];
    v14 = v15;
    v17 = v16;
    v13 = v17;
    if (v14 == v17)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      LOBYTE(v7) = 0;
      if (v14 && v17)
      {
        LOBYTE(v7) = [v14 isEqual:v17];
      }
    }

    goto LABEL_17;
  }

  LOBYTE(v7) = 0;
LABEL_20:

  return v7;
}

- (_UISheetPresentationControllerAppearance)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UISheetPresentationControllerAppearance;
  v5 = [(_UISheetPresentationControllerAppearance *)&v11 init];
  if (v5)
  {
    v5->__prefersDimmingVisible = [v4 decodeBoolForKey:@"_prefersDimmingVisible"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_largestUndimmedDetentIdentifier"];
    largestUndimmedDetentIdentifier = v5->__largestUndimmedDetentIdentifier;
    v5->__largestUndimmedDetentIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_smallestDimmedDetentIdentifier"];
    smallestDimmedDetentIdentifier = v5->__smallestDimmedDetentIdentifier;
    v5->__smallestDimmedDetentIdentifier = v8;
  }

  return v5;
}

- (_UISheetPresentationControllerAppearance)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UISheetPresentationControllerAppearance;
  v5 = [(_UISheetPresentationControllerAppearance *)&v11 init];
  if (v5)
  {
    v5->__prefersDimmingVisible = [v4 decodeBoolForKey:@"_prefersDimmingVisible"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_largestUndimmedDetentIdentifier"];
    largestUndimmedDetentIdentifier = v5->__largestUndimmedDetentIdentifier;
    v5->__largestUndimmedDetentIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_smallestDimmedDetentIdentifier"];
    smallestDimmedDetentIdentifier = v5->__smallestDimmedDetentIdentifier;
    v5->__smallestDimmedDetentIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[_UISheetPresentationControllerAppearance _prefersDimmingVisible](self forKey:{"_prefersDimmingVisible"), @"_prefersDimmingVisible"}];
  v5 = [(_UISheetPresentationControllerAppearance *)self _largestUndimmedDetentIdentifier];
  [v4 encodeObject:v5 forKey:@"_largestUndimmedDetentIdentifier"];

  v6 = [(_UISheetPresentationControllerAppearance *)self _smallestDimmedDetentIdentifier];
  [v4 encodeObject:v6 forKey:@"_smallestDimmedDetentIdentifier"];
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[_UISheetPresentationControllerAppearance _prefersDimmingVisible](self forKey:{"_prefersDimmingVisible"), @"_prefersDimmingVisible"}];
  v5 = [(_UISheetPresentationControllerAppearance *)self _largestUndimmedDetentIdentifier];
  [v4 encodeObject:v5 forKey:@"_largestUndimmedDetentIdentifier"];

  v6 = [(_UISheetPresentationControllerAppearance *)self _smallestDimmedDetentIdentifier];
  [v4 encodeObject:v6 forKey:@"_smallestDimmedDetentIdentifier"];
}

@end