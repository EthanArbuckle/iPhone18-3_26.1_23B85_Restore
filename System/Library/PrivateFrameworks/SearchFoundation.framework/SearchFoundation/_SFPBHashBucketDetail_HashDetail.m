@interface _SFPBHashBucketDetail_HashDetail
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBHashBucketDetail_HashDetail)initWithDictionary:(id)a3;
- (_SFPBHashBucketDetail_HashDetail)initWithFacade:(id)a3;
- (_SFPBHashBucketDetail_HashDetail)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (int)sba_entity_typesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)setFull_hash:(id)a3;
- (void)setMatched_url_variant:(id)a3;
- (void)setSba_entity_types:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBHashBucketDetail_HashDetail

- (_SFPBHashBucketDetail_HashDetail)initWithFacade:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBHashBucketDetail_HashDetail *)self init];
  if (v5)
  {
    v6 = [v4 full_hash];

    if (v6)
    {
      v7 = [v4 full_hash];
      [(_SFPBHashBucketDetail_HashDetail *)v5 setFull_hash:v7];
    }

    if ([v4 hasHas_summary])
    {
      -[_SFPBHashBucketDetail_HashDetail setHas_summary:](v5, "setHas_summary:", [v4 has_summary]);
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
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [(_SFPBHashBucketDetail_HashDetail *)v5 setSba_entity_types:v9];
    if ([v4 hasHas_table_of_contents])
    {
      -[_SFPBHashBucketDetail_HashDetail setHas_table_of_contents:](v5, "setHas_table_of_contents:", [v4 has_table_of_contents]);
    }

    v15 = [v4 matched_url_variant];

    if (v15)
    {
      v16 = [v4 matched_url_variant];
      [(_SFPBHashBucketDetail_HashDetail *)v5 setMatched_url_variant:v16];
    }

    v17 = v5;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBHashBucketDetail_HashDetail)initWithDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = _SFPBHashBucketDetail_HashDetail;
  v5 = [(_SFPBHashBucketDetail_HashDetail *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"fullHash"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBHashBucketDetail_HashDetail *)v5 setFull_hash:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"hasSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHashBucketDetail_HashDetail setHas_summary:](v5, "setHas_summary:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"sbaEntityTypes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          v14 = 0;
          do
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v23 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[_SFPBHashBucketDetail_HashDetail addSba_entity_types:](v5, "addSba_entity_types:", [v15 intValue]);
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v12);
      }

      v6 = v22;
    }

    v16 = [v4 objectForKeyedSubscript:@"hasTableOfContents"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHashBucketDetail_HashDetail setHas_table_of_contents:](v5, "setHas_table_of_contents:", [v16 BOOLValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"matchedUrlVariant"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBHashBucketDetail_HashDetail *)v5 setMatched_url_variant:v18];
    }

    v19 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBHashBucketDetail_HashDetail)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBHashBucketDetail_HashDetail *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBHashBucketDetail_HashDetail *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_full_hash)
  {
    v4 = [(_SFPBHashBucketDetail_HashDetail *)self full_hash];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"fullHash"];
  }

  if (self->_has_summary)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHashBucketDetail_HashDetail has_summary](self, "has_summary")}];
    [v3 setObject:v6 forKeyedSubscript:@"hasSummary"];
  }

  if (self->_has_table_of_contents)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHashBucketDetail_HashDetail has_table_of_contents](self, "has_table_of_contents")}];
    [v3 setObject:v7 forKeyedSubscript:@"hasTableOfContents"];
  }

  if (self->_matched_url_variant)
  {
    v8 = [(_SFPBHashBucketDetail_HashDetail *)self matched_url_variant];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"matchedUrlVariant"];
  }

  if ([(NSArray *)self->_sba_entity_types count])
  {
    v10 = [(_SFPBHashBucketDetail_HashDetail *)self sba_entity_types];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"sbaEntityTypes"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_full_hash hash];
  v4 = 2654435761;
  if (self->_has_summary)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSArray *)self->_sba_entity_types hash];
  if (!self->_has_table_of_contents)
  {
    v4 = 0;
  }

  return v5 ^ v3 ^ v6 ^ v4 ^ [(NSString *)self->_matched_url_variant hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = [(_SFPBHashBucketDetail_HashDetail *)self full_hash];
  v6 = [v4 full_hash];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_18;
  }

  v7 = [(_SFPBHashBucketDetail_HashDetail *)self full_hash];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBHashBucketDetail_HashDetail *)self full_hash];
    v10 = [v4 full_hash];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has_summary = self->_has_summary;
  if (has_summary != [v4 has_summary])
  {
    goto LABEL_19;
  }

  v5 = [(_SFPBHashBucketDetail_HashDetail *)self sba_entity_types];
  v6 = [v4 sba_entity_types];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_18;
  }

  v13 = [(_SFPBHashBucketDetail_HashDetail *)self sba_entity_types];
  if (v13)
  {
    v14 = v13;
    v15 = [(_SFPBHashBucketDetail_HashDetail *)self sba_entity_types];
    v16 = [v4 sba_entity_types];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has_table_of_contents = self->_has_table_of_contents;
  if (has_table_of_contents != [v4 has_table_of_contents])
  {
    goto LABEL_19;
  }

  v5 = [(_SFPBHashBucketDetail_HashDetail *)self matched_url_variant];
  v6 = [v4 matched_url_variant];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  v19 = [(_SFPBHashBucketDetail_HashDetail *)self matched_url_variant];
  if (!v19)
  {

LABEL_22:
    v24 = 1;
    goto LABEL_20;
  }

  v20 = v19;
  v21 = [(_SFPBHashBucketDetail_HashDetail *)self matched_url_variant];
  v22 = [v4 matched_url_variant];
  v23 = [v21 isEqual:v22];

  if (v23)
  {
    goto LABEL_22;
  }

LABEL_19:
  v24 = 0;
LABEL_20:

  return v24;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBHashBucketDetail_HashDetail *)self full_hash];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBHashBucketDetail_HashDetail *)self has_summary])
  {
    PBDataWriterWriteBOOLField();
  }

  v6 = [(_SFPBHashBucketDetail_HashDetail *)self sba_entity_types];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * v10) intValue];
        PBDataWriterWriteInt32Field();
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if ([(_SFPBHashBucketDetail_HashDetail *)self has_table_of_contents])
  {
    PBDataWriterWriteBOOLField();
  }

  v11 = [(_SFPBHashBucketDetail_HashDetail *)self matched_url_variant];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setMatched_url_variant:(id)a3
{
  v4 = [a3 copy];
  matched_url_variant = self->_matched_url_variant;
  self->_matched_url_variant = v4;

  MEMORY[0x1EEE66BB8]();
}

- (int)sba_entity_typesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_sba_entity_types objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)setSba_entity_types:(id)a3
{
  v4 = [a3 copy];
  sba_entity_types = self->_sba_entity_types;
  self->_sba_entity_types = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFull_hash:(id)a3
{
  v4 = [a3 copy];
  full_hash = self->_full_hash;
  self->_full_hash = v4;

  MEMORY[0x1EEE66BB8]();
}

@end