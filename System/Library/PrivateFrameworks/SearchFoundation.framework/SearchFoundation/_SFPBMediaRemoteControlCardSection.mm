@interface _SFPBMediaRemoteControlCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBMediaRemoteControlCardSection)initWithDictionary:(id)a3;
- (_SFPBMediaRemoteControlCardSection)initWithFacade:(id)a3;
- (_SFPBMediaRemoteControlCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)a3;
- (void)setPlaybackBundleIdentifier:(id)a3;
- (void)setPlaybackRouteUniqueIdentifier:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBMediaRemoteControlCardSection

- (_SFPBMediaRemoteControlCardSection)initWithFacade:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBMediaRemoteControlCardSection *)self init];
  if (v5)
  {
    v6 = [v4 punchoutOptions];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v31 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }

    [(_SFPBMediaRemoteControlCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBMediaRemoteControlCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBMediaRemoteControlCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBMediaRemoteControlCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBMediaRemoteControlCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBMediaRemoteControlCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBMediaRemoteControlCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 playbackRouteUniqueIdentifier];

    if (v24)
    {
      v25 = [v4 playbackRouteUniqueIdentifier];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPlaybackRouteUniqueIdentifier:v25];
    }

    if ([v4 hasPlaybackRouteUniqueIdentifierIsEncrypted])
    {
      -[_SFPBMediaRemoteControlCardSection setPlaybackRouteUniqueIdentifierIsEncrypted:](v5, "setPlaybackRouteUniqueIdentifierIsEncrypted:", [v4 playbackRouteUniqueIdentifierIsEncrypted]);
    }

    v26 = [v4 playbackBundleIdentifier];

    if (v26)
    {
      v27 = [v4 playbackBundleIdentifier];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPlaybackBundleIdentifier:v27];
    }

    v28 = v5;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMediaRemoteControlCardSection)initWithDictionary:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = _SFPBMediaRemoteControlCardSection;
  v5 = [(_SFPBMediaRemoteControlCardSection *)&v43 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v40;
        do
        {
          v11 = 0;
          do
          {
            if (*v40 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v39 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBMediaRemoteControlCardSection *)v5 addPunchoutOptions:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaRemoteControlCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaRemoteControlCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v34 = v19;
    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaRemoteControlCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v35 = v18;
    v38 = v6;
    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBMediaRemoteControlCardSection *)v5 setType:v22];
    }

    v37 = v14;
    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaRemoteControlCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v36 = v16;
    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBMediaRemoteControlCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"playbackRouteUniqueIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPlaybackRouteUniqueIdentifier:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"playbackRouteUniqueIdentifierIsEncrypted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaRemoteControlCardSection setPlaybackRouteUniqueIdentifierIsEncrypted:](v5, "setPlaybackRouteUniqueIdentifierIsEncrypted:", [v28 BOOLValue]);
    }

    v29 = [v4 objectForKeyedSubscript:@"playbackBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 copy];
      [(_SFPBMediaRemoteControlCardSection *)v5 setPlaybackBundleIdentifier:v30];
    }

    v31 = v5;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMediaRemoteControlCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBMediaRemoteControlCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBMediaRemoteControlCardSection *)self dictionaryRepresentation];
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
  v38 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBMediaRemoteControlCardSection *)self backgroundColor];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaRemoteControlCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaRemoteControlCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v8 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaRemoteControlCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v9 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_playbackBundleIdentifier)
  {
    v10 = [(_SFPBMediaRemoteControlCardSection *)self playbackBundleIdentifier];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"playbackBundleIdentifier"];
  }

  if (self->_playbackRouteUniqueIdentifier)
  {
    v12 = [(_SFPBMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifier];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"playbackRouteUniqueIdentifier"];
  }

  if (self->_playbackRouteUniqueIdentifierIsEncrypted)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMediaRemoteControlCardSection playbackRouteUniqueIdentifierIsEncrypted](self, "playbackRouteUniqueIdentifierIsEncrypted")}];
    [v3 setObject:v14 forKeyedSubscript:@"playbackRouteUniqueIdentifierIsEncrypted"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = self->_punchoutOptions;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v33 + 1) + 8 * i) dictionaryRepresentation];
          if (v21)
          {
            [v15 addObject:v21];
          }

          else
          {
            v22 = [MEMORY[0x1E695DFB0] null];
            [v15 addObject:v22];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v23 = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerDismissText];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v25 = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerTitle];
    v26 = [v25 copy];
    [v3 setObject:v26 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v27 = [(_SFPBMediaRemoteControlCardSection *)self separatorStyle];
    if (v27 >= 6)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v27];
    }

    else
    {
      v28 = off_1E7ACE580[v27];
    }

    [v3 setObject:v28 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_type)
  {
    v29 = [(_SFPBMediaRemoteControlCardSection *)self type];
    v30 = [v29 copy];
    [v3 setObject:v30 forKeyedSubscript:@"type"];
  }

  v31 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v14 = [(NSArray *)self->_punchoutOptions hash];
  v3 = [(NSString *)self->_punchoutPickerTitle hash];
  v4 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  if (self->_hasTopPadding)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v7 = 2654435761;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_type hash];
  v9 = 2654435761 * self->_separatorStyle;
  v10 = [(_SFPBColor *)self->_backgroundColor hash];
  v11 = [(NSString *)self->_playbackRouteUniqueIdentifier hash];
  if (self->_playbackRouteUniqueIdentifierIsEncrypted)
  {
    v12 = 2654435761;
  }

  else
  {
    v12 = 0;
  }

  return v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(NSString *)self->_playbackBundleIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  v5 = [(_SFPBMediaRemoteControlCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v7 = [(_SFPBMediaRemoteControlCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBMediaRemoteControlCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v12 = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v17 = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_42;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_42;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_42;
  }

  v5 = [(_SFPBMediaRemoteControlCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v25 = [(_SFPBMediaRemoteControlCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBMediaRemoteControlCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_42;
  }

  v5 = [(_SFPBMediaRemoteControlCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v31 = [(_SFPBMediaRemoteControlCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBMediaRemoteControlCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifier];
  v6 = [v4 playbackRouteUniqueIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v36 = [(_SFPBMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifier];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifier];
    v39 = [v4 playbackRouteUniqueIdentifier];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  playbackRouteUniqueIdentifierIsEncrypted = self->_playbackRouteUniqueIdentifierIsEncrypted;
  if (playbackRouteUniqueIdentifierIsEncrypted != [v4 playbackRouteUniqueIdentifierIsEncrypted])
  {
    goto LABEL_42;
  }

  v5 = [(_SFPBMediaRemoteControlCardSection *)self playbackBundleIdentifier];
  v6 = [v4 playbackBundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_41:

    goto LABEL_42;
  }

  v42 = [(_SFPBMediaRemoteControlCardSection *)self playbackBundleIdentifier];
  if (!v42)
  {

LABEL_45:
    v47 = 1;
    goto LABEL_43;
  }

  v43 = v42;
  v44 = [(_SFPBMediaRemoteControlCardSection *)self playbackBundleIdentifier];
  v45 = [v4 playbackBundleIdentifier];
  v46 = [v44 isEqual:v45];

  if (v46)
  {
    goto LABEL_45;
  }

LABEL_42:
  v47 = 0;
LABEL_43:

  return v47;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBMediaRemoteControlCardSection *)self punchoutOptions];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBMediaRemoteControlCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaRemoteControlCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMediaRemoteControlCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMediaRemoteControlCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBMediaRemoteControlCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaRemoteControlCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBMediaRemoteControlCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifier];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaRemoteControlCardSection *)self playbackRouteUniqueIdentifierIsEncrypted])
  {
    PBDataWriterWriteBOOLField();
  }

  v16 = [(_SFPBMediaRemoteControlCardSection *)self playbackBundleIdentifier];
  if (v16)
  {
    PBDataWriterWriteStringField();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setPlaybackBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  playbackBundleIdentifier = self->_playbackBundleIdentifier;
  self->_playbackBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPlaybackRouteUniqueIdentifier:(id)a3
{
  v4 = [a3 copy];
  playbackRouteUniqueIdentifier = self->_playbackRouteUniqueIdentifier;
  self->_playbackRouteUniqueIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setType:(id)a3
{
  v4 = [a3 copy];
  type = self->_type;
  self->_type = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerDismissText:(id)a3
{
  v4 = [a3 copy];
  punchoutPickerDismissText = self->_punchoutPickerDismissText;
  self->_punchoutPickerDismissText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerTitle:(id)a3
{
  v4 = [a3 copy];
  punchoutPickerTitle = self->_punchoutPickerTitle;
  self->_punchoutPickerTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPunchoutOptions:(id)a3
{
  v4 = a3;
  punchoutOptions = self->_punchoutOptions;
  v8 = v4;
  if (!punchoutOptions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_punchoutOptions;
    self->_punchoutOptions = v6;

    v4 = v8;
    punchoutOptions = self->_punchoutOptions;
  }

  [(NSArray *)punchoutOptions addObject:v4];
}

- (void)setPunchoutOptions:(id)a3
{
  v4 = [a3 copy];
  punchoutOptions = self->_punchoutOptions;
  self->_punchoutOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

@end