@interface _SFPBRFSummaryItemAlignedTextCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSummaryItemAlignedTextCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSummaryItemAlignedTextCardSection)initWithFacade:(id)facade;
- (_SFPBRFSummaryItemAlignedTextCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_3:(id)text_3;
- (void)addText_6:(id)text_6;
- (void)setText_3:(id)text_3;
- (void)setText_6:(id)text_6;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSummaryItemAlignedTextCardSection

- (_SFPBRFSummaryItemAlignedTextCardSection)initWithFacade:(id)facade
{
  v55 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_1:v9];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text4];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_2:v13];
    }

    text5 = [facadeCopy text];
    if (text5)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    text6 = [facadeCopy text];
    v17 = [text6 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v50;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(text6);
          }

          v21 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v49 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [text6 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v18);
    }

    [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_3s:v15];
    text7 = [facadeCopy text];

    if (text7)
    {
      v23 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v25 = [(_SFPBRFTextProperty *)v23 initWithFacade:text8];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_4:v25];
    }

    text9 = [facadeCopy text];

    if (text9)
    {
      v27 = [_SFPBRFTextProperty alloc];
      text10 = [facadeCopy text];
      v29 = [(_SFPBRFTextProperty *)v27 initWithFacade:text10];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_5:v29];
    }

    text11 = [facadeCopy text];
    if (text11)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v31 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    text12 = [facadeCopy text];
    v33 = [text12 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v46;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(text12);
          }

          v37 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v45 + 1) + 8 * j)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [text12 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v34);
    }

    [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_6s:v31];
    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v39 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v41 = [(_SFPBRFVisualProperty *)v39 initWithFacade:thumbnail2];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setThumbnail:v41];
    }

    v42 = v5;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemAlignedTextCardSection)initWithDictionary:(id)dictionary
{
  v51 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v48.receiver = self;
  v48.super_class = _SFPBRFSummaryItemAlignedTextCardSection;
  v5 = [(_SFPBRFSummaryItemAlignedTextCardSection *)&v48 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_2:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    v38 = v8;
    v39 = v6;
    v37 = v10;
    if (objc_opt_isKindOfClass())
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v45;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v45 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v44 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
              [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 addText_3:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v44 objects:v50 count:16];
        }

        while (v13);
      }

      v8 = v38;
      v10 = v37;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBRFTextProperty alloc] initWithDictionary:v18];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_4:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"text5"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBRFTextProperty alloc] initWithDictionary:v20];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setText_5:v21];
    }

    v36 = v20;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"text6"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v18;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v41;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v41 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v40 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [[_SFPBRFTextProperty alloc] initWithDictionary:v28];
              [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 addText_6:v29];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v40 objects:v49 count:16];
        }

        while (v25);
      }

      v8 = v38;
      v6 = v39;
      v10 = v37;
      v18 = v35;
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v30];
      [(_SFPBRFSummaryItemAlignedTextCardSection *)v5 setThumbnail:v31];
    }

    v32 = v5;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemAlignedTextCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemAlignedTextCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSummaryItemAlignedTextCardSection *)self dictionaryRepresentation];
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
  v47 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_text_1)
  {
    text = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
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

  if (self->_text_2)
  {
    text2 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
    dictionaryRepresentation2 = [text2 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"text2"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"text2"];
    }
  }

  if ([(NSArray *)self->_text_3s count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = self->_text_3s;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation3 = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"text3"];
  }

  if (self->_text_4)
  {
    text3 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
    dictionaryRepresentation4 = [text3 dictionaryRepresentation];
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

  if (self->_text_5)
  {
    text4 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
    dictionaryRepresentation5 = [text4 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"text5"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"text5"];
    }
  }

  if ([(NSArray *)self->_text_6s count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v25 = self->_text_6s;
    v26 = [(NSArray *)v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v38;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(v25);
          }

          dictionaryRepresentation6 = [*(*(&v37 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation6)
          {
            [array2 addObject:dictionaryRepresentation6];
          }

          else
          {
            null6 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null6];
          }
        }

        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v27);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"text6"];
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBRFSummaryItemAlignedTextCardSection *)self thumbnail];
    dictionaryRepresentation7 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"thumbnail"];
    }
  }

  v35 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v5 = [(NSArray *)self->_text_3s hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  v7 = [(_SFPBRFTextProperty *)self->_text_5 hash];
  v8 = v7 ^ [(NSArray *)self->_text_6s hash];
  return v6 ^ v8 ^ [(_SFPBRFVisualProperty *)self->_thumbnail hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  text = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text3 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text6 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (text6)
  {
    v13 = text6;
    text7 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
    text8 = [equalCopy text];
    v16 = [text7 isEqual:text8];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_3s];
  text2 = [equalCopy text_3s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text_3s = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_3s];
  if (text_3s)
  {
    v18 = text_3s;
    text_3s2 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_3s];
    text_3s3 = [equalCopy text_3s];
    v21 = [text_3s2 isEqual:text_3s3];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text9 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (text9)
  {
    v23 = text9;
    text10 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
    text11 = [equalCopy text];
    v26 = [text10 isEqual:text11];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text12 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (text12)
  {
    v28 = text12;
    text13 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
    text14 = [equalCopy text];
    v31 = [text13 isEqual:text14];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_6s];
  text2 = [equalCopy text_6s];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text_6s = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_6s];
  if (text_6s)
  {
    v33 = text_6s;
    text_6s2 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_6s];
    text_6s3 = [equalCopy text_6s];
    v36 = [text_6s2 isEqual:text_6s3];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemAlignedTextCardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) != (text2 == 0))
  {
    thumbnail = [(_SFPBRFSummaryItemAlignedTextCardSection *)self thumbnail];
    if (!thumbnail)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = thumbnail;
    thumbnail2 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v41 = [thumbnail2 isEqual:thumbnail3];

    if (v41)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
  }

LABEL_37:
  v42 = 0;
LABEL_38:

  return v42;
}

- (void)writeTo:(id)to
{
  v33 = *MEMORY[0x1E69E9840];
  toCopy = to;
  text = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text_3s = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_3s];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [text_3s countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(text_3s);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [text_3s countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  text3 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  text4 = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text];
  if (text4)
  {
    PBDataWriterWriteSubmessage();
  }

  text_6s = [(_SFPBRFSummaryItemAlignedTextCardSection *)self text_6s];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [text_6s countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(text_6s);
        }

        v20 = *(*(&v23 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [text_6s countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  thumbnail = [(_SFPBRFSummaryItemAlignedTextCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)addText_6:(id)text_6
{
  text_6Copy = text_6;
  text_6s = self->_text_6s;
  v8 = text_6Copy;
  if (!text_6s)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_6s;
    self->_text_6s = array;

    text_6Copy = v8;
    text_6s = self->_text_6s;
  }

  [(NSArray *)text_6s addObject:text_6Copy];
}

- (void)setText_6:(id)text_6
{
  v4 = [text_6 copy];
  text_6s = self->_text_6s;
  self->_text_6s = v4;

  MEMORY[0x1EEE66BB8]();
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

@end