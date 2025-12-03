@interface PGMemoryTriggerResult
- (PGMemoryTriggerResult)initWithMemoryNode:(id)node validityInterval:(id)interval;
- (id)description;
@end

@implementation PGMemoryTriggerResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGMemoryTriggerResult;
  v4 = [(PGMemoryTriggerResult *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %@ - Validity: %@", v4, self->_memoryNode, self->_validityInterval];

  return v5;
}

- (PGMemoryTriggerResult)initWithMemoryNode:(id)node validityInterval:(id)interval
{
  nodeCopy = node;
  intervalCopy = interval;
  v12.receiver = self;
  v12.super_class = PGMemoryTriggerResult;
  v9 = [(PGMemoryTriggerResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memoryNode, node);
    objc_storeStrong(&v10->_validityInterval, interval);
  }

  return v10;
}

@end