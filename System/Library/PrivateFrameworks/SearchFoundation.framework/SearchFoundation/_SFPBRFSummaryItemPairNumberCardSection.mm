@interface _SFPBRFSummaryItemPairNumberCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSummaryItemPairNumberCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSummaryItemPairNumberCardSection)initWithFacade:(id)facade;
- (_SFPBRFSummaryItemPairNumberCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addText_5:(id)text_5;
- (void)setText_5:(id)text_5;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSummaryItemPairNumberCardSection

- (_SFPBRFSummaryItemPairNumberCardSection)initWithFacade:(id)facade
{
  v78 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self init];
  if (v5)
  {
    number = [facadeCopy number];

    if (number)
    {
      v7 = [_SFPBRFTextProperty alloc];
      number2 = [facadeCopy number];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:number2];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setNumber_1:v9];
    }

    number3 = [facadeCopy number];

    if (number3)
    {
      v11 = [_SFPBRFTextProperty alloc];
      number4 = [facadeCopy number];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:number4];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setNumber_2:v13];
    }

    text = [facadeCopy text];

    if (text)
    {
      v15 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:text2];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_1:v17];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v19 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v21 = [(_SFPBRFTextProperty *)v19 initWithFacade:text4];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_2:v21];
    }

    text5 = [facadeCopy text];

    if (text5)
    {
      v23 = [_SFPBRFTextProperty alloc];
      text6 = [facadeCopy text];
      v25 = [(_SFPBRFTextProperty *)v23 initWithFacade:text6];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_3:v25];
    }

    text7 = [facadeCopy text];

    if (text7)
    {
      v27 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v29 = [(_SFPBRFTextProperty *)v27 initWithFacade:text8];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_4:v29];
    }

    text9 = [facadeCopy text];
    if (text9)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v31 = 0;
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    text10 = [facadeCopy text];
    v33 = [text10 countByEnumeratingWithState:&v73 objects:v77 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v74;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v74 != v35)
          {
            objc_enumerationMutation(text10);
          }

          v37 = [[_SFPBRFTextProperty alloc] initWithFacade:*(*(&v73 + 1) + 8 * i)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [text10 countByEnumeratingWithState:&v73 objects:v77 count:16];
      }

      while (v34);
    }

    [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_5s:v31];
    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v39 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v41 = [(_SFPBRFVisualProperty *)v39 initWithFacade:thumbnail2];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setThumbnail_1:v41];
    }

    thumbnail3 = [facadeCopy thumbnail];

    if (thumbnail3)
    {
      v43 = [_SFPBRFVisualProperty alloc];
      thumbnail4 = [facadeCopy thumbnail];
      v45 = [(_SFPBRFVisualProperty *)v43 initWithFacade:thumbnail4];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setThumbnail_2:v45];
    }

    text11 = [facadeCopy text];

    if (text11)
    {
      v47 = [_SFPBRFTextProperty alloc];
      text12 = [facadeCopy text];
      v49 = [(_SFPBRFTextProperty *)v47 initWithFacade:text12];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_6:v49];
    }

    text13 = [facadeCopy text];

    if (text13)
    {
      v51 = [_SFPBRFTextProperty alloc];
      text14 = [facadeCopy text];
      v53 = [(_SFPBRFTextProperty *)v51 initWithFacade:text14];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_7:v53];
    }

    button = [facadeCopy button];

    if (button)
    {
      v55 = [_SFPBButtonItem alloc];
      button2 = [facadeCopy button];
      v57 = [(_SFPBButtonItem *)v55 initWithFacade:button2];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setButton_1:v57];
    }

    text15 = [facadeCopy text];

    if (text15)
    {
      v59 = [_SFPBRFTextProperty alloc];
      text16 = [facadeCopy text];
      v61 = [(_SFPBRFTextProperty *)v59 initWithFacade:text16];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_8:v61];
    }

    text17 = [facadeCopy text];

    if (text17)
    {
      v63 = [_SFPBRFTextProperty alloc];
      text18 = [facadeCopy text];
      v65 = [(_SFPBRFTextProperty *)v63 initWithFacade:text18];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_9:v65];
    }

    text19 = [facadeCopy text];

    if (text19)
    {
      v67 = [_SFPBRFTextProperty alloc];
      text20 = [facadeCopy text];
      v69 = [(_SFPBRFTextProperty *)v67 initWithFacade:text20];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_10:v69];
    }

    v70 = v5;
  }

  v71 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemPairNumberCardSection)initWithDictionary:(id)dictionary
{
  v59 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v57.receiver = self;
  v57.super_class = _SFPBRFSummaryItemPairNumberCardSection;
  v5 = [(_SFPBRFSummaryItemPairNumberCardSection *)&v57 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"number1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setNumber_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"number2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setNumber_2:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    v52 = v10;
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_1:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    v51 = v12;
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFTextProperty alloc] initWithDictionary:v12];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_2:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    v50 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFTextProperty alloc] initWithDictionary:v14];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_3:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    v49 = v16;
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_4:v17];
    }

    v47 = v6;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"text5"];
    objc_opt_class();
    v48 = v18;
    if (objc_opt_isKindOfClass())
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v54;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v54 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v53 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [[_SFPBRFTextProperty alloc] initWithDictionary:v24];
              [(_SFPBRFSummaryItemPairNumberCardSection *)v5 addText_5:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v21);
      }
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v26];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setThumbnail_1:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:{@"thumbnail2", v26}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v28];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setThumbnail_2:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"text6"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRFTextProperty alloc] initWithDictionary:v30];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_6:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"text7"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBRFTextProperty alloc] initWithDictionary:v32];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_7:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"button1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBButtonItem alloc] initWithDictionary:v34];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setButton_1:v35];
    }

    v46 = v8;
    v36 = [dictionaryCopy objectForKeyedSubscript:@"text8"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBRFTextProperty alloc] initWithDictionary:v36];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_8:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"text9"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBRFTextProperty alloc] initWithDictionary:v38];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_9:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"text10"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBRFTextProperty alloc] initWithDictionary:v40];
      [(_SFPBRFSummaryItemPairNumberCardSection *)v5 setText_10:v41];
    }

    v42 = v5;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemPairNumberCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemPairNumberCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSummaryItemPairNumberCardSection *)self dictionaryRepresentation];
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
  v61 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_button_1)
  {
    button = [(_SFPBRFSummaryItemPairNumberCardSection *)self button];
    dictionaryRepresentation = [button dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"button1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"button1"];
    }
  }

  if (self->_number_1)
  {
    number = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
    dictionaryRepresentation2 = [number dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"number1"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"number1"];
    }
  }

  if (self->_number_2)
  {
    number2 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
    dictionaryRepresentation3 = [number2 dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"number2"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"number2"];
    }
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    dictionaryRepresentation4 = [text dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"text1"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"text1"];
    }
  }

  if (self->_text_10)
  {
    text2 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    dictionaryRepresentation5 = [text2 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"text10"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"text10"];
    }
  }

  if (self->_text_2)
  {
    text3 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    dictionaryRepresentation6 = [text3 dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"text2"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"text2"];
    }
  }

  if (self->_text_3)
  {
    text4 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    dictionaryRepresentation7 = [text4 dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"text3"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"text3"];
    }
  }

  if (self->_text_4)
  {
    text5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    dictionaryRepresentation8 = [text5 dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"text4"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"text4"];
    }
  }

  if ([(NSArray *)self->_text_5s count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v29 = self->_text_5s;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v57;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v57 != v32)
          {
            objc_enumerationMutation(v29);
          }

          dictionaryRepresentation9 = [*(*(&v56 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation9)
          {
            [array addObject:dictionaryRepresentation9];
          }

          else
          {
            null9 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null9];
          }
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v31);
    }

    [dictionary setObject:array forKeyedSubscript:@"text5"];
  }

  if (self->_text_6)
  {
    text6 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    dictionaryRepresentation10 = [text6 dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"text6"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"text6"];
    }
  }

  if (self->_text_7)
  {
    text7 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    dictionaryRepresentation11 = [text7 dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"text7"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"text7"];
    }
  }

  if (self->_text_8)
  {
    text8 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    dictionaryRepresentation12 = [text8 dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"text8"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"text8"];
    }
  }

  if (self->_text_9)
  {
    text9 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    dictionaryRepresentation13 = [text9 dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"text9"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"text9"];
    }
  }

  if (self->_thumbnail_1)
  {
    thumbnail = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
    dictionaryRepresentation14 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"thumbnail1"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"thumbnail1"];
    }
  }

  if (self->_thumbnail_2)
  {
    thumbnail2 = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
    dictionaryRepresentation15 = [thumbnail2 dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"thumbnail2"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"thumbnail2"];
    }
  }

  v54 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_number_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_number_2 hash]^ v3;
  v5 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFTextProperty *)self->_text_2 hash];
  v7 = [(_SFPBRFTextProperty *)self->_text_3 hash];
  v8 = v7 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  v9 = v6 ^ v8 ^ [(NSArray *)self->_text_5s hash];
  v10 = [(_SFPBRFVisualProperty *)self->_thumbnail_1 hash];
  v11 = v10 ^ [(_SFPBRFVisualProperty *)self->_thumbnail_2 hash];
  v12 = v11 ^ [(_SFPBRFTextProperty *)self->_text_6 hash];
  v13 = v9 ^ v12 ^ [(_SFPBRFTextProperty *)self->_text_7 hash];
  v14 = [(_SFPBButtonItem *)self->_button_1 hash];
  v15 = v14 ^ [(_SFPBRFTextProperty *)self->_text_8 hash];
  v16 = v15 ^ [(_SFPBRFTextProperty *)self->_text_9 hash];
  return v13 ^ v16 ^ [(_SFPBRFTextProperty *)self->_text_10 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
  number2 = [equalCopy number];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_76;
  }

  number3 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
  if (number3)
  {
    v8 = number3;
    number4 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
    number5 = [equalCopy number];
    v11 = [number4 isEqual:number5];

    if (!v11)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
  number2 = [equalCopy number];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_76;
  }

  number6 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
  if (number6)
  {
    v13 = number6;
    number7 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
    number8 = [equalCopy number];
    v16 = [number7 isEqual:number8];

    if (!v16)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_76;
  }

  text = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text)
  {
    v18 = text;
    text2 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    text3 = [equalCopy text];
    v21 = [text2 isEqual:text3];

    if (!v21)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_76;
  }

  text4 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text4)
  {
    v23 = text4;
    text5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    text6 = [equalCopy text];
    v26 = [text5 isEqual:text6];

    if (!v26)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_76;
  }

  text7 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text7)
  {
    v28 = text7;
    text8 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    text9 = [equalCopy text];
    v31 = [text8 isEqual:text9];

    if (!v31)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_76;
  }

  text10 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text10)
  {
    v33 = text10;
    text11 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    text12 = [equalCopy text];
    v36 = [text11 isEqual:text12];

    if (!v36)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self text_5s];
  number2 = [equalCopy text_5s];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_76;
  }

  text_5s = [(_SFPBRFSummaryItemPairNumberCardSection *)self text_5s];
  if (text_5s)
  {
    v38 = text_5s;
    text_5s2 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text_5s];
    text_5s3 = [equalCopy text_5s];
    v41 = [text_5s2 isEqual:text_5s3];

    if (!v41)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
  number2 = [equalCopy thumbnail];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_76;
  }

  thumbnail = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
  if (thumbnail)
  {
    v43 = thumbnail;
    thumbnail2 = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v46 = [thumbnail2 isEqual:thumbnail3];

    if (!v46)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
  number2 = [equalCopy thumbnail];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_76;
  }

  thumbnail4 = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
  if (thumbnail4)
  {
    v48 = thumbnail4;
    thumbnail5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
    thumbnail6 = [equalCopy thumbnail];
    v51 = [thumbnail5 isEqual:thumbnail6];

    if (!v51)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_76;
  }

  text13 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text13)
  {
    v53 = text13;
    text14 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    text15 = [equalCopy text];
    v56 = [text14 isEqual:text15];

    if (!v56)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_76;
  }

  text16 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text16)
  {
    v58 = text16;
    text17 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    text18 = [equalCopy text];
    v61 = [text17 isEqual:text18];

    if (!v61)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self button];
  number2 = [equalCopy button];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_76;
  }

  button = [(_SFPBRFSummaryItemPairNumberCardSection *)self button];
  if (button)
  {
    v63 = button;
    button2 = [(_SFPBRFSummaryItemPairNumberCardSection *)self button];
    button3 = [equalCopy button];
    v66 = [button2 isEqual:button3];

    if (!v66)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_76;
  }

  text19 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text19)
  {
    v68 = text19;
    text20 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    text21 = [equalCopy text];
    v71 = [text20 isEqual:text21];

    if (!v71)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_76;
  }

  text22 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text22)
  {
    v73 = text22;
    text23 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    text24 = [equalCopy text];
    v76 = [text23 isEqual:text24];

    if (!v76)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) != (number2 == 0))
  {
    text25 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    if (!text25)
    {

LABEL_80:
      v82 = 1;
      goto LABEL_78;
    }

    v78 = text25;
    text26 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
    text27 = [equalCopy text];
    v81 = [text26 isEqual:text27];

    if (v81)
    {
      goto LABEL_80;
    }
  }

  else
  {
LABEL_76:
  }

LABEL_77:
  v82 = 0;
LABEL_78:

  return v82;
}

- (void)writeTo:(id)to
{
  v31 = *MEMORY[0x1E69E9840];
  toCopy = to;
  number = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
  if (number)
  {
    PBDataWriterWriteSubmessage();
  }

  number2 = [(_SFPBRFSummaryItemPairNumberCardSection *)self number];
  if (number2)
  {
    PBDataWriterWriteSubmessage();
  }

  text = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text3 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  text4 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text4)
  {
    PBDataWriterWriteSubmessage();
  }

  text_5s = [(_SFPBRFSummaryItemPairNumberCardSection *)self text_5s];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = [text_5s countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(text_5s);
        }

        v16 = *(*(&v26 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [text_5s countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  thumbnail = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail2 = [(_SFPBRFSummaryItemPairNumberCardSection *)self thumbnail];
  if (thumbnail2)
  {
    PBDataWriterWriteSubmessage();
  }

  text5 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text5)
  {
    PBDataWriterWriteSubmessage();
  }

  text6 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text6)
  {
    PBDataWriterWriteSubmessage();
  }

  button = [(_SFPBRFSummaryItemPairNumberCardSection *)self button];
  if (button)
  {
    PBDataWriterWriteSubmessage();
  }

  text7 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text7)
  {
    PBDataWriterWriteSubmessage();
  }

  text8 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text8)
  {
    PBDataWriterWriteSubmessage();
  }

  text9 = [(_SFPBRFSummaryItemPairNumberCardSection *)self text];
  if (text9)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)addText_5:(id)text_5
{
  text_5Copy = text_5;
  text_5s = self->_text_5s;
  v8 = text_5Copy;
  if (!text_5s)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_text_5s;
    self->_text_5s = array;

    text_5Copy = v8;
    text_5s = self->_text_5s;
  }

  [(NSArray *)text_5s addObject:text_5Copy];
}

- (void)setText_5:(id)text_5
{
  v4 = [text_5 copy];
  text_5s = self->_text_5s;
  self->_text_5s = v4;

  MEMORY[0x1EEE66BB8]();
}

@end