@interface BMAtomBatchChunker
- (BMAtomBatchChunker)initWithChunkerPolicy:(id)policy;
@end

@implementation BMAtomBatchChunker

- (BMAtomBatchChunker)initWithChunkerPolicy:(id)policy
{
  policyCopy = policy;
  v9.receiver = self;
  v9.super_class = BMAtomBatchChunker;
  v5 = [(BMAtomBatchChunker *)&v9 init];
  if (v5)
  {
    v6 = [policyCopy copy];
    chunkerPolicy = v5->_chunkerPolicy;
    v5->_chunkerPolicy = v6;
  }

  return v5;
}

@end