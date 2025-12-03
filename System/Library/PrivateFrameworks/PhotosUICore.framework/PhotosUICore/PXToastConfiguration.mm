@interface PXToastConfiguration
- (PXToastConfiguration)init;
- (UIView)sourceView;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXToastConfiguration

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  message = [(PXToastConfiguration *)self message];
  [v4 setMessage:message];

  iconSystemImageName = [(PXToastConfiguration *)self iconSystemImageName];
  [v4 setIconSystemImageName:iconSystemImageName];

  [(PXToastConfiguration *)self autoDismissalDelay];
  [v4 setAutoDismissalDelay:?];
  [v4 setCanSwipeToDismiss:{-[PXToastConfiguration canSwipeToDismiss](self, "canSwipeToDismiss")}];
  contentView = [(PXToastConfiguration *)self contentView];
  [v4 setContentView:contentView];

  sourceView = [(PXToastConfiguration *)self sourceView];
  [v4 setSourceView:sourceView];

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