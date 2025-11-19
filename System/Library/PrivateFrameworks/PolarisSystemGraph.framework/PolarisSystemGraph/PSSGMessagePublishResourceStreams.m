@interface PSSGMessagePublishResourceStreams
+ (id)messageWithStreams:(id)a3 sender:(id)a4;
- (id)description;
@end

@implementation PSSGMessagePublishResourceStreams

+ (id)messageWithStreams:(id)a3 sender:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(PSSGMessageBase *)[PSSGMessagePublishResourceStreams alloc] initWithType:25 string1:v5 data:v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PSSGMessagePublishResourceStreams *)self sender];
  v5 = [(PSSGMessageBase *)self data];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

@end