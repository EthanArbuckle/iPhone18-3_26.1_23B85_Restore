@interface _SFPBHashBucketDetail
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBHashBucketDetail)initWithDictionary:(id)dictionary;
- (_SFPBHashBucketDetail)initWithFacade:(id)facade;
- (_SFPBHashBucketDetail)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)addHash_details:(id)hash_details;
- (void)setHash_details:(id)hash_details;
- (void)setHash_prefix:(id)hash_prefix;
- (void)writeTo:(id)to;
@end

@implementation _SFPBHashBucketDetail

- (_SFPBHashBucketDetail)initWithFacade:(id)facade
{
  v24 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBHashBucketDetail *)self init];
  if (v5)
  {
    hash_prefix = [facadeCopy hash_prefix];

    if (hash_prefix)
    {
      hash_prefix2 = [facadeCopy hash_prefix];
      [(_SFPBHashBucketDetail *)v5 setHash_prefix:hash_prefix2];
    }

    hash_details = [facadeCopy hash_details];
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
    hash_details2 = [facadeCopy hash_details];
    v11 = [hash_details2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

          v15 = [[_SFPBHashBucketDetail_HashDetail alloc] initWithFacade:*(*(&v19 + 1) + 8 * i)];
          if (v15)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [hash_details2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(_SFPBHashBucketDetail *)v5 setHash_details:v9];
    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBHashBucketDetail)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = _SFPBHashBucketDetail;
  v5 = [(_SFPBHashBucketDetail *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"hashPrefix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBHashBucketDetail *)v5 setHash_prefix:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"hashDetails"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v6;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[_SFPBHashBucketDetail_HashDetail alloc] initWithDictionary:v14];
              [(_SFPBHashBucketDetail *)v5 addHash_details:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v6 = v19;
    }

    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBHashBucketDetail)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBHashBucketDetail *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBHashBucketDetail *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_hash_details count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_hash_details;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"hashDetails"];
  }

  if (self->_hash_prefix)
  {
    hash_prefix = [(_SFPBHashBucketDetail *)self hash_prefix];
    v13 = [hash_prefix copy];
    [dictionary setObject:v13 forKeyedSubscript:@"hashPrefix"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  hash_prefix = [(_SFPBHashBucketDetail *)self hash_prefix];
  hash_prefix2 = [equalCopy hash_prefix];
  if ((hash_prefix != 0) == (hash_prefix2 == 0))
  {
    goto LABEL_11;
  }

  hash_prefix3 = [(_SFPBHashBucketDetail *)self hash_prefix];
  if (hash_prefix3)
  {
    v8 = hash_prefix3;
    hash_prefix4 = [(_SFPBHashBucketDetail *)self hash_prefix];
    hash_prefix5 = [equalCopy hash_prefix];
    v11 = [hash_prefix4 isEqual:hash_prefix5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  hash_prefix = [(_SFPBHashBucketDetail *)self hash_details];
  hash_prefix2 = [equalCopy hash_details];
  if ((hash_prefix != 0) != (hash_prefix2 == 0))
  {
    hash_details = [(_SFPBHashBucketDetail *)self hash_details];
    if (!hash_details)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = hash_details;
    hash_details2 = [(_SFPBHashBucketDetail *)self hash_details];
    hash_details3 = [equalCopy hash_details];
    v16 = [hash_details2 isEqual:hash_details3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  hash_prefix = [(_SFPBHashBucketDetail *)self hash_prefix];
  if (hash_prefix)
  {
    PBDataWriterWriteStringField();
  }

  hash_details = [(_SFPBHashBucketDetail *)self hash_details];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [hash_details countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(hash_details);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [hash_details countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addHash_details:(id)hash_details
{
  hash_detailsCopy = hash_details;
  hash_details = self->_hash_details;
  v8 = hash_detailsCopy;
  if (!hash_details)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_hash_details;
    self->_hash_details = array;

    hash_detailsCopy = v8;
    hash_details = self->_hash_details;
  }

  [(NSArray *)hash_details addObject:hash_detailsCopy];
}

- (void)setHash_details:(id)hash_details
{
  v4 = [hash_details copy];
  hash_details = self->_hash_details;
  self->_hash_details = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setHash_prefix:(id)hash_prefix
{
  v4 = [hash_prefix copy];
  hash_prefix = self->_hash_prefix;
  self->_hash_prefix = v4;

  MEMORY[0x1EEE66BB8]();
}

@end