@interface PUViewModelObservation
+ (id)new;
- (PUViewModelObservation)init;
- (PUViewModelObservation)initWithViewModel:(id)model changeHandler:(id)handler;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUViewModelObservation

- (void)viewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  changeHandler = [(PUViewModelObservation *)self changeHandler];
  changeHandler[2](changeHandler, changeCopy);
}

- (PUViewModelObservation)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUViewModelObservation.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PUViewModelObservation init]"}];

  abort();
}

- (PUViewModelObservation)initWithViewModel:(id)model changeHandler:(id)handler
{
  modelCopy = model;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = PUViewModelObservation;
  v8 = [(PUViewModelObservation *)&v12 init];
  if (v8)
  {
    v9 = _Block_copy(handlerCopy);
    changeHandler = v8->_changeHandler;
    v8->_changeHandler = v9;

    [modelCopy registerChangeObserver:v8];
  }

  return v8;
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUViewModelObservation.m" lineNumber:33 description:{@"%s is not available as initializer", "+[PUViewModelObservation new]"}];

  abort();
}

@end