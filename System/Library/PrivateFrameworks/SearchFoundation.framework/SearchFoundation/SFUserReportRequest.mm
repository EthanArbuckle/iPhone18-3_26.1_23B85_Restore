@interface SFUserReportRequest
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFUserReportRequest)initWithCoder:(id)coder;
- (SFUserReportRequest)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFUserReportRequest

- (unint64_t)hash
{
  affordanceText = [(SFUserReportRequest *)self affordanceText];
  v4 = [affordanceText hash];
  title = [(SFUserReportRequest *)self title];
  v6 = [title hash] ^ v4;
  dismissText = [(SFUserReportRequest *)self dismissText];
  v8 = [dismissText hash];
  userReportOptions = [(SFUserReportRequest *)self userReportOptions];
  v10 = v6 ^ v8 ^ [userReportOptions hash];
  reportType = [(SFUserReportRequest *)self reportType];
  reportOptionsSectionTitle = [(SFUserReportRequest *)self reportOptionsSectionTitle];
  v13 = reportType ^ [reportOptionsSectionTitle hash];
  disclaimerText = [(SFUserReportRequest *)self disclaimerText];
  v15 = v10 ^ v13 ^ [disclaimerText hash];
  disclaimerLearnMorePunchout = [(SFUserReportRequest *)self disclaimerLearnMorePunchout];
  v17 = [disclaimerLearnMorePunchout hash];
  attachmentSectionTitle = [(SFUserReportRequest *)self attachmentSectionTitle];
  v19 = v17 ^ [attachmentSectionTitle hash];

  return v15 ^ v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFUserReportRequest *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      affordanceText = [(SFUserReportRequest *)self affordanceText];
      affordanceText2 = [(SFUserReportRequest *)v5 affordanceText];
      if ((affordanceText != 0) == (affordanceText2 == 0))
      {
        v11 = 0;
LABEL_26:

        goto LABEL_27;
      }

      affordanceText3 = [(SFUserReportRequest *)self affordanceText];
      if (affordanceText3)
      {
        affordanceText4 = [(SFUserReportRequest *)self affordanceText];
        affordanceText5 = [(SFUserReportRequest *)v5 affordanceText];
        if (![affordanceText4 isEqual:affordanceText5])
        {
          v11 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v71 = affordanceText5;
        v72 = affordanceText4;
      }

      title = [(SFUserReportRequest *)self title];
      title2 = [(SFUserReportRequest *)v5 title];
      if ((title != 0) == (title2 == 0))
      {
        goto LABEL_22;
      }

      title3 = [(SFUserReportRequest *)self title];
      if (title3)
      {
        title4 = [(SFUserReportRequest *)self title];
        title5 = [(SFUserReportRequest *)v5 title];
        v69 = title4;
        if (![title4 isEqual:title5])
        {
          goto LABEL_20;
        }
      }

      v70 = title3;
      dismissText = [(SFUserReportRequest *)self dismissText];
      dismissText2 = [(SFUserReportRequest *)v5 dismissText];
      if ((dismissText != 0) == (dismissText2 == 0))
      {

        if (!title3)
        {
LABEL_21:

LABEL_22:
          v11 = 0;
          if (!affordanceText3)
          {
LABEL_25:

            goto LABEL_26;
          }

          goto LABEL_23;
        }

LABEL_20:

        goto LABEL_21;
      }

      v65 = dismissText;
      v66 = dismissText2;
      dismissText3 = [(SFUserReportRequest *)self dismissText];
      if (dismissText3)
      {
        dismissText4 = [(SFUserReportRequest *)self dismissText];
        dismissText5 = [(SFUserReportRequest *)v5 dismissText];
        v64 = dismissText4;
        if (![dismissText4 isEqual:dismissText5])
        {
LABEL_50:

LABEL_51:
          if (!title3)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }
      }

      userReportOptions = [(SFUserReportRequest *)self userReportOptions];
      userReportOptions2 = [(SFUserReportRequest *)v5 userReportOptions];
      if ((userReportOptions != 0) == (userReportOptions2 == 0))
      {

        goto LABEL_49;
      }

      v60 = userReportOptions;
      v61 = userReportOptions2;
      userReportOptions3 = [(SFUserReportRequest *)self userReportOptions];
      if (userReportOptions3)
      {
        userReportOptions4 = [(SFUserReportRequest *)self userReportOptions];
        userReportOptions5 = [(SFUserReportRequest *)v5 userReportOptions];
        v59 = userReportOptions4;
        v23 = [userReportOptions4 isEqual:?];
        title3 = v70;
        if (!v23)
        {
          goto LABEL_47;
        }
      }

      reportType = [(SFUserReportRequest *)self reportType];
      if (reportType != [(SFUserReportRequest *)v5 reportType])
      {
LABEL_46:
        if (!userReportOptions3)
        {
LABEL_48:

LABEL_49:
          if (!dismissText3)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

LABEL_47:

        goto LABEL_48;
      }

      reportOptionsSectionTitle = [(SFUserReportRequest *)self reportOptionsSectionTitle];
      reportOptionsSectionTitle2 = [(SFUserReportRequest *)v5 reportOptionsSectionTitle];
      if ((reportOptionsSectionTitle != 0) == (reportOptionsSectionTitle2 == 0))
      {

        title3 = v70;
        goto LABEL_46;
      }

      v55 = reportOptionsSectionTitle2;
      v56 = reportOptionsSectionTitle;
      [(SFUserReportRequest *)self reportOptionsSectionTitle];
      v57 = title3 = v70;
      if (v57)
      {
        reportOptionsSectionTitle3 = [(SFUserReportRequest *)self reportOptionsSectionTitle];
        reportOptionsSectionTitle4 = [(SFUserReportRequest *)v5 reportOptionsSectionTitle];
        v54 = reportOptionsSectionTitle3;
        if (![reportOptionsSectionTitle3 isEqual:reportOptionsSectionTitle4])
        {
          goto LABEL_44;
        }
      }

      disclaimerText = [(SFUserReportRequest *)self disclaimerText];
      disclaimerText2 = [(SFUserReportRequest *)v5 disclaimerText];
      if ((disclaimerText != 0) == (disclaimerText2 == 0))
      {

        title3 = v70;
        if (!v57)
        {
LABEL_45:

          goto LABEL_46;
        }

LABEL_44:

        goto LABEL_45;
      }

      v51 = disclaimerText2;
      v52 = disclaimerText;
      disclaimerText3 = [(SFUserReportRequest *)self disclaimerText];
      if (disclaimerText3)
      {
        disclaimerText4 = [(SFUserReportRequest *)self disclaimerText];
        disclaimerText5 = [(SFUserReportRequest *)v5 disclaimerText];
        v49 = disclaimerText4;
        if (![disclaimerText4 isEqual:?])
        {
          v11 = 0;
          v31 = disclaimerText3;
          goto LABEL_58;
        }
      }

      disclaimerLearnMorePunchout = [(SFUserReportRequest *)self disclaimerLearnMorePunchout];
      disclaimerLearnMorePunchout2 = [(SFUserReportRequest *)v5 disclaimerLearnMorePunchout];
      if ((disclaimerLearnMorePunchout != 0) == (disclaimerLearnMorePunchout2 == 0))
      {

        v11 = 0;
        disclaimerText = v52;
        v31 = disclaimerText3;
        if (!disclaimerText3)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      v47 = disclaimerLearnMorePunchout2;
      v45 = disclaimerLearnMorePunchout;
      disclaimerLearnMorePunchout3 = [(SFUserReportRequest *)self disclaimerLearnMorePunchout];
      if (!disclaimerLearnMorePunchout3 || (-[SFUserReportRequest disclaimerLearnMorePunchout](self, "disclaimerLearnMorePunchout"), v34 = objc_claimAutoreleasedReturnValue(), -[SFUserReportRequest disclaimerLearnMorePunchout](v5, "disclaimerLearnMorePunchout"), v42 = objc_claimAutoreleasedReturnValue(), v43 = v34, [v34 isEqual:?]))
      {
        attachmentSectionTitle = [(SFUserReportRequest *)self attachmentSectionTitle];
        attachmentSectionTitle2 = [(SFUserReportRequest *)v5 attachmentSectionTitle];
        v37 = attachmentSectionTitle2;
        if ((attachmentSectionTitle != 0) == (attachmentSectionTitle2 == 0))
        {

          v11 = 0;
        }

        else
        {
          attachmentSectionTitle3 = [(SFUserReportRequest *)self attachmentSectionTitle];
          if (attachmentSectionTitle3)
          {
            v39 = attachmentSectionTitle3;
            attachmentSectionTitle4 = [(SFUserReportRequest *)self attachmentSectionTitle];
            attachmentSectionTitle5 = [(SFUserReportRequest *)v5 attachmentSectionTitle];
            v11 = [attachmentSectionTitle4 isEqual:attachmentSectionTitle5];
          }

          else
          {

            v11 = 1;
          }
        }

        disclaimerLearnMorePunchout = v45;
        v35 = disclaimerLearnMorePunchout3;
        if (!disclaimerLearnMorePunchout3)
        {
LABEL_76:

          v31 = disclaimerText3;
          disclaimerText = v52;
          if (!disclaimerText3)
          {
LABEL_59:

            if (v57)
            {
            }

            if (userReportOptions3)
            {
            }

            if (dismissText3)
            {
            }

            if (v70)
            {
            }

            if (!affordanceText3)
            {
              goto LABEL_25;
            }

LABEL_23:
            affordanceText5 = v71;
            affordanceText4 = v72;
            goto LABEL_24;
          }

LABEL_58:

          goto LABEL_59;
        }
      }

      else
      {
        v11 = 0;
        v35 = disclaimerLearnMorePunchout3;
      }

      goto LABEL_76;
    }

    v11 = 0;
  }

LABEL_27:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  affordanceText = [(SFUserReportRequest *)self affordanceText];
  v6 = [affordanceText copy];
  [v4 setAffordanceText:v6];

  title = [(SFUserReportRequest *)self title];
  v8 = [title copy];
  [v4 setTitle:v8];

  dismissText = [(SFUserReportRequest *)self dismissText];
  v10 = [dismissText copy];
  [v4 setDismissText:v10];

  userReportOptions = [(SFUserReportRequest *)self userReportOptions];
  v12 = [userReportOptions copy];
  [v4 setUserReportOptions:v12];

  [v4 setReportType:{-[SFUserReportRequest reportType](self, "reportType")}];
  reportOptionsSectionTitle = [(SFUserReportRequest *)self reportOptionsSectionTitle];
  v14 = [reportOptionsSectionTitle copy];
  [v4 setReportOptionsSectionTitle:v14];

  disclaimerText = [(SFUserReportRequest *)self disclaimerText];
  v16 = [disclaimerText copy];
  [v4 setDisclaimerText:v16];

  disclaimerLearnMorePunchout = [(SFUserReportRequest *)self disclaimerLearnMorePunchout];
  v18 = [disclaimerLearnMorePunchout copy];
  [v4 setDisclaimerLearnMorePunchout:v18];

  attachmentSectionTitle = [(SFUserReportRequest *)self attachmentSectionTitle];
  v20 = [attachmentSectionTitle copy];
  [v4 setAttachmentSectionTitle:v20];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBUserReportRequest alloc] initWithFacade:self];
  jsonData = [(_SFPBUserReportRequest *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBUserReportRequest alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBUserReportRequest *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBUserReportRequest alloc] initWithFacade:self];
  data = [(_SFPBUserReportRequest *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFUserReportRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBUserReportRequest alloc] initWithData:v5];
  v7 = [(SFUserReportRequest *)self initWithProtobuf:v6];

  return v7;
}

- (SFUserReportRequest)initWithProtobuf:(id)protobuf
{
  v39 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v37.receiver = self;
  v37.super_class = SFUserReportRequest;
  v5 = [(SFUserReportRequest *)&v37 init];
  if (v5)
  {
    affordanceText = [protobufCopy affordanceText];

    if (affordanceText)
    {
      affordanceText2 = [protobufCopy affordanceText];
      [(SFUserReportRequest *)v5 setAffordanceText:affordanceText2];
    }

    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(SFUserReportRequest *)v5 setTitle:title2];
    }

    dismissText = [protobufCopy dismissText];

    if (dismissText)
    {
      dismissText2 = [protobufCopy dismissText];
      [(SFUserReportRequest *)v5 setDismissText:dismissText2];
    }

    userReportOptions = [protobufCopy userReportOptions];
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
    userReportOptions2 = [protobufCopy userReportOptions];
    v15 = [userReportOptions2 countByEnumeratingWithState:&v33 objects:v38 count:16];
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

          v19 = [[SFPunchout alloc] initWithProtobuf:*(*(&v33 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [userReportOptions2 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v16);
    }

    [(SFUserReportRequest *)v5 setUserReportOptions:v13];
    if ([protobufCopy reportType])
    {
      -[SFUserReportRequest setReportType:](v5, "setReportType:", [protobufCopy reportType]);
    }

    reportOptionsSectionTitle = [protobufCopy reportOptionsSectionTitle];

    if (reportOptionsSectionTitle)
    {
      reportOptionsSectionTitle2 = [protobufCopy reportOptionsSectionTitle];
      [(SFUserReportRequest *)v5 setReportOptionsSectionTitle:reportOptionsSectionTitle2];
    }

    disclaimerText = [protobufCopy disclaimerText];

    if (disclaimerText)
    {
      disclaimerText2 = [protobufCopy disclaimerText];
      [(SFUserReportRequest *)v5 setDisclaimerText:disclaimerText2];
    }

    disclaimerLearnMorePunchout = [protobufCopy disclaimerLearnMorePunchout];

    if (disclaimerLearnMorePunchout)
    {
      v25 = [SFPunchout alloc];
      disclaimerLearnMorePunchout2 = [protobufCopy disclaimerLearnMorePunchout];
      v27 = [(SFPunchout *)v25 initWithProtobuf:disclaimerLearnMorePunchout2];
      [(SFUserReportRequest *)v5 setDisclaimerLearnMorePunchout:v27];
    }

    attachmentSectionTitle = [protobufCopy attachmentSectionTitle];

    if (attachmentSectionTitle)
    {
      attachmentSectionTitle2 = [protobufCopy attachmentSectionTitle];
      [(SFUserReportRequest *)v5 setAttachmentSectionTitle:attachmentSectionTitle2];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

@end