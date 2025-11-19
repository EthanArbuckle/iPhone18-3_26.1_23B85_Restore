@interface SBRotatedIconListModel
- (BOOL)representsSelf:(id)a3;
- (BOOL)shouldRemoveAlreadyContainedIconWhenRemovingFromOtherPositionsInHierarchy:(id)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5;
- (SBIconListModel)unrotatedIconListModel;
- (id)activeTransactionCreatingIfNecessary:(BOOL)a3;
- (id)gridSizeClassSizesWithOptions:(unint64_t)a3;
- (void)markIconStateDirty;
@end

@implementation SBRotatedIconListModel

- (id)activeTransactionCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBRotatedIconListModel *)self unrotatedIconListModel];
  v5 = [v4 activeTransactionCreatingIfNecessary:v3];

  return v5;
}

- (void)markIconStateDirty
{
  v4.receiver = self;
  v4.super_class = SBRotatedIconListModel;
  [(SBIconListModel *)&v4 markIconStateDirty];
  v3 = [(SBRotatedIconListModel *)self unrotatedIconListModel];
  [v3 markIconStateDirty];
}

- (id)gridSizeClassSizesWithOptions:(unint64_t)a3
{
  v4 = [(SBIconListModel *)self rotatedIconGridSizeClassSizes];
  if (!v4)
  {
    v4 = [(SBIconListModel *)self iconGridSizeClassSizes];
  }

  return v4;
}

- (BOOL)representsSelf:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBRotatedIconListModel;
  if ([(SBIconListModel *)&v8 representsSelf:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(SBRotatedIconListModel *)self unrotatedIconListModel];
    v5 = v6 == v4;
  }

  return v5;
}

- (BOOL)shouldRemoveAlreadyContainedIconWhenRemovingFromOtherPositionsInHierarchy:(id)a3 gridCellInfoOptions:(unint64_t)a4 mutationOptions:(unint64_t)a5
{
  if ((a5 & 0x80000000) != 0)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SBRotatedIconListModel;
  return [(SBIconListModel *)&v6 shouldRemoveAlreadyContainedIconWhenRemovingFromOtherPositionsInHierarchy:a3 gridCellInfoOptions:a4 mutationOptions:?];
}

- (SBIconListModel)unrotatedIconListModel
{
  WeakRetained = objc_loadWeakRetained(&self->_unrotatedIconListModel);

  return WeakRetained;
}

@end