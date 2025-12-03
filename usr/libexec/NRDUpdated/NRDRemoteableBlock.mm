@interface NRDRemoteableBlock
- (NRDRemoteableBlock)initWithBlock:(id)block;
- (NRDRemoteableBlock)initWithProgressBlock:(id)block;
- (void)execute:(id)execute;
- (void)progress:(id)progress;
@end

@implementation NRDRemoteableBlock

- (NRDRemoteableBlock)initWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(NRDRemoteableBlock *)self init];
  v6 = v5;
  if (v5)
  {
    if (blockCopy)
    {
      v7 = objc_retainBlock(blockCopy);
      block = v6->_block;
      v6->_block = v7;
    }

    else
    {
      block = v5;
      v6 = 0;
    }
  }

  return v6;
}

- (NRDRemoteableBlock)initWithProgressBlock:(id)block
{
  blockCopy = block;
  v5 = [(NRDRemoteableBlock *)self init];
  v6 = v5;
  if (v5)
  {
    if (blockCopy)
    {
      v7 = objc_retainBlock(blockCopy);
      progressBlock = v6->_progressBlock;
      v6->_progressBlock = v7;
    }

    else
    {
      progressBlock = v5;
      v6 = 0;
    }
  }

  return v6;
}

- (void)execute:(id)execute
{
  block = self->_block;
  if (block)
  {
    block[2](block, execute);
  }
}

- (void)progress:(id)progress
{
  progressBlock = self->_progressBlock;
  if (progressBlock)
  {
    progressBlock[2](progressBlock, progress);
  }
}

@end