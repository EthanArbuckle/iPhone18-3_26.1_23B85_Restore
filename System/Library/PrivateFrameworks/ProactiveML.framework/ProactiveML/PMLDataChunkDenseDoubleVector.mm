@interface PMLDataChunkDenseDoubleVector
+ (id)chunkWithVector:(const double *)vector count:(int)count;
@end

@implementation PMLDataChunkDenseDoubleVector

+ (id)chunkWithVector:(const double *)vector count:(int)count
{
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:vector length:8 * count];
  v5 = [objc_alloc(objc_opt_class()) initWithData:v4];

  return v5;
}

@end