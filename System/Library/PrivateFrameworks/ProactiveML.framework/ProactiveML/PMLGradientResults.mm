@interface PMLGradientResults
- (PMLGradientResults)initWithGradient:(id)gradient loss:(id)loss;
@end

@implementation PMLGradientResults

- (PMLGradientResults)initWithGradient:(id)gradient loss:(id)loss
{
  gradientCopy = gradient;
  lossCopy = loss;
  if (!gradientCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLGradientSolver.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"gradient"}];
  }

  v14.receiver = self;
  v14.super_class = PMLGradientResults;
  v10 = [(PMLGradientResults *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_gradient, gradient);
    objc_storeStrong(&v11->_loss, loss);
  }

  return v11;
}

@end