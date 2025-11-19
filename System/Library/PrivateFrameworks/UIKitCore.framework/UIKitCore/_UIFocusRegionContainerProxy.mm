@interface _UIFocusRegionContainerProxy
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)_isEligibleForFocusOcclusion;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (CGRect)_clippingRectInCoordinateSpace:(id)a3;
- (NSArray)preferredFocusEnvironments;
- (NSString)description;
- (UIFocusEnvironment)parentFocusEnvironment;
- (_UIFocusRegionContainerProxy)initWithEnvironmentContainer:(id)a3;
- (_UIFocusRegionContainerProxy)initWithOwningEnvironment:(id)a3 itemContainer:(id)a4;
- (id)_preferredFocusRegionCoordinateSpace;
- (unint64_t)hash;
- (void)_didUpdateFocusInContext:(id)a3;
- (void)_searchForFocusRegionsInContext:(id)a3;
- (void)setNeedsFocusUpdate;
- (void)updateFocusIfNeeded;
@end

@implementation _UIFocusRegionContainerProxy

- (id)_preferredFocusRegionCoordinateSpace
{
  v2 = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  v3 = [UIFocusSystem focusSystemForEnvironment:v2];
  v4 = v3;
  if (!v3)
  {
    v3 = v2;
  }

  v5 = [v3 focusItemContainer];
  v6 = [v5 coordinateSpace];

  return v6;
}

- (BOOL)_isEligibleForFocusOcclusion
{
  v2 = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  IsEligibleForFocusOcclusion = _UIFocusEnvironmentIsEligibleForFocusOcclusion(v2, 0);

  return IsEligibleForFocusOcclusion;
}

- (BOOL)_isEligibleForFocusInteraction
{
  v2 = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  IsEligibleForFocusInteraction = _UIFocusEnvironmentIsEligibleForFocusInteraction(v2);

  return IsEligibleForFocusInteraction;
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  v2 = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = [v2 parentFocusEnvironment];
  }

  v4 = v3;

  return v4;
}

- (_UIFocusRegionContainerProxy)initWithOwningEnvironment:(id)a3 itemContainer:(id)a4
{
  v5 = [_UIFocusEnvironmentContainerTuple tupleWithOwningEnvironment:a3 itemContainer:a4];
  v6 = [(_UIFocusRegionContainerProxy *)self initWithEnvironmentContainer:v5];

  return v6;
}

- (_UIFocusRegionContainerProxy)initWithEnvironmentContainer:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIFocusRegionContainerProxy.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"environmentContainer != nil"}];
  }

  v11.receiver = self;
  v11.super_class = _UIFocusRegionContainerProxy;
  v7 = [(_UIFocusRegionContainerProxy *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_environmentContainer, a3);
    *&v8->_allowsLazyLoading = 257;
    v8->_shouldCreateRegionForGuideBehavior = 1;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = v4 && [v4 _ui_isUIFocusRegionContainerProxy] && -[_UIFocusEnvironmentContainerTuple isEqualToEnvironmentContainerTuple:](self->_environmentContainer, "isEqualToEnvironmentContainerTuple:", v5[2]);

  return v6;
}

- (unint64_t)hash
{
  v2 = [(_UIFocusRegionContainerProxy *)self environmentContainer];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(_UIFocusEnvironmentContainerTuple *)self->_environmentContainer itemContainer];
  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"<%@: %p>", v7, v4];
  }

  else
  {
    v8 = @"(nil)";
  }

  v9 = [v3 appendObject:v8 withName:@"focusItemContainer"];

  v10 = [(_UIFocusEnvironmentContainerTuple *)self->_environmentContainer owningEnvironment];
  if (v10)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"<%@: %p>", v13, v10];
  }

  else
  {
    v14 = @"(nil)";
  }

  v15 = [v3 appendObject:v14 withName:@"owningEnvironment"];

  v16 = [v3 build];

  return v16;
}

- (NSArray)preferredFocusEnvironments
{
  v2 = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  v3 = _UIFocusEnvironmentPreferredFocusEnvironments(v2);

  return v3;
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  if (_UIFocusEnvironmentIsViewOrViewControllerOrRespondsToSelector(v5))
  {
    v6 = [v5 shouldUpdateFocusInContext:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_didUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v6 = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  v5 = [UIFocusSystem focusSystemForEnvironment:v6];
  [v5 _notifyEnvironment:v6 didUpdateFocusInContext:v4];
}

- (void)setNeedsFocusUpdate
{
  v4 = [(_UIFocusRegionContainerProxy *)self _focusSystem];
  v3 = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  [v4 requestFocusUpdateToEnvironment:v3];
}

- (void)updateFocusIfNeeded
{
  v2 = [(_UIFocusRegionContainerProxy *)self _focusSystem];
  [v2 updateFocusIfNeeded];
}

- (CGRect)_clippingRectInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  if (objc_opt_respondsToSelector())
  {
    [v5 _clippingRectInCoordinateSpace:v4];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v11 = *(MEMORY[0x1E695F050] + 16);
    v13 = *(MEMORY[0x1E695F050] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_searchForFocusRegionsInContext:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusRegionContainerProxy *)self shouldCreateRegionForOwningItem];
  v6 = [(_UIFocusRegionContainerProxy *)self allowsLazyLoading];
  v7 = [(_UIFocusRegionContainerProxy *)self shouldCreateRegionForGuideBehavior];
  v8 = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  v11 = v8;
  v9 = 0x10000;
  if (!v7)
  {
    v9 = 0;
  }

  v10 = 256;
  if (!v6)
  {
    v10 = 0;
  }

  _UIFocusRegionSearchContextSearchForFocusRegionsInEnvironment(v4, v8, v10 | v5 | v9);
}

@end