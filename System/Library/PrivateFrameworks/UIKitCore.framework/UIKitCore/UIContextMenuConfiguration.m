@interface UIContextMenuConfiguration
+ (UIContextMenuConfiguration)configurationWithIdentifier:(id)identifier previewProvider:(UIContextMenuContentPreviewProvider)previewProvider actionProvider:(UIContextMenuActionProvider)actionProvider;
- (BOOL)_isCollectionViewBackgroundMenu;
- (BOOL)_isMultiItemMenu;
- (NSSet)_effectiveSecondaryItemIdentifiers;
- (UIContextMenuConfiguration)init;
- (UIResponder)firstResponderTarget;
- (id)_effectiveInternalIdentifier;
- (id)identifier;
@end

@implementation UIContextMenuConfiguration

- (BOOL)_isCollectionViewBackgroundMenu
{
  v3 = [(UIContextMenuConfiguration *)self _internalIdentifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(UIContextMenuConfiguration *)self _internalIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.UIKit.UICollectionView.backgroundMenu"];

  return v6;
}

+ (UIContextMenuConfiguration)configurationWithIdentifier:(id)identifier previewProvider:(UIContextMenuContentPreviewProvider)previewProvider actionProvider:(UIContextMenuActionProvider)actionProvider
{
  v7 = actionProvider;
  v8 = previewProvider;
  v9 = identifier;
  v10 = objc_opt_new();
  [v10 setIdentifier:v9];

  [v10 setPreviewProvider:v8];
  [v10 setActionProvider:v7];

  return v10;
}

- (UIContextMenuConfiguration)init
{
  v3.receiver = self;
  v3.super_class = UIContextMenuConfiguration;
  result = [(UIContextMenuConfiguration *)&v3 init];
  if (result)
  {
    result->_badgeCount = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)identifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = self->_identifier;
    self->_identifier = v4;

    identifier = self->_identifier;
  }

  return identifier;
}

- (BOOL)_isMultiItemMenu
{
  v2 = [(UIContextMenuConfiguration *)self _effectiveSecondaryItemIdentifiers];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)_effectiveInternalIdentifier
{
  v3 = [(UIContextMenuConfiguration *)self _internalIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIContextMenuConfiguration *)self identifier];
  }

  v6 = v5;

  return v6;
}

- (NSSet)_effectiveSecondaryItemIdentifiers
{
  v3 = [(UIContextMenuConfiguration *)self _internalSecondaryItemIdentifiers];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIContextMenuConfiguration *)self secondaryItemIdentifiers];
  }

  v6 = v5;

  return v6;
}

- (UIResponder)firstResponderTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_firstResponderTarget);

  return WeakRetained;
}

@end