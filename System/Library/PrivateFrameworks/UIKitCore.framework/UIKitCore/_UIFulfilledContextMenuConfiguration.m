@interface _UIFulfilledContextMenuConfiguration
- (BOOL)isPresentable;
- (UIResponder)firstResponderTarget;
- (void)setMenu:(id)a3;
- (void)setPrimaryInternalIdentifier:(id)a3 secondaryIdentifiers:(id)a4;
@end

@implementation _UIFulfilledContextMenuConfiguration

- (UIResponder)firstResponderTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_firstResponderTarget);

  return WeakRetained;
}

- (BOOL)isPresentable
{
  v3 = [(_UIFulfilledContextMenuConfiguration *)self previewViewController];
  if (v3)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [(_UIFulfilledContextMenuConfiguration *)self menu];
    v4 = ([v5 metadata] >> 24) & 1;
  }

  return v4;
}

- (void)setPrimaryInternalIdentifier:(id)a3 secondaryIdentifiers:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (v10)
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

  if ([v6 count])
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

- (void)setMenu:(id)a3
{
  v4 = [a3 _copyPreservingMetadataAndSharingLeafObserversIfNeeded];
  menu = self->_menu;
  self->_menu = v4;
}

@end