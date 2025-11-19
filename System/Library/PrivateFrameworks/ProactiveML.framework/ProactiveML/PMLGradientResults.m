@interface PMLGradientResults
- (PMLGradientResults)initWithGradient:(id)a3 loss:(id)a4;
@end

@implementation PMLGradientResults

- (PMLGradientResults)initWithGradient:(id)a3 loss:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"gradient"}];
  }

  v14.receiver = self;
  v14.super_class = PMLGradientResults;
  v10 = [(PMLGradientResults *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_gradient, a3);
    objc_storeStrong(&v11->_loss, a4);
  }

  return v11;
}

@end