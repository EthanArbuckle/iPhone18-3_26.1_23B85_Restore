@interface _UIMenuPreparationContext
+ (id)contextWithPreparer:(id)a3 firstResponderTarget:(id)a4;
- (BOOL)shouldTrackSelectionForVisibleIndex:(unint64_t)a3 elementSize:(int64_t)a4;
- (UIDeferredMenuElementDelegate)deferredElementDelegate;
- (UIResponder)firstResponderTarget;
- (id)copyWithZone:(_NSZone *)a3;
- (id)preparer;
- (id)sender;
@end

@implementation _UIMenuPreparationContext

+ (id)contextWithPreparer:(id)a3 firstResponderTarget:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(_UIMenuPreparationContext);
  objc_storeWeak(&v7->_preparer, v6);

  objc_storeWeak(&v7->_firstResponderTarget, v5);
  v7->_tracksSelection = 1;
  elementSizeSolver = v7->_elementSizeSolver;
  v7->_elementSizeSolver = &__block_literal_global_742;

  shouldTrackVisibleSelection = v7->_shouldTrackVisibleSelection;
  v7->_shouldTrackVisibleSelection = &__block_literal_global_3_17;

  return v7;
}

- (BOOL)shouldTrackSelectionForVisibleIndex:(unint64_t)a3 elementSize:(int64_t)a4
{
  if (!self->_tracksSelection)
  {
    return 0;
  }

  shouldTrackVisibleSelection = self->_shouldTrackVisibleSelection;
  if (shouldTrackVisibleSelection)
  {
    return shouldTrackVisibleSelection[2](shouldTrackVisibleSelection, a3, a4);
  }

  else
  {
    return 1;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_UIMenuPreparationContext allocWithZone:?]];
  v5 = [(_UIMenuPreparationContext *)self preparer];
  objc_storeWeak(&v4->_preparer, v5);

  v6 = [(_UIMenuPreparationContext *)self preparer];
  objc_storeWeak(&v4->_firstResponderTarget, v6);

  v7 = [(_UIMenuPreparationContext *)self deferredElementDelegate];
  [(_UIMenuPreparationContext *)v4 setDeferredElementDelegate:v7];

  v8 = [(_UIMenuPreparationContext *)self sender];
  [(_UIMenuPreparationContext *)v4 setSender:v8];

  [(_UIMenuPreparationContext *)v4 setSupportsCustomViewMenuElements:[(_UIMenuPreparationContext *)self supportsCustomViewMenuElements]];
  [(_UIMenuPreparationContext *)v4 setUseSenderAsResponderSender:[(_UIMenuPreparationContext *)self useSenderAsResponderSender]];
  [(_UIMenuPreparationContext *)v4 setSupportsHeaderView:[(_UIMenuPreparationContext *)self supportsHeaderView]];
  [(_UIMenuPreparationContext *)v4 setTracksSelection:[(_UIMenuPreparationContext *)self tracksSelection]];
  v9 = [(_UIMenuPreparationContext *)self elementSizeSolver];
  [(_UIMenuPreparationContext *)v4 setElementSizeSolver:v9];

  v10 = [(_UIMenuPreparationContext *)self shouldTrackVisibleSelection];
  [(_UIMenuPreparationContext *)v4 setShouldTrackVisibleSelection:v10];

  return v4;
}

- (id)preparer
{
  WeakRetained = objc_loadWeakRetained(&self->_preparer);

  return WeakRetained;
}

- (UIResponder)firstResponderTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_firstResponderTarget);

  return WeakRetained;
}

- (UIDeferredMenuElementDelegate)deferredElementDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_deferredElementDelegate);

  return WeakRetained;
}

- (id)sender
{
  WeakRetained = objc_loadWeakRetained(&self->_sender);

  return WeakRetained;
}

@end