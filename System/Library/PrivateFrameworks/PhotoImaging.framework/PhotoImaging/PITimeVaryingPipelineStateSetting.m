@interface PITimeVaryingPipelineStateSetting
- (id)nu_evaluateWithPipelineState:(id)a3 error:(id *)a4;
- (void)setRawTime:(id *)a3;
- (void)setTime:(id *)a3;
@end

@implementation PITimeVaryingPipelineStateSetting

- (void)setRawTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_rawTime.epoch = a3->var3;
  *&self->_rawTime.value = v3;
}

- (void)setTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_time.epoch = a3->var3;
  *&self->_time.value = v3;
}

- (id)nu_evaluateWithPipelineState:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_alloc_init(PITimeVaryingPipelineStateSetting);
  if (v4)
  {
    [v4 time];
  }

  else
  {
    v11 = 0uLL;
    v12 = 0;
  }

  v9 = v11;
  v10 = v12;
  [(PITimeVaryingPipelineStateSetting *)v5 setTime:&v9];
  -[PITimeVaryingPipelineStateSetting setSampleMode:](v5, "setSampleMode:", [v4 sampleMode]);
  if (v4)
  {
    [v4 rawTime];
  }

  else
  {
    v7 = 0uLL;
    v8 = 0;
  }

  v9 = v7;
  v10 = v8;
  [(PITimeVaryingPipelineStateSetting *)v5 setRawTime:&v9];

  return v5;
}

@end