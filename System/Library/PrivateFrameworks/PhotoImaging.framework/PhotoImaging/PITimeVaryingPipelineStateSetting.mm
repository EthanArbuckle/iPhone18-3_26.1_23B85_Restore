@interface PITimeVaryingPipelineStateSetting
- (id)nu_evaluateWithPipelineState:(id)state error:(id *)error;
- (void)setRawTime:(id *)time;
- (void)setTime:(id *)time;
@end

@implementation PITimeVaryingPipelineStateSetting

- (void)setRawTime:(id *)time
{
  v3 = *&time->var0;
  self->_rawTime.epoch = time->var3;
  *&self->_rawTime.value = v3;
}

- (void)setTime:(id *)time
{
  v3 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v3;
}

- (id)nu_evaluateWithPipelineState:(id)state error:(id *)error
{
  stateCopy = state;
  v5 = objc_alloc_init(PITimeVaryingPipelineStateSetting);
  if (stateCopy)
  {
    [stateCopy time];
  }

  else
  {
    v11 = 0uLL;
    v12 = 0;
  }

  v9 = v11;
  v10 = v12;
  [(PITimeVaryingPipelineStateSetting *)v5 setTime:&v9];
  -[PITimeVaryingPipelineStateSetting setSampleMode:](v5, "setSampleMode:", [stateCopy sampleMode]);
  if (stateCopy)
  {
    [stateCopy rawTime];
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