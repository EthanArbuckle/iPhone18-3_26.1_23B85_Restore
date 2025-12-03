@interface _UIButtonBarGroupOrdererSelfContained
+ (id)groupOrdererForCustomizationIdentifier:(id)identifier;
- (id)_groupOrdererGroups:(id)groups;
@end

@implementation _UIButtonBarGroupOrdererSelfContained

+ (id)groupOrdererForCustomizationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIButtonBarGroupOrderer.m" lineNumber:230 description:@"Cannot instantiate a _UIButtonBarGroupOrderer with a nil customizationIdentifier"];
  }

  v6 = [_UIButtonBarGroupOrdererSelfContained alloc];
  v7 = __customizationDataForIdentifier(identifierCopy);
  v8 = [(_UIButtonBarGroupOrderer *)v6 _initWithCustomizationIdentifier:identifierCopy data:v7];

  if (v8)
  {
    objc_storeWeak(v8 + 6, v8);
  }

  return v8;
}

- (id)_groupOrdererGroups:(id)groups
{
  if (groups == self)
  {
    if (groups)
    {
      ownedGroups = self->_ownedGroups;
    }

    else
    {
      ownedGroups = 0;
    }

    v4 = ownedGroups;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end