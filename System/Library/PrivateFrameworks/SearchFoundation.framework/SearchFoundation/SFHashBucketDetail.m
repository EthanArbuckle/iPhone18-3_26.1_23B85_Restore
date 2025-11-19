@interface SFHashBucketDetail
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFHashBucketDetail)initWithCoder:(id)a3;
- (SFHashBucketDetail)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFHashBucketDetail

- (unint64_t)hash
{
  v3 = [(SFHashBucketDetail *)self hash_prefix];
  v4 = [v3 hash];
  v5 = [(SFHashBucketDetail *)self hash_details];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFHashBucketDetail *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFHashBucketDetail *)self hash_prefix];
      v8 = [(SFHashBucketDetail *)v6 hash_prefix];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = [(SFHashBucketDetail *)self hash_prefix];
      if (v9)
      {
        v3 = [(SFHashBucketDetail *)self hash_prefix];
        v10 = [(SFHashBucketDetail *)v6 hash_prefix];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = v10;
      }

      v12 = [(SFHashBucketDetail *)self hash_details];
      v13 = [(SFHashBucketDetail *)v6 hash_details];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
      }

      else
      {
        v15 = [(SFHashBucketDetail *)self hash_details];
        if (v15)
        {
          v16 = v15;
          v19 = [(SFHashBucketDetail *)self hash_details];
          [(SFHashBucketDetail *)v6 hash_details];
          v17 = v20 = v3;
          v11 = [v19 isEqual:v17];

          v3 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      v10 = v21;
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFHashBucketDetail *)self hash_prefix];
  v6 = [v5 copy];
  [v4 setHash_prefix:v6];

  v7 = [(SFHashBucketDetail *)self hash_details];
  v8 = [v7 copy];
  [v4 setHash_details:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBHashBucketDetail alloc] initWithFacade:self];
  v3 = [(_SFPBHashBucketDetail *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBHashBucketDetail alloc] initWithFacade:self];
  v3 = [(_SFPBHashBucketDetail *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBHashBucketDetail alloc] initWithFacade:self];
  v5 = [(_SFPBHashBucketDetail *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFHashBucketDetail)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBHashBucketDetail alloc] initWithData:v5];
  v7 = [(SFHashBucketDetail *)self initWithProtobuf:v6];

  return v7;
}

- (SFHashBucketDetail)initWithProtobuf:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SFHashBucketDetail;
  v5 = [(SFHashBucketDetail *)&v23 init];
  if (v5)
  {
    v6 = [v4 hash_prefix];

    if (v6)
    {
      v7 = [v4 hash_prefix];
      [(SFHashBucketDetail *)v5 setHash_prefix:v7];
    }

    v8 = [v4 hash_details];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v9 = 0;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v4 hash_details];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [[SFHashDetail alloc] initWithProtobuf:*(*(&v19 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    [(SFHashBucketDetail *)v5 setHash_details:v9];
    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

@end