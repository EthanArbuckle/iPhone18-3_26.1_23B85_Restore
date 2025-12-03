@interface ExpertSystemStateCore
- (id)initStateWithLabel:(id)label rank:(unint64_t)rank entryPreds:(id)preds;
@end

@implementation ExpertSystemStateCore

- (id)initStateWithLabel:(id)label rank:(unint64_t)rank entryPreds:(id)preds
{
  labelCopy = label;
  predsCopy = preds;
  v16.receiver = self;
  v16.super_class = ExpertSystemStateCore;
  v11 = [(ExpertSystemStateCore *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_label, label);
    v12->_rank = rank;
    objc_storeStrong(&v12->_entryPreds, preds);
    v13 = objc_alloc_init(StopWatch);
    sojournTime = v12->_sojournTime;
    v12->_sojournTime = v13;
  }

  return v12;
}

@end