@interface SSMessageResultBuilder
- (SSMessageResultBuilder)initWithResult:(id)a3;
- (id)buildAttachmentSummary;
- (id)buildAttachmentThumbnail;
- (id)buildCompactCardSection;
- (id)buildDescriptions;
- (id)buildInlineCardSection;
- (id)buildThumbnail;
- (id)buildTitle;
@end

@implementation SSMessageResultBuilder

- (SSMessageResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = SSMessageResultBuilder;
  v5 = [(SSResultBuilder *)&v38 initWithResult:v4];
  v6 = v5;
  if (v5)
  {
    v36 = v5;
    v7 = [v4 valueForAttribute:*MEMORY[0x1E6963C98] withType:objc_opt_class()];
    v37 = [v4 valueForAttribute:*MEMORY[0x1E6963CA0] withType:objc_opt_class()];
    v8 = [v4 valueForAttribute:*MEMORY[0x1E6963CA8] withType:objc_opt_class()];
    v33 = [v4 valueForAttribute:*MEMORY[0x1E6963D18] withType:objc_opt_class()];
    v34 = [v4 valueForAttribute:*MEMORY[0x1E6963D00] withType:objc_opt_class()];
    v32 = [v4 valueForAttribute:*MEMORY[0x1E69649F8] withType:objc_opt_class()];
    v35 = [v4 valueForAttribute:*MEMORY[0x1E6963CF8] withType:objc_opt_class()];
    v6 = v36;
    v9 = [v4 valueForAttribute:*MEMORY[0x1E69649E8] withType:objc_opt_class()];
    v10 = [v7 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    [(SSMessageResultBuilder *)v36 setAttachmentNames:v11];

    v12 = [v37 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v37;
    }

    else
    {
      v13 = 0;
    }

    [(SSMessageResultBuilder *)v36 setAttachmentPaths:v13];

    v14 = [v8 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v8;
    }

    else
    {
      v15 = 0;
    }

    [(SSMessageResultBuilder *)v36 setAttachmentTypes:v15];

    v16 = [v4 valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
    [(SSMessageResultBuilder *)v36 setGroupDisplayName:v16];

    v17 = [v4 valueForAttribute:*MEMORY[0x1E69643E8] withType:objc_opt_class()];
    [(SSMessageResultBuilder *)v36 setGroupPhotoPath:v17];

    v18 = [v4 valueForAttribute:*MEMORY[0x1E6964B18] withType:objc_opt_class()];
    [(SSMessageResultBuilder *)v36 setMessage:v18];

    v19 = isMacOS();
    v20 = MEMORY[0x1E69642B8];
    if (!v19)
    {
      v20 = MEMORY[0x1E6964C48];
    }

    v21 = [v4 valueForAttribute:*v20 withType:objc_opt_class()];
    [(SSMessageResultBuilder *)v36 setMessageId:v21];

    v22 = [v33 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v33;
    }

    else
    {
      v23 = v34;
    }

    [(SSMessageResultBuilder *)v36 setSenders:v23];

    v24 = [v32 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v32;
    }

    else
    {
      v25 = 0;
    }

    [(SSMessageResultBuilder *)v36 setRecipients:v25];

    v26 = [v4 valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
    [(SSMessageResultBuilder *)v36 setSendDate:v26];

    v27 = [v35 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v35;
    }

    else
    {
      v28 = 0;
    }

    [(SSMessageResultBuilder *)v36 setSenderContactIds:v28];

    v29 = [v9 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v9;
    }

    else
    {
      v30 = 0;
    }

    [(SSMessageResultBuilder *)v36 setRecipientContactIds:v30];
  }

  return v6;
}

- (id)buildInlineCardSection
{
  v10.receiver = self;
  v10.super_class = SSMessageResultBuilder;
  v3 = [(SSResultBuilder *)&v10 buildInlineCardSection];
  v4 = MEMORY[0x1E69CA0F0];
  v5 = [(SSMessageResultBuilder *)self sendDate];
  v6 = [SSDateFormatManager dynamicCompactStringFromDate:v5];
  v7 = [v4 textWithString:v6];
  [v3 setSecondaryTitle:v7];

  [v3 setIsSecondaryTitleDetached:1];
  v8 = [(SSMessageResultBuilder *)self buildAttachmentThumbnail];
  [v3 setTrailingThumbnail:v8];

  return v3;
}

- (id)buildDescriptions
{
  v34[1] = *MEMORY[0x1E69E9840];
  v3 = [(SSResultBuilder *)self coreSpotlightId];
  v5 = isMessagesAttachmentCoreSpotlightId(v3, v4);

  if (v5)
  {
    v6 = [(SSMessageResultBuilder *)self attachmentPaths];
    v7 = [v6 firstObject];
    v8 = [v7 lastPathComponent];

    v9 = v8;
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      goto LABEL_12;
    }
  }

  v10 = [(SSMessageResultBuilder *)self message];
  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = [(SSMessageResultBuilder *)self message];
  v13 = [(SSResultBuilder *)self matchedStrings];
  v14 = [v13 firstObject];
  v15 = [v12 isEqual:v14];

  if (!v15)
  {
LABEL_10:
    v10 = 0;
LABEL_11:
    v11 = 1;
LABEL_12:
    v20 = [(SSResultBuilder *)self result];
    v21 = [v20 formattedSnippet];
    if (v21)
    {
      v22 = v21;
      v23 = [(SSResultBuilder *)self result];
      v24 = [v23 formattedSnippet];
      v25 = [v24 formattedTextPieces];
      v26 = [v25 count];

      if (v26)
      {
        v27 = [(SSResultBuilder *)self result];
        v28 = [v27 formattedSnippet];
        v33 = v28;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];

        v19 = v10;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
    }

    v19 = v10;
    if (v11)
    {
      v19 = [(SSMessageResultBuilder *)self message];
    }

    if (!v19)
    {
      v19 = [(SSMessageResultBuilder *)self buildAttachmentSummary];
      if (!v19)
      {
        v18 = 0;
        goto LABEL_22;
      }
    }

    v27 = [MEMORY[0x1E69CA3A0] textWithString:v19];
    v32 = v27;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    goto LABEL_21;
  }

  v16 = [(SSResultBuilder *)self buildHighlightedMatchedTextWithTitle:0 headTruncation:1];
  v17 = [v16 formattedTextPieces];

  if (!v17)
  {

    goto LABEL_10;
  }

  v34[0] = v16;
  v11 = 1;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];

  v10 = 0;
  if (!v18)
  {
    goto LABEL_12;
  }

  v19 = 0;
LABEL_22:
  v29 = v18;

  v30 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)buildAttachmentSummary
{
  v73 = *MEMORY[0x1E69E9840];
  v62 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v55 = self;
  v3 = [(SSMessageResultBuilder *)self attachmentTypes];
  v4 = [v3 countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v68;
    v7 = *MEMORY[0x1E6982E30];
    v61 = *MEMORY[0x1E6982EE8];
    v59 = *MEMORY[0x1E6983198];
    v60 = *MEMORY[0x1E6983190];
    v57 = *MEMORY[0x1E6983100];
    v58 = *MEMORY[0x1E69831A0];
    v54 = *MEMORY[0x1E6982CD0];
    v48 = *MEMORY[0x1E6982D48];
    v45 = *MEMORY[0x1E69A83C0];
    v46 = *MEMORY[0x1E6982D30];
    v44 = *MEMORY[0x1E69A83B0];
    v47 = *MEMORY[0x1E69A83B8];
    v52 = *MEMORY[0x1E69A8458];
    v53 = *MEMORY[0x1E69A83A8];
    v8 = *MEMORY[0x1E69A8418];
    v9 = *MEMORY[0x1E69A8410];
    v10 = *MEMORY[0x1E69A8400];
    do
    {
      v11 = 0;
      do
      {
        if (*v68 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v12 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v67 + 1) + 8 * v11)];
        v13 = [v12 conformsToType:v7];
        v14 = v10;
        if ((v13 & 1) == 0)
        {
          v15 = [v12 conformsToType:v61];
          v14 = v9;
          if ((v15 & 1) == 0)
          {
            v16 = [v12 conformsToType:v60];
            v14 = v8;
            if ((v16 & 1) == 0)
            {
              v17 = [v12 conformsToType:v59];
              v14 = v8;
              if ((v17 & 1) == 0)
              {
                v18 = [v12 conformsToType:v58];
                v14 = v8;
                if ((v18 & 1) == 0)
                {
                  if ([v12 conformsToType:v57])
                  {
                    v56 = [(SSMessageResultBuilder *)v55 attachmentTypes];
                    if ([v56 count] == 1)
                    {
                      v51 = [(SSMessageResultBuilder *)v55 senders];
                      v49 = [v51 firstObject];
                      v50 = [v49 length];

                      v14 = v52;
                      if (v50)
                      {
                        v36 = MEMORY[0x1E696AEC0];
                        v37 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
                        v38 = [v37 localizedStringForKey:@"SHARED_WATCHFACE_NOTIFICATION" value:&stru_1F556FE60 table:@"SpotlightServices"];
                        v39 = [(SSMessageResultBuilder *)v55 senders];
                        v40 = [v39 firstObject];
                        v41 = [v36 localizedStringWithFormat:v38, v40];

                        goto LABEL_36;
                      }
                    }

                    else
                    {

                      v14 = v52;
                    }
                  }

                  else
                  {
                    v19 = [v12 conformsToType:v54];
                    v14 = v53;
                    if ((v19 & 1) == 0)
                    {
                      v20 = [v12 conformsToType:v48];
                      v14 = v47;
                      if ((v20 & 1) == 0)
                      {
                        if ([v12 conformsToType:v46])
                        {
                          v14 = v44;
                        }

                        else
                        {
                          v14 = v45;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        [v62 addObject:v14];

        ++v11;
      }

      while (v5 != v11);
      v21 = [v3 countByEnumeratingWithState:&v67 objects:v72 count:16];
      v5 = v21;
    }

    while (v21);
  }

  v22 = v62;
  if ([v62 count])
  {
    v41 = objc_opt_new();
    v23 = MEMORY[0x1E696AEC0];
    v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v25 = [v24 localizedStringForKey:@"%lu Attachments: " value:&stru_1F556FE60 table:@"SpotlightServices"];
    v26 = [v23 localizedStringWithFormat:v25, objc_msgSend(v62, "count")];
    [v41 appendString:v26];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v3 = v62;
    v27 = [v3 countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v64;
      v30 = 1;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v64 != v29)
          {
            objc_enumerationMutation(v3);
          }

          v32 = *(*(&v63 + 1) + 8 * i);
          v33 = [v3 countForObject:v32];
          if ((v30 & 1) == 0)
          {
            [v41 appendString:{@", "}];
          }

          v34 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v35 = [v34 localizedStringForKey:v32 value:&stru_1F556FE60 table:@"SpotlightServices"];
          [v41 appendFormat:v35, v33];

          v30 = 0;
        }

        v28 = [v3 countByEnumeratingWithState:&v63 objects:v71 count:16];
        v30 = 0;
      }

      while (v28);
LABEL_36:
      v22 = v62;
    }
  }

  else
  {
    v41 = 0;
  }

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

- (id)buildThumbnail
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [(SSMessageResultBuilder *)self senderContactIds];
  v5 = [v3 initWithArray:v4];

  v6 = [(SSMessageResultBuilder *)self recipientContactIds];
  v7 = [v6 count];

  if (v7 >= 2)
  {
    v8 = [(SSMessageResultBuilder *)self recipientContactIds];
    [v5 addObjectsFromArray:v8];
  }

  v9 = [(SSMessageResultBuilder *)self groupPhotoPath];

  if (v9)
  {
    v10 = objc_opt_new();
    [v10 setCornerRoundingStyle:4];
    v11 = MEMORY[0x1E695DFF8];
    v12 = [(SSMessageResultBuilder *)self groupPhotoPath];
    v13 = [v11 fileURLWithPath:v12 isDirectory:0];
    [v10 setUrlValue:v13];
  }

  else
  {
    v10 = objc_opt_new();
    [v10 setContactIdentifiers:v5];
    [v10 setThreeDTouchEnabled:1];
  }

  return v10;
}

- (id)buildAttachmentThumbnail
{
  v3 = [(SSMessageResultBuilder *)self attachmentTypes];
  if ([v3 count])
  {
    v4 = 0;
    v5 = *MEMORY[0x1E6982CD8];
    v6 = *MEMORY[0x1E6982E30];
    while (1)
    {
      v7 = [(SSMessageResultBuilder *)self attachmentNames];
      v8 = [v7 count];

      if (v4 >= v8)
      {
        break;
      }

      v9 = [(SSMessageResultBuilder *)self attachmentTypes];
      v3 = [v9 objectAtIndexedSubscript:v4];

      v10 = [MEMORY[0x1E6982C40] typeWithIdentifier:v3];
      if (([v10 conformsToType:v5] & 1) != 0 || objc_msgSend(v10, "conformsToType:", v6))
      {
        v12 = [(SSMessageResultBuilder *)self attachmentNames];
        v11 = [v12 objectAtIndexedSubscript:v4];

        goto LABEL_9;
      }

      ++v4;
      v3 = [(SSMessageResultBuilder *)self attachmentTypes];
      if (v4 >= [v3 count])
      {
        goto LABEL_7;
      }
    }

    v11 = 0;
  }

  else
  {
LABEL_7:
    v11 = 0;
LABEL_9:
  }

  if ([v11 length])
  {
    v13 = objc_opt_new();
    [v13 setPhotoIdentifier:v11];
    [v13 setIsSyndicated:1];
    [v13 setSize:{32.0, 32.0}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)buildCompactCardSection
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69CA3A0];
  v4 = [(SSMessageResultBuilder *)self sendDate];
  v5 = [SSDateFormatManager dynamicCompactStringFromDate:v4];
  v6 = [v3 textWithString:v5];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  v13.receiver = self;
  v13.super_class = SSMessageResultBuilder;
  v8 = [(SSResultBuilder *)&v13 buildCompactCardSection];
  v9 = [v8 descriptions];
  v10 = [v7 arrayByAddingObjectsFromArray:v9];
  [v8 setDescriptions:v10];

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)buildTitle
{
  v3 = [(SSMessageResultBuilder *)self groupDisplayName];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(SSMessageResultBuilder *)self senders];
    if (!v5 || (v6 = v5, -[SSMessageResultBuilder senders](self, "senders"), v7 = objc_claimAutoreleasedReturnValue(), [v7 firstObject], v4 = objc_claimAutoreleasedReturnValue(), v7, v6, !v4))
    {
      v8 = [(SSMessageResultBuilder *)self recipients];
      if (v8)
      {
        v9 = [(SSMessageResultBuilder *)self recipients];
        v4 = [v9 firstObject];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  if (MEMORY[0x1DA744E10](v4))
  {
    v10 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v4];
    v11 = [v10 formattedStringValue];

    v4 = v11;
  }

  v12 = [MEMORY[0x1E69CA3A0] textWithString:v4];

  return v12;
}

@end