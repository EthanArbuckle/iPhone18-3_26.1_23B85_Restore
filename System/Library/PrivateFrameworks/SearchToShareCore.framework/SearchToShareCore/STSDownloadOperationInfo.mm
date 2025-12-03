@interface STSDownloadOperationInfo
- (NSArray)completionBlocks;
- (NSArray)progressBlocks;
- (STSDownloadOperationInfo)initWithOperation:(id)operation begin:(id)begin progress:(id)progress completion:(id)completion;
- (id)beginBlocks;
- (void)addBegin:(id)begin;
- (void)addCompletion:(id)completion;
- (void)addProgress:(id)progress;
@end

@implementation STSDownloadOperationInfo

- (STSDownloadOperationInfo)initWithOperation:(id)operation begin:(id)begin progress:(id)progress completion:(id)completion
{
  operationCopy = operation;
  beginCopy = begin;
  progressCopy = progress;
  completionCopy = completion;
  v30.receiver = self;
  v30.super_class = STSDownloadOperationInfo;
  v15 = [(STSDownloadOperationInfo *)&v30 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_operation, operation);
    array = [MEMORY[0x277CBEB18] array];
    beginBlocks = v16->_beginBlocks;
    v16->_beginBlocks = array;

    if (beginCopy)
    {
      v19 = v16->_beginBlocks;
      v20 = MEMORY[0x266751FB0](beginCopy);
      [(NSMutableArray *)v19 addObject:v20];
    }

    array2 = [MEMORY[0x277CBEB18] array];
    progressBlocks = v16->_progressBlocks;
    v16->_progressBlocks = array2;

    if (progressCopy)
    {
      v23 = v16->_progressBlocks;
      v24 = MEMORY[0x266751FB0](progressCopy);
      [(NSMutableArray *)v23 addObject:v24];
    }

    array3 = [MEMORY[0x277CBEB18] array];
    completionBlocks = v16->_completionBlocks;
    v16->_completionBlocks = array3;

    if (completionCopy)
    {
      v27 = v16->_completionBlocks;
      v28 = MEMORY[0x266751FB0](completionCopy);
      [(NSMutableArray *)v27 addObject:v28];
    }
  }

  return v16;
}

- (id)beginBlocks
{
  v2 = [(NSMutableArray *)self->_beginBlocks copy];

  return v2;
}

- (NSArray)progressBlocks
{
  v2 = [(NSMutableArray *)self->_progressBlocks copy];

  return v2;
}

- (NSArray)completionBlocks
{
  v2 = [(NSMutableArray *)self->_completionBlocks copy];

  return v2;
}

- (void)addBegin:(id)begin
{
  beginBlocks = self->_beginBlocks;
  v4 = MEMORY[0x266751FB0](begin, a2);
  [(NSMutableArray *)beginBlocks addObject:v4];
}

- (void)addProgress:(id)progress
{
  progressBlocks = self->_progressBlocks;
  v4 = MEMORY[0x266751FB0](progress, a2);
  [(NSMutableArray *)progressBlocks addObject:v4];
}

- (void)addCompletion:(id)completion
{
  completionBlocks = self->_completionBlocks;
  v4 = MEMORY[0x266751FB0](completion, a2);
  [(NSMutableArray *)completionBlocks addObject:v4];
}

@end