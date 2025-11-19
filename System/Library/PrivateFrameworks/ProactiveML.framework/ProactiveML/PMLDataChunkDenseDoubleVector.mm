@interface PMLDataChunkDenseDoubleVector
+ (id)chunkWithVector:(const double *)a3 count:(int)a4;
@end

@implementation PMLDataChunkDenseDoubleVector

+ (id)chunkWithVector:(const double *)a3 count:(int)a4
{
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a3 length:8 * a4];
  v5 = [objc_alloc(objc_opt_class()) initWithData:v4];

  return v5;
}

@end