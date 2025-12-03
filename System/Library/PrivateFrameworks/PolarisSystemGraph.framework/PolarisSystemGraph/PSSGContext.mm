@interface PSSGContext
+ (id)contextWithKeys:(id)keys encodedStreams:(id)streams;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation PSSGContext

+ (id)contextWithKeys:(id)keys encodedStreams:(id)streams
{
  streamsCopy = streams;
  keysCopy = keys;
  v7 = objc_alloc_init(PSSGContext);
  [(PSSGContext *)v7 setKeys:keysCopy];

  [(PSSGContext *)v7 setEncodedStreams:streamsCopy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  keys = [(PSSGContext *)self keys];
  keys2 = [equalCopy keys];
  if ([keys isEqual:keys2])
  {
    encodedStreams = [(PSSGContext *)self encodedStreams];
    encodedStreams2 = [equalCopy encodedStreams];
    v9 = [encodedStreams isEqual:encodedStreams2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  keys = [(PSSGContext *)self keys];
  v4 = [keys hash];
  encodedStreams = [(PSSGContext *)self encodedStreams];
  v6 = [encodedStreams hash];

  return v6 ^ v4;
}

@end