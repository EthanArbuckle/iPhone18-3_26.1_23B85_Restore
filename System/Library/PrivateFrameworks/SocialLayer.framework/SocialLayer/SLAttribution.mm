@interface SLAttribution
+ (id)errorForAttributionDomain:(id)domain andCode:(int64_t)code andUnderlyingError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (SLAttribution)initWithCSSearchableItem:(id)item error:(id *)error;
- (SLAttribution)initWithCoder:(id)coder;
- (SLAttribution)initWithDictionary:(id)dictionary;
- (SLAttribution)initWithIdentifier:(id)identifier error:(id *)error;
- (SLAttribution)initWithPortraitAttribution:(id)attribution error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)portraitAttribution;
- (unint64_t)hash;
- (void)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLAttribution

- (SLAttribution)initWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SLAttribution;
  v8 = [(SLAttribution *)&v11 init];
  if (!v8)
  {
    goto LABEL_4;
  }

  if ([identifierCopy length])
  {
    objc_storeStrong(&v8->_uniqueIdentifier, identifier);
    v8->_lean = 1;
LABEL_4:
    v9 = v8;
    goto LABEL_5;
  }

  if (error)
  {
    [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:2 andUnderlyingError:0];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_5:

  return v9;
}

- (SLAttribution)initWithPortraitAttribution:(id)attribution error:(id *)error
{
  v79 = *MEMORY[0x277D85DE8];
  attributionCopy = attribution;
  v75.receiver = self;
  v75.super_class = SLAttribution;
  v7 = [(SLAttribution *)&v75 init];
  if (!v7)
  {
LABEL_47:
    v37 = v7;
    goto LABEL_48;
  }

  if (attributionCopy)
  {
    identifier = [attributionCopy identifier];
    v9 = [identifier length];

    if (v9)
    {
      identifier2 = [attributionCopy identifier];
      uniqueIdentifier = v7->_uniqueIdentifier;
      v7->_uniqueIdentifier = identifier2;

      sourceAppDisplayName = [attributionCopy sourceAppDisplayName];
      v13 = [sourceAppDisplayName length];

      if (v13)
      {
        sourceAppDisplayName2 = [attributionCopy sourceAppDisplayName];
        sourceAppDisplayName = v7->_sourceAppDisplayName;
        v7->_sourceAppDisplayName = sourceAppDisplayName2;

        conversationIdentifier = [attributionCopy conversationIdentifier];
        v17 = [conversationIdentifier length];

        if (v17)
        {
          conversationIdentifier2 = [attributionCopy conversationIdentifier];
          conversationIdentifier = v7->_conversationIdentifier;
          v7->_conversationIdentifier = conversationIdentifier2;

          if (objc_opt_respondsToSelector())
          {
            v7->_pinned = [attributionCopy isStarred];
          }

          errorCopy = error;
          groupPhotoPath = [attributionCopy groupPhotoPath];
          groupPhotoPath = v7->_groupPhotoPath;
          v7->_groupPhotoPath = groupPhotoPath;

          obj = objc_opt_new();
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          relatedPeople = [attributionCopy relatedPeople];
          v23 = [relatedPeople countByEnumeratingWithState:&v71 objects:v78 count:16];
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
                  objc_enumerationMutation(relatedPeople);
                }

                v29 = *(*(&v71 + 1) + 8 * v27);
                v30 = [SLPerson alloc];
                v70 = v28;
                v31 = [(SLPerson *)v30 initWithPortraitPerson:v29 error:&v70];
                v25 = v70;

                if (!v31)
                {
                  if (errorCopy)
                  {
                    v69 = v25;
                    v34 = [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:6 andUnderlyingError:&v69];
                    v35 = v69;

                    v36 = v34;
                    *errorCopy = v34;
                    v25 = v35;
                  }

                  goto LABEL_25;
                }

                [obj addObject:v31];

                ++v27;
                v28 = v25;
              }

              while (v24 != v27);
              v24 = [relatedPeople countByEnumeratingWithState:&v71 objects:v78 count:16];
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
          sender = [attributionCopy sender];
          v68 = v25;
          v40 = [(SLPerson *)v38 initWithPortraitPerson:sender error:&v68];
          v41 = v68;

          if (v40)
          {
            objc_storeStrong(&v7->_sender, v40);
            if (objc_opt_respondsToSelector())
            {
              v7->_fromMe = [attributionCopy isFromMe];
            }

            relatedPeople2 = [attributionCopy relatedPeople];
            v7->_isGroupConversation = [relatedPeople2 count] > 2;

            if (v7->_isGroupConversation)
            {
              groupDisplayName = [attributionCopy groupDisplayName];
              groupDisplayName = v7->_groupDisplayName;
              v7->_groupDisplayName = groupDisplayName;

              if (objc_opt_respondsToSelector())
              {
                v45 = objc_alloc(MEMORY[0x277CCAD78]);
                groupId = [attributionCopy groupId];
                v47 = [v45 initWithUUIDString:groupId];
                groupID = v7->_groupID;
                v7->_groupID = v47;
              }
            }

            v7->_lean = 0;
            timestamp = [attributionCopy timestamp];
            timestamp = v7->_timestamp;
            v7->_timestamp = timestamp;

            if (objc_opt_respondsToSelector())
            {
              v51 = MEMORY[0x277CCAAC8];
              v52 = objc_opt_class();
              collaborationMetadata = [attributionCopy collaborationMetadata];
              v66 = 0;
              v54 = [v51 unarchivedObjectOfClass:v52 fromData:collaborationMetadata error:&v66];
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

          if (errorCopy)
          {
            v67 = v41;
            v58 = [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:5 andUnderlyingError:&v67];
            v59 = v67;

            v60 = v58;
            *errorCopy = v58;
            v41 = v59;
          }

LABEL_25:
          goto LABEL_29;
        }

        if (error)
        {
          v32 = objc_opt_class();
          v33 = 4;
          goto LABEL_28;
        }

LABEL_29:
        v37 = 0;
        goto LABEL_48;
      }

      if (!error)
      {
        goto LABEL_29;
      }

      v32 = objc_opt_class();
      v33 = 3;
    }

    else
    {
      if (!error)
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
  *error = v37 = 0;
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
  relatedPersons = [(SLAttribution *)self relatedPersons];
  v5 = [relatedPersons countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(relatedPersons);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x277D3A4D0]);
        handle = [v9 handle];
        displayName = [v9 displayName];
        v13 = [v10 initWithHandle:handle displayName:displayName];
        [v3 addObject:v13];
      }

      v6 = [relatedPersons countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  v14 = objc_alloc(MEMORY[0x277D3A4D0]);
  sender = [(SLAttribution *)self sender];
  handle2 = [sender handle];
  sender2 = [(SLAttribution *)self sender];
  displayName2 = [sender2 displayName];
  v19 = [v14 initWithHandle:handle2 displayName:displayName2];

  v20 = objc_alloc(MEMORY[0x277D3A4B0]);
  uniqueIdentifier = [(SLAttribution *)self uniqueIdentifier];
  sourceAppDisplayName = [(SLAttribution *)self sourceAppDisplayName];
  conversationIdentifier = [(SLAttribution *)self conversationIdentifier];
  groupPhotoPath = [(SLAttribution *)self groupPhotoPath];
  groupDisplayName = [(SLAttribution *)self groupDisplayName];
  timestamp = [(SLAttribution *)self timestamp];
  v27 = [v20 initWithIdentifier:uniqueIdentifier sourceAppDisplayName:sourceAppDisplayName conversationIdentifier:conversationIdentifier groupPhotoPath:groupPhotoPath groupDisplayName:groupDisplayName relatedPeople:v3 sender:v19 timestamp:timestamp];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (SLAttribution)initWithCSSearchableItem:(id)item error:(id *)error
{
  itemCopy = item;
  v68.receiver = self;
  v68.super_class = SLAttribution;
  v7 = [(SLAttribution *)&v68 init];
  if (!v7)
  {
    goto LABEL_71;
  }

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
      [SLAttribution initWithCSSearchableItem:itemCopy error:?];
    }

    if (error)
    {
      *error = [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:8 andUnderlyingError:0];
    }

    goto LABEL_37;
  }

  bundleID = [itemCopy bundleID];
  if ([bundleID length])
  {
    objc_storeStrong(&v7->_sourceAppDisplayName, bundleID);
    attributeSet2 = [itemCopy attributeSet];
    v16 = attributeSet2;
    if (v10)
    {
      uniqueIdentifier = [attributeSet2 uniqueIdentifier];
      uniqueIdentifier2 = 0;
    }

    else if (v12)
    {
      uniqueIdentifier = [attributeSet2 ownerIdentifier];
      uniqueIdentifier2 = [v16 uniqueIdentifier];
    }

    else
    {
      uniqueIdentifier2 = 0;
      uniqueIdentifier = 0;
    }

    if ([uniqueIdentifier length])
    {
      objc_storeStrong(&v7->_uniqueIdentifier, uniqueIdentifier);
      v67 = uniqueIdentifier2;
      if ([uniqueIdentifier2 length])
      {
        v19 = uniqueIdentifier2;
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

      v64 = uniqueIdentifier;
      if (v10)
      {
        domainIdentifier2 = [v16 domainIdentifier];
        v22 = v67;
      }

      else
      {
        v22 = v67;
        if (v12)
        {
          domainIdentifier2 = [v16 accountIdentifier];
        }

        else
        {
          domainIdentifier2 = 0;
        }
      }

      if ([domainIdentifier2 length])
      {
        objc_storeStrong(&v7->_conversationIdentifier, domainIdentifier2);
        groupPhotoPath = [v16 groupPhotoPath];
        if (groupPhotoPath)
        {
          groupPhotoPath = groupPhotoPath;
        }

        else
        {
          customAttributeDictionary = [v16 customAttributeDictionary];
          groupPhotoPath = [customAttributeDictionary objectForKey:@"com_apple_mobilesms_groupPhotoPath"];

          if (!groupPhotoPath)
          {
            groupPhotoPath = v7->_groupPhotoPath;
            v7->_groupPhotoPath = 0;
LABEL_41:

            displayName = [v16 displayName];
            if (!displayName)
            {
              alternateNames = [v16 alternateNames];
              displayName = [alternateNames firstObject];
            }

            v62 = domainIdentifier2;
            objc_storeStrong(&v7->_groupDisplayName, displayName);
            customAttributeDictionary2 = [v16 customAttributeDictionary];
            v32 = [customAttributeDictionary2 objectForKey:@"gid"];

            if (v32)
            {
              v33 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v32];
              groupID = v7->_groupID;
              v7->_groupID = v33;
            }

            v61 = v32;
            obj = [MEMORY[0x277CBEB18] array];
            authorNames = [v16 authorNames];
            firstObject = [authorNames firstObject];

            authorAddresses = [v16 authorAddresses];
            firstObject2 = [authorAddresses firstObject];

            v63 = firstObject2;
            v60 = firstObject;
            if (!firstObject2)
            {
              if (error)
              {
                [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:5 andUnderlyingError:0];
                *error = v54 = 0;
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

            v58 = displayName;
            v59 = bundleID;
            v39 = firstObject;
            if (!v39)
            {
              v40 = SLFrameworkLogHandle();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                [SLAttribution initWithCSSearchableItem:error:];
              }

              v39 = firstObject2;
            }

            v41 = [[SLPerson alloc] initWithHandle:firstObject2 displayName:v39];
            sender = v7->_sender;
            v7->_sender = v41;
            v43 = v41;

            [obj addObject:v43];
            recipientNames = [v16 recipientNames];
            recipientAddresses = [v16 recipientAddresses];
            if (recipientNames && recipientAddresses)
            {
              v45 = [recipientNames count];
              if (v45 != [recipientAddresses count])
              {
LABEL_65:
                if (error)
                {
                  [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:6 andUnderlyingError:0];
                  *error = v54 = 0;
                }

                else
                {
                  v54 = 0;
                }

                displayName = v58;
                bundleID = v59;
                v55 = v64;
                v51 = obj;
                goto LABEL_69;
              }

              if ([recipientNames count])
              {
                v46 = 0;
                while (1)
                {
                  v47 = [recipientNames objectAtIndexedSubscript:{v46, v58, v59, v60}];
                  v48 = [recipientAddresses objectAtIndexedSubscript:v46];
                  v49 = v48;
                  if (!v47 || !v48)
                  {
                    break;
                  }

                  v50 = [[SLPerson alloc] initWithHandle:v48 displayName:v47];
                  [obj addObject:v50];

                  if ([recipientNames count] <= ++v46)
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
            contentCreationDate = [v16 contentCreationDate];
            timestamp = v7->_timestamp;
            v7->_timestamp = contentCreationDate;

            v54 = 1;
            displayName = v58;
            bundleID = v59;
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

      if (error)
      {
        *error = [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:4 andUnderlyingError:0];
      }
    }

    else
    {
      if (error)
      {
        *error = [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:2 andUnderlyingError:0];
      }
    }
  }

  else if (error)
  {
    *error = [objc_opt_class() errorForAttributionDomain:@"com.apple.SocialLayer.SLAttributionErrorDomain" andCode:3 andUnderlyingError:0];
  }

LABEL_37:
LABEL_38:
  v25 = 0;
LABEL_72:

  return v25;
}

- (SLAttribution)initWithDictionary:(id)dictionary
{
  v53 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v51.receiver = self;
  v51.super_class = SLAttribution;
  v5 = [(SLAttribution *)&v51 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [dictionaryCopy objectForKey:@"uid"];
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
  v7 = [dictionaryCopy objectForKey:@"l"];
  v5->_lean = [v7 BOOLValue];

  if (!v5->_lean)
  {
    v9 = [dictionaryCopy objectForKey:@"atg"];
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

    v12 = [dictionaryCopy objectForKey:@"sa"];
    if ([v12 length])
    {
      objc_storeStrong(&v5->_sourceAppDisplayName, v12);
      v13 = [dictionaryCopy objectForKey:@"cid"];
      if ([v13 length])
      {
        objc_storeStrong(&v5->_conversationIdentifier, v13);
        v14 = [dictionaryCopy objectForKey:@"gp"];
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

        v16 = [dictionaryCopy objectForKey:@"gdn"];
        groupDisplayName = v5->_groupDisplayName;
        v5->_groupDisplayName = v16;

        v18 = [dictionaryCopy objectForKey:@"rp"];
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
        v27 = [dictionaryCopy objectForKey:@"s"];
        v28 = [[SLPerson alloc] initWithDictionary:v27];
        if (v28)
        {
          objc_storeStrong(&v5->_sender, v28);
          v5->_isGroupConversation = [(NSArray *)v5->_relatedPersons count]> 2;
          v29 = [dictionaryCopy objectForKey:@"t"];
          timestamp = v5->_timestamp;
          v5->_timestamp = v29;

          [dictionaryCopy objectForKey:@"pi"];
          v32 = v31 = v27;
          v5->_pinned = [v32 BOOLValue];

          v33 = [dictionaryCopy objectForKey:@"fm"];
          v5->_fromMe = [v33 BOOLValue];

          v27 = v31;
          v34 = [dictionaryCopy objectForKey:@"gid"];
          uUID = [v34 UUID];
          groupID = v5->_groupID;
          v5->_groupID = uUID;

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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  uniqueIdentifier = [(SLAttribution *)self uniqueIdentifier];

  if (!uniqueIdentifier)
  {
    v8 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SLAttribution dictionaryRepresentation];
    }

    goto LABEL_34;
  }

  uniqueIdentifier2 = [(SLAttribution *)self uniqueIdentifier];
  [dictionary setObject:uniqueIdentifier2 forKey:@"uid"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLAttribution isLean](self, "isLean")}];
  [dictionary setObject:v6 forKey:@"l"];

  if ([(SLAttribution *)self isLean])
  {
LABEL_3:
    v7 = dictionary;
    goto LABEL_36;
  }

  attachmentGUID = [(SLAttribution *)self attachmentGUID];

  if (attachmentGUID)
  {
    attachmentGUID2 = [(SLAttribution *)self attachmentGUID];
    [dictionary setObject:attachmentGUID2 forKey:@"atg"];
  }

  else
  {
    attachmentGUID2 = SLFrameworkLogHandle();
    if (os_log_type_enabled(attachmentGUID2, OS_LOG_TYPE_DEBUG))
    {
      [SLAttribution dictionaryRepresentation];
    }
  }

  sourceAppDisplayName = [(SLAttribution *)self sourceAppDisplayName];

  if (!sourceAppDisplayName)
  {
    v8 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SLAttribution dictionaryRepresentation];
    }

    goto LABEL_34;
  }

  sourceAppDisplayName2 = [(SLAttribution *)self sourceAppDisplayName];
  [dictionary setObject:sourceAppDisplayName2 forKey:@"sa"];

  conversationIdentifier = [(SLAttribution *)self conversationIdentifier];

  if (!conversationIdentifier)
  {
    v8 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SLAttribution dictionaryRepresentation];
    }

LABEL_34:

    goto LABEL_35;
  }

  conversationIdentifier2 = [(SLAttribution *)self conversationIdentifier];
  [dictionary setObject:conversationIdentifier2 forKey:@"cid"];

  sender = [(SLAttribution *)self sender];
  dictionaryRepresentation = [sender dictionaryRepresentation];

  if (dictionaryRepresentation)
  {
    [dictionary setObject:dictionaryRepresentation forKey:@"s"];
    relatedPersons = [(SLAttribution *)self relatedPersons];

    if (relatedPersons)
    {
      v40 = dictionaryRepresentation;
      array = [MEMORY[0x277CBEB18] array];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      relatedPersons2 = [(SLAttribution *)self relatedPersons];
      v20 = [relatedPersons2 countByEnumeratingWithState:&v41 objects:v45 count:16];
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
              objc_enumerationMutation(relatedPersons2);
            }

            dictionaryRepresentation2 = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
            if (!dictionaryRepresentation2)
            {
              v39 = SLFrameworkLogHandle();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                [SLAttribution dictionaryRepresentation];
              }

              dictionaryRepresentation = v40;
              goto LABEL_46;
            }

            v25 = dictionaryRepresentation2;
            [array addObject:dictionaryRepresentation2];
          }

          v21 = [relatedPersons2 countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      [dictionary setObject:array forKey:@"rp"];
      groupPhotoPath = [(SLAttribution *)self groupPhotoPath];

      if (groupPhotoPath)
      {
        groupPhotoPath2 = [(SLAttribution *)self groupPhotoPath];
        path = [groupPhotoPath2 path];
        [dictionary setObject:path forKey:@"gp"];
      }

      groupDisplayName = [(SLAttribution *)self groupDisplayName];

      if (groupDisplayName)
      {
        groupDisplayName2 = [(SLAttribution *)self groupDisplayName];
        [dictionary setObject:groupDisplayName2 forKey:@"gdn"];
      }

      timestamp = [(SLAttribution *)self timestamp];

      dictionaryRepresentation = v40;
      if (timestamp)
      {
        timestamp2 = [(SLAttribution *)self timestamp];
        [dictionary setObject:timestamp2 forKey:@"t"];

        v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLAttribution isPinned](self, "isPinned")}];
        [dictionary setObject:v33 forKey:@"pi"];

        v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLAttribution isFromMe](self, "isFromMe")}];
        [dictionary setObject:v34 forKey:@"fm"];

        groupID = [(SLAttribution *)self groupID];

        if (groupID)
        {
          groupID2 = [(SLAttribution *)self groupID];
          [dictionary setObject:groupID2 forKey:@"gid"];
        }

        goto LABEL_3;
      }

      array = SLFrameworkLogHandle();
      if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
      {
        [SLAttribution dictionaryRepresentation];
      }
    }

    else
    {
      array = SLFrameworkLogHandle();
      if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
      {
        [SLAttribution dictionaryRepresentation];
      }
    }
  }

  else
  {
    array = SLFrameworkLogHandle();
    if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
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

- (SLAttribution)initWithCoder:(id)coder
{
  v33[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = SLAttribution;
  v5 = [(SLAttribution *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sa"];
    sourceAppDisplayName = v5->_sourceAppDisplayName;
    v5->_sourceAppDisplayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uid"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"atg"];
    attachmentGUID = v5->_attachmentGUID;
    v5->_attachmentGUID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cid"];
    conversationIdentifier = v5->_conversationIdentifier;
    v5->_conversationIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gp"];
    groupPhotoPath = v5->_groupPhotoPath;
    v5->_groupPhotoPath = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gdn"];
    groupDisplayName = v5->_groupDisplayName;
    v5->_groupDisplayName = v16;

    v18 = MEMORY[0x277CBEB98];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    v20 = [v18 setWithArray:v19];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"rp"];
    relatedPersons = v5->_relatedPersons;
    v5->_relatedPersons = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"s"];
    sender = v5->_sender;
    v5->_sender = v23;

    v5->_isGroupConversation = [(NSArray *)v5->_relatedPersons count]> 2;
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"l"];
    v5->_lean = [v25 BOOLValue];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"t"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v26;

    v5->_pinned = [coderCopy decodeBoolForKey:@"pi"];
    v5->_fromMe = [coderCopy decodeBoolForKey:@"fm"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gid"];
    groupID = v5->_groupID;
    v5->_groupID = v28;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sourceAppDisplayName = [(SLAttribution *)self sourceAppDisplayName];
  [coderCopy encodeObject:sourceAppDisplayName forKey:@"sa"];

  uniqueIdentifier = [(SLAttribution *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uid"];

  attachmentGUID = [(SLAttribution *)self attachmentGUID];
  [coderCopy encodeObject:attachmentGUID forKey:@"atg"];

  conversationIdentifier = [(SLAttribution *)self conversationIdentifier];
  [coderCopy encodeObject:conversationIdentifier forKey:@"cid"];

  groupPhotoPath = [(SLAttribution *)self groupPhotoPath];
  [coderCopy encodeObject:groupPhotoPath forKey:@"gp"];

  groupDisplayName = [(SLAttribution *)self groupDisplayName];
  [coderCopy encodeObject:groupDisplayName forKey:@"gdn"];

  relatedPersons = [(SLAttribution *)self relatedPersons];
  [coderCopy encodeObject:relatedPersons forKey:@"rp"];

  sender = [(SLAttribution *)self sender];
  [coderCopy encodeObject:sender forKey:@"s"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[SLAttribution isLean](self, "isLean")}];
  [coderCopy encodeObject:v13 forKey:@"l"];

  timestamp = [(SLAttribution *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"t"];

  [coderCopy encodeBool:-[SLAttribution isPinned](self forKey:{"isPinned"), @"pi"}];
  [coderCopy encodeBool:-[SLAttribution isFromMe](self forKey:{"isFromMe"), @"fm"}];
  groupID = [(SLAttribution *)self groupID];
  [coderCopy encodeObject:groupID forKey:@"gid"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SLAttribution alloc];
  dictionaryRepresentation = [(SLAttribution *)self dictionaryRepresentation];
  v6 = [(SLAttribution *)v4 initWithDictionary:dictionaryRepresentation];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    uniqueIdentifier = [(SLAttribution *)self uniqueIdentifier];
    if (uniqueIdentifier || ([v6 uniqueIdentifier], (groupDisplayName2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      uniqueIdentifier2 = [(SLAttribution *)self uniqueIdentifier];
      uniqueIdentifier3 = [v6 uniqueIdentifier];
      v10 = [uniqueIdentifier2 isEqualToString:uniqueIdentifier3];

      if (uniqueIdentifier)
      {
LABEL_9:

        isLean = [(SLAttribution *)self isLean];
        v11 = isLean & v10;
        if (isLean || !v10)
        {
          goto LABEL_33;
        }

        sourceAppDisplayName = [(SLAttribution *)self sourceAppDisplayName];
        if (sourceAppDisplayName || ([v6 sourceAppDisplayName], (groupDisplayName2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          sourceAppDisplayName2 = [(SLAttribution *)self sourceAppDisplayName];
          sourceAppDisplayName3 = [v6 sourceAppDisplayName];
          v10 = [sourceAppDisplayName2 isEqualToString:sourceAppDisplayName3];

          if (sourceAppDisplayName)
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

        conversationIdentifier = [(SLAttribution *)self conversationIdentifier];
        if (conversationIdentifier || ([v6 conversationIdentifier], (groupDisplayName2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          conversationIdentifier2 = [(SLAttribution *)self conversationIdentifier];
          conversationIdentifier3 = [v6 conversationIdentifier];
          v10 = [conversationIdentifier2 isEqualToString:conversationIdentifier3];

          if (conversationIdentifier)
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

        groupDisplayName = [(SLAttribution *)self groupDisplayName];
        if (!groupDisplayName)
        {
          groupDisplayName2 = [v6 groupDisplayName];
          if (!groupDisplayName2)
          {
LABEL_27:
            sender = [(SLAttribution *)self sender];
            if (sender || ([v6 sender], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              sender2 = [(SLAttribution *)self sender];
              sender3 = [v6 sender];
              v11 = [sender2 isEqual:sender3];

              if (sender)
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

        groupDisplayName3 = [(SLAttribution *)self groupDisplayName];
        groupDisplayName4 = [v6 groupDisplayName];
        v10 = [groupDisplayName3 isEqualToString:groupDisplayName4];

        if (groupDisplayName)
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
  uniqueIdentifier = [(SLAttribution *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (id)description
{
  isLean = [(SLAttribution *)self isLean];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  uniqueIdentifier = [(SLAttribution *)self uniqueIdentifier];
  v8 = uniqueIdentifier;
  if (isLean)
  {
    v9 = [v4 stringWithFormat:@"[%@: identifier: %@ ]", v6, uniqueIdentifier];
  }

  else
  {
    attachmentGUID = [(SLAttribution *)self attachmentGUID];
    sourceAppDisplayName = [(SLAttribution *)self sourceAppDisplayName];
    conversationIdentifier = [(SLAttribution *)self conversationIdentifier];
    groupPhotoPath = [(SLAttribution *)self groupPhotoPath];
    groupDisplayName = [(SLAttribution *)self groupDisplayName];
    [(SLAttribution *)self relatedPersons];
    v12 = v22 = v6;
    sender = [(SLAttribution *)self sender];
    timestamp = [(SLAttribution *)self timestamp];
    isPinned = [(SLAttribution *)self isPinned];
    isFromMe = [(SLAttribution *)self isFromMe];
    groupID = [(SLAttribution *)self groupID];
    v9 = [v4 stringWithFormat:@"[%@: identifier: %@ attachmentGUID:%@ sourceAppDisplayName: %@  conversationIdentifier: %@  groupPhotoPath: %@  displayName: %@  relatedPersons: %@ sender: %@ timestamp: %@ isPinned: %i isFromMe: %i groupID: %@]", v22, v8, attachmentGUID, sourceAppDisplayName, conversationIdentifier, groupPhotoPath, groupDisplayName, v12, sender, timestamp, isPinned, isFromMe, groupID];

    v6 = v22;
  }

  return v9;
}

+ (id)errorForAttributionDomain:(id)domain andCode:(int64_t)code andUnderlyingError:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v8 = 0;
  if (code <= 4)
  {
    if (code > 2)
    {
      if (code == 3)
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

    else if (code == 1)
    {
      v32 = *MEMORY[0x277CCA068];
      v33[0] = @"SLAttribution Init failed. Invalid or nil PPSocialAttribution.";
      v9 = MEMORY[0x277CBEAC0];
      v10 = v33;
      v11 = &v32;
    }

    else
    {
      if (code != 2)
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

  else if (code <= 6)
  {
    if (code == 5)
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
    switch(code)
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
  sender = [self sender];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1(&dword_231772000, v2, v3, "SLA the sender SLP failed dictionary serialization. Failing dictionary serialization for the SLA as well. Offending SLP: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end