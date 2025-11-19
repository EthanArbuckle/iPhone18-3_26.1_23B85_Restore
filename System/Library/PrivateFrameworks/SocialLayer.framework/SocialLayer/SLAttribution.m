@interface SLAttribution
+ (id)errorForAttributionDomain:(id)a3 andCode:(int64_t)a4 andUnderlyingError:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (SLAttribution)initWithCSSearchableItem:(id)a3 error:(id *)a4;
- (SLAttribution)initWithCoder:(id)a3;
- (SLAttribution)initWithDictionary:(id)a3;
- (SLAttribution)initWithIdentifier:(id)a3 error:(id *)a4;
- (SLAttribution)initWithPortraitAttribution:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)portraitAttribution;
- (unint64_t)hash;
- (void)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLAttribution

- (SLAttribution)initWithIdentifier:(id)a3 error:(id *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SLAttribution;
  v8 = [(SLAttribution *)&v11 init];
  if (!v8)
  {
    goto LABEL_4;
  }

  if ([v7 length])
  {
    objc_storeStrong(&v8->_uniqueIdentifier, a3);
    v8->_lean = 1;
LABEL_4:
    v9 = v8;
    goto LABEL_5;
  }

  if (a4)
  {
    [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:2 andUnderlyingError:0];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_5:

  return v9;
}

- (SLAttribution)initWithPortraitAttribution:(id)a3 error:(id *)a4
{
  v79 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v75.receiver = self;
  v75.super_class = SLAttribution;
  v7 = [(SLAttribution *)&v75 init];
  if (!v7)
  {
LABEL_47:
    v37 = v7;
    goto LABEL_48;
  }

  if (v6)
  {
    v8 = [v6 identifier];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [v6 identifier];
      uniqueIdentifier = v7->_uniqueIdentifier;
      v7->_uniqueIdentifier = v10;

      v12 = [v6 sourceAppDisplayName];
      v13 = [v12 length];

      if (v13)
      {
        v14 = [v6 sourceAppDisplayName];
        sourceAppDisplayName = v7->_sourceAppDisplayName;
        v7->_sourceAppDisplayName = v14;

        v16 = [v6 conversationIdentifier];
        v17 = [v16 length];

        if (v17)
        {
          v18 = [v6 conversationIdentifier];
          conversationIdentifier = v7->_conversationIdentifier;
          v7->_conversationIdentifier = v18;

          if (objc_opt_respondsToSelector())
          {
            v7->_pinned = [v6 isStarred];
          }

          v64 = a4;
          v20 = [v6 groupPhotoPath];
          groupPhotoPath = v7->_groupPhotoPath;
          v7->_groupPhotoPath = v20;

          obj = objc_opt_new();
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v22 = [v6 relatedPeople];
          v23 = [v22 countByEnumeratingWithState:&v71 objects:v78 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = 0;
            v26 = *v72;
            while (2)
            {
              v27 = 0;
              v28 = v25;
              do
              {
                if (*v72 != v26)
                {
                  objc_enumerationMutation(v22);
                }

                v29 = *(*(&v71 + 1) + 8 * v27);
                v30 = [SLPerson alloc];
                v70 = v28;
                v31 = [(SLPerson *)v30 initWithPortraitPerson:v29 error:&v70];
                v25 = v70;

                if (!v31)
                {
                  if (v64)
                  {
                    v69 = v25;
                    v34 = [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:6 andUnderlyingError:&v69];
                    v35 = v69;

                    v36 = v34;
                    *v64 = v34;
                    v25 = v35;
                  }

                  goto LABEL_25;
                }

                [obj addObject:v31];

                ++v27;
                v28 = v25;
              }

              while (v24 != v27);
              v24 = [v22 countByEnumeratingWithState:&v71 objects:v78 count:16];
              if (v24)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v25 = 0;
          }

          objc_storeStrong(&v7->_relatedPersons, obj);
          v38 = [SLPerson alloc];
          v39 = [v6 sender];
          v68 = v25;
          v40 = [(SLPerson *)v38 initWithPortraitPerson:v39 error:&v68];
          v41 = v68;

          if (v40)
          {
            objc_storeStrong(&v7->_sender, v40);
            if (objc_opt_respondsToSelector())
            {
              v7->_fromMe = [v6 isFromMe];
            }

            v42 = [v6 relatedPeople];
            v7->_isGroupConversation = [v42 count] > 2;

            if (v7->_isGroupConversation)
            {
              v43 = [v6 groupDisplayName];
              groupDisplayName = v7->_groupDisplayName;
              v7->_groupDisplayName = v43;

              if (objc_opt_respondsToSelector())
              {
                v45 = objc_alloc(MEMORY[0x277CCAD78]);
                v46 = [v6 groupId];
                v47 = [v45 initWithUUIDString:v46];
                groupID = v7->_groupID;
                v7->_groupID = v47;
              }
            }

            v7->_lean = 0;
            v49 = [v6 timestamp];
            timestamp = v7->_timestamp;
            v7->_timestamp = v49;

            if (objc_opt_respondsToSelector())
            {
              v51 = MEMORY[0x277CCAAC8];
              v52 = objc_opt_class();
              v53 = [v6 collaborationMetadata];
              v66 = 0;
              v54 = [v51 unarchivedObjectOfClass:v52 fromData:v53 error:&v66];
              v55 = v66;

              if (v54)
              {
                v56 = v54;
                collaborationMetadata = v7->_collaborationMetadata;
                v7->_collaborationMetadata = v56;
              }

              else
              {
                collaborationMetadata = SLFrameworkLogHandle();
                if (os_log_type_enabled(collaborationMetadata, OS_LOG_TYPE_INFO))
                {
                  v61 = [v55 description];
                  *buf = 138412290;
                  v77 = v61;
                  _os_log_impl(&dword_231772000, collaborationMetadata, OS_LOG_TYPE_INFO, "Failed to unarchive Collaboration Metadata: %@", buf, 0xCu);
                }
              }
            }

            goto LABEL_47;
          }

          if (v64)
          {
            v67 = v41;
            v58 = [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:5 andUnderlyingError:&v67];
            v59 = v67;

            v60 = v58;
            *v64 = v58;
            v41 = v59;
          }

LABEL_25:
          goto LABEL_29;
        }

        if (a4)
        {
          v32 = objc_opt_class();
          v33 = 4;
          goto LABEL_28;
        }

LABEL_29:
        v37 = 0;
        goto LABEL_48;
      }

      if (!a4)
      {
        goto LABEL_29;
      }

      v32 = objc_opt_class();
      v33 = 3;
    }

    else
    {
      if (!a4)
      {
        goto LABEL_29;
      }

      v32 = objc_opt_class();
      v33 = 2;
    }
  }

  else
  {
    v32 = objc_opt_class();
    v33 = 1;
  }

LABEL_28:
  [v32 errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:v33 andUnderlyingError:0];
  *a4 = v37 = 0;
LABEL_48:

  v62 = *MEMORY[0x277D85DE8];
  return v37;
}

- (id)portraitAttribution
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [(SLAttribution *)self relatedPersons];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x277D3A4D0]);
        v11 = [v9 handle];
        v12 = [v9 displayName];
        v13 = [v10 initWithHandle:v11 displayName:v12];
        [v3 addObject:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  v14 = objc_alloc(MEMORY[0x277D3A4D0]);
  v15 = [(SLAttribution *)self sender];
  v16 = [v15 handle];
  v17 = [(SLAttribution *)self sender];
  v18 = [v17 displayName];
  v19 = [v14 initWithHandle:v16 displayName:v18];

  v20 = objc_alloc(MEMORY[0x277D3A4B0]);
  v21 = [(SLAttribution *)self uniqueIdentifier];
  v22 = [(SLAttribution *)self sourceAppDisplayName];
  v23 = [(SLAttribution *)self conversationIdentifier];
  v24 = [(SLAttribution *)self groupPhotoPath];
  v25 = [(SLAttribution *)self groupDisplayName];
  v26 = [(SLAttribution *)self timestamp];
  v27 = [v20 initWithIdentifier:v21 sourceAppDisplayName:v22 conversationIdentifier:v23 groupPhotoPath:v24 groupDisplayName:v25 relatedPeople:v3 sender:v19 timestamp:v26];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (SLAttribution)initWithCSSearchableItem:(id)a3 error:(id *)a4
{
  v6 = a3;
  v68.receiver = self;
  v68.super_class = SLAttribution;
  v7 = [(SLAttribution *)&v68 init];
  if (!v7)
  {
    goto LABEL_71;
  }

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
      [SLAttribution initWithCSSearchableItem:v6 error:?];
    }

    if (a4)
    {
      *a4 = [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:8 andUnderlyingError:0];
    }

    goto LABEL_37;
  }

  v14 = [v6 bundleID];
  if ([v14 length])
  {
    objc_storeStrong(&v7->_sourceAppDisplayName, v14);
    v15 = [v6 attributeSet];
    v16 = v15;
    if (v10)
    {
      v17 = [v15 uniqueIdentifier];
      v18 = 0;
    }

    else if (v12)
    {
      v17 = [v15 ownerIdentifier];
      v18 = [v16 uniqueIdentifier];
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    if ([v17 length])
    {
      objc_storeStrong(&v7->_uniqueIdentifier, v17);
      v67 = v18;
      if ([v18 length])
      {
        v19 = v18;
        attachmentGUID = v7->_attachmentGUID;
        v7->_attachmentGUID = v19;
      }

      else
      {
        attachmentGUID = SLFrameworkLogHandle();
        if (os_log_type_enabled(attachmentGUID, OS_LOG_TYPE_DEBUG))
        {
          [SLAttribution initWithCSSearchableItem:error:];
        }
      }

      v64 = v17;
      if (v10)
      {
        v21 = [v16 domainIdentifier];
        v22 = v67;
      }

      else
      {
        v22 = v67;
        if (v12)
        {
          v21 = [v16 accountIdentifier];
        }

        else
        {
          v21 = 0;
        }
      }

      if ([v21 length])
      {
        objc_storeStrong(&v7->_conversationIdentifier, v21);
        v23 = [v16 groupPhotoPath];
        if (v23)
        {
          groupPhotoPath = v23;
        }

        else
        {
          v26 = [v16 customAttributeDictionary];
          groupPhotoPath = [v26 objectForKey:@"com_apple_mobilesms_groupPhotoPath"];

          if (!groupPhotoPath)
          {
            groupPhotoPath = v7->_groupPhotoPath;
            v7->_groupPhotoPath = 0;
LABEL_41:

            v29 = [v16 displayName];
            if (!v29)
            {
              v30 = [v16 alternateNames];
              v29 = [v30 firstObject];
            }

            v62 = v21;
            objc_storeStrong(&v7->_groupDisplayName, v29);
            v31 = [v16 customAttributeDictionary];
            v32 = [v31 objectForKey:@"gid"];

            if (v32)
            {
              v33 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v32];
              groupID = v7->_groupID;
              v7->_groupID = v33;
            }

            v61 = v32;
            obj = [MEMORY[0x277CBEB18] array];
            v35 = [v16 authorNames];
            v36 = [v35 firstObject];

            v37 = [v16 authorAddresses];
            v38 = [v37 firstObject];

            v63 = v38;
            v60 = v36;
            if (!v38)
            {
              if (a4)
              {
                [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:5 andUnderlyingError:0];
                *a4 = v54 = 0;
              }

              else
              {
                v54 = 0;
              }

              v55 = v64;
              v56 = v62;
              v51 = obj;
LABEL_70:

              if (!v54)
              {
                goto LABEL_38;
              }

LABEL_71:
              v25 = v7;
              goto LABEL_72;
            }

            v58 = v29;
            v59 = v14;
            v39 = v36;
            if (!v39)
            {
              v40 = SLFrameworkLogHandle();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                [SLAttribution initWithCSSearchableItem:error:];
              }

              v39 = v38;
            }

            v41 = [[SLPerson alloc] initWithHandle:v38 displayName:v39];
            sender = v7->_sender;
            v7->_sender = v41;
            v43 = v41;

            [obj addObject:v43];
            v44 = [v16 recipientNames];
            v65 = [v16 recipientAddresses];
            if (v44 && v65)
            {
              v45 = [v44 count];
              if (v45 != [v65 count])
              {
LABEL_65:
                if (a4)
                {
                  [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:6 andUnderlyingError:0];
                  *a4 = v54 = 0;
                }

                else
                {
                  v54 = 0;
                }

                v29 = v58;
                v14 = v59;
                v55 = v64;
                v51 = obj;
                goto LABEL_69;
              }

              if ([v44 count])
              {
                v46 = 0;
                while (1)
                {
                  v47 = [v44 objectAtIndexedSubscript:{v46, v58, v59, v60}];
                  v48 = [v65 objectAtIndexedSubscript:v46];
                  v49 = v48;
                  if (!v47 || !v48)
                  {
                    break;
                  }

                  v50 = [[SLPerson alloc] initWithHandle:v48 displayName:v47];
                  [obj addObject:v50];

                  if ([v44 count] <= ++v46)
                  {
                    goto LABEL_58;
                  }
                }

                goto LABEL_65;
              }
            }

LABEL_58:
            v51 = obj;
            objc_storeStrong(&v7->_relatedPersons, obj);
            v7->_isGroupConversation = [(NSArray *)v7->_relatedPersons count]> 2;
            v7->_lean = 0;
            v52 = [v16 contentCreationDate];
            timestamp = v7->_timestamp;
            v7->_timestamp = v52;

            v54 = 1;
            v29 = v58;
            v14 = v59;
            v55 = v64;
LABEL_69:

            v56 = v62;
            goto LABEL_70;
          }
        }

        v27 = [MEMORY[0x277CBEBC0] fileURLWithPath:groupPhotoPath];
        v28 = v7->_groupPhotoPath;
        v7->_groupPhotoPath = v27;

        goto LABEL_41;
      }

      if (a4)
      {
        *a4 = [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:4 andUnderlyingError:0];
      }
    }

    else
    {
      if (a4)
      {
        *a4 = [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:2 andUnderlyingError:0];
      }
    }
  }

  else if (a4)
  {
    *a4 = [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:3 andUnderlyingError:0];
  }

LABEL_37:
LABEL_38:
  v25 = 0;
LABEL_72:

  return v25;
}

- (SLAttribution)initWithDictionary:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v51.receiver = self;
  v51.super_class = SLAttribution;
  v5 = [(SLAttribution *)&v51 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 objectForKey:@"uid"];
  if (![v6 length])
  {
    v9 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SLAttribution initWithDictionary:];
    }

    goto LABEL_35;
  }

  objc_storeStrong(&v5->_uniqueIdentifier, v6);
  v7 = [v4 objectForKey:@"l"];
  v5->_lean = [v7 BOOLValue];

  if (!v5->_lean)
  {
    v9 = [v4 objectForKey:@"atg"];
    if ([v9 length])
    {
      v10 = v9;
      attachmentGUID = v5->_attachmentGUID;
      v5->_attachmentGUID = &v10->isa;
    }

    else
    {
      attachmentGUID = SLFrameworkLogHandle();
      if (os_log_type_enabled(attachmentGUID, OS_LOG_TYPE_DEBUG))
      {
        [SLAttribution initWithDictionary:];
      }
    }

    v12 = [v4 objectForKey:@"sa"];
    if ([v12 length])
    {
      objc_storeStrong(&v5->_sourceAppDisplayName, v12);
      v13 = [v4 objectForKey:@"cid"];
      if ([v13 length])
      {
        objc_storeStrong(&v5->_conversationIdentifier, v13);
        v14 = [v4 objectForKey:@"gp"];
        v45 = v9;
        v46 = v6;
        v44 = v13;
        v43 = v14;
        if (v14)
        {
          v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14];
        }

        groupPhotoPath = v5->_groupPhotoPath;
        v5->_groupPhotoPath = v14;

        v16 = [v4 objectForKey:@"gdn"];
        groupDisplayName = v5->_groupDisplayName;
        v5->_groupDisplayName = v16;

        v18 = [v4 objectForKey:@"rp"];
        v19 = objc_opt_new();
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v20 = v18;
        v21 = [v20 countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v48;
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v48 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = [[SLPerson alloc] initWithDictionary:*(*(&v47 + 1) + 8 * i)];
              if (!v25)
              {
                v39 = SLFrameworkLogHandle();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  [SLAttribution initWithDictionary:];
                }

                v9 = v45;
                v6 = v46;
                goto LABEL_35;
              }

              v26 = v25;
              [v19 addObject:v25];
            }

            v22 = [v20 countByEnumeratingWithState:&v47 objects:v52 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        objc_storeStrong(&v5->_relatedPersons, v19);
        v27 = [v4 objectForKey:@"s"];
        v28 = [[SLPerson alloc] initWithDictionary:v27];
        if (v28)
        {
          objc_storeStrong(&v5->_sender, v28);
          v5->_isGroupConversation = [(NSArray *)v5->_relatedPersons count]> 2;
          v29 = [v4 objectForKey:@"t"];
          timestamp = v5->_timestamp;
          v5->_timestamp = v29;

          [v4 objectForKey:@"pi"];
          v32 = v31 = v27;
          v5->_pinned = [v32 BOOLValue];

          v33 = [v4 objectForKey:@"fm"];
          v5->_fromMe = [v33 BOOLValue];

          v27 = v31;
          v34 = [v4 objectForKey:@"gid"];
          v35 = [v34 UUID];
          groupID = v5->_groupID;
          v5->_groupID = v35;

          v38 = v12;
          v37 = v45;
        }

        else
        {
          v34 = SLFrameworkLogHandle();
          v38 = v12;
          v37 = v45;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [SLAttribution initWithDictionary:];
          }
        }

        v6 = v46;
        if (v28)
        {
          goto LABEL_4;
        }

LABEL_36:

        v8 = 0;
        goto LABEL_37;
      }

      v40 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [SLAttribution initWithDictionary:];
      }
    }

    else
    {
      v13 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SLAttribution initWithDictionary:];
      }
    }

LABEL_35:
    goto LABEL_36;
  }

LABEL_4:

LABEL_5:
  v8 = v5;
LABEL_37:

  v41 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(SLAttribution *)self uniqueIdentifier];

  if (!v4)
  {
    v8 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SLAttribution dictionaryRepresentation];
    }

    goto LABEL_34;
  }

  v5 = [(SLAttribution *)self uniqueIdentifier];
  [v3 setObject:v5 forKey:@"uid"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLAttribution isLean](self, "isLean")}];
  [v3 setObject:v6 forKey:@"l"];

  if ([(SLAttribution *)self isLean])
  {
LABEL_3:
    v7 = v3;
    goto LABEL_36;
  }

  v9 = [(SLAttribution *)self attachmentGUID];

  if (v9)
  {
    v10 = [(SLAttribution *)self attachmentGUID];
    [v3 setObject:v10 forKey:@"atg"];
  }

  else
  {
    v10 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [SLAttribution dictionaryRepresentation];
    }
  }

  v11 = [(SLAttribution *)self sourceAppDisplayName];

  if (!v11)
  {
    v8 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SLAttribution dictionaryRepresentation];
    }

    goto LABEL_34;
  }

  v12 = [(SLAttribution *)self sourceAppDisplayName];
  [v3 setObject:v12 forKey:@"sa"];

  v13 = [(SLAttribution *)self conversationIdentifier];

  if (!v13)
  {
    v8 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SLAttribution dictionaryRepresentation];
    }

LABEL_34:

    goto LABEL_35;
  }

  v14 = [(SLAttribution *)self conversationIdentifier];
  [v3 setObject:v14 forKey:@"cid"];

  v15 = [(SLAttribution *)self sender];
  v16 = [v15 dictionaryRepresentation];

  if (v16)
  {
    [v3 setObject:v16 forKey:@"s"];
    v17 = [(SLAttribution *)self relatedPersons];

    if (v17)
    {
      v40 = v16;
      v18 = [MEMORY[0x277CBEB18] array];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v19 = [(SLAttribution *)self relatedPersons];
      v20 = [v19 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v42;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v42 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
            if (!v24)
            {
              v39 = SLFrameworkLogHandle();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                [SLAttribution dictionaryRepresentation];
              }

              v16 = v40;
              goto LABEL_46;
            }

            v25 = v24;
            [v18 addObject:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      [v3 setObject:v18 forKey:@"rp"];
      v26 = [(SLAttribution *)self groupPhotoPath];

      if (v26)
      {
        v27 = [(SLAttribution *)self groupPhotoPath];
        v28 = [v27 path];
        [v3 setObject:v28 forKey:@"gp"];
      }

      v29 = [(SLAttribution *)self groupDisplayName];

      if (v29)
      {
        v30 = [(SLAttribution *)self groupDisplayName];
        [v3 setObject:v30 forKey:@"gdn"];
      }

      v31 = [(SLAttribution *)self timestamp];

      v16 = v40;
      if (v31)
      {
        v32 = [(SLAttribution *)self timestamp];
        [v3 setObject:v32 forKey:@"t"];

        v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLAttribution isPinned](self, "isPinned")}];
        [v3 setObject:v33 forKey:@"pi"];

        v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLAttribution isFromMe](self, "isFromMe")}];
        [v3 setObject:v34 forKey:@"fm"];

        v35 = [(SLAttribution *)self groupID];

        if (v35)
        {
          v36 = [(SLAttribution *)self groupID];
          [v3 setObject:v36 forKey:@"gid"];
        }

        goto LABEL_3;
      }

      v18 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SLAttribution dictionaryRepresentation];
      }
    }

    else
    {
      v18 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SLAttribution dictionaryRepresentation];
      }
    }
  }

  else
  {
    v18 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(SLAttribution *)self dictionaryRepresentation];
    }
  }

LABEL_46:

LABEL_35:
  v7 = 0;
LABEL_36:

  v37 = *MEMORY[0x277D85DE8];

  return v7;
}

- (SLAttribution)initWithCoder:(id)a3
{
  v33[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SLAttribution;
  v5 = [(SLAttribution *)&v32 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sa"];
    sourceAppDisplayName = v5->_sourceAppDisplayName;
    v5->_sourceAppDisplayName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uid"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"atg"];
    attachmentGUID = v5->_attachmentGUID;
    v5->_attachmentGUID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cid"];
    conversationIdentifier = v5->_conversationIdentifier;
    v5->_conversationIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gp"];
    groupPhotoPath = v5->_groupPhotoPath;
    v5->_groupPhotoPath = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gdn"];
    groupDisplayName = v5->_groupDisplayName;
    v5->_groupDisplayName = v16;

    v18 = MEMORY[0x277CBEB98];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    v20 = [v18 setWithArray:v19];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"rp"];
    relatedPersons = v5->_relatedPersons;
    v5->_relatedPersons = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"s"];
    sender = v5->_sender;
    v5->_sender = v23;

    v5->_isGroupConversation = [(NSArray *)v5->_relatedPersons count]> 2;
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"l"];
    v5->_lean = [v25 BOOLValue];

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"t"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v26;

    v5->_pinned = [v4 decodeBoolForKey:@"pi"];
    v5->_fromMe = [v4 decodeBoolForKey:@"fm"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gid"];
    groupID = v5->_groupID;
    v5->_groupID = v28;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SLAttribution *)self sourceAppDisplayName];
  [v4 encodeObject:v5 forKey:@"sa"];

  v6 = [(SLAttribution *)self uniqueIdentifier];
  [v4 encodeObject:v6 forKey:@"uid"];

  v7 = [(SLAttribution *)self attachmentGUID];
  [v4 encodeObject:v7 forKey:@"atg"];

  v8 = [(SLAttribution *)self conversationIdentifier];
  [v4 encodeObject:v8 forKey:@"cid"];

  v9 = [(SLAttribution *)self groupPhotoPath];
  [v4 encodeObject:v9 forKey:@"gp"];

  v10 = [(SLAttribution *)self groupDisplayName];
  [v4 encodeObject:v10 forKey:@"gdn"];

  v11 = [(SLAttribution *)self relatedPersons];
  [v4 encodeObject:v11 forKey:@"rp"];

  v12 = [(SLAttribution *)self sender];
  [v4 encodeObject:v12 forKey:@"s"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLAttribution isLean](self, "isLean")}];
  [v4 encodeObject:v13 forKey:@"l"];

  v14 = [(SLAttribution *)self timestamp];
  [v4 encodeObject:v14 forKey:@"t"];

  [v4 encodeBool:-[SLAttribution isPinned](self forKey:{"isPinned"), @"pi"}];
  [v4 encodeBool:-[SLAttribution isFromMe](self forKey:{"isFromMe"), @"fm"}];
  v15 = [(SLAttribution *)self groupID];
  [v4 encodeObject:v15 forKey:@"gid"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SLAttribution alloc];
  v5 = [(SLAttribution *)self dictionaryRepresentation];
  v6 = [(SLAttribution *)v4 initWithDictionary:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(SLAttribution *)self uniqueIdentifier];
    if (v7 || ([v6 uniqueIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(SLAttribution *)self uniqueIdentifier];
      v9 = [v6 uniqueIdentifier];
      v10 = [v8 isEqualToString:v9];

      if (v7)
      {
LABEL_9:

        v12 = [(SLAttribution *)self isLean];
        v11 = v12 & v10;
        if (v12 || !v10)
        {
          goto LABEL_33;
        }

        v13 = [(SLAttribution *)self sourceAppDisplayName];
        if (v13 || ([v6 sourceAppDisplayName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v14 = [(SLAttribution *)self sourceAppDisplayName];
          v15 = [v6 sourceAppDisplayName];
          v10 = [v14 isEqualToString:v15];

          if (v13)
          {

            if (!v10)
            {
              goto LABEL_32;
            }
          }

          else
          {

            if ((v10 & 1) == 0)
            {
              goto LABEL_32;
            }
          }
        }

        v16 = [(SLAttribution *)self conversationIdentifier];
        if (v16 || ([v6 conversationIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v17 = [(SLAttribution *)self conversationIdentifier];
          v18 = [v6 conversationIdentifier];
          v10 = [v17 isEqualToString:v18];

          if (v16)
          {

            if (!v10)
            {
              goto LABEL_32;
            }
          }

          else
          {

            if ((v10 & 1) == 0)
            {
              goto LABEL_32;
            }
          }
        }

        v19 = [(SLAttribution *)self groupDisplayName];
        if (!v19)
        {
          v3 = [v6 groupDisplayName];
          if (!v3)
          {
LABEL_27:
            v22 = [(SLAttribution *)self sender];
            if (v22 || ([v6 sender], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v23 = [(SLAttribution *)self sender];
              v24 = [v6 sender];
              v11 = [v23 isEqual:v24];

              if (v22)
              {
LABEL_37:

                goto LABEL_33;
              }
            }

            else
            {
              v11 = 1;
            }

            goto LABEL_37;
          }
        }

        v20 = [(SLAttribution *)self groupDisplayName];
        v21 = [v6 groupDisplayName];
        v10 = [v20 isEqualToString:v21];

        if (v19)
        {

          if (v10)
          {
            goto LABEL_27;
          }
        }

        else
        {

          if (v10)
          {
            goto LABEL_27;
          }
        }

LABEL_32:
        v11 = 0;
LABEL_33:

        goto LABEL_34;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_9;
  }

  v11 = 0;
LABEL_34:

  return v11;
}

- (unint64_t)hash
{
  v2 = [(SLAttribution *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = [(SLAttribution *)self isLean];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(SLAttribution *)self uniqueIdentifier];
  v8 = v7;
  if (v3)
  {
    v9 = [v4 stringWithFormat:@"[%@: identifier: %@ ]", v6, v7];
  }

  else
  {
    v21 = [(SLAttribution *)self attachmentGUID];
    v20 = [(SLAttribution *)self sourceAppDisplayName];
    v10 = [(SLAttribution *)self conversationIdentifier];
    v19 = [(SLAttribution *)self groupPhotoPath];
    v11 = [(SLAttribution *)self groupDisplayName];
    [(SLAttribution *)self relatedPersons];
    v12 = v22 = v6;
    v13 = [(SLAttribution *)self sender];
    v14 = [(SLAttribution *)self timestamp];
    v15 = [(SLAttribution *)self isPinned];
    v16 = [(SLAttribution *)self isFromMe];
    v17 = [(SLAttribution *)self groupID];
    v9 = [v4 stringWithFormat:@"[%@: identifier: %@ attachmentGUID:%@ sourceAppDisplayName: %@  conversationIdentifier: %@  groupPhotoPath: %@  displayName: %@  relatedPersons: %@ sender: %@ timestamp: %@ isPinned: %i isFromMe: %i groupID: %@]", v22, v8, v21, v20, v10, v19, v11, v12, v13, v14, v15, v16, v17];

    v6 = v22;
  }

  return v9;
}

+ (id)errorForAttributionDomain:(id)a3 andCode:(int64_t)a4 andUnderlyingError:(id *)a5
{
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = 0;
  if (a4 <= 4)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        v28 = *MEMORY[0x277CCA068];
        v29 = @"SLAttribution Init failed. PPSocialAttribution contains an invalid or nil source app display name.";
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v29;
        v11 = &v28;
      }

      else
      {
        v26 = *MEMORY[0x277CCA068];
        v27 = @"SLAttribution Init failed. PPSocialAttribution contains an invalid or nil conversation name.";
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v27;
        v11 = &v26;
      }
    }

    else if (a4 == 1)
    {
      v32 = *MEMORY[0x277CCA068];
      v33[0] = @"SLAttribution Init failed. Invalid or nil PPSocialAttribution.";
      v9 = MEMORY[0x277CBEAC0];
      v10 = v33;
      v11 = &v32;
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_21;
      }

      v30 = *MEMORY[0x277CCA068];
      v31 = @"SLAttribution Init failed. PPSocialAttribution contains an invalid or nil identifier.";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v31;
      v11 = &v30;
    }
  }

  else if (a4 <= 6)
  {
    if (a4 == 5)
    {
      v24 = *MEMORY[0x277CCA068];
      v25 = @"SLAttribution Init failed. PPSocialAttribution contains an invalid or nil PPSocialSender.";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v25;
      v11 = &v24;
    }

    else
    {
      v22 = *MEMORY[0x277CCA068];
      v23 = @"SLAttribution Init failed. PPSocialAttribution contains an invalid or nil PPSocialSender.";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v23;
      v11 = &v22;
    }
  }

  else
  {
    switch(a4)
    {
      case 7:
        v20 = *MEMORY[0x277CCA068];
        v21 = @"SLAttribution Init failed. PPSocialAttribution contains an invalid or nil timestamp.";
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v21;
        v11 = &v20;
        break;
      case 8:
        v18 = *MEMORY[0x277CCA068];
        v19 = @"SLAttribution Init failed. PPSocialAttribution contains an invalid or nil domain identifier.";
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v19;
        v11 = &v18;
        break;
      case 9:
        v16 = *MEMORY[0x277CCA068];
        v17 = @"SLAttribution Init failed. PPSocialAttribution contains an invalid or nil attachment GUID.";
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v17;
        v11 = &v16;
        break;
      default:
        goto LABEL_21;
    }
  }

  v8 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
LABEL_21:
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

- (void)initWithCSSearchableItem:(void *)a1 error:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 domainIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1(&dword_231772000, v2, v3, "Attempted to initialize SLH using a CSSearchableItem outside the attachment/links domain. Failing initialization from CSSearchableItem. domain: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "SLA dictionary related person was nil. Failing initialization from dictionary. personDictionary: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithDictionary:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_231772000, v0, v1, "SLA dictionary sender person was nil. Failing initialization from dictionary. senderDictionary: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)dictionaryRepresentation
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 sender];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1(&dword_231772000, v2, v3, "SLA the sender SLP failed dictionary serialization. Failing dictionary serialization for the SLA as well. Offending SLP: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end