@interface _UIMenuPreparationContext
+ (id)contextWithPreparer:(id)preparer firstResponderTarget:(id)target;
- (BOOL)shouldTrackSelectionForVisibleIndex:(unint64_t)index elementSize:(int64_t)size;
- (UIDeferredMenuElementDelegate)deferredElementDelegate;
- (UIResponder)firstResponderTarget;
- (id)copyWithZone:(_NSZone *)zone;
- (id)preparer;
- (id)sender;
@end

@implementation _UIMenuPreparationContext

+ (id)contextWithPreparer:(id)preparer firstResponderTarget:(id)target
{
  targetCopy = target;
  preparerCopy = preparer;
  v7 = objc_alloc_init(_UIMenuPreparationContext);
  objc_storeWeak(&v7->_preparer, preparerCopy);

  objc_storeWeak(&v7->_firstResponderTarget, targetCopy);
  v7->_tracksSelection = 1;
  elementSizeSolver = v7->_elementSizeSolver;
  v7->_elementSizeSolver = &__block_literal_global_742;

  shouldTrackVisibleSelection = v7->_shouldTrackVisibleSelection;
  v7->_shouldTrackVisibleSelection = &__block_literal_global_3_17;

  return v7;
}

- (BOOL)shouldTrackSelectionForVisibleIndex:(unint64_t)index elementSize:(int64_t)size
{
  if (!self->_tracksSelection)
  {
    return 0;
  }

  shouldTrackVisibleSelection = self->_shouldTrackVisibleSelection;
  if (shouldTrackVisibleSelection)
  {
    return shouldTrackVisibleSelection[2](shouldTrackVisibleSelection, index, size);
  }

  else
  {
    return 1;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_UIMenuPreparationContext allocWithZone:?]];
  preparer = [(_UIMenuPreparationContext *)self preparer];
  objc_storeWeak(&v4->_preparer, preparer);

  preparer2 = [(_UIMenuPreparationContext *)self preparer];
  objc_storeWeak(&v4->_firstResponderTarget, preparer2);

  deferredElementDelegate = [(_UIMenuPreparationContext *)self deferredElementDelegate];
  [(_UIMenuPreparationContext *)v4 setDeferredElementDelegate:deferredElementDelegate];

  sender = [(_UIMenuPreparationContext *)self sender];
  [(_UIMenuPreparationContext *)v4 setSender:sender];

  [(_UIMenuPreparationContext *)v4 setSupportsCustomViewMenuElements:[(_UIMenuPreparationContext *)self supportsCustomViewMenuElements]];
  [(_UIMenuPreparationContext *)v4 setUseSenderAsResponderSender:[(_UIMenuPreparationContext *)self useSenderAsResponderSender]];
  [(_UIMenuPreparationContext *)v4 setSupportsHeaderView:[(_UIMenuPreparationContext *)self supportsHeaderView]];
  [(_UIMenuPreparationContext *)v4 setTracksSelection:[(_UIMenuPreparationContext *)self tracksSelection]];
  elementSizeSolver = [(_UIMenuPreparationContext *)self elementSizeSolver];
  [(_UIMenuPreparationContext *)v4 setElementSizeSolver:elementSizeSolver];

  shouldTrackVisibleSelection = [(_UIMenuPreparationContext *)self shouldTrackVisibleSelection];
  [(_UIMenuPreparationContext *)v4 setShouldTrackVisibleSelection:shouldTrackVisibleSelection];

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