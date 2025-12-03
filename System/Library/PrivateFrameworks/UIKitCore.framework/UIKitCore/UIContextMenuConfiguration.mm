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
  _internalIdentifier = [(UIContextMenuConfiguration *)self _internalIdentifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  _internalIdentifier2 = [(UIContextMenuConfiguration *)self _internalIdentifier];
  v6 = [_internalIdentifier2 isEqualToString:@"com.apple.UIKit.UICollectionView.backgroundMenu"];

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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v5 = self->_identifier;
    self->_identifier = uUID;

    identifier = self->_identifier;
  }

  return identifier;
}

- (BOOL)_isMultiItemMenu
{
  _effectiveSecondaryItemIdentifiers = [(UIContextMenuConfiguration *)self _effectiveSecondaryItemIdentifiers];
  v3 = [_effectiveSecondaryItemIdentifiers count] != 0;

  return v3;
}

- (id)_effectiveInternalIdentifier
{
  _internalIdentifier = [(UIContextMenuConfiguration *)self _internalIdentifier];
  v4 = _internalIdentifier;
  if (_internalIdentifier)
  {
    identifier = _internalIdentifier;
  }

  else
  {
    identifier = [(UIContextMenuConfiguration *)self identifier];
  }

  v6 = identifier;

  return v6;
}

- (NSSet)_effectiveSecondaryItemIdentifiers
{
  _internalSecondaryItemIdentifiers = [(UIContextMenuConfiguration *)self _internalSecondaryItemIdentifiers];
  v4 = _internalSecondaryItemIdentifiers;
  if (_internalSecondaryItemIdentifiers)
  {
    secondaryItemIdentifiers = _internalSecondaryItemIdentifiers;
  }

  else
  {
    secondaryItemIdentifiers = [(UIContextMenuConfiguration *)self secondaryItemIdentifiers];
  }

  v6 = secondaryItemIdentifiers;

  return v6;
}

- (UIResponder)firstResponderTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_firstResponderTarget);

  return WeakRetained;
}

@end