@interface _SFPBUserReportRequest
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBUserReportRequest)initWithDictionary:(id)dictionary;
- (_SFPBUserReportRequest)initWithFacade:(id)facade;
- (_SFPBUserReportRequest)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addUserReportOptions:(id)options;
- (void)setAffordanceText:(id)text;
- (void)setAttachmentSectionTitle:(id)title;
- (void)setDisclaimerText:(id)text;
- (void)setDismissText:(id)text;
- (void)setReportOptionsSectionTitle:(id)title;
- (void)setTitle:(id)title;
- (void)setUserReportOptions:(id)options;
- (void)writeTo:(id)to;
@end

@implementation _SFPBUserReportRequest

- (_SFPBUserReportRequest)initWithFacade:(id)facade
{
  v38 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBUserReportRequest *)self init];
  if (v5)
  {
    affordanceText = [facadeCopy affordanceText];

    if (affordanceText)
    {
      affordanceText2 = [facadeCopy affordanceText];
      [(_SFPBUserReportRequest *)v5 setAffordanceText:affordanceText2];
    }

    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBUserReportRequest *)v5 setTitle:title2];
    }

    dismissText = [facadeCopy dismissText];

    if (dismissText)
    {
      dismissText2 = [facadeCopy dismissText];
      [(_SFPBUserReportRequest *)v5 setDismissText:dismissText2];
    }

    userReportOptions = [facadeCopy userReportOptions];
    if (userReportOptions)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v13 = 0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    userReportOptions2 = [facadeCopy userReportOptions];
    v15 = [userReportOptions2 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(userReportOptions2);
          }

          v19 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v33 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [userReportOptions2 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v16);
    }

    [(_SFPBUserReportRequest *)v5 setUserReportOptions:v13];
    if ([facadeCopy hasReportType])
    {
      -[_SFPBUserReportRequest setReportType:](v5, "setReportType:", [facadeCopy reportType]);
    }

    reportOptionsSectionTitle = [facadeCopy reportOptionsSectionTitle];

    if (reportOptionsSectionTitle)
    {
      reportOptionsSectionTitle2 = [facadeCopy reportOptionsSectionTitle];
      [(_SFPBUserReportRequest *)v5 setReportOptionsSectionTitle:reportOptionsSectionTitle2];
    }

    disclaimerText = [facadeCopy disclaimerText];

    if (disclaimerText)
    {
      disclaimerText2 = [facadeCopy disclaimerText];
      [(_SFPBUserReportRequest *)v5 setDisclaimerText:disclaimerText2];
    }

    disclaimerLearnMorePunchout = [facadeCopy disclaimerLearnMorePunchout];

    if (disclaimerLearnMorePunchout)
    {
      v25 = [_SFPBPunchout alloc];
      disclaimerLearnMorePunchout2 = [facadeCopy disclaimerLearnMorePunchout];
      v27 = [(_SFPBPunchout *)v25 initWithFacade:disclaimerLearnMorePunchout2];
      [(_SFPBUserReportRequest *)v5 setDisclaimerLearnMorePunchout:v27];
    }

    attachmentSectionTitle = [facadeCopy attachmentSectionTitle];

    if (attachmentSectionTitle)
    {
      attachmentSectionTitle2 = [facadeCopy attachmentSectionTitle];
      [(_SFPBUserReportRequest *)v5 setAttachmentSectionTitle:attachmentSectionTitle2];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBUserReportRequest)initWithDictionary:(id)dictionary
{
  v41 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v39.receiver = self;
  v39.super_class = _SFPBUserReportRequest;
  v5 = [(_SFPBUserReportRequest *)&v39 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"affordanceText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBUserReportRequest *)v5 setAffordanceText:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBUserReportRequest *)v5 setTitle:v9];
    }

    v34 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"dismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBUserReportRequest *)v5 setDismissText:v11];
    }

    v33 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"userReportOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v6;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v36;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v36 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v35 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[_SFPBPunchout alloc] initWithDictionary:v18];
              [(_SFPBUserReportRequest *)v5 addUserReportOptions:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v15);
      }

      v6 = v32;
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"reportType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBUserReportRequest setReportType:](v5, "setReportType:", [v20 intValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"reportOptionsSectionTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBUserReportRequest *)v5 setReportOptionsSectionTitle:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"disclaimerText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      [(_SFPBUserReportRequest *)v5 setDisclaimerText:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"disclaimerLearnMorePunchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBPunchout alloc] initWithDictionary:v25];
      [(_SFPBUserReportRequest *)v5 setDisclaimerLearnMorePunchout:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"attachmentSectionTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [v27 copy];
      [(_SFPBUserReportRequest *)v5 setAttachmentSectionTitle:v28];
    }

    v29 = v5;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBUserReportRequest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBUserReportRequest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBUserReportRequest *)self dictionaryRepresentation];
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
  v36 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_affordanceText)
  {
    affordanceText = [(_SFPBUserReportRequest *)self affordanceText];
    v5 = [affordanceText copy];
    [dictionary setObject:v5 forKeyedSubscript:@"affordanceText"];
  }

  if (self->_attachmentSectionTitle)
  {
    attachmentSectionTitle = [(_SFPBUserReportRequest *)self attachmentSectionTitle];
    v7 = [attachmentSectionTitle copy];
    [dictionary setObject:v7 forKeyedSubscript:@"attachmentSectionTitle"];
  }

  if (self->_disclaimerLearnMorePunchout)
  {
    disclaimerLearnMorePunchout = [(_SFPBUserReportRequest *)self disclaimerLearnMorePunchout];
    dictionaryRepresentation = [disclaimerLearnMorePunchout dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"disclaimerLearnMorePunchout"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"disclaimerLearnMorePunchout"];
    }
  }

  if (self->_disclaimerText)
  {
    disclaimerText = [(_SFPBUserReportRequest *)self disclaimerText];
    v12 = [disclaimerText copy];
    [dictionary setObject:v12 forKeyedSubscript:@"disclaimerText"];
  }

  if (self->_dismissText)
  {
    dismissText = [(_SFPBUserReportRequest *)self dismissText];
    v14 = [dismissText copy];
    [dictionary setObject:v14 forKeyedSubscript:@"dismissText"];
  }

  if (self->_reportOptionsSectionTitle)
  {
    reportOptionsSectionTitle = [(_SFPBUserReportRequest *)self reportOptionsSectionTitle];
    v16 = [reportOptionsSectionTitle copy];
    [dictionary setObject:v16 forKeyedSubscript:@"reportOptionsSectionTitle"];
  }

  if (self->_reportType)
  {
    reportType = [(_SFPBUserReportRequest *)self reportType];
    if (reportType >= 4)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", reportType];
    }

    else
    {
      v18 = off_1E7ACE560[reportType];
    }

    [dictionary setObject:v18 forKeyedSubscript:@"reportType"];
  }

  if (self->_title)
  {
    title = [(_SFPBUserReportRequest *)self title];
    v20 = [title copy];
    [dictionary setObject:v20 forKeyedSubscript:@"title"];
  }

  if ([(NSArray *)self->_userReportOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = self->_userReportOptions;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation2 = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
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

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v24);
    }

    [dictionary setObject:array forKeyedSubscript:@"userReportOptions"];
  }

  v29 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_affordanceText hash];
  v4 = [(NSString *)self->_title hash];
  v5 = [(NSString *)self->_dismissText hash];
  v6 = [(NSArray *)self->_userReportOptions hash];
  v7 = 2654435761 * self->_reportType;
  v8 = v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_reportOptionsSectionTitle hash];
  v9 = v8 ^ [(NSString *)self->_disclaimerText hash]^ v7;
  v10 = [(_SFPBPunchout *)self->_disclaimerLearnMorePunchout hash];
  return v9 ^ v10 ^ [(NSString *)self->_attachmentSectionTitle hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  affordanceText = [(_SFPBUserReportRequest *)self affordanceText];
  affordanceText2 = [equalCopy affordanceText];
  if ((affordanceText != 0) == (affordanceText2 == 0))
  {
    goto LABEL_42;
  }

  affordanceText3 = [(_SFPBUserReportRequest *)self affordanceText];
  if (affordanceText3)
  {
    v8 = affordanceText3;
    affordanceText4 = [(_SFPBUserReportRequest *)self affordanceText];
    affordanceText5 = [equalCopy affordanceText];
    v11 = [affordanceText4 isEqual:affordanceText5];

    if (!v11)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  affordanceText = [(_SFPBUserReportRequest *)self title];
  affordanceText2 = [equalCopy title];
  if ((affordanceText != 0) == (affordanceText2 == 0))
  {
    goto LABEL_42;
  }

  title = [(_SFPBUserReportRequest *)self title];
  if (title)
  {
    v13 = title;
    title2 = [(_SFPBUserReportRequest *)self title];
    title3 = [equalCopy title];
    v16 = [title2 isEqual:title3];

    if (!v16)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  affordanceText = [(_SFPBUserReportRequest *)self dismissText];
  affordanceText2 = [equalCopy dismissText];
  if ((affordanceText != 0) == (affordanceText2 == 0))
  {
    goto LABEL_42;
  }

  dismissText = [(_SFPBUserReportRequest *)self dismissText];
  if (dismissText)
  {
    v18 = dismissText;
    dismissText2 = [(_SFPBUserReportRequest *)self dismissText];
    dismissText3 = [equalCopy dismissText];
    v21 = [dismissText2 isEqual:dismissText3];

    if (!v21)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  affordanceText = [(_SFPBUserReportRequest *)self userReportOptions];
  affordanceText2 = [equalCopy userReportOptions];
  if ((affordanceText != 0) == (affordanceText2 == 0))
  {
    goto LABEL_42;
  }

  userReportOptions = [(_SFPBUserReportRequest *)self userReportOptions];
  if (userReportOptions)
  {
    v23 = userReportOptions;
    userReportOptions2 = [(_SFPBUserReportRequest *)self userReportOptions];
    userReportOptions3 = [equalCopy userReportOptions];
    v26 = [userReportOptions2 isEqual:userReportOptions3];

    if (!v26)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  reportType = self->_reportType;
  if (reportType != [equalCopy reportType])
  {
    goto LABEL_43;
  }

  affordanceText = [(_SFPBUserReportRequest *)self reportOptionsSectionTitle];
  affordanceText2 = [equalCopy reportOptionsSectionTitle];
  if ((affordanceText != 0) == (affordanceText2 == 0))
  {
    goto LABEL_42;
  }

  reportOptionsSectionTitle = [(_SFPBUserReportRequest *)self reportOptionsSectionTitle];
  if (reportOptionsSectionTitle)
  {
    v29 = reportOptionsSectionTitle;
    reportOptionsSectionTitle2 = [(_SFPBUserReportRequest *)self reportOptionsSectionTitle];
    reportOptionsSectionTitle3 = [equalCopy reportOptionsSectionTitle];
    v32 = [reportOptionsSectionTitle2 isEqual:reportOptionsSectionTitle3];

    if (!v32)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  affordanceText = [(_SFPBUserReportRequest *)self disclaimerText];
  affordanceText2 = [equalCopy disclaimerText];
  if ((affordanceText != 0) == (affordanceText2 == 0))
  {
    goto LABEL_42;
  }

  disclaimerText = [(_SFPBUserReportRequest *)self disclaimerText];
  if (disclaimerText)
  {
    v34 = disclaimerText;
    disclaimerText2 = [(_SFPBUserReportRequest *)self disclaimerText];
    disclaimerText3 = [equalCopy disclaimerText];
    v37 = [disclaimerText2 isEqual:disclaimerText3];

    if (!v37)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  affordanceText = [(_SFPBUserReportRequest *)self disclaimerLearnMorePunchout];
  affordanceText2 = [equalCopy disclaimerLearnMorePunchout];
  if ((affordanceText != 0) == (affordanceText2 == 0))
  {
    goto LABEL_42;
  }

  disclaimerLearnMorePunchout = [(_SFPBUserReportRequest *)self disclaimerLearnMorePunchout];
  if (disclaimerLearnMorePunchout)
  {
    v39 = disclaimerLearnMorePunchout;
    disclaimerLearnMorePunchout2 = [(_SFPBUserReportRequest *)self disclaimerLearnMorePunchout];
    disclaimerLearnMorePunchout3 = [equalCopy disclaimerLearnMorePunchout];
    v42 = [disclaimerLearnMorePunchout2 isEqual:disclaimerLearnMorePunchout3];

    if (!v42)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  affordanceText = [(_SFPBUserReportRequest *)self attachmentSectionTitle];
  affordanceText2 = [equalCopy attachmentSectionTitle];
  if ((affordanceText != 0) == (affordanceText2 == 0))
  {
LABEL_42:

    goto LABEL_43;
  }

  attachmentSectionTitle = [(_SFPBUserReportRequest *)self attachmentSectionTitle];
  if (!attachmentSectionTitle)
  {

LABEL_46:
    v48 = 1;
    goto LABEL_44;
  }

  v44 = attachmentSectionTitle;
  attachmentSectionTitle2 = [(_SFPBUserReportRequest *)self attachmentSectionTitle];
  attachmentSectionTitle3 = [equalCopy attachmentSectionTitle];
  v47 = [attachmentSectionTitle2 isEqual:attachmentSectionTitle3];

  if (v47)
  {
    goto LABEL_46;
  }

LABEL_43:
  v48 = 0;
LABEL_44:

  return v48;
}

- (void)writeTo:(id)to
{
  v24 = *MEMORY[0x1E69E9840];
  toCopy = to;
  affordanceText = [(_SFPBUserReportRequest *)self affordanceText];
  if (affordanceText)
  {
    PBDataWriterWriteStringField();
  }

  title = [(_SFPBUserReportRequest *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  dismissText = [(_SFPBUserReportRequest *)self dismissText];
  if (dismissText)
  {
    PBDataWriterWriteStringField();
  }

  userReportOptions = [(_SFPBUserReportRequest *)self userReportOptions];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [userReportOptions countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(userReportOptions);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [userReportOptions countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if ([(_SFPBUserReportRequest *)self reportType])
  {
    PBDataWriterWriteInt32Field();
  }

  reportOptionsSectionTitle = [(_SFPBUserReportRequest *)self reportOptionsSectionTitle];
  if (reportOptionsSectionTitle)
  {
    PBDataWriterWriteStringField();
  }

  disclaimerText = [(_SFPBUserReportRequest *)self disclaimerText];
  if (disclaimerText)
  {
    PBDataWriterWriteStringField();
  }

  disclaimerLearnMorePunchout = [(_SFPBUserReportRequest *)self disclaimerLearnMorePunchout];
  if (disclaimerLearnMorePunchout)
  {
    PBDataWriterWriteSubmessage();
  }

  attachmentSectionTitle = [(_SFPBUserReportRequest *)self attachmentSectionTitle];
  if (attachmentSectionTitle)
  {
    PBDataWriterWriteStringField();
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setAttachmentSectionTitle:(id)title
{
  v4 = [title copy];
  attachmentSectionTitle = self->_attachmentSectionTitle;
  self->_attachmentSectionTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDisclaimerText:(id)text
{
  v4 = [text copy];
  disclaimerText = self->_disclaimerText;
  self->_disclaimerText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setReportOptionsSectionTitle:(id)title
{
  v4 = [title copy];
  reportOptionsSectionTitle = self->_reportOptionsSectionTitle;
  self->_reportOptionsSectionTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addUserReportOptions:(id)options
{
  optionsCopy = options;
  userReportOptions = self->_userReportOptions;
  v8 = optionsCopy;
  if (!userReportOptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_userReportOptions;
    self->_userReportOptions = array;

    optionsCopy = v8;
    userReportOptions = self->_userReportOptions;
  }

  [(NSArray *)userReportOptions addObject:optionsCopy];
}

- (void)setUserReportOptions:(id)options
{
  v4 = [options copy];
  userReportOptions = self->_userReportOptions;
  self->_userReportOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDismissText:(id)text
{
  v4 = [text copy];
  dismissText = self->_dismissText;
  self->_dismissText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAffordanceText:(id)text
{
  v4 = [text copy];
  affordanceText = self->_affordanceText;
  self->_affordanceText = v4;

  MEMORY[0x1EEE66BB8]();
}

@end