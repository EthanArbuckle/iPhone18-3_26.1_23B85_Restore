@interface _SFPBRFSummaryItemStandardCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSummaryItemStandardCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSummaryItemStandardCardSection)initWithFacade:(id)facade;
- (_SFPBRFSummaryItemStandardCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_2:(id)text_2;
- (void)addText_3:(id)text_3;
- (void)setText_2:(id)text_2;
- (void)setText_3:(id)text_3;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSummaryItemStandardCardSection

- (_SFPBRFSummaryItemStandardCardSection)initWithFacade:(id)facade
{
  v47 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFSummaryItemStandardCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFSummaryItemStandardCardSection *)v5 setText_1:v9];
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

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    text4 = [facadeCopy text];
    v13 = [text4 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v42;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(text4);
          }

          v17 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v41 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [text4 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v14);
    }

    [(_SFPBRFSummaryItemStandardCardSection *)v5 setText_2s:v11];
    text5 = [facadeCopy text];
    if (text5)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    text6 = [facadeCopy text];
    v21 = [text6 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(text6);
          }

          v25 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v37 + 1) + 8 * j)];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [text6 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v22);
    }

    [(_SFPBRFSummaryItemStandardCardSection *)v5 setText_3s:v19];
    text7 = [facadeCopy text];

    if (text7)
    {
      v27 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v29 = [(_SFPBRFTextProperty *)v27 initWithFacade:text8];
      [(_SFPBRFSummaryItemStandardCardSection *)v5 setText_4:v29];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v31 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v33 = [(_SFPBRFVisualProperty *)v31 initWithFacade:thumbnail2];
      [(_SFPBRFSummaryItemStandardCardSection *)v5 setThumbnail:v33];
    }

    if ([facadeCopy hasSuppress_text_2_if_text_1_exceeds_a_single_line])
    {
      -[_SFPBRFSummaryItemStandardCardSection setSuppress_text_2_if_text_1_exceeds_a_single_line:](v5, "setSuppress_text_2_if_text_1_exceeds_a_single_line:", [facadeCopy suppress_text_2_if_text_1_exceeds_a_single_line]);
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemStandardCardSection)initWithDictionary:(id)dictionary
{
  v46 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v43.receiver = self;
  v43.super_class = _SFPBRFSummaryItemStandardCardSection;
  v5 = [(_SFPBRFSummaryItemStandardCardSection *)&v43 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemStandardCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    v32 = v8;
    if (objc_opt_isKindOfClass())
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v40;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v40 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v39 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[_SFPBRFTextProperty alloc] initWithDictionary:v14];
              [(_SFPBRFSummaryItemStandardCardSection *)v5 addText_2:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
        }

        while (v11);
      }

      v8 = v32;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"text3", v32, v6}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v36;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v36 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v35 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [[_SFPBRFTextProperty alloc] initWithDictionary:v22];
              [(_SFPBRFSummaryItemStandardCardSection *)v5 addText_3:v23];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v19);
      }

      v8 = v33;
      v6 = v34;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBRFTextProperty alloc] initWithDictionary:v24];
      [(_SFPBRFSummaryItemStandardCardSection *)v5 setText_4:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v26];
      [(_SFPBRFSummaryItemStandardCardSection *)v5 setThumbnail:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"suppressText2IfText1ExceedsASingleLine"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFSummaryItemStandardCardSection setSuppress_text_2_if_text_1_exceeds_a_single_line:](v5, "setSuppress_text_2_if_text_1_exceeds_a_single_line:", [v28 BOOLValue]);
    }

    v29 = v5;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemStandardCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemStandardCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSummaryItemStandardCardSection *)self dictionaryRepresentation];
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
  v42 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_suppress_text_2_if_text_1_exceeds_a_single_line)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFSummaryItemStandardCardSection suppress_text_2_if_text_1_exceeds_a_single_line](self, "suppress_text_2_if_text_1_exceeds_a_single_line")}];
    [dictionary setObject:v4 forKeyedSubscript:@"suppressText2IfText1ExceedsASingleLine"];
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFSummaryItemStandardCardSection *)self text];
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
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v9 = self->_text_2s;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v37;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
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

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"text2"];
  }

  if ([(NSArray *)self->_text_3s count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = self->_text_3s;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation3 = [*(*(&v32 + 1) + 8 * j) dictionaryRepresentation];
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

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v19);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"text3"];
  }

  if (self->_text_4)
  {
    text2 = [(_SFPBRFSummaryItemStandardCardSection *)self text];
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

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBRFSummaryItemStandardCardSection *)self thumbnail];
    dictionaryRepresentation5 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"thumbnail"];
    }
  }

  v30 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(NSArray *)self->_text_2s hash];
  v5 = [(NSArray *)self->_text_3s hash];
  v6 = [(_SFPBRFTextProperty *)self->_text_4 hash];
  v7 = [(_SFPBRFVisualProperty *)self->_thumbnail hash];
  v8 = 2654435761;
  if (!self->_suppress_text_2_if_text_1_exceeds_a_single_line)
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  text = [(_SFPBRFSummaryItemStandardCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  text3 = [(_SFPBRFSummaryItemStandardCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFSummaryItemStandardCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemStandardCardSection *)self text_2s];
  text2 = [equalCopy text_2s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  text_2s = [(_SFPBRFSummaryItemStandardCardSection *)self text_2s];
  if (text_2s)
  {
    v13 = text_2s;
    text_2s2 = [(_SFPBRFSummaryItemStandardCardSection *)self text_2s];
    text_2s3 = [equalCopy text_2s];
    v16 = [text_2s2 isEqual:text_2s3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemStandardCardSection *)self text_3s];
  text2 = [equalCopy text_3s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  text_3s = [(_SFPBRFSummaryItemStandardCardSection *)self text_3s];
  if (text_3s)
  {
    v18 = text_3s;
    text_3s2 = [(_SFPBRFSummaryItemStandardCardSection *)self text_3s];
    text_3s3 = [equalCopy text_3s];
    v21 = [text_3s2 isEqual:text_3s3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemStandardCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  text6 = [(_SFPBRFSummaryItemStandardCardSection *)self text];
  if (text6)
  {
    v23 = text6;
    text7 = [(_SFPBRFSummaryItemStandardCardSection *)self text];
    text8 = [equalCopy text];
    v26 = [text7 isEqual:text8];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemStandardCardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) != (text2 == 0))
  {
    thumbnail = [(_SFPBRFSummaryItemStandardCardSection *)self thumbnail];
    if (!thumbnail)
    {

LABEL_30:
      suppress_text_2_if_text_1_exceeds_a_single_line = self->_suppress_text_2_if_text_1_exceeds_a_single_line;
      v32 = suppress_text_2_if_text_1_exceeds_a_single_line == [equalCopy suppress_text_2_if_text_1_exceeds_a_single_line];
      goto LABEL_28;
    }

    v28 = thumbnail;
    thumbnail2 = [(_SFPBRFSummaryItemStandardCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v31 = [thumbnail2 isEqual:thumbnail3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)to
{
  v31 = *MEMORY[0x1E69E9840];
  toCopy = to;
  text = [(_SFPBRFSummaryItemStandardCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text_2s = [(_SFPBRFSummaryItemStandardCardSection *)self text_2s];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [text_2s countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(text_2s);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [text_2s countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  text_3s = [(_SFPBRFSummaryItemStandardCardSection *)self text_3s];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [text_3s countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(text_3s);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [text_3s countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  text2 = [(_SFPBRFSummaryItemStandardCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBRFSummaryItemStandardCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFSummaryItemStandardCardSection *)self suppress_text_2_if_text_1_exceeds_a_single_line])
  {
    PBDataWriterWriteBOOLField();
  }

  v20 = *MEMORY[0x1E69E9840];
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