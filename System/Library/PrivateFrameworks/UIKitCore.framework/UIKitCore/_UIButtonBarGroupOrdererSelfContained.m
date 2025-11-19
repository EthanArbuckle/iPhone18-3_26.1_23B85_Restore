@interface _UIButtonBarGroupOrdererSelfContained
+ (id)groupOrdererForCustomizationIdentifier:(id)a3;
- (id)_groupOrdererGroups:(id)a3;
@end

@implementation _UIButtonBarGroupOrdererSelfContained

+ (id)groupOrdererForCustomizationIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"_UIButtonBarGroupOrderer.m" lineNumber:230 description:@"Cannot instantiate a _UIButtonBarGroupOrderer with a nil customizationIdentifier"];
  }

  v6 = [_UIButtonBarGroupOrdererSelfContained alloc];
  v7 = __customizationDataForIdentifier(v5);
  v8 = [(_UIButtonBarGroupOrderer *)v6 _initWithCustomizationIdentifier:v5 data:v7];

  if (v8)
  {
    objc_storeWeak(v8 + 6, v8);
  }

  return v8;
}

- (id)_groupOrdererGroups:(id)a3
{
  if (a3 == self)
  {
    if (a3)
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