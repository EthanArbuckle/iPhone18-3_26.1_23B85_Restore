@interface SLDCollaborationAttributionViewSlotTag
+ (id)_personOtherThanPerson:(id)a3 inArray:(id)a4;
+ (id)conversationDrawingMetadataForAttributions:(id)a3;
+ (id)displayNamesForPersons:(id)a3;
+ (id)placeholderTagForMaxWidth:(double)a3 placeholderGlyphConfiguration:(id)a4;
+ (id)recipientsForAttribution:(id)a3;
+ (id)tagForTitle:(id)a3 attributions:(id)a4 placeholderGlyphConfiguration:(id)a5 maxWidth:(double)a6 variant:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (SLDCollaborationAttributionViewSlotTag)initWithCoder:(id)a3;
- (SLDCollaborationAttributionViewSlotTag)initWithTitle:(id)a3 attributions:(id)a4 placeholderGlyphConfiguration:(id)a5 maxWidth:(double)a6 variant:(int64_t)a7 isPlaceholder:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)resolvedStyleForStyle:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SLDCollaborationAttributionViewSlotTag

+ (id)placeholderTagForMaxWidth:(double)a3 placeholderGlyphConfiguration:(id)a4
{
  v5 = a4;
  v6 = [SLDCollaborationAttributionViewSlotTag alloc];
  v7 = [(SLDCollaborationAttributionViewSlotTag *)v6 initWithTitle:&stru_28468DAB8 attributions:MEMORY[0x277CBEBF8] placeholderGlyphConfiguration:v5 maxWidth:1 variant:1 isPlaceholder:a3];

  return v7;
}

+ (id)tagForTitle:(id)a3 attributions:(id)a4 placeholderGlyphConfiguration:(id)a5 maxWidth:(double)a6 variant:(int64_t)a7
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[SLDCollaborationAttributionViewSlotTag alloc] initWithTitle:v13 attributions:v12 placeholderGlyphConfiguration:v11 maxWidth:a7 variant:0 isPlaceholder:a6];

  return v14;
}

- (SLDCollaborationAttributionViewSlotTag)initWithTitle:(id)a3 attributions:(id)a4 placeholderGlyphConfiguration:(id)a5 maxWidth:(double)a6 variant:(int64_t)a7 isPlaceholder:(BOOL)a8
{
  v55 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v49.receiver = self;
  v49.super_class = SLDCollaborationAttributionViewSlotTag;
  v18 = [(SLDCollaborationAttributionViewSlotTag *)&v49 init];
  v19 = v18;
  if (v18)
  {
    v43 = v17;
    v44 = v15;
    v18->_isPlaceholder = a8;
    objc_storeStrong(&v18->_placeholderGlyphConfiguration, a5);
    objc_storeStrong(&v19->_title, a3);
    v19->_maxWidth = a6;
    *&v20 = a6;
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    widthNumber = v19->_widthNumber;
    v19->_widthNumber = v21;

    v19->_variant = a7;
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v25 = v16;
    v26 = [v25 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v46;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v46 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v45 + 1) + 8 * i);
          v31 = [v30 groupDisplayName];

          if (v31)
          {
            v32 = [v30 groupDisplayName];
            [v23 addObject:v32];
          }

          else
          {
            v32 = [objc_opt_class() recipientsForAttribution:v30];
            [v24 addObjectsFromArray:v32];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v27);
    }

    v33 = objc_opt_class();
    v34 = [v24 allObjects];
    v35 = [v33 displayNamesForPersons:v34];
    [v23 addObjectsFromArray:v35];

    v36 = SLDaemonLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v51 = v25;
      v52 = 2112;
      v53 = v24;
      _os_log_impl(&dword_231772000, v36, OS_LOG_TYPE_DEFAULT, "SLDCollaborationAttributionViewSlotTag attributions: %@ Generated people %@", buf, 0x16u);
    }

    v37 = [v23 copy];
    collaboratorDisplayNames = v19->_collaboratorDisplayNames;
    v19->_collaboratorDisplayNames = v37;

    v39 = [objc_opt_class() conversationDrawingMetadataForAttributions:v25];
    conversationDrawingMetadata = v19->_conversationDrawingMetadata;
    v19->_conversationDrawingMetadata = v39;

    v17 = v43;
    v15 = v44;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SLDCollaborationAttributionViewSlotTag *)self widthNumber];
  v5 = [v3 stringWithFormat:@"<SLDCollaborationAttributionViewSlotTag: %p> maxWidth:[%@]", self, v4];

  return v5;
}

- (id)resolvedStyleForStyle:(id)a3
{
  v15 = MEMORY[0x277D777E0];
  v3 = a3;
  v4 = [v3 accessibilityButtonShapes];
  v5 = [v3 accessibilityContrast];
  v6 = [v3 displayScale];
  v7 = [v3 layoutDirection];
  v8 = [v3 localization];
  v9 = [v3 preferredContentSizeCategory];
  v10 = [v3 tintColor];
  v11 = [v3 userInterfaceIdiom];
  v12 = [v3 userInterfaceStyle];

  v13 = [v15 slotStyleWithAccessibilityButtonShapes:v4 accessibilityContrast:v5 displayRange:1 displayScale:v6 layoutDirection:v7 legibilityWeight:0 localization:v8 preferredContentSizeCategory:v9 tintColor:v10 userInterfaceIdiom:v11 userInterfaceStyle:v12];

  return v13;
}

+ (id)conversationDrawingMetadataForAttributions:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v4;
  v45 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v45)
  {
    v44 = *v53;
    *&v6 = 138412546;
    v40 = v6;
    v41 = v5;
    v42 = a1;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v53 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v52 + 1) + 8 * i);
        v9 = [a1 recipientsForAttribution:{v8, v40}];
        if (![v9 count])
        {
          v10 = SLDaemonLogHandle();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v34 = [v8 uniqueIdentifier];
            *buf = v40;
            v58 = a1;
            v59 = 2112;
            v60 = v34;
            _os_log_error_impl(&dword_231772000, v10, OS_LOG_TYPE_ERROR, "[%@] SLDCollaborationAttributionViewSlotTag Found no recipients for attribution with identifier %@", buf, 0x16u);
          }
        }

        v11 = SLDaemonLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v8 uniqueIdentifier];
          *buf = 138412802;
          v58 = a1;
          v59 = 2112;
          v60 = v12;
          v61 = 2112;
          v62 = v9;
          _os_log_impl(&dword_231772000, v11, OS_LOG_TYPE_DEFAULT, "[%@] SLDCollaborationAttributionViewSlotTag ID: %@ found recipients %@", buf, 0x20u);
        }

        v46 = v8;
        v47 = v9;
        if ([v8 isGroupConversation] && objc_msgSend(v9, "count") >= 2)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v14 = v9;
          v15 = [v14 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v49;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v49 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v48 + 1) + 8 * j);
                v20 = [SLCollaborationAttributionRecipientDrawingMetadata alloc];
                v21 = [v19 contact];
                v22 = [v19 thumbnailImageData];
                v23 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v20 initWithContact:v21 contactImageData:v22];

                [v13 addObject:v23];
              }

              v16 = [v14 countByEnumeratingWithState:&v48 objects:v56 count:16];
            }

            while (v16);
          }

          v24 = [SLCollaborationAttributionConversationDrawingMetadata alloc];
          v25 = [v46 groupPhotoPath];
          v26 = [v46 groupID];
          v27 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v26 UUIDString];
          v28 = [(SLCollaborationAttributionConversationDrawingMetadata *)v24 initWithGroupPhotoFileURL:v25 recipientDrawingMetadata:v13 groupID:v27];

          v5 = v41;
          a1 = v42;
        }

        else
        {
          if ([v9 count] >= 2)
          {
            v29 = SLDaemonLogHandle();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v35 = [v8 uniqueIdentifier];
              *buf = v40;
              v58 = a1;
              v59 = 2112;
              v60 = v35;
              _os_log_error_impl(&dword_231772000, v29, OS_LOG_TYPE_ERROR, "[%@] SLDCollaborationAttributionViewSlotTag Found more than one recipient, but attribution.isGroupConversation was NO. attribution.uniqueIdentifier: %@", buf, 0x16u);
            }
          }

          v13 = [v9 firstObject];
          v30 = [v13 contact];
          v25 = [v30 thumbnailImageData];

          if (!v25)
          {
            v25 = [v13 thumbnailImageData];
          }

          v31 = [SLCollaborationAttributionRecipientDrawingMetadata alloc];
          v32 = [v13 contact];
          v26 = [(SLCollaborationAttributionRecipientDrawingMetadata *)v31 initWithContact:v32 contactImageData:v25];

          v28 = [[SLCollaborationAttributionConversationDrawingMetadata alloc] initWithRecipientDrawingMetadata:v26];
        }

        if (v28)
        {
          [v5 addObject:v28];
        }

        else
        {
          v33 = SLDaemonLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v36 = [v46 uniqueIdentifier];
            *buf = v40;
            v58 = a1;
            v59 = 2112;
            v60 = v36;
            _os_log_error_impl(&dword_231772000, v33, OS_LOG_TYPE_ERROR, "[%@] SLDCollaborationAttributionViewSlotTag conversationDrawingMetadata was nil! Skipping. attribution.uniqueIdentifier: %@", buf, 0x16u);
          }
        }
      }

      v45 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v45);
  }

  v37 = [v5 copy];
  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (id)_personOtherThanPerson:(id)a3 inArray:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ((SLPersonIsEqualToPerson(v10, v5) & 1) == 0)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)displayNamesForPersons:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 shortDisplayName];
        if (v11)
        {
          [v4 addObject:v11];
        }

        else
        {
          v12 = [v10 displayName];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)recipientsForAttribution:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = +[SLPerson fetchMeContact];
  if ([v3 isFromMe])
  {
    v6 = [v3 sender];
  }

  else
  {
    v6 = 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = v3;
  v7 = [v3 relatedPersons];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 contact];
        if ([v13 isEqual:v5])
        {
        }

        else
        {
          IsEqualToPerson = SLPersonIsEqualToPerson(v6, v12);

          if ((IsEqualToPerson & 1) == 0)
          {
            [v4 addObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (SLDCollaborationAttributionViewSlotTag)initWithCoder:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SLDCollaborationAttributionViewSlotTag;
  v5 = [(SLDCollaborationAttributionViewSlotTag *)&v22 init];
  if (v5)
  {
    v5->_isPlaceholder = [v4 decodeBoolForKey:@"isPlaceholder"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"collaboratorDisplayNames"];
    collaboratorDisplayNames = v5->_collaboratorDisplayNames;
    v5->_collaboratorDisplayNames = v11;

    [v4 decodeDoubleForKey:@"maxWidth"];
    v5->_maxWidth = v13;
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maxWidthNumber"];
    widthNumber = v5->_widthNumber;
    v5->_widthNumber = v14;

    v5->_variant = [v4 decodeIntegerForKey:@"variant"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"conversationMetadata"];
    conversationDrawingMetadata = v5->_conversationDrawingMetadata;
    v5->_conversationDrawingMetadata = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolConfigKey"];
    placeholderGlyphConfiguration = v5->_placeholderGlyphConfiguration;
    v5->_placeholderGlyphConfiguration = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[SLDCollaborationAttributionViewSlotTag isPlaceholder](self forKey:{"isPlaceholder"), @"isPlaceholder"}];
  v5 = [(SLDCollaborationAttributionViewSlotTag *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(SLDCollaborationAttributionViewSlotTag *)self collaboratorDisplayNames];
  [v4 encodeObject:v6 forKey:@"collaboratorDisplayNames"];

  [(SLDCollaborationAttributionViewSlotTag *)self maxWidth];
  [v4 encodeDouble:@"maxWidth" forKey:?];
  v7 = [(SLDCollaborationAttributionViewSlotTag *)self widthNumber];
  [v4 encodeObject:v7 forKey:@"maxWidthNumber"];

  [v4 encodeInteger:-[SLDCollaborationAttributionViewSlotTag variant](self forKey:{"variant"), @"variant"}];
  v8 = [(SLDCollaborationAttributionViewSlotTag *)self conversationDrawingMetadata];
  [v4 encodeObject:v8 forKey:@"conversationMetadata"];

  v9 = [(SLDCollaborationAttributionViewSlotTag *)self placeholderGlyphConfiguration];
  [v4 encodeObject:v9 forKey:@"symbolConfigKey"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setIsPlaceholder:{-[SLDCollaborationAttributionViewSlotTag isPlaceholder](self, "isPlaceholder")}];
  v5 = [(SLDCollaborationAttributionViewSlotTag *)self title];
  [v4 setTitle:v5];

  v6 = [(SLDCollaborationAttributionViewSlotTag *)self collaboratorDisplayNames];
  [v4 setCollaboratorDisplayNames:v6];

  [(SLDCollaborationAttributionViewSlotTag *)self maxWidth];
  [v4 setMaxWidth:?];
  v7 = [(SLDCollaborationAttributionViewSlotTag *)self widthNumber];
  [v4 setWidthNumber:v7];

  [v4 setVariant:{-[SLDCollaborationAttributionViewSlotTag variant](self, "variant")}];
  v8 = [(SLDCollaborationAttributionViewSlotTag *)self conversationDrawingMetadata];
  [v4 setConversationDrawingMetadata:v8];

  v9 = [(SLDCollaborationAttributionViewSlotTag *)self placeholderGlyphConfiguration];
  [v4 setPlaceholderGlyphConfiguration:v9];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = v6;
    if (v6 == self)
    {
      v20 = 1;
LABEL_48:

      goto LABEL_49;
    }

    v8 = [(SLDCollaborationAttributionViewSlotTag *)v6 isPlaceholder];
    if (v8 != [(SLDCollaborationAttributionViewSlotTag *)self isPlaceholder])
    {
      goto LABEL_47;
    }

    [(SLDCollaborationAttributionViewSlotTag *)v7 maxWidth];
    v10 = v9;
    [(SLDCollaborationAttributionViewSlotTag *)self maxWidth];
    if (!SL_CGFloatApproximatelyEqualToFloat(v10, v11))
    {
      goto LABEL_47;
    }

    v12 = [(SLDCollaborationAttributionViewSlotTag *)self title];
    if (v12 || ([(SLDCollaborationAttributionViewSlotTag *)v7 title], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = [(SLDCollaborationAttributionViewSlotTag *)self title];
      if (!v13)
      {
        goto LABEL_43;
      }

      v14 = v13;
      v15 = [(SLDCollaborationAttributionViewSlotTag *)v7 title];
      if (!v15)
      {
        goto LABEL_42;
      }

      v16 = v15;
      v17 = [(SLDCollaborationAttributionViewSlotTag *)self title];
      v18 = [(SLDCollaborationAttributionViewSlotTag *)v7 title];
      v19 = [v17 isEqualToString:v18];

      if (v12)
      {

        if (!v19)
        {
          goto LABEL_47;
        }
      }

      else
      {

        if ((v19 & 1) == 0)
        {
          goto LABEL_47;
        }
      }
    }

    v21 = [(SLDCollaborationAttributionViewSlotTag *)self collaboratorDisplayNames];
    if (v21 || ([(SLDCollaborationAttributionViewSlotTag *)v7 collaboratorDisplayNames], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = [(SLDCollaborationAttributionViewSlotTag *)self collaboratorDisplayNames];
      v23 = [(SLDCollaborationAttributionViewSlotTag *)v7 collaboratorDisplayNames];
      v24 = [v22 isEqualToArray:v23];

      if (v21)
      {

        if (!v24)
        {
          goto LABEL_47;
        }
      }

      else
      {

        if ((v24 & 1) == 0)
        {
          goto LABEL_47;
        }
      }
    }

    v12 = [(SLDCollaborationAttributionViewSlotTag *)self widthNumber];
    if (v12 || ([(SLDCollaborationAttributionViewSlotTag *)v7 widthNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = [(SLDCollaborationAttributionViewSlotTag *)self widthNumber];
      if (!v25)
      {
        goto LABEL_43;
      }

      v14 = v25;
      v26 = [(SLDCollaborationAttributionViewSlotTag *)v7 widthNumber];
      if (!v26)
      {
        goto LABEL_42;
      }

      v27 = v26;
      v28 = [(SLDCollaborationAttributionViewSlotTag *)self widthNumber];
      v29 = [(SLDCollaborationAttributionViewSlotTag *)v7 widthNumber];
      v30 = [v28 isEqualToNumber:v29];

      if (v12)
      {

        if (!v30)
        {
          goto LABEL_47;
        }
      }

      else
      {

        if ((v30 & 1) == 0)
        {
          goto LABEL_47;
        }
      }
    }

    v31 = [(SLDCollaborationAttributionViewSlotTag *)self variant];
    if (v31 != [(SLDCollaborationAttributionViewSlotTag *)v7 variant])
    {
      goto LABEL_47;
    }

    v12 = [(SLDCollaborationAttributionViewSlotTag *)self conversationDrawingMetadata];
    if (!v12)
    {
      v3 = [(SLDCollaborationAttributionViewSlotTag *)v7 conversationDrawingMetadata];
      if (!v3)
      {
LABEL_36:
        v12 = [(SLDCollaborationAttributionViewSlotTag *)self placeholderGlyphConfiguration];
        if (!v12)
        {
          v3 = [(SLDCollaborationAttributionViewSlotTag *)v7 placeholderGlyphConfiguration];
          if (!v3)
          {
            v20 = 1;
LABEL_54:

            goto LABEL_45;
          }
        }

        v38 = [(SLDCollaborationAttributionViewSlotTag *)self placeholderGlyphConfiguration];
        if (v38)
        {
          v39 = v38;
          v40 = [(SLDCollaborationAttributionViewSlotTag *)v7 placeholderGlyphConfiguration];
          if (v40)
          {
            v41 = v40;
            v42 = [(SLDCollaborationAttributionViewSlotTag *)self placeholderGlyphConfiguration];
            v43 = [(SLDCollaborationAttributionViewSlotTag *)v7 placeholderGlyphConfiguration];
            v20 = [v42 isEqual:v43];

            if (!v12)
            {
              goto LABEL_54;
            }

LABEL_45:

            goto LABEL_48;
          }
        }

        v20 = 0;
        if (!v12)
        {
          goto LABEL_54;
        }

        goto LABEL_45;
      }
    }

    v32 = [(SLDCollaborationAttributionViewSlotTag *)self conversationDrawingMetadata];
    if (!v32)
    {
LABEL_43:
      v20 = 0;
      if (!v12)
      {
        v12 = v3;
      }

      goto LABEL_45;
    }

    v14 = v32;
    v33 = [(SLDCollaborationAttributionViewSlotTag *)v7 conversationDrawingMetadata];
    if (v33)
    {
      v34 = v33;
      v35 = [(SLDCollaborationAttributionViewSlotTag *)self conversationDrawingMetadata];
      v36 = [(SLDCollaborationAttributionViewSlotTag *)v7 conversationDrawingMetadata];
      v37 = [v35 isEqualToArray:v36];

      if (v12)
      {

        if (v37)
        {
          goto LABEL_36;
        }
      }

      else
      {

        if (v37)
        {
          goto LABEL_36;
        }
      }

LABEL_47:
      v20 = 0;
      goto LABEL_48;
    }

LABEL_42:

    goto LABEL_43;
  }

  v20 = 0;
LABEL_49:

  return v20;
}

- (unint64_t)hash
{
  v3 = [(SLDCollaborationAttributionViewSlotTag *)self widthNumber];
  v4 = [v3 hash];
  v5 = [(SLDCollaborationAttributionViewSlotTag *)self collaboratorDisplayNames];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(SLDCollaborationAttributionViewSlotTag *)self variant];
  v8 = [(SLDCollaborationAttributionViewSlotTag *)self isPlaceholder];
  v9 = [(SLDCollaborationAttributionViewSlotTag *)self conversationDrawingMetadata];
  v10 = v7 ^ v8 ^ [v9 hash];
  v11 = [(SLDCollaborationAttributionViewSlotTag *)self title];
  v12 = [v11 hash];
  v13 = [(SLDCollaborationAttributionViewSlotTag *)self placeholderGlyphConfiguration];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

@end