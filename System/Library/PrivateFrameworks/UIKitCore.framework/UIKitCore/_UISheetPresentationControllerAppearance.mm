@interface _UISheetPresentationControllerAppearance
+ (_UISheetPresentationControllerAppearance)appearanceWithLargestUndimmedDetentIdentifier:(id)identifier;
+ (_UISheetPresentationControllerAppearance)appearanceWithSmallestDimmedDetentIdentifier:(id)identifier;
+ (id)appearancePreferringDimmingVisible:(BOOL)visible;
- (BOOL)_isDimmingAlwaysVisible;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_UISheetPresentationControllerAppearance)initWithBSXPCCoder:(id)coder;
- (_UISheetPresentationControllerAppearance)initWithCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UISheetPresentationControllerAppearance

- (BOOL)_isDimmingAlwaysVisible
{
  if (![(_UISheetPresentationControllerAppearance *)self _prefersDimmingVisible])
  {
    return 0;
  }

  _largestUndimmedDetentIdentifier = [(_UISheetPresentationControllerAppearance *)self _largestUndimmedDetentIdentifier];
  if (_largestUndimmedDetentIdentifier)
  {
    v4 = 0;
  }

  else
  {
    _smallestDimmedDetentIdentifier = [(_UISheetPresentationControllerAppearance *)self _smallestDimmedDetentIdentifier];
    v4 = _smallestDimmedDetentIdentifier == 0;
  }

  return v4;
}

+ (id)appearancePreferringDimmingVisible:(BOOL)visible
{
  v4 = objc_alloc_init(_UISheetPresentationControllerAppearance);
  v4->__prefersDimmingVisible = visible;

  return v4;
}

+ (_UISheetPresentationControllerAppearance)appearanceWithLargestUndimmedDetentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(_UISheetPresentationControllerAppearance);
  v4->__prefersDimmingVisible = 1;
  largestUndimmedDetentIdentifier = v4->__largestUndimmedDetentIdentifier;
  v4->__largestUndimmedDetentIdentifier = identifierCopy;

  return v4;
}

+ (_UISheetPresentationControllerAppearance)appearanceWithSmallestDimmedDetentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(_UISheetPresentationControllerAppearance);
  v4->__prefersDimmingVisible = 0;
  smallestDimmedDetentIdentifier = v4->__smallestDimmedDetentIdentifier;
  v4->__smallestDimmedDetentIdentifier = identifierCopy;

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _prefersDimmingVisible = [(_UISheetPresentationControllerAppearance *)self _prefersDimmingVisible];
    if (_prefersDimmingVisible != [v5 _prefersDimmingVisible])
    {
      LOBYTE(v7) = 0;
LABEL_19:

      goto LABEL_20;
    }

    _largestUndimmedDetentIdentifier = [(_UISheetPresentationControllerAppearance *)self _largestUndimmedDetentIdentifier];
    _largestUndimmedDetentIdentifier2 = [v5 _largestUndimmedDetentIdentifier];
    v10 = _largestUndimmedDetentIdentifier;
    v11 = _largestUndimmedDetentIdentifier2;
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

    _smallestDimmedDetentIdentifier = [(_UISheetPresentationControllerAppearance *)self _smallestDimmedDetentIdentifier];
    _smallestDimmedDetentIdentifier2 = [v5 _smallestDimmedDetentIdentifier];
    v14 = _smallestDimmedDetentIdentifier;
    v17 = _smallestDimmedDetentIdentifier2;
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

- (_UISheetPresentationControllerAppearance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _UISheetPresentationControllerAppearance;
  v5 = [(_UISheetPresentationControllerAppearance *)&v11 init];
  if (v5)
  {
    v5->__prefersDimmingVisible = [coderCopy decodeBoolForKey:@"_prefersDimmingVisible"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_largestUndimmedDetentIdentifier"];
    largestUndimmedDetentIdentifier = v5->__largestUndimmedDetentIdentifier;
    v5->__largestUndimmedDetentIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_smallestDimmedDetentIdentifier"];
    smallestDimmedDetentIdentifier = v5->__smallestDimmedDetentIdentifier;
    v5->__smallestDimmedDetentIdentifier = v8;
  }

  return v5;
}

- (_UISheetPresentationControllerAppearance)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _UISheetPresentationControllerAppearance;
  v5 = [(_UISheetPresentationControllerAppearance *)&v11 init];
  if (v5)
  {
    v5->__prefersDimmingVisible = [coderCopy decodeBoolForKey:@"_prefersDimmingVisible"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_largestUndimmedDetentIdentifier"];
    largestUndimmedDetentIdentifier = v5->__largestUndimmedDetentIdentifier;
    v5->__largestUndimmedDetentIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_smallestDimmedDetentIdentifier"];
    smallestDimmedDetentIdentifier = v5->__smallestDimmedDetentIdentifier;
    v5->__smallestDimmedDetentIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[_UISheetPresentationControllerAppearance _prefersDimmingVisible](self forKey:{"_prefersDimmingVisible"), @"_prefersDimmingVisible"}];
  _largestUndimmedDetentIdentifier = [(_UISheetPresentationControllerAppearance *)self _largestUndimmedDetentIdentifier];
  [coderCopy encodeObject:_largestUndimmedDetentIdentifier forKey:@"_largestUndimmedDetentIdentifier"];

  _smallestDimmedDetentIdentifier = [(_UISheetPresentationControllerAppearance *)self _smallestDimmedDetentIdentifier];
  [coderCopy encodeObject:_smallestDimmedDetentIdentifier forKey:@"_smallestDimmedDetentIdentifier"];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[_UISheetPresentationControllerAppearance _prefersDimmingVisible](self forKey:{"_prefersDimmingVisible"), @"_prefersDimmingVisible"}];
  _largestUndimmedDetentIdentifier = [(_UISheetPresentationControllerAppearance *)self _largestUndimmedDetentIdentifier];
  [coderCopy encodeObject:_largestUndimmedDetentIdentifier forKey:@"_largestUndimmedDetentIdentifier"];

  _smallestDimmedDetentIdentifier = [(_UISheetPresentationControllerAppearance *)self _smallestDimmedDetentIdentifier];
  [coderCopy encodeObject:_smallestDimmedDetentIdentifier forKey:@"_smallestDimmedDetentIdentifier"];
}

@end