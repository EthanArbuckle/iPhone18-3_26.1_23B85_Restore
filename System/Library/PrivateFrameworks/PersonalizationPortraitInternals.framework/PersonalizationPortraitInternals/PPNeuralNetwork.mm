@interface PPNeuralNetwork
- (PPNeuralNetwork)initWithData:(id)a3;
- (double)_predict:(int)a3 freeInputsAfterUse:;
- (double)predictWithDoubles:(const double *)a3;
- (float)_runOnInputs:(int)a3 freeInputsAfterUse:;
- (void)forInputs:(const float *)a3 computeOutputLayer:(float *)a4;
@end

@implementation PPNeuralNetwork

- (void)forInputs:(const float *)a3 computeOutputLayer:(float *)a4
{
  v6 = [(PPNeuralNetwork *)self _runOnInputs:a3 freeInputsAfterUse:0];
  v7 = &self->_layers[self->_nlayers];
  var1 = v7[-1].var1;
  v13 = v7[-1].var1;
  if (v7[-1].var6)
  {
    vvexpf(a4, v6, &v13);
    v9 = 0.0;
    if (v13 >= 1)
    {
      v10 = a4;
      v11 = v13;
      do
      {
        v12 = *v10++;
        v9 = v9 + v12;
        --v11;
      }

      while (v11);
    }

    cblas_sscal_NEWLAPACK();
  }

  else
  {
    memcpy(a4, v6, 4 * var1);
  }

  free(v6);
}

- (float)_runOnInputs:(int)a3 freeInputsAfterUse:
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  if (!a1[3])
  {
    return a2;
  }

  v6 = 0;
  do
  {
    v7 = a1[4] + 20 * v6;
    v8 = *(v7 + 17);
    if (*(v7 + 17))
    {
      v8 = *v7;
    }

    v9 = malloc_type_malloc(4 * (v8 + *(v7 + 4)), 0x100004052888210uLL);
    if (!v9)
    {
      v26 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v26);
    }

    v10 = v9;
    memcpy(v9, (a1[2] + *(a1[4] + 20 * v6 + 12)), 4 * *(a1[4] + 20 * v6 + 4));
    v11 = (a1[4] + 20 * v6);
    v13 = *v11;
    v12 = v11[1];
    v14 = a1[2];
    v15 = v11[2];
    cblas_sgemv_NEWLAPACK();
    v16 = a1[4];
    v17 = *(v16 + 20 * v6 + 16);
    if (*(v16 + 20 * v6 + 16))
    {
      if (v17 == 1)
      {
        v20 = *(v16 + 20 * v6 + 4);
        v21 = v10;
        if (v20)
        {
          do
          {
            *v21 = tanhf(*v21);
            ++v21;
            --v20;
          }

          while (v20);
        }
      }

      else if (v17 == 2)
      {
        v18 = *(v16 + 20 * v6 + 4);
        v19 = v10;
        if (v18)
        {
          do
          {
            *v19 = fmaxf(*v19, 0.0);
            ++v19;
            --v18;
          }

          while (v18);
        }
      }
    }

    else
    {
      v22 = *(v16 + 20 * v6 + 4);
      if (v22)
      {
        v23 = v10;
        do
        {
          *v23 = 1.0 / (expf(-*v23) + 1.0);
          ++v23;
          --v22;
        }

        while (v22);
      }
    }

    v24 = (v16 + 20 * v6);
    if (*(v24 + 17))
    {
      memcpy(&v10[*(v16 + 20 * v6 + 4)], v3, 4 * *v24);
    }

    if (v6 || a3)
    {
      free(v3);
    }

    ++v6;
    v3 = v10;
  }

  while (v6 < a1[3]);
  return v10;
}

- (double)_predict:(int)a3 freeInputsAfterUse:
{
  if (!a1)
  {
    return 0.0;
  }

  v6 = a1[4] + 20 * a1[3];
  v7 = *(v6 - 16);
  if (v7 != 1 && (v7 != 2 || !*(v6 - 2)))
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:sel__predict_freeInputsAfterUse_ object:a1 file:@"PPNeuralNetwork.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"_layers[_nlayers-1].outsz == 1 || (_layers[_nlayers-1].outsz == 2 && _layers[_nlayers-1].softmax)"}];
  }

  v9 = [(PPNeuralNetwork *)a1 _runOnInputs:a2 freeInputsAfterUse:a3];
  v10 = v9;
  v11 = *v9;
  if (*(a1[4] + 20 * a1[3] - 2))
  {
    v12 = exp(*v9);
    v11 = v12 / (v12 + exp(v10[1]));
  }

  free(v10);
  return v11;
}

- (double)predictWithDoubles:(const double *)a3
{
  v5 = malloc_type_malloc(4 * self->_layers->var0, 0x100004052888210uLL);
  if (!v5)
  {
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v11);
  }

  var0 = self->_layers->var0;
  if (var0)
  {
    v7 = v5;
    do
    {
      v8 = *a3++;
      v9 = v8;
      *v7++ = v9;
      --var0;
    }

    while (var0);
  }

  return [(PPNeuralNetwork *)self _predict:v5 freeInputsAfterUse:1];
}

- (PPNeuralNetwork)initWithData:(id)a3
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PPNeuralNetwork;
  v7 = [(PPNeuralNetwork *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_data, a3);
    v9 = [v6 bytes];
    v10 = *v9;
    v8->_dataBytes = v9;
    v8->_nlayers = v10;
    if (!v10)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:v8 file:@"PPNeuralNetwork.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"_nlayers > 0"}];
    }

    v8->_layers = (v9 + 1);
  }

  return v8;
}

@end