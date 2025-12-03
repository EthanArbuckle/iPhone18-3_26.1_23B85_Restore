@interface PUBrowsingViewModelObservation
- (PUBrowsingViewModelObservation)initWithViewModel:(id)model changeHandler:(id)handler;
@end

@implementation PUBrowsingViewModelObservation

- (PUBrowsingViewModelObservation)initWithViewModel:(id)model changeHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PUBrowsingViewModelObservation_initWithViewModel_changeHandler___block_invoke;
  v11[3] = &unk_1E7B7FB48;
  v12 = handlerCopy;
  v10.receiver = self;
  v10.super_class = PUBrowsingViewModelObservation;
  v7 = handlerCopy;
  v8 = [(PUViewModelObservation *)&v10 initWithViewModel:model changeHandler:v11];

  return v8;
}

@end