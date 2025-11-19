@interface PXBlockActionPerformer
- (PXBlockActionManager)actionManager;
- (PXBlockActionPerformer)initWithActionType:(id)a3 configuration:(id)a4;
- (void)performUserInteractionTask;
@end

@implementation PXBlockActionPerformer

- (PXBlockActionManager)actionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_actionManager);

  return WeakRetained;
}

- (void)performUserInteractionTask
{
  v3 = [(PXBlockActionPerformer *)self configuration];
  v4 = [v3 actionBlock];

  v5 = [(PXBlockActionPerformer *)self actionManager];
  v8 = 0;
  v6 = (v4)[2](v4, v5, self, &v8);
  v7 = v8;

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:v6 error:v7];
}

- (PXBlockActionPerformer)initWithActionType:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = PXBlockActionPerformer;
  v7 = [(PXActionPerformer *)&v11 initWithActionType:a3];
  if (v7)
  {
    v8 = [v6 copy];
    configuration = v7->_configuration;
    v7->_configuration = v8;
  }

  return v7;
}

@end