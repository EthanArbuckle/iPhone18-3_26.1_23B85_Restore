@interface SLCollaborationHighlight
+ (id)errorForCollaborationHighlightDomain:(id)a3 andCode:(int64_t)a4 andUnderlyingError:(id *)a5;
+ (id)requiredSpotlightAttributeKeysforHighlightType:(unsigned __int8)a3;
- (BOOL)isEqual:(id)a3;
- (SLCollaborationHighlight)initWithAttribution:(id)a3;
- (SLCollaborationHighlight)initWithCSSearchableItem:(id)a3 error:(id *)a4;
- (SLCollaborationHighlight)initWithCoder:(id)a3;
- (SLCollaborationHighlight)initWithDictionary:(id)a3;
- (SLCollaborationHighlight)initWithPortraitCollaborationHighlight:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLCollaborationHighlight

- (SLCollaborationHighlight)initWithPortraitCollaborationHighlight:(id)a3 error:(id *)a4
{
  v6 = a3;
  v65.receiver = self;
  v65.super_class = SLCollaborationHighlight;
  v7 = [(SLHighlight *)&v65 initWithPortraitHighlight:v6 error:a4];
  if (!v7)
  {
LABEL_64:
    v11 = v7;
    goto LABEL_65;
  }

  v8 = [v6 collaborationIdentifier];

  if (v8)
  {
    [v6 collaborationIdentifier];
  }

  else
  {
    [v6 identifier];
  }
  v9 = ;
  collaborationIdentifier = v7->_collaborationIdentifier;
  v7->_collaborationIdentifier = v9;

  v11 = [v6 contentDisplayName];

  if (v11)
  {
    v12 = [v6 contentDisplayName];
    fileName = v7->_fileName;
    v7->_fileName = v12;

    v11 = [v6 contentType];

    if (v11)
    {
      v14 = [v6 contentType];
      contentType = v7->_contentType;
      v7->_contentType = v14;

      v11 = [v6 creationDate];

      if (v11)
      {
        v16 = [v6 creationDate];
        creationDate = v7->_creationDate;
        v7->_creationDate = v16;

        if (objc_opt_respondsToSelector())
        {
          v18 = [v6 earliestAttributionIdentifiers];

          if (v18)
          {
            v19 = [v6 earliestAttributionIdentifiers];
          }

          else
          {
            v22 = [objc_opt_class() errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:4 andUnderlyingError:0];
            v23 = v22;
            v19 = 0;
            *a4 = v22;
          }

          earliestAttributionIdentifiers = v7->_earliestAttributionIdentifiers;
          v7->_earliestAttributionIdentifiers = v19;
        }

        if (objc_opt_respondsToSelector())
        {
          v25 = [v6 fileProviderId];
        }

        else if (a4)
        {
          v26 = [objc_opt_class() errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:5 andUnderlyingError:0];
          v27 = v26;
          v25 = 0;
          *a4 = v26;
        }

        else
        {
          v25 = 0;
        }

        fileProviderID = v7->_fileProviderID;
        v7->_fileProviderID = v25;

        if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 localIdentity], v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
        {
          v30 = MEMORY[0x277CCAAC8];
          v31 = objc_opt_class();
          v32 = [v6 localIdentity];
          v64 = 0;
          v33 = [v30 unarchivedObjectOfClass:v31 fromData:v32 error:&v64];
          localIdentity = v64;

          if (localIdentity || !v33)
          {
            v35 = SLFrameworkLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              [SLCollaborationHighlight initWithPortraitCollaborationHighlight:error:];
            }

            if (a4)
            {
              v36 = localIdentity;
              *a4 = localIdentity;
            }
          }

          else
          {
            objc_storeStrong(&v7->_localIdentity, v33);
          }
        }

        else
        {
          if (a4)
          {
            *a4 = [objc_opt_class() errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:7 andUnderlyingError:0];
          }

          localIdentity = v7->_localIdentity;
          v7->_localIdentity = 0;
        }

        if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 localIdentityProof], v37 = objc_claimAutoreleasedReturnValue(), v37, v37))
        {
          v38 = MEMORY[0x277CCAAC8];
          v39 = objc_opt_class();
          v40 = [v6 localIdentityProof];
          v63 = 0;
          v41 = [v38 unarchivedObjectOfClass:v39 fromData:v40 error:&v63];
          v42 = v63;

          if (v42 || !v41)
          {
            if (a4)
            {
              v45 = v42;
              *a4 = v42;
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
          if (a4)
          {
            *a4 = [objc_opt_class() errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:6 andUnderlyingError:0];
          }

          v42 = v7->_localProofOfInclusion;
          v7->_localProofOfInclusion = 0;
        }

        if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 handleToIdentityMap], v47 = objc_claimAutoreleasedReturnValue(), v47, v47))
        {
          v48 = MEMORY[0x277CCAAC8];
          v49 = MEMORY[0x277CBEB98];
          v50 = objc_opt_class();
          v51 = objc_opt_class();
          v52 = [v49 setWithObjects:{v50, v51, objc_opt_class(), 0}];
          v53 = [v6 handleToIdentityMap];
          v62 = 0;
          v54 = [v48 unarchivedObjectOfClasses:v52 fromData:v53 error:&v62];
          v55 = v62;

          if (v55 || !v54)
          {
            v59 = SLFrameworkLogHandle();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              [SLCollaborationHighlight initWithPortraitCollaborationHighlight:error:];
            }

            if (a4)
            {
              v60 = v55;
              *a4 = v55;
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

  *a4 = [v20 errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:v21 andUnderlyingError:0];
LABEL_65:

  return v11;
}

- (SLCollaborationHighlight)initWithAttribution:(id)a3
{
  v10.receiver = self;
  v10.super_class = SLCollaborationHighlight;
  v3 = [(SLHighlight *)&v10 initWithAttribution:a3];
  v4 = v3;
  if (v3)
  {
    fileName = v3->_fileName;
    v3->_fileName = &stru_28468DAB8;

    v6 = [MEMORY[0x277CBEAA8] date];
    creationDate = v4->_creationDate;
    v4->_creationDate = v6;

    contentType = v4->_contentType;
    v4->_contentType = &stru_28468DAB8;
  }

  return v4;
}

- (SLCollaborationHighlight)initWithCSSearchableItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  v35.receiver = self;
  v35.super_class = SLCollaborationHighlight;
  v7 = [(SLHighlight *)&v35 initWithCSSearchableItem:v6 error:a4];
  if (v7)
  {
    v8 = [v6 attributeSet];
    v9 = [v8 messageType];

    v10 = [v9 isEqualToString:@"lnk"];
    v11 = [v6 domainIdentifier];
    v12 = [v11 isEqualToString:@"attachmentDomain"];

    if ((v12 & 1) == 0 && (v10 & 1) == 0)
    {
      v13 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SLCollaborationHighlight initWithCSSearchableItem:v6 error:v13];
      }

      if (a4)
      {
        *a4 = [objc_opt_class() errorForHighlightDomain:@"com.apple.SocialLayer.SLHighlightErrorDomain" andCode:6 andUnderlyingError:0];
      }

      goto LABEL_34;
    }

    v14 = [v6 attributeSet];
    v15 = [v14 filename];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      fileName = v7->_fileName;
      v7->_fileName = v17;
    }

    else
    {
      if (!v10)
      {
        if (a4)
        {
          *a4 = [objc_opt_class() errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:1 andUnderlyingError:0];
          goto LABEL_33;
        }

LABEL_13:
        v19 = [v14 contentCreationDate];
        if (v19)
        {
          v20 = v19;
          objc_storeStrong(&v7->_creationDate, v19);
          v21 = [v14 contentType];
          v22 = v21;
          if (v21)
          {
            v23 = v21;
            contentType = v7->_contentType;
            v7->_contentType = v23;
LABEL_20:

LABEL_21:
            v25 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:@"com_apple_mobilesms_collaborationIdentifier"];
            v26 = [v6 attributeSet];
            v27 = [v26 valueForCustomKey:v25];

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

              v31 = [(SLHighlight *)v7 identifier];
              collaborationIdentifier = v7->_collaborationIdentifier;
              v7->_collaborationIdentifier = v31;
            }

            goto LABEL_29;
          }

          if (v10)
          {
            contentType = v7->_contentType;
            v7->_contentType = @"public.link";
            goto LABEL_20;
          }

          if (!a4)
          {
            goto LABEL_21;
          }

          *a4 = [objc_opt_class() errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:3 andUnderlyingError:0];
        }

        else if (a4)
        {
          *a4 = [objc_opt_class() errorForCollaborationHighlightDomain:@"com.apple.SocialLayer.SLCollaborationHighlightErrorDomain" andCode:2 andUnderlyingError:0];
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

+ (id)requiredSpotlightAttributeKeysforHighlightType:(unsigned __int8)a3
{
  if (a3)
  {
    if (a3 == 1)
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

- (SLCollaborationHighlight)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SLCollaborationHighlight;
  v5 = [(SLHighlight *)&v18 initWithDictionary:v4];
  if (!v5)
  {
LABEL_18:
    v14 = v5;
    goto LABEL_19;
  }

  v6 = [v4 objectForKey:@"fn"];
  if ([v6 length])
  {
    objc_storeStrong(&v5->_fileName, v6);
    v7 = [v4 objectForKey:@"cd"];
    if (v7)
    {
      v8 = v7;
      objc_storeStrong(&v5->_creationDate, v7);
      v9 = [v4 objectForKey:@"ct"];
      if ([v9 length])
      {
        objc_storeStrong(&v5->_contentType, v9);
        v10 = [v4 objectForKey:@"ci"];
        if ([v10 length])
        {
          v11 = v10;
          collaborationIdentifier = v5->_collaborationIdentifier;
          v5->_collaborationIdentifier = v11;
        }

        else
        {
          v15 = [(SLHighlight *)v5 identifier];
          v16 = v5->_collaborationIdentifier;
          v5->_collaborationIdentifier = v15;

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
  v3 = [(SLHighlight *)&v17 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(SLCollaborationHighlight *)self fileName];

  if (!v5)
  {
    v13 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SLCollaborationHighlight dictionaryRepresentation];
    }

    goto LABEL_12;
  }

  v6 = [(SLCollaborationHighlight *)self fileName];
  [v4 setObject:v6 forKey:@"fn"];

  v7 = [(SLCollaborationHighlight *)self creationDate];

  if (!v7)
  {
    v13 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SLCollaborationHighlight dictionaryRepresentation];
    }

    goto LABEL_12;
  }

  v8 = [(SLCollaborationHighlight *)self creationDate];
  [v4 setObject:v8 forKey:@"cd"];

  v9 = [(SLCollaborationHighlight *)self contentType];

  if (!v9)
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

  v10 = [(SLCollaborationHighlight *)self contentType];
  [v4 setObject:v10 forKey:@"ct"];

  v11 = [(SLCollaborationHighlight *)self collaborationIdentifier];

  if (v11)
  {
    v12 = [(SLCollaborationHighlight *)self collaborationIdentifier];
    [v4 setObject:v12 forKey:@"ci"];
  }

  else
  {
    v15 = [(SLHighlight *)self identifier];
    [v4 setObject:v15 forKey:@"ci"];

    v12 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SLCollaborationHighlight dictionaryRepresentation];
    }
  }

  v14 = v4;
LABEL_16:

  return v14;
}

- (SLCollaborationHighlight)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SLCollaborationHighlight;
  v5 = [(SLHighlight *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fn"];
    fileName = v5->_fileName;
    v5->_fileName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cd"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ct"];
    contentType = v5->_contentType;
    v5->_contentType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ci"];
    collaborationIdentifier = v5->_collaborationIdentifier;
    v5->_collaborationIdentifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = SLCollaborationHighlight;
  v4 = a3;
  [(SLHighlight *)&v9 encodeWithCoder:v4];
  v5 = [(SLCollaborationHighlight *)self fileName:v9.receiver];
  [v4 encodeObject:v5 forKey:@"fn"];

  v6 = [(SLCollaborationHighlight *)self creationDate];
  [v4 encodeObject:v6 forKey:@"cd"];

  v7 = [(SLCollaborationHighlight *)self contentType];
  [v4 encodeObject:v7 forKey:@"ct"];

  v8 = [(SLCollaborationHighlight *)self collaborationIdentifier];
  [v4 encodeObject:v8 forKey:@"ci"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SLCollaborationHighlight alloc];
  v5 = [(SLCollaborationHighlight *)self dictionaryRepresentation];
  v6 = [(SLCollaborationHighlight *)v4 initWithDictionary:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v24.receiver = self;
    v24.super_class = SLCollaborationHighlight;
    if ([(SLHighlight *)&v24 isEqual:v6])
    {
      v7 = [(SLCollaborationHighlight *)self fileName];
      if (v7 || ([v6 fileName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v8 = [(SLCollaborationHighlight *)self fileName];
        v9 = [v6 fileName];
        v10 = [v8 isEqualToString:v9];

        if (v7)
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

      v12 = [(SLCollaborationHighlight *)self creationDate];
      if (v12 || ([v6 creationDate], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v13 = [(SLCollaborationHighlight *)self creationDate];
        v14 = [v6 creationDate];
        v15 = [v13 isEqual:v14];

        if (v12)
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

      v16 = [(SLCollaborationHighlight *)self contentType];
      if (!v16)
      {
        v3 = [v6 contentType];
        if (!v3)
        {
LABEL_20:
          v20 = [(SLCollaborationHighlight *)self collaborationIdentifier];
          if (v20 || ([v6 collaborationIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v21 = [(SLCollaborationHighlight *)self collaborationIdentifier];
            v22 = [v6 collaborationIdentifier];
            v11 = [v21 isEqualToString:v22];

            if (v20)
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

      v17 = [(SLCollaborationHighlight *)self contentType];
      v18 = [v6 contentType];
      v19 = [v17 isEqualToString:v18];

      if (v16)
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
  v2 = [(SLHighlight *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SLCollaborationHighlight *)self collaborationIdentifier];
  v7 = [(SLHighlight *)self resourceURL];
  v8 = [(SLHighlight *)self supplementaryData];
  v9 = [(SLCollaborationHighlight *)self fileName];
  v10 = [(SLCollaborationHighlight *)self contentType];
  v11 = [v3 stringWithFormat:@"[%@: collaborationIdentifier: %@  resourceURL: %@ supplementaryData: %@ fileName: %@ contentType: %@]", v5, v6, v7, v8, v9, v10];

  return v11;
}

+ (id)errorForCollaborationHighlightDomain:(id)a3 andCode:(int64_t)a4 andUnderlyingError:(id *)a5
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = 0;
  if (a4 <= 3)
  {
    switch(a4)
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

  else if (a4 > 5)
  {
    if (a4 == 6)
    {
      v16 = *MEMORY[0x277CCA068];
      v17 = @"SLCollaborationHighlight Init failed. Invalid or nil localIdentityProof defaulting to nil.";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v17;
      v11 = &v16;
    }

    else
    {
      if (a4 != 7)
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

  else if (a4 == 4)
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
  if (a5)
  {
    v12 = [v8 mutableCopy];
    [v12 setObject:*a5 forKey:*MEMORY[0x277CCA7E8]];

    v8 = v12;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:a4 userInfo:v8];

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