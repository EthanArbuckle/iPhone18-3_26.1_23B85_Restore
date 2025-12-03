@interface UIInputViewSetPlacement_ScreenDownApplicator
- (UIEdgeInsets)inputAccessoryPadding;
@end

@implementation UIInputViewSetPlacement_ScreenDownApplicator

- (UIEdgeInsets)inputAccessoryPadding
{
  WeakRetained = objc_loadWeakRetained(&self->super._owner);
  hostView = [WeakRetained hostView];
  traitCollection = [hostView traitCollection];
  [UIInputViewSetPlacement_FloatingAssistantApplicator inputAccessoryPaddingForTraitCollection:traitCollection];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

@end