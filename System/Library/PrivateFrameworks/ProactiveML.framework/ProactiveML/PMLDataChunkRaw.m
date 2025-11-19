@interface PMLDataChunkRaw
+ (id)chunkWithData:(id)a3;
@end

@implementation PMLDataChunkRaw

+ (id)chunkWithData:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithData:v3];

  return v4;
}

@end