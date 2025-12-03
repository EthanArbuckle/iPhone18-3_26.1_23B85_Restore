@interface PXBlockActionPerformer
- (PXBlockActionManager)actionManager;
- (PXBlockActionPerformer)initWithActionType:(id)type configuration:(id)configuration;
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
  configuration = [(PXBlockActionPerformer *)self configuration];
  actionBlock = [configuration actionBlock];

  actionManager = [(PXBlockActionPerformer *)self actionManager];
  v8 = 0;
  v6 = (actionBlock)[2](actionBlock, actionManager, self, &v8);
  v7 = v8;

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:v6 error:v7];
}

- (PXBlockActionPerformer)initWithActionType:(id)type configuration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = PXBlockActionPerformer;
  v7 = [(PXActionPerformer *)&v11 initWithActionType:type];
  if (v7)
  {
    v8 = [configurationCopy copy];
    configuration = v7->_configuration;
    v7->_configuration = v8;
  }

  return v7;
}

@end