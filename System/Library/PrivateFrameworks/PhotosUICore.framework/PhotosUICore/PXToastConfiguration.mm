@interface PXToastConfiguration
- (PXToastConfiguration)init;
- (UIView)sourceView;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXToastConfiguration

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(PXToastConfiguration *)self message];
  [v4 setMessage:v5];

  v6 = [(PXToastConfiguration *)self iconSystemImageName];
  [v4 setIconSystemImageName:v6];

  [(PXToastConfiguration *)self autoDismissalDelay];
  [v4 setAutoDismissalDelay:?];
  [v4 setCanSwipeToDismiss:{-[PXToastConfiguration canSwipeToDismiss](self, "canSwipeToDismiss")}];
  v7 = [(PXToastConfiguration *)self contentView];
  [v4 setContentView:v7];

  v8 = [(PXToastConfiguration *)self sourceView];
  [v4 setSourceView:v8];

  [(PXToastConfiguration *)self bottomMargin];
  [v4 setBottomMargin:?];
  return v4;
}

- (PXToastConfiguration)init
{
  v3.receiver = self;
  v3.super_class = PXToastConfiguration;
  result = [(PXToastConfiguration *)&v3 init];
  if (result)
  {
    result->_bottomMargin = 120.0;
  }

  return result;
}

@end