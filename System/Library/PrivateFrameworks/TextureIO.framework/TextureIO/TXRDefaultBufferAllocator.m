@interface TXRDefaultBufferAllocator
+ (id)newBufferWithLength:(unint64_t)a3;
- (id)newBufferWithLength:(unint64_t)a3;
@end

@implementation TXRDefaultBufferAllocator

+ (id)newBufferWithLength:(unint64_t)a3
{
  v4 = [TXRDefaultBuffer alloc];

  return [(TXRDefaultBuffer *)v4 initWithLength:a3];
}

- (id)newBufferWithLength:(unint64_t)a3
{
  v4 = [TXRDefaultBuffer alloc];

  return [(TXRDefaultBuffer *)v4 initWithLength:a3];
}

@end