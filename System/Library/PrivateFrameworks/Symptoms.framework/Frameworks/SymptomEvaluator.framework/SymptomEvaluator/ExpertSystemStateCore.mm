@interface ExpertSystemStateCore
- (id)initStateWithLabel:(id)a3 rank:(unint64_t)a4 entryPreds:(id)a5;
@end

@implementation ExpertSystemStateCore

- (id)initStateWithLabel:(id)a3 rank:(unint64_t)a4 entryPreds:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = ExpertSystemStateCore;
  v11 = [(ExpertSystemStateCore *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_label, a3);
    v12->_rank = a4;
    objc_storeStrong(&v12->_entryPreds, a5);
    v13 = objc_alloc_init(StopWatch);
    sojournTime = v12->_sojournTime;
    v12->_sojournTime = v13;
  }

  return v12;
}

@end