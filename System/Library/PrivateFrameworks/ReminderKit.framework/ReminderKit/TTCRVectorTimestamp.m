@interface TTCRVectorTimestamp
- (TTCRVectorTimestamp)init;
- (id)allUUIDs;
- (id)clockElementForUUID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sortedUUIDs;
- (unint64_t)clockForUUID:(id)a3;
- (unint64_t)subclockForUUID:(id)a3;
- (void)setClock:(unint64_t)a3 forUUID:(id)a4;
- (void)setClock:(unint64_t)a3 subclock:(unint64_t)a4 forUUID:(id)a5;
@end

@implementation TTCRVectorTimestamp

- (TTCRVectorTimestamp)init
{
  v5.receiver = self;
  v5.super_class = TTCRVectorTimestamp;
  v2 = [(TTVectorTimestamp *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(CRVectorTimestamp);
    [(TTCRVectorTimestamp *)v2 setCrTimestamp:v3];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TTCRVectorTimestamp);
  [(TTVectorTimestamp *)v4 mergeWithTimestamp:self];
  return v4;
}

- (id)clockElementForUUID:(id)a3
{
  v4 = a3;
  v5 = [(TTCRVectorTimestamp *)self crTimestamp];
  v6 = [v5 clockElementForUUID:v4];

  if (v6)
  {
    v7 = objc_alloc_init(TTVectorTimestampElement);
    -[TTVectorTimestampElement setClock:](v7, "setClock:", [v6 clock]);
    -[TTVectorTimestampElement setSubclock:](v7, "setSubclock:", [v6 subclock]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)clockForUUID:(id)a3
{
  v3 = [(TTCRVectorTimestamp *)self clockElementForUUID:a3];
  v4 = [v3 clock];

  return v4;
}

- (unint64_t)subclockForUUID:(id)a3
{
  v3 = [(TTCRVectorTimestamp *)self clockElementForUUID:a3];
  v4 = [v3 subclock];

  return v4;
}

- (void)setClock:(unint64_t)a3 forUUID:(id)a4
{
  v6 = a4;
  v7 = [(TTCRVectorTimestamp *)self crTimestamp];
  [v7 setClock:a3 forUUID:v6];
}

- (void)setClock:(unint64_t)a3 subclock:(unint64_t)a4 forUUID:(id)a5
{
  v8 = a5;
  v9 = [(TTCRVectorTimestamp *)self crTimestamp];
  [v9 setClock:a3 subclock:a4 forUUID:v8];
}

- (id)allUUIDs
{
  v2 = [(TTCRVectorTimestamp *)self crTimestamp];
  v3 = [v2 allUUIDs];

  return v3;
}

- (id)sortedUUIDs
{
  v2 = [(TTCRVectorTimestamp *)self crTimestamp];
  v3 = [v2 sortedUUIDs];

  return v3;
}

@end