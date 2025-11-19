@interface BMAtomBatchChunker
- (BMAtomBatchChunker)initWithChunkerPolicy:(id)a3;
@end

@implementation BMAtomBatchChunker

- (BMAtomBatchChunker)initWithChunkerPolicy:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BMAtomBatchChunker;
  v5 = [(BMAtomBatchChunker *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    chunkerPolicy = v5->_chunkerPolicy;
    v5->_chunkerPolicy = v6;
  }

  return v5;
}

@end