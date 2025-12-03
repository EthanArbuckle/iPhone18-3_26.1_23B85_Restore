@interface _SFPBMessageCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMessageCardSection)initWithDictionary:(id)dictionary;
- (_SFPBMessageCardSection)initWithFacade:(id)facade;
- (_SFPBMessageCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)options;
- (void)setMessageText:(id)text;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMessageCardSection

- (_SFPBMessageCardSection)initWithFacade:(id)facade
{
  v42 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBMessageCardSection *)self init];
  if (v5)
  {
    punchoutOptions = [facadeCopy punchoutOptions];
    if (punchoutOptions)
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
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v37 objects:v41 count:16];
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
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v37 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v10);
    }

    [(_SFPBMessageCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBMessageCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBMessageCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBMessageCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBMessageCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBMessageCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBMessageCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBMessageCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBMessageCardSection *)v5 setBackgroundColor:v23];
    }

    messageText = [facadeCopy messageText];

    if (messageText)
    {
      messageText2 = [facadeCopy messageText];
      [(_SFPBMessageCardSection *)v5 setMessageText:messageText2];
    }

    if ([facadeCopy hasMessageStatus])
    {
      -[_SFPBMessageCardSection setMessageStatus:](v5, "setMessageStatus:", [facadeCopy messageStatus]);
    }

    if ([facadeCopy hasMessageServiceType])
    {
      -[_SFPBMessageCardSection setMessageServiceType:](v5, "setMessageServiceType:", [facadeCopy messageServiceType]);
    }

    audioMessageURL = [facadeCopy audioMessageURL];

    if (audioMessageURL)
    {
      v27 = [_SFPBURL alloc];
      audioMessageURL2 = [facadeCopy audioMessageURL];
      v29 = [(_SFPBURL *)v27 initWithNSURL:audioMessageURL2];
      [(_SFPBMessageCardSection *)v5 setAudioMessageURL:v29];
    }

    messageAttachment = [facadeCopy messageAttachment];

    if (messageAttachment)
    {
      v31 = [_SFPBMessageAttachment alloc];
      messageAttachment2 = [facadeCopy messageAttachment];
      v33 = [(_SFPBMessageAttachment *)v31 initWithFacade:messageAttachment2];
      [(_SFPBMessageCardSection *)v5 setMessageAttachment:v33];
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMessageCardSection)initWithDictionary:(id)dictionary
{
  v50 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v48.receiver = self;
  v48.super_class = _SFPBMessageCardSection;
  v5 = [(_SFPBMessageCardSection *)&v48 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBMessageCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBMessageCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMessageCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMessageCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v43 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMessageCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v39 = v18;
    v42 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBMessageCardSection *)v5 setType:v22];
    }

    v41 = v14;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMessageCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v37 = v21;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBMessageCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"messageText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBMessageCardSection *)v5 setMessageText:v27];
    }

    v40 = v16;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"messageStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMessageCardSection setMessageStatus:](v5, "setMessageStatus:", [v28 intValue]);
    }

    v38 = v19;
    v29 = [dictionaryCopy objectForKeyedSubscript:@"messageServiceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMessageCardSection setMessageServiceType:](v5, "setMessageServiceType:", [v29 intValue]);
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"audioMessageURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBURL alloc] initWithDictionary:v30];
      [(_SFPBMessageCardSection *)v5 setAudioMessageURL:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"messageAttachment"];
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

- (_SFPBMessageCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMessageCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMessageCardSection *)self dictionaryRepresentation];
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
  v45 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_audioMessageURL)
  {
    audioMessageURL = [(_SFPBMessageCardSection *)self audioMessageURL];
    dictionaryRepresentation = [audioMessageURL dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"audioMessageURL"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"audioMessageURL"];
    }
  }

  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBMessageCardSection *)self backgroundColor];
    dictionaryRepresentation2 = [backgroundColor dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMessageCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v10 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMessageCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v11 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMessageCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v12 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_messageAttachment)
  {
    messageAttachment = [(_SFPBMessageCardSection *)self messageAttachment];
    dictionaryRepresentation3 = [messageAttachment dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"messageAttachment"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"messageAttachment"];
    }
  }

  if (self->_messageServiceType)
  {
    messageServiceType = [(_SFPBMessageCardSection *)self messageServiceType];
    if (messageServiceType >= 4)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", messageServiceType];
    }

    else
    {
      v17 = off_1E7ACE560[messageServiceType];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"messageServiceType"];
  }

  if (self->_messageStatus)
  {
    messageStatus = [(_SFPBMessageCardSection *)self messageStatus];
    if (messageStatus >= 4)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", messageStatus];
    }

    else
    {
      v19 = off_1E7ACE560[messageStatus];
    }

    [dictionary setObject:v19 forKeyedSubscript:@"messageStatus"];
  }

  if (self->_messageText)
  {
    messageText = [(_SFPBMessageCardSection *)self messageText];
    v21 = [messageText copy];
    [dictionary setObject:v21 forKeyedSubscript:@"messageText"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null4];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v25);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBMessageCardSection *)self punchoutPickerDismissText];
    v31 = [punchoutPickerDismissText copy];
    [dictionary setObject:v31 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBMessageCardSection *)self punchoutPickerTitle];
    v33 = [punchoutPickerTitle copy];
    [dictionary setObject:v33 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBMessageCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v35 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v35 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_type)
  {
    type = [(_SFPBMessageCardSection *)self type];
    v37 = [type copy];
    [dictionary setObject:v37 forKeyedSubscript:@"type"];
  }

  v38 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  punchoutOptions = [(_SFPBMessageCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_47;
  }

  punchoutOptions3 = [(_SFPBMessageCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBMessageCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMessageCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_47;
  }

  punchoutPickerTitle = [(_SFPBMessageCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBMessageCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMessageCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_47;
  }

  punchoutPickerDismissText = [(_SFPBMessageCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBMessageCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_48;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_48;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_48;
  }

  punchoutOptions = [(_SFPBMessageCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_47;
  }

  type = [(_SFPBMessageCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBMessageCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_48;
  }

  punchoutOptions = [(_SFPBMessageCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_47;
  }

  backgroundColor = [(_SFPBMessageCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBMessageCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMessageCardSection *)self messageText];
  punchoutOptions2 = [equalCopy messageText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_47;
  }

  messageText = [(_SFPBMessageCardSection *)self messageText];
  if (messageText)
  {
    v37 = messageText;
    messageText2 = [(_SFPBMessageCardSection *)self messageText];
    messageText3 = [equalCopy messageText];
    v40 = [messageText2 isEqual:messageText3];

    if (!v40)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  messageStatus = self->_messageStatus;
  if (messageStatus != [equalCopy messageStatus])
  {
    goto LABEL_48;
  }

  messageServiceType = self->_messageServiceType;
  if (messageServiceType != [equalCopy messageServiceType])
  {
    goto LABEL_48;
  }

  punchoutOptions = [(_SFPBMessageCardSection *)self audioMessageURL];
  punchoutOptions2 = [equalCopy audioMessageURL];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_47;
  }

  audioMessageURL = [(_SFPBMessageCardSection *)self audioMessageURL];
  if (audioMessageURL)
  {
    v44 = audioMessageURL;
    audioMessageURL2 = [(_SFPBMessageCardSection *)self audioMessageURL];
    audioMessageURL3 = [equalCopy audioMessageURL];
    v47 = [audioMessageURL2 isEqual:audioMessageURL3];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMessageCardSection *)self messageAttachment];
  punchoutOptions2 = [equalCopy messageAttachment];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_47:

    goto LABEL_48;
  }

  messageAttachment = [(_SFPBMessageCardSection *)self messageAttachment];
  if (!messageAttachment)
  {

LABEL_51:
    v53 = 1;
    goto LABEL_49;
  }

  v49 = messageAttachment;
  messageAttachment2 = [(_SFPBMessageCardSection *)self messageAttachment];
  messageAttachment3 = [equalCopy messageAttachment];
  v52 = [messageAttachment2 isEqual:messageAttachment3];

  if (v52)
  {
    goto LABEL_51;
  }

LABEL_48:
  v53 = 0;
LABEL_49:

  return v53;
}

- (void)writeTo:(id)to
{
  v24 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBMessageCardSection *)self punchoutOptions];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBMessageCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBMessageCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
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

  type = [(_SFPBMessageCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMessageCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBMessageCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  messageText = [(_SFPBMessageCardSection *)self messageText];
  if (messageText)
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

  audioMessageURL = [(_SFPBMessageCardSection *)self audioMessageURL];
  if (audioMessageURL)
  {
    PBDataWriterWriteSubmessage();
  }

  messageAttachment = [(_SFPBMessageCardSection *)self messageAttachment];
  if (messageAttachment)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setMessageText:(id)text
{
  v4 = [text copy];
  messageText = self->_messageText;
  self->_messageText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setType:(id)type
{
  v4 = [type copy];
  type = self->_type;
  self->_type = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerDismissText:(id)text
{
  v4 = [text copy];
  punchoutPickerDismissText = self->_punchoutPickerDismissText;
  self->_punchoutPickerDismissText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerTitle:(id)title
{
  v4 = [title copy];
  punchoutPickerTitle = self->_punchoutPickerTitle;
  self->_punchoutPickerTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPunchoutOptions:(id)options
{
  optionsCopy = options;
  punchoutOptions = self->_punchoutOptions;
  v8 = optionsCopy;
  if (!punchoutOptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_punchoutOptions;
    self->_punchoutOptions = array;

    optionsCopy = v8;
    punchoutOptions = self->_punchoutOptions;
  }

  [(NSArray *)punchoutOptions addObject:optionsCopy];
}

- (void)setPunchoutOptions:(id)options
{
  v4 = [options copy];
  punchoutOptions = self->_punchoutOptions;
  self->_punchoutOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

@end