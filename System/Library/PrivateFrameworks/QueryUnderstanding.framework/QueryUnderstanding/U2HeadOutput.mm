@interface U2HeadOutput
- (U2HeadOutput)initWithTop_arg_ids:(id)top_arg_ids arg_conf_scores:(id)arg_conf_scores intent_scores:(id)intent_scores safety_head_scores:(id)safety_head_scores;
- (id)featureValueForName:(id)name;
@end

@implementation U2HeadOutput

- (U2HeadOutput)initWithTop_arg_ids:(id)top_arg_ids arg_conf_scores:(id)arg_conf_scores intent_scores:(id)intent_scores safety_head_scores:(id)safety_head_scores
{
  top_arg_idsCopy = top_arg_ids;
  arg_conf_scoresCopy = arg_conf_scores;
  intent_scoresCopy = intent_scores;
  safety_head_scoresCopy = safety_head_scores;
  v18.receiver = self;
  v18.super_class = U2HeadOutput;
  v15 = [(U2HeadOutput *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_top_arg_ids, top_arg_ids);
    objc_storeStrong(&v16->_arg_conf_scores, arg_conf_scores);
    objc_storeStrong(&v16->_intent_scores, intent_scores);
    objc_storeStrong(&v16->_safety_head_scores, safety_head_scores);
  }

  return v16;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"top_arg_ids"])
  {
    v5 = MEMORY[0x277CBFEF8];
    top_arg_ids = [(U2HeadOutput *)self top_arg_ids];
LABEL_9:
    v7 = top_arg_ids;
    v8 = [v5 featureValueWithMultiArray:top_arg_ids];

    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"arg_conf_scores"])
  {
    v5 = MEMORY[0x277CBFEF8];
    top_arg_ids = [(U2HeadOutput *)self arg_conf_scores];
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"intent_scores"])
  {
    v5 = MEMORY[0x277CBFEF8];
    top_arg_ids = [(U2HeadOutput *)self intent_scores];
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"safety_head_scores"])
  {
    v5 = MEMORY[0x277CBFEF8];
    top_arg_ids = [(U2HeadOutput *)self safety_head_scores];
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end