@interface SFHashDetail
- (BOOL)has_ee;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFHashDetail)initWithCoder:(id)a3;
- (SFHashDetail)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFHashDetail

- (SFHashDetail)initWithProtobuf:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SFHashDetail;
  v5 = [(SFHashDetail *)&v24 init];
  if (v5)
  {
    v6 = [v4 full_hash];

    if (v6)
    {
      v7 = [v4 full_hash];
      [(SFHashDetail *)v5 setFull_hash:v7];
    }

    if ([v4 has_summary])
    {
      -[SFHashDetail setHas_summary:](v5, "setHas_summary:", [v4 has_summary]);
    }

    v8 = [v4 sba_entity_types];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v9 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v4 sba:0 entity:?types];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (*(*(&v20 + 1) + 8 * i))
          {
            [v9 addObject:?];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }

    [(SFHashDetail *)v5 setSba_entity_types:v9];
    if ([v4 has_table_of_contents])
    {
      -[SFHashDetail setHas_table_of_contents:](v5, "setHas_table_of_contents:", [v4 has_table_of_contents]);
    }

    v15 = [v4 matched_url_variant];

    if (v15)
    {
      v16 = [v4 matched_url_variant];
      [(SFHashDetail *)v5 setMatched_url_variant:v16];
    }

    v17 = v5;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFHashDetail *)self full_hash];
  v4 = [v3 hash];
  v5 = [(SFHashDetail *)self has_summary];
  v6 = [(SFHashDetail *)self sba_entity_types];
  v7 = v4 ^ [v6 hash] ^ v5;
  v8 = [(SFHashDetail *)self has_table_of_contents];
  v9 = [(SFHashDetail *)self matched_url_variant];
  v10 = v8 ^ [v9 hash];

  return v7 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFHashDetail *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = v6;
      v8 = [(SFHashDetail *)self full_hash];
      v9 = [(SFHashDetail *)v7 full_hash];
      if ((v8 != 0) == (v9 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v10 = [(SFHashDetail *)self full_hash];
      if (v10)
      {
        v3 = [(SFHashDetail *)self full_hash];
        v4 = [(SFHashDetail *)v7 full_hash];
        if (![v3 isEqual:v4])
        {
          v11 = 0;
          goto LABEL_17;
        }
      }

      v12 = [(SFHashDetail *)self has_summary];
      if (v12 == [(SFHashDetail *)v7 has_summary])
      {
        v13 = [(SFHashDetail *)self sba_entity_types];
        v14 = [(SFHashDetail *)v7 sba_entity_types];
        if ((v13 != 0) != (v14 == 0))
        {
          v30 = v13;
          v31 = v14;
          v15 = [(SFHashDetail *)self sba_entity_types];
          if (v15)
          {
            v16 = [(SFHashDetail *)self sba_entity_types];
            v28 = [(SFHashDetail *)v7 sba_entity_types];
            if (![v16 isEqual:?])
            {
              v11 = 0;
LABEL_30:

LABEL_31:
              if (!v10)
              {
                goto LABEL_18;
              }

              goto LABEL_17;
            }

            v27 = v16;
            v29 = v15;
          }

          else
          {
            v29 = 0;
          }

          v18 = [(SFHashDetail *)self has_table_of_contents];
          if (v18 == [(SFHashDetail *)v7 has_table_of_contents])
          {
            v19 = [(SFHashDetail *)self matched_url_variant];
            v20 = [(SFHashDetail *)v7 matched_url_variant];
            if ((v19 != 0) != (v20 == 0))
            {
              v25 = v19;
              v26 = v20;
              v21 = [(SFHashDetail *)self matched_url_variant];
              if (v21)
              {
                v24 = v21;
                v22 = [(SFHashDetail *)self matched_url_variant];
                v23 = [(SFHashDetail *)v7 matched_url_variant];
                v11 = [v22 isEqual:v23];
              }

              else
              {

                v11 = 1;
              }

LABEL_29:
              v15 = v29;
              v16 = v27;
              if (!v29)
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }
          }

          v11 = 0;
          goto LABEL_29;
        }
      }

      v11 = 0;
      if (!v10)
      {
LABEL_18:

        goto LABEL_19;
      }

LABEL_17:

      goto LABEL_18;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFHashDetail *)self full_hash];
  v6 = [v5 copy];
  [v4 setFull_hash:v6];

  [v4 setHas_summary:{-[SFHashDetail has_summary](self, "has_summary")}];
  v7 = [(SFHashDetail *)self sba_entity_types];
  v8 = [v7 copy];
  [v4 setSba_entity_types:v8];

  [v4 setHas_table_of_contents:{-[SFHashDetail has_table_of_contents](self, "has_table_of_contents")}];
  v9 = [(SFHashDetail *)self matched_url_variant];
  v10 = [v9 copy];
  [v4 setMatched_url_variant:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBHashBucketDetail_HashDetail alloc] initWithFacade:self];
  v3 = [(_SFPBHashBucketDetail_HashDetail *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBHashBucketDetail_HashDetail alloc] initWithFacade:self];
  v3 = [(_SFPBHashBucketDetail_HashDetail *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBHashBucketDetail_HashDetail alloc] initWithFacade:self];
  v5 = [(_SFPBHashBucketDetail_HashDetail *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFHashDetail)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBHashBucketDetail_HashDetail alloc] initWithData:v5];
  v7 = [(SFHashDetail *)self initWithProtobuf:v6];

  return v7;
}

- (BOOL)has_ee
{
  v2 = [(SFHashDetail *)self sba_entity_types];
  v3 = [v2 count] != 0;

  return v3;
}

@end