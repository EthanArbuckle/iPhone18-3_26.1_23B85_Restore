@interface PUViewModelObservation
+ (id)new;
- (PUViewModelObservation)init;
- (PUViewModelObservation)initWithViewModel:(id)a3 changeHandler:(id)a4;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUViewModelObservation

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v5 = a4;
  v6 = [(PUViewModelObservation *)self changeHandler];
  v6[2](v6, v5);
}

- (PUViewModelObservation)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUViewModelObservation.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PUViewModelObservation init]"}];

  abort();
}

- (PUViewModelObservation)initWithViewModel:(id)a3 changeHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PUViewModelObservation;
  v8 = [(PUViewModelObservation *)&v12 init];
  if (v8)
  {
    v9 = _Block_copy(v7);
    changeHandler = v8->_changeHandler;
    v8->_changeHandler = v9;

    [v6 registerChangeObserver:v8];
  }

  return v8;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PUViewModelObservation.m" lineNumber:33 description:{@"%s is not available as initializer", "+[PUViewModelObservation new]"}];

  abort();
}

@end