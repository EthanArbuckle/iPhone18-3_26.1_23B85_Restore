@interface PMLDataChunkRaw
+ (id)chunkWithData:(id)data;
@end

@implementation PMLDataChunkRaw

+ (id)chunkWithData:(id)data
{
  dataCopy = data;
  v4 = [objc_alloc(objc_opt_class()) initWithData:dataCopy];

  return v4;
}

@end