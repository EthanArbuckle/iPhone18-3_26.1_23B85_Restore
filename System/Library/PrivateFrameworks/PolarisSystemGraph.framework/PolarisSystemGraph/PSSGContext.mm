@interface PSSGContext
+ (id)contextWithKeys:(id)a3 encodedStreams:(id)a4;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation PSSGContext

+ (id)contextWithKeys:(id)a3 encodedStreams:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PSSGContext);
  [(PSSGContext *)v7 setKeys:v6];

  [(PSSGContext *)v7 setEncodedStreams:v5];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PSSGContext *)self keys];
  v6 = [v4 keys];
  if ([v5 isEqual:v6])
  {
    v7 = [(PSSGContext *)self encodedStreams];
    v8 = [v4 encodedStreams];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(PSSGContext *)self keys];
  v4 = [v3 hash];
  v5 = [(PSSGContext *)self encodedStreams];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end