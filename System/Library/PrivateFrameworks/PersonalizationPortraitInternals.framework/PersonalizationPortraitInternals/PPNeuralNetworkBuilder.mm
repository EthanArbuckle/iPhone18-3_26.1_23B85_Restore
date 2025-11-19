@interface PPNeuralNetworkBuilder
- (PPNeuralNetworkBuilder)initWithInputSize:(unint64_t)a3;
- (id)serialize;
- (void)addHiddenLayer:(unint64_t)a3 weights:(const float *)a4 bias:(const float *)a5 activation:(unsigned __int8)a6 skip:(BOOL)a7;
- (void)addOutputLayer:(unint64_t)a3 weights:(const float *)a4 bias:(const float *)a5 activation:(unsigned __int8)a6 softmax:(BOOL)a7;
@end

@implementation PPNeuralNetworkBuilder

- (id)serialize
{
  if (!self->_haveOutputLayer)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PPNeuralNetwork.m" lineNumber:247 description:{@"Invalid parameter not satisfying: %@", @"_haveOutputLayer"}];
  }

  if (self->_done)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PPNeuralNetwork.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"!_done"}];
  }

  v4 = objc_opt_new();
  nlayers = self->_nlayers;
  [v4 appendBytes:&nlayers length:4];
  [v4 appendData:self->_descriptors];
  if (self->_nlayers)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [(NSMutableArray *)self->_weightsAndBiases objectAtIndexedSubscript:v7];
      v9 = offsetFromAppendingData(v4, v8);

      v10 = [(NSMutableArray *)self->_weightsAndBiases objectAtIndexedSubscript:v7 + 1];
      v11 = offsetFromAppendingData(v4, v10);

      v12 = [v4 mutableBytes] + v5;
      *(v12 + 12) = v9;
      *(v12 + 16) = v11;
      ++v6;
      v5 += 20;
      v7 += 2;
    }

    while (v6 < self->_nlayers);
  }

  self->_done = 1;

  return v4;
}

- (void)addOutputLayer:(unint64_t)a3 weights:(const float *)a4 bias:(const float *)a5 activation:(unsigned __int8)a6 softmax:(BOOL)a7
{
  v11 = a3;
  if (self->_haveOutputLayer)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PPNeuralNetwork.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"!_haveOutputLayer"}];
  }

  if (self->_done)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PPNeuralNetwork.m" lineNumber:218 description:{@"Invalid parameter not satisfying: %@", @"!_done"}];
  }

  prevSize = self->_prevSize;
  v23 = v11;
  v24 = 0;
  v25 = 0;
  v26 = a6;
  v27 = 0;
  v28 = a7;
  v29 = 0;
  [(NSMutableData *)self->_descriptors appendBytes:&prevSize length:20];
  weightsAndBiases = self->_weightsAndBiases;
  v15 = objc_alloc(MEMORY[0x277CBEA90]);
  v16 = [v15 initWithBytes:a4 length:4 * v23 * prevSize];
  [(NSMutableArray *)weightsAndBiases addObject:v16];

  v17 = self->_weightsAndBiases;
  v18 = objc_alloc(MEMORY[0x277CBEA90]);
  v19 = [v18 initWithBytes:a5 length:4 * v23];
  [(NSMutableArray *)v17 addObject:v19];

  ++self->_nlayers;
  self->_haveOutputLayer = 1;
}

- (void)addHiddenLayer:(unint64_t)a3 weights:(const float *)a4 bias:(const float *)a5 activation:(unsigned __int8)a6 skip:(BOOL)a7
{
  v7 = a7;
  if (self->_done)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PPNeuralNetwork.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"!_done"}];

    if (a3)
    {
      goto LABEL_3;
    }
  }

  else if (a3)
  {
    goto LABEL_3;
  }

  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"PPNeuralNetwork.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"outputSize > 0"}];

LABEL_3:
  prevSize = self->_prevSize;
  v23 = prevSize;
  v24 = a3;
  v25 = 0;
  v26 = 0;
  v27 = a6;
  v28 = v7;
  v29 = 0;
  if (!v7)
  {
    prevSize = 0;
  }

  self->_prevSize = prevSize + a3;
  [(NSMutableData *)self->_descriptors appendBytes:&v23 length:20];
  weightsAndBiases = self->_weightsAndBiases;
  v16 = objc_alloc(MEMORY[0x277CBEA90]);
  v17 = [v16 initWithBytes:a4 length:4 * v24 * v23];
  [(NSMutableArray *)weightsAndBiases addObject:v17];

  v18 = self->_weightsAndBiases;
  v19 = objc_alloc(MEMORY[0x277CBEA90]);
  v20 = [v19 initWithBytes:a5 length:4 * v24];
  [(NSMutableArray *)v18 addObject:v20];

  ++self->_nlayers;
}

- (PPNeuralNetworkBuilder)initWithInputSize:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = PPNeuralNetworkBuilder;
  v4 = [(PPNeuralNetworkBuilder *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_prevSize = a3;
    v4->_nlayers = 0;
    v6 = objc_opt_new();
    descriptors = v5->_descriptors;
    v5->_descriptors = v6;

    v8 = objc_opt_new();
    weightsAndBiases = v5->_weightsAndBiases;
    v5->_weightsAndBiases = v8;

    *&v5->_haveOutputLayer = 0;
  }

  return v5;
}

@end