@interface _UILayoutRuleRegistration
- (CGSize)size;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (UIEdgeInsets)layoutMargins;
- (UIEdgeInsets)safeAreaInsets;
- (UITraitCollection)traitCollection;
- (uint64_t)evaluateForLayoutInfo:(uint64_t)result parentTraitCollection:(__int128 *)collection traitOverrides:(id)obj;
- (void)initWithIdentifier:(const void *)identifier evaluationHandler:;
@end

@implementation _UILayoutRuleRegistration

- (void)initWithIdentifier:(const void *)identifier evaluationHandler:
{
  selfCopy = self;
  if (!self)
  {
    return selfCopy;
  }

  if ([a2 length])
  {
    if (identifier)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_initWithIdentifier_evaluationHandler_ object:selfCopy file:@"UILayoutRule.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"identifier.length > 0"}];

    if (identifier)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:sel_initWithIdentifier_evaluationHandler_ object:selfCopy file:@"UILayoutRule.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"evaluationHandler != NULL"}];

LABEL_4:
  v12.receiver = selfCopy;
  v12.super_class = _UILayoutRuleRegistration;
  v6 = objc_msgSendSuper2(&v12, sel_init);
  selfCopy = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a2);
    v7 = _Block_copy(identifier);
    v8 = selfCopy[2];
    selfCopy[2] = v7;
  }

  return selfCopy;
}

- (uint64_t)evaluateForLayoutInfo:(uint64_t)result parentTraitCollection:(__int128 *)collection traitOverrides:(id)obj
{
  if (result)
  {
    v4 = result;
    if (obj)
    {
      objc_storeStrong((result + 112), obj);
    }

    else
    {
      v10 = *(result + 72);
      v16[2] = *(result + 56);
      v16[3] = v10;
      v16[4] = *(result + 88);
      v17 = *(result + 104);
      v11 = *(result + 40);
      v16[0] = *(result + 24);
      v16[1] = v11;
      v12 = collection[3];
      v14[2] = collection[2];
      v14[3] = v12;
      v14[4] = collection[4];
      v15 = *(collection + 10);
      v13 = collection[1];
      v14[0] = *collection;
      v14[1] = v13;
      result = _UILayoutRuleLayoutInfoEqualToLayoutRuleLayoutInfo(v16, v14);
      if ((result & 1) != 0 || !*(v4 + 112))
      {
        return result;
      }
    }

    v5 = *collection;
    *(v4 + 40) = collection[1];
    *(v4 + 24) = v5;
    v6 = collection[2];
    v7 = collection[3];
    v8 = collection[4];
    *(v4 + 104) = *(collection + 10);
    *(v4 + 88) = v8;
    *(v4 + 72) = v7;
    *(v4 + 56) = v6;
    v9 = *(*(v4 + 16) + 16);

    return v9();
  }

  return result;
}

- (NSDirectionalEdgeInsets)directionalLayoutMargins
{
  top = self->_layoutInfo.layoutMargins.top;
  left = self->_layoutInfo.layoutMargins.left;
  bottom = self->_layoutInfo.layoutMargins.bottom;
  if (self->_layoutInfo.reversesLayoutDirection)
  {
    right = self->_layoutInfo.layoutMargins.right;
  }

  else
  {
    right = self->_layoutInfo.layoutMargins.left;
  }

  if (!self->_layoutInfo.reversesLayoutDirection)
  {
    left = self->_layoutInfo.layoutMargins.right;
  }

  result.trailing = left;
  result.bottom = bottom;
  result.leading = right;
  result.top = top;
  return result;
}

- (UIEdgeInsets)layoutMargins
{
  top = self->_layoutInfo.layoutMargins.top;
  left = self->_layoutInfo.layoutMargins.left;
  bottom = self->_layoutInfo.layoutMargins.bottom;
  right = self->_layoutInfo.layoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)safeAreaInsets
{
  top = self->_layoutInfo.safeAreaInsets.top;
  left = self->_layoutInfo.safeAreaInsets.left;
  bottom = self->_layoutInfo.safeAreaInsets.bottom;
  right = self->_layoutInfo.safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)size
{
  width = self->_layoutInfo.size.width;
  height = self->_layoutInfo.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UITraitCollection)traitCollection
{
  v4 = self->_parentTraitCollection;
  if (!v4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UILayoutRule.m" lineNumber:91 description:@"UIKit internal inconsistency: UILayoutRuleEvaluationContext does not have a valid trait collection"];
  }

  return v4;
}

@end