@interface PXCMMShowMessageComposeActionPerformer
- (id)performActionWithSession:(id)a3 completionHandler:(id)a4;
- (void)performMessageComposeActionWithSession:(id)a3 shareURL:(id)a4 completionHandler:(id)a5;
@end

@implementation PXCMMShowMessageComposeActionPerformer

- (id)performActionWithSession:(id)a3 completionHandler:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCMMActionManager.m" lineNumber:204 description:@"Message composition requires a share URL"];

  return 0;
}

- (void)performMessageComposeActionWithSession:(id)a3 shareURL:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXCMMActionManager.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"shareURL"}];
  }

  objc_storeStrong(&self->_shareURL, a4);
  v14.receiver = self;
  v14.super_class = PXCMMShowMessageComposeActionPerformer;
  v12 = [(PXCMMActionPerformer *)&v14 performActionWithSession:v9 completionHandler:v11];
}

@end