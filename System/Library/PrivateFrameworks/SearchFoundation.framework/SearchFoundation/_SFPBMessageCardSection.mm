@interface _SFPBMessageCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBMessageCardSection)initWithDictionary:(id)a3;
- (_SFPBMessageCardSection)initWithFacade:(id)a3;
- (_SFPBMessageCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)a3;
- (void)setMessageText:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBMessageCardSection

- (_SFPBMessageCardSection)initWithFacade:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBMessageCardSection *)self init];
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

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v37 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v10);
    }

    [(_SFPBMessageCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBMessageCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBMessageCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBMessageCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBMessageCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBMessageCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBMessageCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBMessageCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBMessageCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 messageText];

    if (v24)
    {
      v25 = [v4 messageText];
      [(_SFPBMessageCardSection *)v5 setMessageText:v25];
    }

    if ([v4 hasMessageStatus])
    {
      -[_SFPBMessageCardSection setMessageStatus:](v5, "setMessageStatus:", [v4 messageStatus]);
    }

    if ([v4 hasMessageServiceType])
    {
      -[_SFPBMessageCardSection setMessageServiceType:](v5, "setMessageServiceType:", [v4 messageServiceType]);
    }

    v26 = [v4 audioMessageURL];

    if (v26)
    {
      v27 = [_SFPBURL alloc];
      v28 = [v4 audioMessageURL];
      v29 = [(_SFPBURL *)v27 initWithNSURL:v28];
      [(_SFPBMessageCardSection *)v5 setAudioMessageURL:v29];
    }

    v30 = [v4 messageAttachment];

    if (v30)
    {
      v31 = [_SFPBMessageAttachment alloc];
      v32 = [v4 messageAttachment];
      v33 = [(_SFPBMessageAttachment *)v31 initWithFacade:v32];
      [(_SFPBMessageCardSection *)v5 setMessageAttachment:v33];
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMessageCardSection)initWithDictionary:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v48.receiver = self;
  v48.super_class = _SFPBMessageCardSection;
  v5 = [(_SFPBMessageCardSection *)&v48 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v45;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v45 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v44 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBMessageCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBMessageCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBMessageCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMessageCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMessageCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v43 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMessageCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v39 = v18;
    v42 = v6;
    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBMessageCardSection *)v5 setType:v22];
    }

    v41 = v14;
    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMessageCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v37 = v21;
    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBMessageCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"messageText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBMessageCardSection *)v5 setMessageText:v27];
    }

    v40 = v16;
    v28 = [v4 objectForKeyedSubscript:@"messageStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMessageCardSection setMessageStatus:](v5, "setMessageStatus:", [v28 intValue]);
    }

    v38 = v19;
    v29 = [v4 objectForKeyedSubscript:@"messageServiceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMessageCardSection setMessageServiceType:](v5, "setMessageServiceType:", [v29 intValue]);
    }

    v30 = [v4 objectForKeyedSubscript:@"audioMessageURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBURL alloc] initWithDictionary:v30];
      [(_SFPBMessageCardSection *)v5 setAudioMessageURL:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"messageAttachment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBMessageAttachment alloc] initWithDictionary:v32];
      [(_SFPBMessageCardSection *)v5 setMessageAttachment:v33];
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMessageCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBMessageCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBMessageCardSection *)self dictionaryRepresentation];
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
  v45 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_audioMessageURL)
  {
    v4 = [(_SFPBMessageCardSection *)self audioMessageURL];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"audioMessageURL"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"audioMessageURL"];
    }
  }

  if (self->_backgroundColor)
  {
    v7 = [(_SFPBMessageCardSection *)self backgroundColor];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMessageCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v10 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMessageCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v11 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMessageCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v12 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_messageAttachment)
  {
    v13 = [(_SFPBMessageCardSection *)self messageAttachment];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"messageAttachment"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"messageAttachment"];
    }
  }

  if (self->_messageServiceType)
  {
    v16 = [(_SFPBMessageCardSection *)self messageServiceType];
    if (v16 >= 4)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v16];
    }

    else
    {
      v17 = off_1E7ACE560[v16];
    }

    [v3 setObject:v17 forKeyedSubscript:@"messageServiceType"];
  }

  if (self->_messageStatus)
  {
    v18 = [(_SFPBMessageCardSection *)self messageStatus];
    if (v18 >= 4)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v18];
    }

    else
    {
      v19 = off_1E7ACE560[v18];
    }

    [v3 setObject:v19 forKeyedSubscript:@"messageStatus"];
  }

  if (self->_messageText)
  {
    v20 = [(_SFPBMessageCardSection *)self messageText];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"messageText"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v22 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v23 = self->_punchoutOptions;
    v24 = [(NSArray *)v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v41;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          if (v28)
          {
            [v22 addObject:v28];
          }

          else
          {
            v29 = [MEMORY[0x1E695DFB0] null];
            [v22 addObject:v29];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v30 = [(_SFPBMessageCardSection *)self punchoutPickerDismissText];
    v31 = [v30 copy];
    [v3 setObject:v31 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v32 = [(_SFPBMessageCardSection *)self punchoutPickerTitle];
    v33 = [v32 copy];
    [v3 setObject:v33 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v34 = [(_SFPBMessageCardSection *)self separatorStyle];
    if (v34 >= 6)
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v34];
    }

    else
    {
      v35 = off_1E7ACE580[v34];
    }

    [v3 setObject:v35 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_type)
  {
    v36 = [(_SFPBMessageCardSection *)self type];
    v37 = [v36 copy];
    [v3 setObject:v37 forKeyedSubscript:@"type"];
  }

  v38 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v16 = [(NSArray *)self->_punchoutOptions hash];
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
  v11 = [(NSString *)self->_messageText hash];
  v12 = 2654435761 * self->_messageServiceType;
  v13 = v3 ^ v16 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ (2654435761 * self->_messageStatus);
  v14 = v12 ^ [(_SFPBURL *)self->_audioMessageURL hash];
  return v13 ^ v14 ^ [(_SFPBMessageAttachment *)self->_messageAttachment hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  v5 = [(_SFPBMessageCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v7 = [(_SFPBMessageCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBMessageCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMessageCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v12 = [(_SFPBMessageCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBMessageCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMessageCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v17 = [(_SFPBMessageCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBMessageCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_48;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_48;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_48;
  }

  v5 = [(_SFPBMessageCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v25 = [(_SFPBMessageCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBMessageCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_48;
  }

  v5 = [(_SFPBMessageCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v31 = [(_SFPBMessageCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBMessageCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMessageCardSection *)self messageText];
  v6 = [v4 messageText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v36 = [(_SFPBMessageCardSection *)self messageText];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBMessageCardSection *)self messageText];
    v39 = [v4 messageText];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  messageStatus = self->_messageStatus;
  if (messageStatus != [v4 messageStatus])
  {
    goto LABEL_48;
  }

  messageServiceType = self->_messageServiceType;
  if (messageServiceType != [v4 messageServiceType])
  {
    goto LABEL_48;
  }

  v5 = [(_SFPBMessageCardSection *)self audioMessageURL];
  v6 = [v4 audioMessageURL];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_47;
  }

  v43 = [(_SFPBMessageCardSection *)self audioMessageURL];
  if (v43)
  {
    v44 = v43;
    v45 = [(_SFPBMessageCardSection *)self audioMessageURL];
    v46 = [v4 audioMessageURL];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMessageCardSection *)self messageAttachment];
  v6 = [v4 messageAttachment];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_47:

    goto LABEL_48;
  }

  v48 = [(_SFPBMessageCardSection *)self messageAttachment];
  if (!v48)
  {

LABEL_51:
    v53 = 1;
    goto LABEL_49;
  }

  v49 = v48;
  v50 = [(_SFPBMessageCardSection *)self messageAttachment];
  v51 = [v4 messageAttachment];
  v52 = [v50 isEqual:v51];

  if (v52)
  {
    goto LABEL_51;
  }

LABEL_48:
  v53 = 0;
LABEL_49:

  return v53;
}

- (void)writeTo:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBMessageCardSection *)self punchoutOptions];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBMessageCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBMessageCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMessageCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMessageCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMessageCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBMessageCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMessageCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBMessageCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBMessageCardSection *)self messageText];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMessageCardSection *)self messageStatus])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBMessageCardSection *)self messageServiceType])
  {
    PBDataWriterWriteInt32Field();
  }

  v16 = [(_SFPBMessageCardSection *)self audioMessageURL];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBMessageCardSection *)self messageAttachment];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setMessageText:(id)a3
{
  v4 = [a3 copy];
  messageText = self->_messageText;
  self->_messageText = v4;

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