@interface PUAssetViewModelObservation
- (PUAssetViewModelObservation)initWithViewModel:(id)a3 changeHandler:(id)a4;
@end

@implementation PUAssetViewModelObservation

- (PUAssetViewModelObservation)initWithViewModel:(id)a3 changeHandler:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PUAssetViewModelObservation_initWithViewModel_changeHandler___block_invoke;
  v11[3] = &unk_1E7B7FB48;
  v12 = v6;
  v10.receiver = self;
  v10.super_class = PUAssetViewModelObservation;
  v7 = v6;
  v8 = [(PUViewModelObservation *)&v10 initWithViewModel:a3 changeHandler:v11];

  return v8;
}

@end