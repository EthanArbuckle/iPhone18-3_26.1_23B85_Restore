@interface SFHashDetail
- (BOOL)has_ee;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFHashDetail)initWithCoder:(id)coder;
- (SFHashDetail)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFHashDetail

- (SFHashDetail)initWithProtobuf:(id)protobuf
{
  v26 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v24.receiver = self;
  v24.super_class = SFHashDetail;
  v5 = [(SFHashDetail *)&v24 init];
  if (v5)
  {
    full_hash = [protobufCopy full_hash];

    if (full_hash)
    {
      full_hash2 = [protobufCopy full_hash];
      [(SFHashDetail *)v5 setFull_hash:full_hash2];
    }

    if ([protobufCopy has_summary])
    {
      -[SFHashDetail setHas_summary:](v5, "setHas_summary:", [protobufCopy has_summary]);
    }

    sba_entity_types = [protobufCopy sba_entity_types];
    if (sba_entity_types)
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
    v10 = [protobufCopy sba:0 entity:?types];
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
    if ([protobufCopy has_table_of_contents])
    {
      -[SFHashDetail setHas_table_of_contents:](v5, "setHas_table_of_contents:", [protobufCopy has_table_of_contents]);
    }

    matched_url_variant = [protobufCopy matched_url_variant];

    if (matched_url_variant)
    {
      matched_url_variant2 = [protobufCopy matched_url_variant];
      [(SFHashDetail *)v5 setMatched_url_variant:matched_url_variant2];
    }

    v17 = v5;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  full_hash = [(SFHashDetail *)self full_hash];
  v4 = [full_hash hash];
  has_summary = [(SFHashDetail *)self has_summary];
  sba_entity_types = [(SFHashDetail *)self sba_entity_types];
  v7 = v4 ^ [sba_entity_types hash] ^ has_summary;
  has_table_of_contents = [(SFHashDetail *)self has_table_of_contents];
  matched_url_variant = [(SFHashDetail *)self matched_url_variant];
  v10 = has_table_of_contents ^ [matched_url_variant hash];

  return v7 ^ v10;
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
    if ([(SFHashDetail *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = equalCopy;
      full_hash = [(SFHashDetail *)self full_hash];
      full_hash2 = [(SFHashDetail *)v7 full_hash];
      if ((full_hash != 0) == (full_hash2 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      full_hash3 = [(SFHashDetail *)self full_hash];
      if (full_hash3)
      {
        full_hash4 = [(SFHashDetail *)self full_hash];
        full_hash5 = [(SFHashDetail *)v7 full_hash];
        if (![full_hash4 isEqual:full_hash5])
        {
          v11 = 0;
          goto LABEL_17;
        }
      }

      has_summary = [(SFHashDetail *)self has_summary];
      if (has_summary == [(SFHashDetail *)v7 has_summary])
      {
        sba_entity_types = [(SFHashDetail *)self sba_entity_types];
        sba_entity_types2 = [(SFHashDetail *)v7 sba_entity_types];
        if ((sba_entity_types != 0) != (sba_entity_types2 == 0))
        {
          v30 = sba_entity_types;
          v31 = sba_entity_types2;
          sba_entity_types3 = [(SFHashDetail *)self sba_entity_types];
          if (sba_entity_types3)
          {
            sba_entity_types4 = [(SFHashDetail *)self sba_entity_types];
            sba_entity_types5 = [(SFHashDetail *)v7 sba_entity_types];
            if (![sba_entity_types4 isEqual:?])
            {
              v11 = 0;
LABEL_30:

LABEL_31:
              if (!full_hash3)
              {
                goto LABEL_18;
              }

              goto LABEL_17;
            }

            v27 = sba_entity_types4;
            v29 = sba_entity_types3;
          }

          else
          {
            v29 = 0;
          }

          has_table_of_contents = [(SFHashDetail *)self has_table_of_contents];
          if (has_table_of_contents == [(SFHashDetail *)v7 has_table_of_contents])
          {
            matched_url_variant = [(SFHashDetail *)self matched_url_variant];
            matched_url_variant2 = [(SFHashDetail *)v7 matched_url_variant];
            if ((matched_url_variant != 0) != (matched_url_variant2 == 0))
            {
              v25 = matched_url_variant;
              v26 = matched_url_variant2;
              matched_url_variant3 = [(SFHashDetail *)self matched_url_variant];
              if (matched_url_variant3)
              {
                v24 = matched_url_variant3;
                matched_url_variant4 = [(SFHashDetail *)self matched_url_variant];
                matched_url_variant5 = [(SFHashDetail *)v7 matched_url_variant];
                v11 = [matched_url_variant4 isEqual:matched_url_variant5];
              }

              else
              {

                v11 = 1;
              }

LABEL_29:
              sba_entity_types3 = v29;
              sba_entity_types4 = v27;
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
      if (!full_hash3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  full_hash = [(SFHashDetail *)self full_hash];
  v6 = [full_hash copy];
  [v4 setFull_hash:v6];

  [v4 setHas_summary:{-[SFHashDetail has_summary](self, "has_summary")}];
  sba_entity_types = [(SFHashDetail *)self sba_entity_types];
  v8 = [sba_entity_types copy];
  [v4 setSba_entity_types:v8];

  [v4 setHas_table_of_contents:{-[SFHashDetail has_table_of_contents](self, "has_table_of_contents")}];
  matched_url_variant = [(SFHashDetail *)self matched_url_variant];
  v10 = [matched_url_variant copy];
  [v4 setMatched_url_variant:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBHashBucketDetail_HashDetail alloc] initWithFacade:self];
  jsonData = [(_SFPBHashBucketDetail_HashDetail *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBHashBucketDetail_HashDetail alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBHashBucketDetail_HashDetail *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBHashBucketDetail_HashDetail alloc] initWithFacade:self];
  data = [(_SFPBHashBucketDetail_HashDetail *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFHashDetail)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBHashBucketDetail_HashDetail alloc] initWithData:v5];
  v7 = [(SFHashDetail *)self initWithProtobuf:v6];

  return v7;
}

- (BOOL)has_ee
{
  sba_entity_types = [(SFHashDetail *)self sba_entity_types];
  v3 = [sba_entity_types count] != 0;

  return v3;
}

@end