@interface U2HeadInput
- (U2HeadInput)initWithInput_mask:(id)a3 input_span_features:(id)a4 sequence_output:(id)a5;
- (id)featureValueForName:(id)a3;
@end

@implementation U2HeadInput

- (U2HeadInput)initWithInput_mask:(id)a3 input_span_features:(id)a4 sequence_output:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = U2HeadInput;
  v12 = [(U2HeadInput *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_input_mask, a3);
    objc_storeStrong(&v13->_input_span_features, a4);
    objc_storeStrong(&v13->_sequence_output, a5);
  }

  return v13;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"input_mask"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(U2HeadInput *)self input_mask];
LABEL_7:
    v7 = v6;
    v8 = [v5 featureValueWithMultiArray:v6];

    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"input_span_features"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(U2HeadInput *)self input_span_features];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"sequence_output"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(U2HeadInput *)self sequence_output];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end