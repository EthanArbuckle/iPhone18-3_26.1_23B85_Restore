@interface PMLDataChunkDenseFloatVector
+ (id)chunkWithVector:(const float *)a3 count:(int)a4;
- (id)toVec;
@end

@implementation PMLDataChunkDenseFloatVector

- (id)toVec
{
  v2 = [(PMLDenseVector *)[PMLMutableDenseVector alloc] initWithFloats:[(PMLDataChunkDenseFloatVector *)self vector] count:[(PMLDataChunkDenseFloatVector *)self count]];

  return v2;
}

+ (id)chunkWithVector:(const float *)a3 count:(int)a4
{
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a3 length:4 * a4];
  v5 = [objc_alloc(objc_opt_class()) initWithData:v4];

  return v5;
}

@end