@interface HKSPTask
- (HKSPTask)initWithIdentifier:(id)identifier block:(id)block delay:(double)delay;
@end

@implementation HKSPTask

- (HKSPTask)initWithIdentifier:(id)identifier block:(id)block delay:(double)delay
{
  identifierCopy = identifier;
  blockCopy = block;
  v21.receiver = self;
  v21.super_class = HKSPTask;
  v10 = [(HKSPTask *)&v21 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v10->_delay = delay;
    v13 = objc_alloc_init(MEMORY[0x277D2C8C8]);
    token = v10->_token;
    v10->_token = v13;

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __43__HKSPTask_initWithIdentifier_block_delay___block_invoke;
    v19[3] = &unk_279C73B80;
    v20 = blockCopy;
    v15 = MEMORY[0x26D64AA30](v19);
    cancelableBlock = v10->_cancelableBlock;
    v10->_cancelableBlock = v15;

    v17 = v10;
  }

  return v10;
}

uint64_t __43__HKSPTask_initWithIdentifier_block_delay___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCanceled];
  if ((result & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

@end