@interface SLCollaborationHighlight
+ (id)errorForCollaborationHighlightDomain:(id)domain andCode:(int64_t)code andUnderlyingError:(id *)error;
+ (id)requiredSpotlightAttributeKeysforHighlightType:(unsigned __int8)type;
- (BOOL)isEqual:(id)equal;
- (SLCollaborationHighlight)initWithAttribution:(id)attribution;
- (SLCollaborationHighlight)initWithCSSearchableItem:(id)item error:(id *)error;
- (SLCollaborationHighlight)initWithCoder:(id)coder;
- (SLCollaborationHighlight)initWithDictionary:(id)dictionary;
- (SLCollaborationHighlight)initWithPortraitCollaborationHighlight:(id)highlight error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLCollaborationHighlight

- (SLCollaborationHighlight)initWithPortraitCollaborationHighlight:(id)highlight error:(id *)error
{
  highlightCopy = highlight;
  v65.receiver = self;
  v65.super_class = SLCollaborationHighlight;
  v7 = [(SLHighlight *)&v65 initWithPortraitHighlight:highlightCopy error:error];
  if (!v7)
  {
LABEL_64:
    contentDisplayName = v7;
    goto LABEL_65;
  }

  collaborationIdentifier = [highlightCopy collaborationIdentifier];

  if (collaborationIdentifier)
  {
    [highlightCopy collaborationIdentifier];
  }

  else
  {
    [highlightCopy identifier];
  }
  v9 = ;
  collaborationIdentifier = v7->_collaborationIdentifier;
  v7->_collaborationIdentifier = v9;

  contentDisplayName = [highlightCopy contentDisplayName];

  if (contentDisplayName)
  {
    contentDisplayName2 = [highlightCopy contentDisplayName];
    fileName = v7->_fileName;
    v7->_fileName = contentDisplayName2;

    contentDisplayName = [highlightCopy contentType];

    if (contentDisplayName)
    {
      contentType = [highlightCopy contentType];
      contentType = v7->_contentType;
      v7->_contentType = contentType;

      contentDisplayName = [highlightCopy creationDate];

      if (contentDisplayName)
      {
        creationDate = [highlightCopy creationDate];
        creationDate = v7->_creationDate;
        v7->_creationDate = creationDate;

        if (objc_opt_respondsToSelector())
        {
          earliestAttributionIdentifiers = [highlightCopy earliestAttributionIdentifiers];

          if (earliestAttributionIdentifiers)
          {
            earliestAttributionIdentifiers2 = [highlightCopy earliestAttributionIdentifiers];
          }

          else
          {
            v22 = [objc_opt_class() errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:4 andUnderlyingError:0];
            v23 = v22;
            earliestAttributionIdentifiers2 = 0;
            *error = v22;
          }

          earliestAttributionIdentifiers = v7->_earliestAttributionIdentifiers;
          v7->_earliestAttributionIdentifiers = earliestAttributionIdentifiers2;
        }

        if (objc_opt_respondsToSelector())
        {
          fileProviderId = [highlightCopy fileProviderId];
        }

        else if (error)
        {
          v26 = [objc_opt_class() errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:5 andUnderlyingError:0];
          v27 = v26;
          fileProviderId = 0;
          *error = v26;
        }

        else
        {
          fileProviderId = 0;
        }

        fileProviderID = v7->_fileProviderID;
        v7->_fileProviderID = fileProviderId;

        if ((objc_opt_respondsToSelector() & 1) != 0 && ([highlightCopy localIdentity], v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
        {
          v30 = MEMORY[0x277CCAAC8];
          v31 = objc_opt_class();
          localIdentity = [highlightCopy localIdentity];
          v64 = 0;
          v33 = [v30 unarchivedObjectOfClass:v31 fromData:localIdentity error:&v64];
          localIdentity = v64;

          if (localIdentity || !v33)
          {
            v35 = SLFrameworkLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              [SLCollaborationHighlight initWithPortraitCollaborationHighlight:error:];
            }

            if (error)
            {
              v36 = localIdentity;
              *error = localIdentity;
            }
          }

          else
          {
            objc_storeStrong(&v7->_localIdentity, v33);
          }
        }

        else
        {
          if (error)
          {
            *error = [objc_opt_class() errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:7 andUnderlyingError:0];
          }

          localIdentity = v7->_localIdentity;
          v7->_localIdentity = 0;
        }

        if ((objc_opt_respondsToSelector() & 1) != 0 && ([highlightCopy localIdentityProof], v37 = objc_claimAutoreleasedReturnValue(), v37, v37))
        {
          v38 = MEMORY[0x277CCAAC8];
          v39 = objc_opt_class();
          localIdentityProof = [highlightCopy localIdentityProof];
          v63 = 0;
          v41 = [v38 unarchivedObjectOfClass:v39 fromData:localIdentityProof error:&v63];
          v42 = v63;

          if (v42 || !v41)
          {
            if (error)
            {
              v45 = v42;
              *error = v42;
            }

            v46 = SLFrameworkLogHandle();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              [SLCollaborationHighlight initWithPortraitCollaborationHighlight:error:];
            }

            localProofOfInclusion = v7->_localProofOfInclusion;
            v7->_localProofOfInclusion = 0;
          }

          else
          {
            v43 = v41;
            localProofOfInclusion = v7->_localProofOfInclusion;
            v7->_localProofOfInclusion = v43;
          }
        }

        else
        {
          if (error)
          {
            *error = [objc_opt_class() errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:6 andUnderlyingError:0];
          }

          v42 = v7->_localProofOfInclusion;
          v7->_localProofOfInclusion = 0;
        }

        if ((objc_opt_respondsToSelector() & 1) != 0 && ([highlightCopy handleToIdentityMap], v47 = objc_claimAutoreleasedReturnValue(), v47, v47))
        {
          v48 = MEMORY[0x277CCAAC8];
          v49 = MEMORY[0x277CBEB98];
          v50 = objc_opt_class();
          v51 = objc_opt_class();
          v52 = [v49 setWithObjects:{v50, v51, objc_opt_class(), 0}];
          handleToIdentityMap = [highlightCopy handleToIdentityMap];
          v62 = 0;
          v54 = [v48 unarchivedObjectOfClasses:v52 fromData:handleToIdentityMap error:&v62];
          v55 = v62;

          if (v55 || !v54)
          {
            v59 = SLFrameworkLogHandle();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              [SLCollaborationHighlight initWithPortraitCollaborationHighlight:error:];
            }

            if (error)
            {
              v60 = v55;
              *error = v55;
            }

            handleToIdentityMap = v7->_handleToIdentityMap;
            v7->_handleToIdentityMap = 0;
          }

          else
          {
            v56 = v54;
            handleToIdentityMap = v7->_handleToIdentityMap;
            v7->_handleToIdentityMap = v56;
          }
        }

        else
        {
          v58 = SLFrameworkLogHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            [SLCollaborationHighlight initWithPortraitCollaborationHighlight:error:];
          }

          v55 = v7->_handleToIdentityMap;
          v7->_handleToIdentityMap = 0;
        }

        goto LABEL_64;
      }

      v20 = objc_opt_class();
      v21 = 2;
    }

    else
    {
      v20 = objc_opt_class();
      v21 = 3;
    }
  }

  else
  {
    v20 = objc_opt_class();
    v21 = 1;
  }

  *error = [v20 errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:v21 andUnderlyingError:0];
LABEL_65:

  return contentDisplayName;
}

- (SLCollaborationHighlight)initWithAttribution:(id)attribution
{
  v10.receiver = self;
  v10.super_class = SLCollaborationHighlight;
  v3 = [(SLHighlight *)&v10 initWithAttribution:attribution];
  v4 = v3;
  if (v3)
  {
    fileName = v3->_fileName;
    v3->_fileName = &stru_28468DAB8;

    date = [MEMORY[0x277CBEAA8] date];
    creationDate = v4->_creationDate;
    v4->_creationDate = date;

    contentType = v4->_contentType;
    v4->_contentType = &stru_28468DAB8;
  }

  return v4;
}

- (SLCollaborationHighlight)initWithCSSearchableItem:(id)item error:(id *)error
{
  itemCopy = item;
  v35.receiver = self;
  v35.super_class = SLCollaborationHighlight;
  v7 = [(SLHighlight *)&v35 initWithCSSearchableItem:itemCopy error:error];
  if (v7)
  {
    attributeSet = [itemCopy attributeSet];
    messageType = [attributeSet messageType];

    v10 = [messageType isEqualToString:@"lnk"];
    domainIdentifier = [itemCopy domainIdentifier];
    v12 = [domainIdentifier isEqualToString:@"attachmentDomain"];

    if ((v12 & 1) == 0 && (v10 & 1) == 0)
    {
      v13 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SLCollaborationHighlight initWithCSSearchableItem:itemCopy error:v13];
      }

      if (error)
      {
        *error = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:6 andUnderlyingError:0];
      }

      goto LABEL_34;
    }

    attributeSet2 = [itemCopy attributeSet];
    filename = [attributeSet2 filename];
    v16 = filename;
    if (filename)
    {
      v17 = filename;
      fileName = v7->_fileName;
      v7->_fileName = v17;
    }

    else
    {
      if (!v10)
      {
        if (error)
        {
          *error = [objc_opt_class() errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:1 andUnderlyingError:0];
          goto LABEL_33;
        }

LABEL_13:
        contentCreationDate = [attributeSet2 contentCreationDate];
        if (contentCreationDate)
        {
          v20 = contentCreationDate;
          objc_storeStrong(&v7->_creationDate, contentCreationDate);
          contentType = [attributeSet2 contentType];
          v22 = contentType;
          if (contentType)
          {
            v23 = contentType;
            contentType = v7->_contentType;
            v7->_contentType = v23;
LABEL_20:

LABEL_21:
            v25 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"com_apple_mobilesms_collaborationIdentifier"];
            attributeSet3 = [itemCopy attributeSet];
            v27 = [attributeSet3 valueForCustomKey:v25];

            if (v27)
            {
              v28 = v27;
              collaborationIdentifier = v7->_collaborationIdentifier;
              v7->_collaborationIdentifier = v28;
            }

            else
            {
              v30 = SLFrameworkLogHandle();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                *v34 = 0;
                _os_log_impl(&dword_231772000, v30, OS_LOG_TYPE_INFO, "SLCH collaborationIdentifier was nil defaulting to identifier.", v34, 2u);
              }

              identifier = [(SLHighlight *)v7 identifier];
              collaborationIdentifier = v7->_collaborationIdentifier;
              v7->_collaborationIdentifier = identifier;
            }

            goto LABEL_29;
          }

          if (v10)
          {
            contentType = v7->_contentType;
            v7->_contentType = @"public.link";
            goto LABEL_20;
          }

          if (!error)
          {
            goto LABEL_21;
          }

          *error = [objc_opt_class() errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:3 andUnderlyingError:0];
        }

        else if (error)
        {
          *error = [objc_opt_class() errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:2 andUnderlyingError:0];
        }

LABEL_33:
LABEL_34:

        v32 = 0;
        goto LABEL_35;
      }

      fileName = v7->_fileName;
      v7->_fileName = @"Gelato Collaboration";
    }

    goto LABEL_13;
  }

LABEL_29:
  v32 = v7;
LABEL_35:

  return v32;
}

+ (id)requiredSpotlightAttributeKeysforHighlightType:(unsigned __int8)type
{
  if (type)
  {
    if (type == 1)
    {
      v3 = +[SLCoreSpotlightUtilities requiredSpotlightAttributeKeysForFiles];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = +[SLCoreSpotlightUtilities requiredSpotlightAttributeKeysForLinks];
  }

  return v3;
}

- (SLCollaborationHighlight)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = SLCollaborationHighlight;
  v5 = [(SLHighlight *)&v18 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
LABEL_18:
    v14 = v5;
    goto LABEL_19;
  }

  v6 = [dictionaryCopy objectForKey:@"fn"];
  if ([v6 length])
  {
    objc_storeStrong(&v5->_fileName, v6);
    v7 = [dictionaryCopy objectForKey:@"cd"];
    if (v7)
    {
      v8 = v7;
      objc_storeStrong(&v5->_creationDate, v7);
      v9 = [dictionaryCopy objectForKey:@"ct"];
      if ([v9 length])
      {
        objc_storeStrong(&v5->_contentType, v9);
        v10 = [dictionaryCopy objectForKey:@"ci"];
        if ([v10 length])
        {
          v11 = v10;
          collaborationIdentifier = v5->_collaborationIdentifier;
          v5->_collaborationIdentifier = v11;
        }

        else
        {
          identifier = [(SLHighlight *)v5 identifier];
          v16 = v5->_collaborationIdentifier;
          v5->_collaborationIdentifier = identifier;

          collaborationIdentifier = SLFrameworkLogHandle();
          if (os_log_type_enabled(collaborationIdentifier, OS_LOG_TYPE_ERROR))
          {
            [SLCollaborationHighlight initWithDictionary:];
          }
        }

        goto LABEL_18;
      }

      v13 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SLCollaborationHighlight initWithDictionary:];
      }
    }

    else
    {
      v8 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SLCollaborationHighlight initWithDictionary:];
      }
    }
  }

  else
  {
    v8 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SLCollaborationHighlight initWithDictionary:];
    }
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (id)dictionaryRepresentation
{
  v17.receiver = self;
  v17.super_class = SLCollaborationHighlight;
  dictionaryRepresentation = [(SLHighlight *)&v17 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  fileName = [(SLCollaborationHighlight *)self fileName];

  if (!fileName)
  {
    v13 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SLCollaborationHighlight dictionaryRepresentation];
    }

    goto LABEL_12;
  }

  fileName2 = [(SLCollaborationHighlight *)self fileName];
  [v4 setObject:fileName2 forKey:@"fn"];

  creationDate = [(SLCollaborationHighlight *)self creationDate];

  if (!creationDate)
  {
    v13 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SLCollaborationHighlight dictionaryRepresentation];
    }

    goto LABEL_12;
  }

  creationDate2 = [(SLCollaborationHighlight *)self creationDate];
  [v4 setObject:creationDate2 forKey:@"cd"];

  contentType = [(SLCollaborationHighlight *)self contentType];

  if (!contentType)
  {
    v13 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SLCollaborationHighlight dictionaryRepresentation];
    }

LABEL_12:

    v14 = 0;
    goto LABEL_16;
  }

  contentType2 = [(SLCollaborationHighlight *)self contentType];
  [v4 setObject:contentType2 forKey:@"ct"];

  collaborationIdentifier = [(SLCollaborationHighlight *)self collaborationIdentifier];

  if (collaborationIdentifier)
  {
    collaborationIdentifier2 = [(SLCollaborationHighlight *)self collaborationIdentifier];
    [v4 setObject:collaborationIdentifier2 forKey:@"ci"];
  }

  else
  {
    identifier = [(SLHighlight *)self identifier];
    [v4 setObject:identifier forKey:@"ci"];

    collaborationIdentifier2 = SLFrameworkLogHandle();
    if (os_log_type_enabled(collaborationIdentifier2, OS_LOG_TYPE_ERROR))
    {
      [SLCollaborationHighlight dictionaryRepresentation];
    }
  }

  v14 = v4;
LABEL_16:

  return v14;
}

- (SLCollaborationHighlight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SLCollaborationHighlight;
  v5 = [(SLHighlight *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fn"];
    fileName = v5->_fileName;
    v5->_fileName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cd"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ct"];
    contentType = v5->_contentType;
    v5->_contentType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ci"];
    collaborationIdentifier = v5->_collaborationIdentifier;
    v5->_collaborationIdentifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = SLCollaborationHighlight;
  coderCopy = coder;
  [(SLHighlight *)&v9 encodeWithCoder:coderCopy];
  v5 = [(SLCollaborationHighlight *)self fileName:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"fn"];

  creationDate = [(SLCollaborationHighlight *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"cd"];

  contentType = [(SLCollaborationHighlight *)self contentType];
  [coderCopy encodeObject:contentType forKey:@"ct"];

  collaborationIdentifier = [(SLCollaborationHighlight *)self collaborationIdentifier];
  [coderCopy encodeObject:collaborationIdentifier forKey:@"ci"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SLCollaborationHighlight alloc];
  dictionaryRepresentation = [(SLCollaborationHighlight *)self dictionaryRepresentation];
  v6 = [(SLCollaborationHighlight *)v4 initWithDictionary:dictionaryRepresentation];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    v24.receiver = self;
    v24.super_class = SLCollaborationHighlight;
    if ([(SLHighlight *)&v24 isEqual:v6])
    {
      fileName = [(SLCollaborationHighlight *)self fileName];
      if (fileName || ([v6 fileName], (contentType2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        fileName2 = [(SLCollaborationHighlight *)self fileName];
        fileName3 = [v6 fileName];
        v10 = [fileName2 isEqualToString:fileName3];

        if (fileName)
        {

          if (!v10)
          {
            goto LABEL_25;
          }
        }

        else
        {

          if ((v10 & 1) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      creationDate = [(SLCollaborationHighlight *)self creationDate];
      if (creationDate || ([v6 creationDate], (contentType2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        creationDate2 = [(SLCollaborationHighlight *)self creationDate];
        creationDate3 = [v6 creationDate];
        v15 = [creationDate2 isEqual:creationDate3];

        if (creationDate)
        {

          if (!v15)
          {
            goto LABEL_25;
          }
        }

        else
        {

          if ((v15 & 1) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      contentType = [(SLCollaborationHighlight *)self contentType];
      if (!contentType)
      {
        contentType2 = [v6 contentType];
        if (!contentType2)
        {
LABEL_20:
          collaborationIdentifier = [(SLCollaborationHighlight *)self collaborationIdentifier];
          if (collaborationIdentifier || ([v6 collaborationIdentifier], (contentType2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            collaborationIdentifier2 = [(SLCollaborationHighlight *)self collaborationIdentifier];
            collaborationIdentifier3 = [v6 collaborationIdentifier];
            v11 = [collaborationIdentifier2 isEqualToString:collaborationIdentifier3];

            if (collaborationIdentifier)
            {
LABEL_30:

              goto LABEL_26;
            }
          }

          else
          {
            v11 = 1;
          }

          goto LABEL_30;
        }
      }

      contentType3 = [(SLCollaborationHighlight *)self contentType];
      contentType4 = [v6 contentType];
      v19 = [contentType3 isEqualToString:contentType4];

      if (contentType)
      {

        if (v19)
        {
          goto LABEL_20;
        }
      }

      else
      {

        if (v19)
        {
          goto LABEL_20;
        }
      }
    }

LABEL_25:
    v11 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v11 = 0;
LABEL_27:

  return v11;
}

- (unint64_t)hash
{
  identifier = [(SLHighlight *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  collaborationIdentifier = [(SLCollaborationHighlight *)self collaborationIdentifier];
  resourceURL = [(SLHighlight *)self resourceURL];
  supplementaryData = [(SLHighlight *)self supplementaryData];
  fileName = [(SLCollaborationHighlight *)self fileName];
  contentType = [(SLCollaborationHighlight *)self contentType];
  v11 = [v3 stringWithFormat:@"[%@: collaborationIdentifier: %@  resourceURL: %@ supplementaryData: %@ fileName: %@ contentType: %@]", v5, collaborationIdentifier, resourceURL, supplementaryData, fileName, contentType];

  return v11;
}

+ (id)errorForCollaborationHighlightDomain:(id)domain andCode:(int64_t)code andUnderlyingError:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v8 = 0;
  if (code <= 3)
  {
    switch(code)
    {
      case 1:
        v28 = *MEMORY[0x277CCA068];
        v29[0] = @"SLCollaborationHighlight Init failed. Invalid or nil File Name.";
        v9 = MEMORY[0x277CBEAC0];
        v10 = v29;
        v11 = &v28;
        break;
      case 2:
        v26 = *MEMORY[0x277CCA068];
        v27 = @"SLCollaborationHighlight Init failed. Invalid or nil content creation date.";
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v27;
        v11 = &v26;
        break;
      case 3:
        v24 = *MEMORY[0x277CCA068];
        v25 = @"SLCollaborationHighlight Init failed. Invalid or nil content type.";
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v25;
        v11 = &v24;
        break;
      default:
        goto LABEL_17;
    }
  }

  else if (code > 5)
  {
    if (code == 6)
    {
      v16 = *MEMORY[0x277CCA068];
      v17 = @"SLCollaborationHighlight Init failed. Invalid or nil localIdentityProof defaulting to nil.";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v17;
      v11 = &v16;
    }

    else
    {
      if (code != 7)
      {
        goto LABEL_17;
      }

      v18 = *MEMORY[0x277CCA068];
      v19 = @"SLCollaborationHighlight Init error. Invalid or nil localIdentity defaulting to nil.";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v19;
      v11 = &v18;
    }
  }

  else if (code == 4)
  {
    v22 = *MEMORY[0x277CCA068];
    v23 = @"SLCollaborationHighlight Init. Invalid or nil earliest attributions Identifiers.";
    v9 = MEMORY[0x277CBEAC0];
    v10 = &v23;
    v11 = &v22;
  }

  else
  {
    v20 = *MEMORY[0x277CCA068];
    v21 = @"SLCollaborationHighlight Init error. Invalid or nil fileProviderID defaulting to nil.";
    v9 = MEMORY[0x277CBEAC0];
    v10 = &v21;
    v11 = &v20;
  }

  v8 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
LABEL_17:
  if (error)
  {
    v12 = [v8 mutableCopy];
    [v12 setObject:*error forKey:*MEMORY[0x277CCA7E8]];

    v8 = v12;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:domainCopy code:code userInfo:v8];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)initWithPortraitCollaborationHighlight:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "Could not unarchive SWPersonIdentity from [PPSocialCollaboration localIdentity]: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithPortraitCollaborationHighlight:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "Could not unarchive SWPersonIdentityProof from [PPSocialCollaboration localIdentityProof]: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithPortraitCollaborationHighlight:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "Could not unarchive handleToIdentityMap from [PPSocialCollaboration handleToIdentityMap]: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithCSSearchableItem:(void *)a1 error:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 domainIdentifier];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "Attempted to initialize SLCH using a CSSearchableItem outside the attachment/links domain. Failing initialization from CSSearchableItem. domain: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end