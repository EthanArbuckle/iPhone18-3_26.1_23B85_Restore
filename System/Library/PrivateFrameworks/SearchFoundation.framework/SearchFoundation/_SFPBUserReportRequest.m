@interface _SFPBUserReportRequest
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBUserReportRequest)initWithDictionary:(id)a3;
- (_SFPBUserReportRequest)initWithFacade:(id)a3;
- (_SFPBUserReportRequest)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addUserReportOptions:(id)a3;
- (void)setAffordanceText:(id)a3;
- (void)setAttachmentSectionTitle:(id)a3;
- (void)setDisclaimerText:(id)a3;
- (void)setDismissText:(id)a3;
- (void)setReportOptionsSectionTitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUserReportOptions:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBUserReportRequest

- (_SFPBUserReportRequest)initWithFacade:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBUserReportRequest *)self init];
  if (v5)
  {
    v6 = [v4 affordanceText];

    if (v6)
    {
      v7 = [v4 affordanceText];
      [(_SFPBUserReportRequest *)v5 setAffordanceText:v7];
    }

    v8 = [v4 title];

    if (v8)
    {
      v9 = [v4 title];
      [(_SFPBUserReportRequest *)v5 setTitle:v9];
    }

    v10 = [v4 dismissText];

    if (v10)
    {
      v11 = [v4 dismissText];
      [(_SFPBUserReportRequest *)v5 setDismissText:v11];
    }

    v12 = [v4 userReportOptions];
    if (v12)
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
    v14 = [v4 userReportOptions];
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v33 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v16);
    }

    [(_SFPBUserReportRequest *)v5 setUserReportOptions:v13];
    if ([v4 hasReportType])
    {
      -[_SFPBUserReportRequest setReportType:](v5, "setReportType:", [v4 reportType]);
    }

    v20 = [v4 reportOptionsSectionTitle];

    if (v20)
    {
      v21 = [v4 reportOptionsSectionTitle];
      [(_SFPBUserReportRequest *)v5 setReportOptionsSectionTitle:v21];
    }

    v22 = [v4 disclaimerText];

    if (v22)
    {
      v23 = [v4 disclaimerText];
      [(_SFPBUserReportRequest *)v5 setDisclaimerText:v23];
    }

    v24 = [v4 disclaimerLearnMorePunchout];

    if (v24)
    {
      v25 = [_SFPBPunchout alloc];
      v26 = [v4 disclaimerLearnMorePunchout];
      v27 = [(_SFPBPunchout *)v25 initWithFacade:v26];
      [(_SFPBUserReportRequest *)v5 setDisclaimerLearnMorePunchout:v27];
    }

    v28 = [v4 attachmentSectionTitle];

    if (v28)
    {
      v29 = [v4 attachmentSectionTitle];
      [(_SFPBUserReportRequest *)v5 setAttachmentSectionTitle:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBUserReportRequest)initWithDictionary:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = _SFPBUserReportRequest;
  v5 = [(_SFPBUserReportRequest *)&v39 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"affordanceText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBUserReportRequest *)v5 setAffordanceText:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBUserReportRequest *)v5 setTitle:v9];
    }

    v34 = v8;
    v10 = [v4 objectForKeyedSubscript:@"dismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBUserReportRequest *)v5 setDismissText:v11];
    }

    v33 = v10;
    v12 = [v4 objectForKeyedSubscript:@"userReportOptions"];
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

    v20 = [v4 objectForKeyedSubscript:@"reportType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBUserReportRequest setReportType:](v5, "setReportType:", [v20 intValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"reportOptionsSectionTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBUserReportRequest *)v5 setReportOptionsSectionTitle:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"disclaimerText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      [(_SFPBUserReportRequest *)v5 setDisclaimerText:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"disclaimerLearnMorePunchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBPunchout alloc] initWithDictionary:v25];
      [(_SFPBUserReportRequest *)v5 setDisclaimerLearnMorePunchout:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"attachmentSectionTitle"];
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

- (_SFPBUserReportRequest)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBUserReportRequest *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBUserReportRequest *)self dictionaryRepresentation];
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
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_affordanceText)
  {
    v4 = [(_SFPBUserReportRequest *)self affordanceText];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"affordanceText"];
  }

  if (self->_attachmentSectionTitle)
  {
    v6 = [(_SFPBUserReportRequest *)self attachmentSectionTitle];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"attachmentSectionTitle"];
  }

  if (self->_disclaimerLearnMorePunchout)
  {
    v8 = [(_SFPBUserReportRequest *)self disclaimerLearnMorePunchout];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"disclaimerLearnMorePunchout"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"disclaimerLearnMorePunchout"];
    }
  }

  if (self->_disclaimerText)
  {
    v11 = [(_SFPBUserReportRequest *)self disclaimerText];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"disclaimerText"];
  }

  if (self->_dismissText)
  {
    v13 = [(_SFPBUserReportRequest *)self dismissText];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"dismissText"];
  }

  if (self->_reportOptionsSectionTitle)
  {
    v15 = [(_SFPBUserReportRequest *)self reportOptionsSectionTitle];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"reportOptionsSectionTitle"];
  }

  if (self->_reportType)
  {
    v17 = [(_SFPBUserReportRequest *)self reportType];
    if (v17 >= 4)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v17];
    }

    else
    {
      v18 = off_1E7ACE560[v17];
    }

    [v3 setObject:v18 forKeyedSubscript:@"reportType"];
  }

  if (self->_title)
  {
    v19 = [(_SFPBUserReportRequest *)self title];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"title"];
  }

  if ([(NSArray *)self->_userReportOptions count])
  {
    v21 = [MEMORY[0x1E695DF70] array];
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

          v27 = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
          if (v27)
          {
            [v21 addObject:v27];
          }

          else
          {
            v28 = [MEMORY[0x1E695DFB0] null];
            [v21 addObject:v28];
          }
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKeyedSubscript:@"userReportOptions"];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  v5 = [(_SFPBUserReportRequest *)self affordanceText];
  v6 = [v4 affordanceText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_42;
  }

  v7 = [(_SFPBUserReportRequest *)self affordanceText];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBUserReportRequest *)self affordanceText];
    v10 = [v4 affordanceText];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v5 = [(_SFPBUserReportRequest *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_42;
  }

  v12 = [(_SFPBUserReportRequest *)self title];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBUserReportRequest *)self title];
    v15 = [v4 title];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v5 = [(_SFPBUserReportRequest *)self dismissText];
  v6 = [v4 dismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_42;
  }

  v17 = [(_SFPBUserReportRequest *)self dismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBUserReportRequest *)self dismissText];
    v20 = [v4 dismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v5 = [(_SFPBUserReportRequest *)self userReportOptions];
  v6 = [v4 userReportOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_42;
  }

  v22 = [(_SFPBUserReportRequest *)self userReportOptions];
  if (v22)
  {
    v23 = v22;
    v24 = [(_SFPBUserReportRequest *)self userReportOptions];
    v25 = [v4 userReportOptions];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  reportType = self->_reportType;
  if (reportType != [v4 reportType])
  {
    goto LABEL_43;
  }

  v5 = [(_SFPBUserReportRequest *)self reportOptionsSectionTitle];
  v6 = [v4 reportOptionsSectionTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_42;
  }

  v28 = [(_SFPBUserReportRequest *)self reportOptionsSectionTitle];
  if (v28)
  {
    v29 = v28;
    v30 = [(_SFPBUserReportRequest *)self reportOptionsSectionTitle];
    v31 = [v4 reportOptionsSectionTitle];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v5 = [(_SFPBUserReportRequest *)self disclaimerText];
  v6 = [v4 disclaimerText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_42;
  }

  v33 = [(_SFPBUserReportRequest *)self disclaimerText];
  if (v33)
  {
    v34 = v33;
    v35 = [(_SFPBUserReportRequest *)self disclaimerText];
    v36 = [v4 disclaimerText];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v5 = [(_SFPBUserReportRequest *)self disclaimerLearnMorePunchout];
  v6 = [v4 disclaimerLearnMorePunchout];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_42;
  }

  v38 = [(_SFPBUserReportRequest *)self disclaimerLearnMorePunchout];
  if (v38)
  {
    v39 = v38;
    v40 = [(_SFPBUserReportRequest *)self disclaimerLearnMorePunchout];
    v41 = [v4 disclaimerLearnMorePunchout];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v5 = [(_SFPBUserReportRequest *)self attachmentSectionTitle];
  v6 = [v4 attachmentSectionTitle];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_42:

    goto LABEL_43;
  }

  v43 = [(_SFPBUserReportRequest *)self attachmentSectionTitle];
  if (!v43)
  {

LABEL_46:
    v48 = 1;
    goto LABEL_44;
  }

  v44 = v43;
  v45 = [(_SFPBUserReportRequest *)self attachmentSectionTitle];
  v46 = [v4 attachmentSectionTitle];
  v47 = [v45 isEqual:v46];

  if (v47)
  {
    goto LABEL_46;
  }

LABEL_43:
  v48 = 0;
LABEL_44:

  return v48;
}

- (void)writeTo:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBUserReportRequest *)self affordanceText];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBUserReportRequest *)self title];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBUserReportRequest *)self dismissText];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(_SFPBUserReportRequest *)self userReportOptions];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if ([(_SFPBUserReportRequest *)self reportType])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBUserReportRequest *)self reportOptionsSectionTitle];
  if (v14)
  {
    PBDataWriterWriteStringField();
  }

  v15 = [(_SFPBUserReportRequest *)self disclaimerText];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  v16 = [(_SFPBUserReportRequest *)self disclaimerLearnMorePunchout];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBUserReportRequest *)self attachmentSectionTitle];
  if (v17)
  {
    PBDataWriterWriteStringField();
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setAttachmentSectionTitle:(id)a3
{
  v4 = [a3 copy];
  attachmentSectionTitle = self->_attachmentSectionTitle;
  self->_attachmentSectionTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDisclaimerText:(id)a3
{
  v4 = [a3 copy];
  disclaimerText = self->_disclaimerText;
  self->_disclaimerText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setReportOptionsSectionTitle:(id)a3
{
  v4 = [a3 copy];
  reportOptionsSectionTitle = self->_reportOptionsSectionTitle;
  self->_reportOptionsSectionTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addUserReportOptions:(id)a3
{
  v4 = a3;
  userReportOptions = self->_userReportOptions;
  v8 = v4;
  if (!userReportOptions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_userReportOptions;
    self->_userReportOptions = v6;

    v4 = v8;
    userReportOptions = self->_userReportOptions;
  }

  [(NSArray *)userReportOptions addObject:v4];
}

- (void)setUserReportOptions:(id)a3
{
  v4 = [a3 copy];
  userReportOptions = self->_userReportOptions;
  self->_userReportOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDismissText:(id)a3
{
  v4 = [a3 copy];
  dismissText = self->_dismissText;
  self->_dismissText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAffordanceText:(id)a3
{
  v4 = [a3 copy];
  affordanceText = self->_affordanceText;
  self->_affordanceText = v4;

  MEMORY[0x1EEE66BB8]();
}

@end