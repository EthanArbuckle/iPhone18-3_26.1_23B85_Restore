@interface U2HeadOutput
- (U2HeadOutput)initWithTop_arg_ids:(id)a3 arg_conf_scores:(id)a4 intent_scores:(id)a5 safety_head_scores:(id)a6;
- (id)featureValueForName:(id)a3;
@end

@implementation U2HeadOutput

- (U2HeadOutput)initWithTop_arg_ids:(id)a3 arg_conf_scores:(id)a4 intent_scores:(id)a5 safety_head_scores:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = U2HeadOutput;
  v15 = [(U2HeadOutput *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_top_arg_ids, a3);
    objc_storeStrong(&v16->_arg_conf_scores, a4);
    objc_storeStrong(&v16->_intent_scores, a5);
    objc_storeStrong(&v16->_safety_head_scores, a6);
  }

  return v16;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"top_arg_ids"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(U2HeadOutput *)self top_arg_ids];
LABEL_9:
    v7 = v6;
    v8 = [v5 featureValueWithMultiArray:v6];

    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"arg_conf_scores"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(U2HeadOutput *)self arg_conf_scores];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"intent_scores"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(U2HeadOutput *)self intent_scores];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"safety_head_scores"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(U2HeadOutput *)self safety_head_scores];
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end