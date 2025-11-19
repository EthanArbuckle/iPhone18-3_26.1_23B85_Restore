@interface _SFPBRFSummaryItemExpandableCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFSummaryItemExpandableCardSection)initWithDictionary:(id)a3;
- (_SFPBRFSummaryItemExpandableCardSection)initWithFacade:(id)a3;
- (_SFPBRFSummaryItemExpandableCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addExpanding_component_content:(id)a3;
- (void)setExpanding_component_content:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFSummaryItemExpandableCardSection

- (_SFPBRFSummaryItemExpandableCardSection)initWithFacade:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFSummaryItemExpandableCardSection *)self init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [_SFPBRFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:v8];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setText_1:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [_SFPBRFTextProperty alloc];
      v12 = [v4 text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:v12];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setText_2:v13];
    }

    v14 = [v4 attribution];

    if (v14)
    {
      v15 = [_SFPBRFSummaryItemAttribution alloc];
      v16 = [v4 attribution];
      v17 = [(_SFPBRFSummaryItemAttribution *)v15 initWithFacade:v16];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setAttribution:v17];
    }

    if ([v4 hasAttribution_ignores_expansion])
    {
      -[_SFPBRFSummaryItemExpandableCardSection setAttribution_ignores_expansion:](v5, "setAttribution_ignores_expansion:", [v4 attribution_ignores_expansion]);
    }

    v18 = [v4 expanding_component_content];
    if (v18)
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
    v20 = [v4 expanding:0 component:?content];
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
    v26 = [v4 thumbnail];

    if (v26)
    {
      v27 = [_SFPBRFVisualProperty alloc];
      v28 = [v4 thumbnail];
      v29 = [(_SFPBRFVisualProperty *)v27 initWithFacade:v28];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setThumbnail:v29];
    }

    v30 = [v4 attribution_caveat];

    if (v30)
    {
      v31 = [_SFPBRFTextProperty alloc];
      v32 = [v4 attribution_caveat];
      v33 = [(_SFPBRFTextProperty *)v31 initWithFacade:v32];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setAttribution_caveat:v33];
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFSummaryItemExpandableCardSection)initWithDictionary:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v40.receiver = self;
  v40.super_class = _SFPBRFSummaryItemExpandableCardSection;
  v5 = [(_SFPBRFSummaryItemExpandableCardSection *)&v40 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setText_1:v8];

      v6 = v7;
    }

    v9 = [v4 objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v9];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setText_2:v11];

      v9 = v10;
    }

    v12 = [v4 objectForKeyedSubscript:@"attribution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      v14 = [[_SFPBRFSummaryItemAttribution alloc] initWithDictionary:v12];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setAttribution:v14];

      v12 = v13;
    }

    v15 = [v4 objectForKeyedSubscript:@"attributionIgnoresExpansion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFSummaryItemExpandableCardSection setAttribution_ignores_expansion:](v5, "setAttribution_ignores_expansion:", [v15 BOOLValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"expandingComponentContent"];
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

    v24 = [v4 objectForKeyedSubscript:{@"thumbnail", v32, v33, v34, v35, v36}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v24];
      [(_SFPBRFSummaryItemExpandableCardSection *)v5 setThumbnail:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"attributionCaveat"];
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

- (_SFPBRFSummaryItemExpandableCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemExpandableCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFSummaryItemExpandableCardSection *)self dictionaryRepresentation];
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
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_attribution)
  {
    v4 = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"attribution"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"attribution"];
    }
  }

  if (self->_attribution_caveat)
  {
    v7 = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution_caveat];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"attributionCaveat"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"attributionCaveat"];
    }
  }

  if (self->_attribution_ignores_expansion)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFSummaryItemExpandableCardSection attribution_ignores_expansion](self, "attribution_ignores_expansion")}];
    [v3 setObject:v10 forKeyedSubscript:@"attributionIgnoresExpansion"];
  }

  if ([(NSArray *)self->_expanding_component_contents count])
  {
    v11 = [MEMORY[0x1E695DF70] array];
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

          v17 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
          if (v17)
          {
            [v11 addObject:v17];
          }

          else
          {
            v18 = [MEMORY[0x1E695DFB0] null];
            [v11 addObject:v18];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"expandingComponentContent"];
  }

  if (self->_text_1)
  {
    v19 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"text1"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"text1"];
    }
  }

  if (self->_text_2)
  {
    v22 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"text2"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"text2"];
    }
  }

  if (self->_thumbnail)
  {
    v25 = [(_SFPBRFSummaryItemExpandableCardSection *)self thumbnail];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"thumbnail"];
    }
  }

  v28 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  v5 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v7 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
    v10 = [v4 text];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
  v6 = [v4 text];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v12 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
    v15 = [v4 text];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution];
  v6 = [v4 attribution];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v17 = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution];
    v20 = [v4 attribution];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  attribution_ignores_expansion = self->_attribution_ignores_expansion;
  if (attribution_ignores_expansion != [v4 attribution_ignores_expansion])
  {
    goto LABEL_33;
  }

  v5 = [(_SFPBRFSummaryItemExpandableCardSection *)self expanding_component_contents];
  v6 = [v4 expanding_component_contents];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v23 = [(_SFPBRFSummaryItemExpandableCardSection *)self expanding_component_contents];
  if (v23)
  {
    v24 = v23;
    v25 = [(_SFPBRFSummaryItemExpandableCardSection *)self expanding_component_contents];
    v26 = [v4 expanding_component_contents];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemExpandableCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v28 = [(_SFPBRFSummaryItemExpandableCardSection *)self thumbnail];
  if (v28)
  {
    v29 = v28;
    v30 = [(_SFPBRFSummaryItemExpandableCardSection *)self thumbnail];
    v31 = [v4 thumbnail];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution_caveat];
  v6 = [v4 attribution_caveat];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_32:

    goto LABEL_33;
  }

  v33 = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution_caveat];
  if (!v33)
  {

LABEL_36:
    v38 = 1;
    goto LABEL_34;
  }

  v34 = v33;
  v35 = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution_caveat];
  v36 = [v4 attribution_caveat];
  v37 = [v35 isEqual:v36];

  if (v37)
  {
    goto LABEL_36;
  }

LABEL_33:
  v38 = 0;
LABEL_34:

  return v38;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBRFSummaryItemExpandableCardSection *)self text];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFSummaryItemExpandableCardSection *)self attribution_ignores_expansion])
  {
    PBDataWriterWriteBOOLField();
  }

  v8 = [(_SFPBRFSummaryItemExpandableCardSection *)self expanding_component_contents];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [(_SFPBRFSummaryItemExpandableCardSection *)self thumbnail];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBRFSummaryItemExpandableCardSection *)self attribution_caveat];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addExpanding_component_content:(id)a3
{
  v4 = a3;
  expanding_component_contents = self->_expanding_component_contents;
  v8 = v4;
  if (!expanding_component_contents)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_expanding_component_contents;
    self->_expanding_component_contents = v6;

    v4 = v8;
    expanding_component_contents = self->_expanding_component_contents;
  }

  [(NSArray *)expanding_component_contents addObject:v4];
}

- (void)setExpanding_component_content:(id)a3
{
  v4 = [a3 copy];
  expanding_component_contents = self->_expanding_component_contents;
  self->_expanding_component_contents = v4;

  MEMORY[0x1EEE66BB8]();
}

@end