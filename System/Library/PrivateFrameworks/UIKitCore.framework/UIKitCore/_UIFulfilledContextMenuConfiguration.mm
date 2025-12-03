@interface _UIFulfilledContextMenuConfiguration
- (BOOL)isPresentable;
- (UIResponder)firstResponderTarget;
- (void)setMenu:(id)menu;
- (void)setPrimaryInternalIdentifier:(id)identifier secondaryIdentifiers:(id)identifiers;
@end

@implementation _UIFulfilledContextMenuConfiguration

- (UIResponder)firstResponderTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_firstResponderTarget);

  return WeakRetained;
}

- (BOOL)isPresentable
{
  previewViewController = [(_UIFulfilledContextMenuConfiguration *)self previewViewController];
  if (previewViewController)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    menu = [(_UIFulfilledContextMenuConfiguration *)self menu];
    v4 = ([menu metadata] >> 24) & 1;
  }

  return v4;
}

- (void)setPrimaryInternalIdentifier:(id)identifier secondaryIdentifiers:(id)identifiers
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v7 = identifiersCopy;
  if (identifierCopy)
  {
    v8 = [MEMORY[0x1E695DFA8] setWithObject:?];
    if (![v7 count])
    {
      goto LABEL_8;
    }

    if (v8)
    {
      [(NSSet *)v8 unionSet:v7];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if ([identifiersCopy count])
  {
LABEL_6:
    v8 = [MEMORY[0x1E695DFA8] setWithSet:v7];
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:
  internalIdentifiers = self->_internalIdentifiers;
  self->_internalIdentifiers = v8;
}

- (void)setMenu:(id)menu
{
  _copyPreservingMetadataAndSharingLeafObserversIfNeeded = [menu _copyPreservingMetadataAndSharingLeafObserversIfNeeded];
  menu = self->_menu;
  self->_menu = _copyPreservingMetadataAndSharingLeafObserversIfNeeded;
}

@end