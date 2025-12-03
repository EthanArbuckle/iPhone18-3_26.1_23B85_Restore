@interface U2HeadInput
- (U2HeadInput)initWithInput_mask:(id)input_mask input_span_features:(id)input_span_features sequence_output:(id)sequence_output;
- (id)featureValueForName:(id)name;
@end

@implementation U2HeadInput

- (U2HeadInput)initWithInput_mask:(id)input_mask input_span_features:(id)input_span_features sequence_output:(id)sequence_output
{
  input_maskCopy = input_mask;
  input_span_featuresCopy = input_span_features;
  sequence_outputCopy = sequence_output;
  v15.receiver = self;
  v15.super_class = U2HeadInput;
  v12 = [(U2HeadInput *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_input_mask, input_mask);
    objc_storeStrong(&v13->_input_span_features, input_span_features);
    objc_storeStrong(&v13->_sequence_output, sequence_output);
  }

  return v13;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"input_mask"])
  {
    v5 = MEMORY[0x277CBFEF8];
    input_mask = [(U2HeadInput *)self input_mask];
LABEL_7:
    v7 = input_mask;
    v8 = [v5 featureValueWithMultiArray:input_mask];

    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"input_span_features"])
  {
    v5 = MEMORY[0x277CBFEF8];
    input_mask = [(U2HeadInput *)self input_span_features];
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"sequence_output"])
  {
    v5 = MEMORY[0x277CBFEF8];
    input_mask = [(U2HeadInput *)self sequence_output];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end