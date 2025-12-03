@interface SFHashBucketDetail
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFHashBucketDetail)initWithCoder:(id)coder;
- (SFHashBucketDetail)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFHashBucketDetail

- (unint64_t)hash
{
  hash_prefix = [(SFHashBucketDetail *)self hash_prefix];
  v4 = [hash_prefix hash];
  hash_details = [(SFHashBucketDetail *)self hash_details];
  v6 = [hash_details hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFHashBucketDetail *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      hash_prefix = [(SFHashBucketDetail *)self hash_prefix];
      hash_prefix2 = [(SFHashBucketDetail *)v6 hash_prefix];
      if ((hash_prefix != 0) == (hash_prefix2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      hash_prefix3 = [(SFHashBucketDetail *)self hash_prefix];
      if (hash_prefix3)
      {
        hash_prefix4 = [(SFHashBucketDetail *)self hash_prefix];
        hash_prefix5 = [(SFHashBucketDetail *)v6 hash_prefix];
        if (![hash_prefix4 isEqual:hash_prefix5])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = hash_prefix5;
      }

      hash_details = [(SFHashBucketDetail *)self hash_details];
      hash_details2 = [(SFHashBucketDetail *)v6 hash_details];
      v14 = hash_details2;
      if ((hash_details != 0) == (hash_details2 == 0))
      {

        v11 = 0;
      }

      else
      {
        hash_details3 = [(SFHashBucketDetail *)self hash_details];
        if (hash_details3)
        {
          v16 = hash_details3;
          hash_details4 = [(SFHashBucketDetail *)self hash_details];
          [(SFHashBucketDetail *)v6 hash_details];
          v17 = v20 = hash_prefix4;
          v11 = [hash_details4 isEqual:v17];

          hash_prefix4 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      hash_prefix5 = v21;
      if (!hash_prefix3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  hash_prefix = [(SFHashBucketDetail *)self hash_prefix];
  v6 = [hash_prefix copy];
  [v4 setHash_prefix:v6];

  hash_details = [(SFHashBucketDetail *)self hash_details];
  v8 = [hash_details copy];
  [v4 setHash_details:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBHashBucketDetail alloc] initWithFacade:self];
  jsonData = [(_SFPBHashBucketDetail *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBHashBucketDetail alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBHashBucketDetail *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBHashBucketDetail alloc] initWithFacade:self];
  data = [(_SFPBHashBucketDetail *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFHashBucketDetail)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBHashBucketDetail alloc] initWithData:v5];
  v7 = [(SFHashBucketDetail *)self initWithProtobuf:v6];

  return v7;
}

- (SFHashBucketDetail)initWithProtobuf:(id)protobuf
{
  v25 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v23.receiver = self;
  v23.super_class = SFHashBucketDetail;
  v5 = [(SFHashBucketDetail *)&v23 init];
  if (v5)
  {
    hash_prefix = [protobufCopy hash_prefix];

    if (hash_prefix)
    {
      hash_prefix2 = [protobufCopy hash_prefix];
      [(SFHashBucketDetail *)v5 setHash_prefix:hash_prefix2];
    }

    hash_details = [protobufCopy hash_details];
    if (hash_details)
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
    hash_details2 = [protobufCopy hash_details];
    v11 = [hash_details2 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(hash_details2);
          }

          v15 = [[SFHashDetail alloc] initWithProtobuf:*(*(&v19 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [hash_details2 countByEnumeratingWithState:&v19 objects:v24 count:16];
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