@interface TXRDefaultBufferAllocator
+ (id)newBufferWithLength:(unint64_t)length;
- (id)newBufferWithLength:(unint64_t)length;
@end

@implementation TXRDefaultBufferAllocator

+ (id)newBufferWithLength:(unint64_t)length
{
  v4 = [TXRDefaultBuffer alloc];

  return [(TXRDefaultBuffer *)v4 initWithLength:length];
}

- (id)newBufferWithLength:(unint64_t)length
{
  v4 = [TXRDefaultBuffer alloc];

  return [(TXRDefaultBuffer *)v4 initWithLength:length];
}

@end