@interface _SFPBRFSummaryItemImageRightCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSummaryItemImageRightCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSummaryItemImageRightCardSection)initWithFacade:(id)facade;
- (_SFPBRFSummaryItemImageRightCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_2:(id)text_2;
- (void)addText_3:(id)text_3;
- (void)setText_2:(id)text_2;
- (void)setText_3:(id)text_3;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSummaryItemImageRightCardSection

- (_SFPBRFSummaryItemImageRightCardSection)initWithFacade:(id)facade
{
  v51 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFSummaryItemImageRightCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setText_1:v9];
    }

    text3 = [facadeCopy text];
    if (text3)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v11 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    text4 = [facadeCopy text];
    v13 = [text4 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v46;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v46 != v15)
          {
            objc_enumerationMutation(text4);
          }

          v17 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v45 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [text4 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v14);
    }

    [(_SFPBRFSummaryItemImageRightCardSection *)v5 setText_2s:v11];
    text5 = [facadeCopy text];
    if (text5)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    text6 = [facadeCopy text];
    v21 = [text6 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v42;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(text6);
          }

          v25 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v41 + 1) + 8 * j)];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [text6 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v22);
    }

    [(_SFPBRFSummaryItemImageRightCardSection *)v5 setText_3s:v19];
    text7 = [facadeCopy text];

    if (text7)
    {
      v27 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v29 = [(_SFPBRFTextProperty *)v27 initWithFacade:text8];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setText_4:v29];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v31 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v33 = [(_SFPBRFVisualProperty *)v31 initWithFacade:thumbnail2];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setThumbnail_1:v33];
    }

    thumbnail3 = [facadeCopy thumbnail];

    if (thumbnail3)
    {
      v35 = [_SFPBRFVisualProperty alloc];
      thumbnail4 = [facadeCopy thumbnail];
      v37 = [(_SFPBRFVisualProperty *)v35 initWithFacade:thumbnail4];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setThumbnail_2:v37];
    }

    v38 = v5;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemImageRightCardSection)initWithDictionary:(id)dictionary
{
  v47 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v44.receiver = self;
  v44.super_class = _SFPBRFSummaryItemImageRightCardSection;
  v5 = [(_SFPBRFSummaryItemImageRightCardSection *)&v44 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    v33 = v8;
    if (objc_opt_isKindOfClass())
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v41;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v41 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v40 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[_SFPBRFTextProperty alloc] initWithDictionary:v14];
              [(_SFPBRFSummaryItemImageRightCardSection *)v5 addText_2:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v11);
      }

      v8 = v33;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"text3", v33, v6}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v37;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v37 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v36 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [[_SFPBRFTextProperty alloc] initWithDictionary:v22];
              [(_SFPBRFSummaryItemImageRightCardSection *)v5 addText_3:v23];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v19);
      }

      v8 = v34;
      v6 = v35;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBRFTextProperty alloc] initWithDictionary:v24];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setText_4:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v26];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setThumbnail_1:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v28];
      [(_SFPBRFSummaryItemImageRightCardSection *)v5 setThumbnail_2:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemImageRightCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemImageRightCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSummaryItemImageRightCardSection *)self dictionaryRepresentation];
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
  v44 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_text_1)
  {
    text = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
    dictionaryRepresentation = [text dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"text1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"text1"];
    }
  }

  if ([(NSArray *)self->_text_2s count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = self->_text_2s;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v38 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"text2"];
  }

  if ([(NSArray *)self->_text_3s count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = self->_text_3s;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation3 = [*(*(&v34 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array2 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null3];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v18);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"text3"];
  }

  if (self->_text_4)
  {
    text2 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
    dictionaryRepresentation4 = [text2 dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"text4"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"text4"];
    }
  }

  if (self->_thumbnail_1)
  {
    thumbnail = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
    dictionaryRepresentation5 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"thumbnail1"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"thumbnail1"];
    }
  }

  if (self->_thumbnail_2)
  {
    thumbnail2 = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
    dictionaryRepresentation6 = [thumbnail2 dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"thumbnail2"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"thumbnail2"];
    }
  }

  v32 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(NSArray *)self->_text_2s hash]^ v3;
  v5 = [(NSArray *)self->_text_3s hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  v7 = [(_SFPBRFVisualProperty *)self->_thumbnail_1 hash];
  return v6 ^ v7 ^ [(_SFPBRFVisualProperty *)self->_thumbnail_2 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  text = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_31;
  }

  text3 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemImageRightCardSection *)self text_2s];
  text2 = [equalCopy text_2s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_31;
  }

  text_2s = [(_SFPBRFSummaryItemImageRightCardSection *)self text_2s];
  if (text_2s)
  {
    v13 = text_2s;
    text_2s2 = [(_SFPBRFSummaryItemImageRightCardSection *)self text_2s];
    text_2s3 = [equalCopy text_2s];
    v16 = [text_2s2 isEqual:text_2s3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemImageRightCardSection *)self text_3s];
  text2 = [equalCopy text_3s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_31;
  }

  text_3s = [(_SFPBRFSummaryItemImageRightCardSection *)self text_3s];
  if (text_3s)
  {
    v18 = text_3s;
    text_3s2 = [(_SFPBRFSummaryItemImageRightCardSection *)self text_3s];
    text_3s3 = [equalCopy text_3s];
    v21 = [text_3s2 isEqual:text_3s3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_31;
  }

  text6 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
  if (text6)
  {
    v23 = text6;
    text7 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
    text8 = [equalCopy text];
    v26 = [text7 isEqual:text8];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_31;
  }

  thumbnail = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
  if (thumbnail)
  {
    v28 = thumbnail;
    thumbnail2 = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v31 = [thumbnail2 isEqual:thumbnail3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) != (text2 == 0))
  {
    thumbnail4 = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
    if (!thumbnail4)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = thumbnail4;
    thumbnail5 = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
    thumbnail6 = [equalCopy thumbnail];
    v36 = [thumbnail5 isEqual:thumbnail6];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)to
{
  v32 = *MEMORY[0x1E69E9840];
  toCopy = to;
  text = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text_2s = [(_SFPBRFSummaryItemImageRightCardSection *)self text_2s];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [text_2s countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(text_2s);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [text_2s countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  text_3s = [(_SFPBRFSummaryItemImageRightCardSection *)self text_3s];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [text_3s countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(text_3s);
        }

        v17 = *(*(&v22 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [text_3s countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  text2 = [(_SFPBRFSummaryItemImageRightCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail2 = [(_SFPBRFSummaryItemImageRightCardSection *)self thumbnail];
  if (thumbnail2)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)addText_3:(id)text_3
{
  text_3Copy = text_3;
  text_3s = self->_text_3s;
  v8 = text_3Copy;
  if (!text_3s)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_3s;
    self->_text_3s = array;

    text_3Copy = v8;
    text_3s = self->_text_3s;
  }

  [(NSArray *)text_3s addObject:text_3Copy];
}

- (void)setText_3:(id)text_3
{
  v4 = [text_3 copy];
  text_3s = self->_text_3s;
  self->_text_3s = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addText_2:(id)text_2
{
  text_2Copy = text_2;
  text_2s = self->_text_2s;
  v8 = text_2Copy;
  if (!text_2s)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_2s;
    self->_text_2s = array;

    text_2Copy = v8;
    text_2s = self->_text_2s;
  }

  [(NSArray *)text_2s addObject:text_2Copy];
}

- (void)setText_2:(id)text_2
{
  v4 = [text_2 copy];
  text_2s = self->_text_2s;
  self->_text_2s = v4;

  MEMORY[0x1EEE66BB8]();
}

@end