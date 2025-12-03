@interface _SFPBHashBucketDetail_HashDetail
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBHashBucketDetail_HashDetail)initWithDictionary:(id)dictionary;
- (_SFPBHashBucketDetail_HashDetail)initWithFacade:(id)facade;
- (_SFPBHashBucketDetail_HashDetail)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (int)sba_entity_typesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)setFull_hash:(id)full_hash;
- (void)setMatched_url_variant:(id)matched_url_variant;
- (void)setSba_entity_types:(id)sba_entity_types;
- (void)writeTo:(id)to;
@end

@implementation _SFPBHashBucketDetail_HashDetail

- (_SFPBHashBucketDetail_HashDetail)initWithFacade:(id)facade
{
  v25 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBHashBucketDetail_HashDetail *)self init];
  if (v5)
  {
    full_hash = [facadeCopy full_hash];

    if (full_hash)
    {
      full_hash2 = [facadeCopy full_hash];
      [(_SFPBHashBucketDetail_HashDetail *)v5 setFull_hash:full_hash2];
    }

    if ([facadeCopy hasHas_summary])
    {
      -[_SFPBHashBucketDetail_HashDetail setHas_summary:](v5, "setHas_summary:", [facadeCopy has_summary]);
    }

    sba_entity_types = [facadeCopy sba_entity_types];
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
    v10 = [facadeCopy sba:0 entity:?types];
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
    if ([facadeCopy hasHas_table_of_contents])
    {
      -[_SFPBHashBucketDetail_HashDetail setHas_table_of_contents:](v5, "setHas_table_of_contents:", [facadeCopy has_table_of_contents]);
    }

    matched_url_variant = [facadeCopy matched_url_variant];

    if (matched_url_variant)
    {
      matched_url_variant2 = [facadeCopy matched_url_variant];
      [(_SFPBHashBucketDetail_HashDetail *)v5 setMatched_url_variant:matched_url_variant2];
    }

    v17 = v5;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBHashBucketDetail_HashDetail)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = _SFPBHashBucketDetail_HashDetail;
  v5 = [(_SFPBHashBucketDetail_HashDetail *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"fullHash"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBHashBucketDetail_HashDetail *)v5 setFull_hash:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"hasSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHashBucketDetail_HashDetail setHas_summary:](v5, "setHas_summary:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"sbaEntityTypes"];
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

    v16 = [dictionaryCopy objectForKeyedSubscript:@"hasTableOfContents"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHashBucketDetail_HashDetail setHas_table_of_contents:](v5, "setHas_table_of_contents:", [v16 BOOLValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"matchedUrlVariant"];
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

- (_SFPBHashBucketDetail_HashDetail)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBHashBucketDetail_HashDetail *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBHashBucketDetail_HashDetail *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_full_hash)
  {
    full_hash = [(_SFPBHashBucketDetail_HashDetail *)self full_hash];
    v5 = [full_hash copy];
    [dictionary setObject:v5 forKeyedSubscript:@"fullHash"];
  }

  if (self->_has_summary)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHashBucketDetail_HashDetail has_summary](self, "has_summary")}];
    [dictionary setObject:v6 forKeyedSubscript:@"hasSummary"];
  }

  if (self->_has_table_of_contents)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHashBucketDetail_HashDetail has_table_of_contents](self, "has_table_of_contents")}];
    [dictionary setObject:v7 forKeyedSubscript:@"hasTableOfContents"];
  }

  if (self->_matched_url_variant)
  {
    matched_url_variant = [(_SFPBHashBucketDetail_HashDetail *)self matched_url_variant];
    v9 = [matched_url_variant copy];
    [dictionary setObject:v9 forKeyedSubscript:@"matchedUrlVariant"];
  }

  if ([(NSArray *)self->_sba_entity_types count])
  {
    sba_entity_types = [(_SFPBHashBucketDetail_HashDetail *)self sba_entity_types];
    v11 = [sba_entity_types copy];
    [dictionary setObject:v11 forKeyedSubscript:@"sbaEntityTypes"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  full_hash = [(_SFPBHashBucketDetail_HashDetail *)self full_hash];
  full_hash2 = [equalCopy full_hash];
  if ((full_hash != 0) == (full_hash2 == 0))
  {
    goto LABEL_18;
  }

  full_hash3 = [(_SFPBHashBucketDetail_HashDetail *)self full_hash];
  if (full_hash3)
  {
    v8 = full_hash3;
    full_hash4 = [(_SFPBHashBucketDetail_HashDetail *)self full_hash];
    full_hash5 = [equalCopy full_hash];
    v11 = [full_hash4 isEqual:full_hash5];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has_summary = self->_has_summary;
  if (has_summary != [equalCopy has_summary])
  {
    goto LABEL_19;
  }

  full_hash = [(_SFPBHashBucketDetail_HashDetail *)self sba_entity_types];
  full_hash2 = [equalCopy sba_entity_types];
  if ((full_hash != 0) == (full_hash2 == 0))
  {
    goto LABEL_18;
  }

  sba_entity_types = [(_SFPBHashBucketDetail_HashDetail *)self sba_entity_types];
  if (sba_entity_types)
  {
    v14 = sba_entity_types;
    sba_entity_types2 = [(_SFPBHashBucketDetail_HashDetail *)self sba_entity_types];
    sba_entity_types3 = [equalCopy sba_entity_types];
    v17 = [sba_entity_types2 isEqual:sba_entity_types3];

    if (!v17)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has_table_of_contents = self->_has_table_of_contents;
  if (has_table_of_contents != [equalCopy has_table_of_contents])
  {
    goto LABEL_19;
  }

  full_hash = [(_SFPBHashBucketDetail_HashDetail *)self matched_url_variant];
  full_hash2 = [equalCopy matched_url_variant];
  if ((full_hash != 0) == (full_hash2 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  matched_url_variant = [(_SFPBHashBucketDetail_HashDetail *)self matched_url_variant];
  if (!matched_url_variant)
  {

LABEL_22:
    v24 = 1;
    goto LABEL_20;
  }

  v20 = matched_url_variant;
  matched_url_variant2 = [(_SFPBHashBucketDetail_HashDetail *)self matched_url_variant];
  matched_url_variant3 = [equalCopy matched_url_variant];
  v23 = [matched_url_variant2 isEqual:matched_url_variant3];

  if (v23)
  {
    goto LABEL_22;
  }

LABEL_19:
  v24 = 0;
LABEL_20:

  return v24;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  full_hash = [(_SFPBHashBucketDetail_HashDetail *)self full_hash];
  if (full_hash)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBHashBucketDetail_HashDetail *)self has_summary])
  {
    PBDataWriterWriteBOOLField();
  }

  sba_entity_types = [(_SFPBHashBucketDetail_HashDetail *)self sba_entity_types];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [sba_entity_types countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(sba_entity_types);
        }

        [*(*(&v13 + 1) + 8 * v10) intValue];
        PBDataWriterWriteInt32Field();
        ++v10;
      }

      while (v8 != v10);
      v8 = [sba_entity_types countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if ([(_SFPBHashBucketDetail_HashDetail *)self has_table_of_contents])
  {
    PBDataWriterWriteBOOLField();
  }

  matched_url_variant = [(_SFPBHashBucketDetail_HashDetail *)self matched_url_variant];
  if (matched_url_variant)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setMatched_url_variant:(id)matched_url_variant
{
  v4 = [matched_url_variant copy];
  matched_url_variant = self->_matched_url_variant;
  self->_matched_url_variant = v4;

  MEMORY[0x1EEE66BB8]();
}

- (int)sba_entity_typesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_sba_entity_types objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)setSba_entity_types:(id)sba_entity_types
{
  v4 = [sba_entity_types copy];
  sba_entity_types = self->_sba_entity_types;
  self->_sba_entity_types = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFull_hash:(id)full_hash
{
  v4 = [full_hash copy];
  full_hash = self->_full_hash;
  self->_full_hash = v4;

  MEMORY[0x1EEE66BB8]();
}

@end