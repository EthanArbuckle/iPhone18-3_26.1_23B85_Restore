@interface STSDownloadOperationInfo
- (NSArray)completionBlocks;
- (NSArray)progressBlocks;
- (STSDownloadOperationInfo)initWithOperation:(id)a3 begin:(id)a4 progress:(id)a5 completion:(id)a6;
- (id)beginBlocks;
- (void)addBegin:(id)a3;
- (void)addCompletion:(id)a3;
- (void)addProgress:(id)a3;
@end

@implementation STSDownloadOperationInfo

- (STSDownloadOperationInfo)initWithOperation:(id)a3 begin:(id)a4 progress:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v30.receiver = self;
  v30.super_class = STSDownloadOperationInfo;
  v15 = [(STSDownloadOperationInfo *)&v30 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_operation, a3);
    v17 = [MEMORY[0x277CBEB18] array];
    beginBlocks = v16->_beginBlocks;
    v16->_beginBlocks = v17;

    if (v12)
    {
      v19 = v16->_beginBlocks;
      v20 = MEMORY[0x266751FB0](v12);
      [(NSMutableArray *)v19 addObject:v20];
    }

    v21 = [MEMORY[0x277CBEB18] array];
    progressBlocks = v16->_progressBlocks;
    v16->_progressBlocks = v21;

    if (v13)
    {
      v23 = v16->_progressBlocks;
      v24 = MEMORY[0x266751FB0](v13);
      [(NSMutableArray *)v23 addObject:v24];
    }

    v25 = [MEMORY[0x277CBEB18] array];
    completionBlocks = v16->_completionBlocks;
    v16->_completionBlocks = v25;

    if (v14)
    {
      v27 = v16->_completionBlocks;
      v28 = MEMORY[0x266751FB0](v14);
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

- (void)addBegin:(id)a3
{
  beginBlocks = self->_beginBlocks;
  v4 = MEMORY[0x266751FB0](a3, a2);
  [(NSMutableArray *)beginBlocks addObject:v4];
}

- (void)addProgress:(id)a3
{
  progressBlocks = self->_progressBlocks;
  v4 = MEMORY[0x266751FB0](a3, a2);
  [(NSMutableArray *)progressBlocks addObject:v4];
}

- (void)addCompletion:(id)a3
{
  completionBlocks = self->_completionBlocks;
  v4 = MEMORY[0x266751FB0](a3, a2);
  [(NSMutableArray *)completionBlocks addObject:v4];
}

@end