@interface SBRotatedIconListModel
- (BOOL)representsSelf:(id)self;
- (BOOL)shouldRemoveAlreadyContainedIconWhenRemovingFromOtherPositionsInHierarchy:(id)hierarchy gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions;
- (SBIconListModel)unrotatedIconListModel;
- (id)activeTransactionCreatingIfNecessary:(BOOL)necessary;
- (id)gridSizeClassSizesWithOptions:(unint64_t)options;
- (void)markIconStateDirty;
@end

@implementation SBRotatedIconListModel

- (id)activeTransactionCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  unrotatedIconListModel = [(SBRotatedIconListModel *)self unrotatedIconListModel];
  v5 = [unrotatedIconListModel activeTransactionCreatingIfNecessary:necessaryCopy];

  return v5;
}

- (void)markIconStateDirty
{
  v4.receiver = self;
  v4.super_class = SBRotatedIconListModel;
  [(SBIconListModel *)&v4 markIconStateDirty];
  unrotatedIconListModel = [(SBRotatedIconListModel *)self unrotatedIconListModel];
  [unrotatedIconListModel markIconStateDirty];
}

- (id)gridSizeClassSizesWithOptions:(unint64_t)options
{
  rotatedIconGridSizeClassSizes = [(SBIconListModel *)self rotatedIconGridSizeClassSizes];
  if (!rotatedIconGridSizeClassSizes)
  {
    rotatedIconGridSizeClassSizes = [(SBIconListModel *)self iconGridSizeClassSizes];
  }

  return rotatedIconGridSizeClassSizes;
}

- (BOOL)representsSelf:(id)self
{
  selfCopy = self;
  v8.receiver = self;
  v8.super_class = SBRotatedIconListModel;
  if ([(SBIconListModel *)&v8 representsSelf:selfCopy])
  {
    v5 = 1;
  }

  else
  {
    unrotatedIconListModel = [(SBRotatedIconListModel *)self unrotatedIconListModel];
    v5 = unrotatedIconListModel == selfCopy;
  }

  return v5;
}

- (BOOL)shouldRemoveAlreadyContainedIconWhenRemovingFromOtherPositionsInHierarchy:(id)hierarchy gridCellInfoOptions:(unint64_t)options mutationOptions:(unint64_t)mutationOptions
{
  if ((mutationOptions & 0x80000000) != 0)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SBRotatedIconListModel;
  return [(SBIconListModel *)&v6 shouldRemoveAlreadyContainedIconWhenRemovingFromOtherPositionsInHierarchy:hierarchy gridCellInfoOptions:options mutationOptions:?];
}

- (SBIconListModel)unrotatedIconListModel
{
  WeakRetained = objc_loadWeakRetained(&self->_unrotatedIconListModel);

  return WeakRetained;
}

@end