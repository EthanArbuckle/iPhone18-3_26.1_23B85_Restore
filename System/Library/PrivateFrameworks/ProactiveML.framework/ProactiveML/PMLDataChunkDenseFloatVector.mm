@interface PMLDataChunkDenseFloatVector
+ (id)chunkWithVector:(const float *)vector count:(int)count;
- (id)toVec;
@end

@implementation PMLDataChunkDenseFloatVector

- (id)toVec
{
  v2 = [(PMLDenseVector *)[PMLMutableDenseVector alloc] initWithFloats:[(PMLDataChunkDenseFloatVector *)self vector] count:[(PMLDataChunkDenseFloatVector *)self count]];

  return v2;
}

+ (id)chunkWithVector:(const float *)vector count:(int)count
{
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:vector length:4 * count];
  v5 = [objc_alloc(objc_opt_class()) initWithData:v4];

  return v5;
}

@end