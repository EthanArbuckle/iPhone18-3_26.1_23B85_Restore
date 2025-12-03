@interface _SFPBRFSummaryItemExpandableCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSummaryItemExpandableCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSummaryItemExpandableCardSection)initWithFacade:(id)facade;
- (_SFPBRFSummaryItemExpandableCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addExpanding_component_content:(id)expanding_component_content;
- (void)setExpanding_component_content:(id)expanding_component_content;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSummaryItemExpandableCardSection

- (_SFPBRFSummaryItemExpandableCardSection)initWithFacade:(id)facade
{
  v42 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFSummaryItemExpandableCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setText_1:v9];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text4];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setText_2:v13];
    }

    attribution = [facadeCopy attribution];

    if (attribution)
    {
      v15 = [_SFPBRFSummaryItemAttribution alloc];
      attribution2 = [facadeCopy attribution];
      v17 = [(_SFPBRFSummaryItemAttribution *)v15 initWithFacade:attribution2];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setAttribution:v17];
    }

    if ([facadeCopy hasAttribution_ignores_expansion])
    {
      -[_SFPBRFSummaryItemExpandableCardSection setAttribution_ignores_expansion:](v5, "setAttribution_ignores_expansion:", [facadeCopy attribution_ignores_expansion]);
    }

    expanding_component_content = [facadeCopy expanding_component_content];
    if (expanding_component_content)
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
    v20 = [facadeCopy expanding:0 component:?content];
    v21 = [v20 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v38;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [[_SFPBRFSummaryItemExpandableContent alloc] initWithFacade:*(*(&v37 + 1) + 8 * i)];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v22);
    }

    [(_SFPBRFSummaryItemExpandableCardSection *)v5 setExpanding_component_contents:v19];
    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v27 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v29 = [(_SFPBRFVisualProperty *)v27 initWithFacade:thumbnail2];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setThumbnail:v29];
    }

    attribution_caveat = [facadeCopy attribution_caveat];

    if (attribution_caveat)
    {
      v31 = [_SFPBRFTextProperty alloc];
      attribution_caveat2 = [facadeCopy attribution_caveat];
      v33 = [(_SFPBRFTextProperty *)v31 initWithFacade:attribution_caveat2];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setAttribution_caveat:v33];
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemExpandableCardSection)initWithDictionary:(id)dictionary
{
  v42 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v40.receiver = self;
  v40.super_class = _SFPBRFSummaryItemExpandableCardSection;
  v5 = [(_SFPBRFSummaryItemExpandableCardSection *)&v40 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setText_1:v8];

      v6 = v7;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v9];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setText_2:v11];

      v9 = v10;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"attribution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      v14 = [[_SFPBRFSummaryItemAttribution alloc] initWithDictionary:v12];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setAttribution:v14];

      v12 = v13;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"attributionIgnoresExpansion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFSummaryItemExpandableCardSection setAttribution_ignores_expansion:](v5, "setAttribution_ignores_expansion:", [v15 BOOLValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"expandingComponentContent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v15;
      v33 = v12;
      v34 = v9;
      v35 = v6;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v37;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v37 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v36 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [[_SFPBRFSummaryItemExpandableContent alloc] initWithDictionary:v22];
              [(_SFPBRFSummaryItemExpandableCardSection *)v5 addExpanding_component_content:v23];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v19);
      }

      v6 = v35;
      v15 = v32;
      v12 = v33;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:{@"thumbnail", v32, v33, v34, v35, v36}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v24];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setThumbnail:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"attributionCaveat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v15;
      v28 = [[_SFPBRFTextProperty alloc] initWithDictionary:v26];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setAttribution_caveat:v28];

      v15 = v27;
    }

    v29 = v5;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemExpandableCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemExpandableCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSummaryItemExpandableCardSection *)self dictionaryRepresentation];
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
  v35 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_attribution)
  {
    attribution = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution];
    dictionaryRepresentation = [attribution dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"attribution"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"attribution"];
    }
  }

  if (self->_attribution_caveat)
  {
    attribution_caveat = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution_caveat];
    dictionaryRepresentation2 = [attribution_caveat dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"attributionCaveat"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"attributionCaveat"];
    }
  }

  if (self->_attribution_ignores_expansion)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFSummaryItemExpandableCardSection attribution_ignores_expansion](self, "attribution_ignores_expansion")}];
    [dictionary setObject:v10 forKeyedSubscript:@"attributionIgnoresExpansion"];
  }

  if ([(NSArray *)self->_expanding_component_contents count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = self->_expanding_component_contents;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation3 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
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

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array forKeyedSubscript:@"expandingComponentContent"];
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
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

  if (self->_text_2)
  {
    text2 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
    dictionaryRepresentation5 = [text2 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"text2"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"text2"];
    }
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBRFSummaryItemExpandableCardSection *)self thumbnail];
    dictionaryRepresentation6 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"thumbnail"];
    }
  }

  v28 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash];
  v5 = [(_SFPBRFSummaryItemAttribution *)self->_attribution hash];
  if (self->_attribution_ignores_expansion)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(NSArray *)self->_expanding_component_contents hash];
  v8 = [(_SFPBRFVisualProperty *)self->_thumbnail hash];
  return v7 ^ v8 ^ [(_SFPBRFTextProperty *)self->_attribution_caveat hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  text = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_32;
  }

  text3 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_32;
  }

  text6 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
  if (text6)
  {
    v13 = text6;
    text7 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
    text8 = [equalCopy text];
    v16 = [text7 isEqual:text8];

    if (!v16)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution];
  text2 = [equalCopy attribution];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_32;
  }

  attribution = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution];
  if (attribution)
  {
    v18 = attribution;
    attribution2 = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution];
    attribution3 = [equalCopy attribution];
    v21 = [attribution2 isEqual:attribution3];

    if (!v21)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  attribution_ignores_expansion = self->_attribution_ignores_expansion;
  if (attribution_ignores_expansion != [equalCopy attribution_ignores_expansion])
  {
    goto LABEL_33;
  }

  text = [(_SFPBRFSummaryItemExpandableCardSection *)self expanding_component_contents];
  text2 = [equalCopy expanding_component_contents];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_32;
  }

  expanding_component_contents = [(_SFPBRFSummaryItemExpandableCardSection *)self expanding_component_contents];
  if (expanding_component_contents)
  {
    v24 = expanding_component_contents;
    expanding_component_contents2 = [(_SFPBRFSummaryItemExpandableCardSection *)self expanding_component_contents];
    expanding_component_contents3 = [equalCopy expanding_component_contents];
    v27 = [expanding_component_contents2 isEqual:expanding_component_contents3];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemExpandableCardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_32;
  }

  thumbnail = [(_SFPBRFSummaryItemExpandableCardSection *)self thumbnail];
  if (thumbnail)
  {
    v29 = thumbnail;
    thumbnail2 = [(_SFPBRFSummaryItemExpandableCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v32 = [thumbnail2 isEqual:thumbnail3];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution_caveat];
  text2 = [equalCopy attribution_caveat];
  if ((text != 0) == (text2 == 0))
  {
LABEL_32:

    goto LABEL_33;
  }

  attribution_caveat = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution_caveat];
  if (!attribution_caveat)
  {

LABEL_36:
    v38 = 1;
    goto LABEL_34;
  }

  v34 = attribution_caveat;
  attribution_caveat2 = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution_caveat];
  attribution_caveat3 = [equalCopy attribution_caveat];
  v37 = [attribution_caveat2 isEqual:attribution_caveat3];

  if (v37)
  {
    goto LABEL_36;
  }

LABEL_33:
  v38 = 0;
LABEL_34:

  return v38;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  text = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  attribution = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution];
  if (attribution)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFSummaryItemExpandableCardSection *)self attribution_ignores_expansion])
  {
    PBDataWriterWriteBOOLField();
  }

  expanding_component_contents = [(_SFPBRFSummaryItemExpandableCardSection *)self expanding_component_contents];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [expanding_component_contents countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(expanding_component_contents);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [expanding_component_contents countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  thumbnail = [(_SFPBRFSummaryItemExpandableCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  attribution_caveat = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution_caveat];
  if (attribution_caveat)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addExpanding_component_content:(id)expanding_component_content
{
  expanding_component_contentCopy = expanding_component_content;
  expanding_component_contents = self->_expanding_component_contents;
  v8 = expanding_component_contentCopy;
  if (!expanding_component_contents)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_expanding_component_contents;
    self->_expanding_component_contents = array;

    expanding_component_contentCopy = v8;
    expanding_component_contents = self->_expanding_component_contents;
  }

  [(NSArray *)expanding_component_contents addObject:expanding_component_contentCopy];
}

- (void)setExpanding_component_content:(id)expanding_component_content
{
  v4 = [expanding_component_content copy];
  expanding_component_contents = self->_expanding_component_contents;
  self->_expanding_component_contents = v4;

  MEMORY[0x1EEE66BB8]();
}

@end