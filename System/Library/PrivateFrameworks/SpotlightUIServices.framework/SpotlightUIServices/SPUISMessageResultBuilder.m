@interface SPUISMessageResultBuilder
- (SPUISMessageResultBuilder)initWithResult:(id)a3;
- (id)buildAttachmentSummary;
- (id)buildAttachmentThumbnail;
- (id)buildCompactCardSection;
- (id)buildDescriptions;
- (id)buildInlineCardSection;
- (id)buildThumbnail;
- (id)buildTitle;
@end

@implementation SPUISMessageResultBuilder

- (SPUISMessageResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = SPUISMessageResultBuilder;
  v5 = [(SPUISResultBuilder *)&v38 initWithResult:v4];
  v6 = v5;
  if (v5)
  {
    v36 = v5;
    v7 = [v4 valueForAttribute:*MEMORY[0x277CC2490] withType:objc_opt_class()];
    v37 = [v4 valueForAttribute:*MEMORY[0x277CC2498] withType:objc_opt_class()];
    v8 = [v4 valueForAttribute:*MEMORY[0x277CC24A0] withType:objc_opt_class()];
    v33 = [v4 valueForAttribute:*MEMORY[0x277CC24E0] withType:objc_opt_class()];
    v34 = [v4 valueForAttribute:*MEMORY[0x277CC24C8] withType:objc_opt_class()];
    v32 = [v4 valueForAttribute:*MEMORY[0x277CC3028] withType:objc_opt_class()];
    v35 = [v4 valueForAttribute:*MEMORY[0x277CC24C0] withType:objc_opt_class()];
    v6 = v36;
    v9 = [v4 valueForAttribute:*MEMORY[0x277CC3018] withType:objc_opt_class()];
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

    [(SPUISMessageResultBuilder *)v36 setAttachmentNames:v11];

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

    [(SPUISMessageResultBuilder *)v36 setAttachmentPaths:v13];

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

    [(SPUISMessageResultBuilder *)v36 setAttachmentTypes:v15];

    v16 = [v4 valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    [(SPUISMessageResultBuilder *)v36 setGroupDisplayName:v16];

    v17 = [v4 valueForAttribute:*MEMORY[0x277CC2B78] withType:objc_opt_class()];
    [(SPUISMessageResultBuilder *)v36 setGroupPhotoPath:v17];

    v18 = [v4 valueForAttribute:*MEMORY[0x277CC3118] withType:objc_opt_class()];
    [(SPUISMessageResultBuilder *)v36 setMessage:v18];

    v19 = +[SPUISUtilities isMacOS];
    v20 = MEMORY[0x277CC2A80];
    if (!v19)
    {
      v20 = MEMORY[0x277CC3208];
    }

    v21 = [v4 valueForAttribute:*v20 withType:objc_opt_class()];
    [(SPUISMessageResultBuilder *)v36 setMessageId:v21];

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

    [(SPUISMessageResultBuilder *)v36 setSenders:v23];

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

    [(SPUISMessageResultBuilder *)v36 setRecipients:v25];

    v26 = [v4 valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISMessageResultBuilder *)v36 setSendDate:v26];

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

    [(SPUISMessageResultBuilder *)v36 setSenderContactIds:v28];

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

    [(SPUISMessageResultBuilder *)v36 setRecipientContactIds:v30];
  }

  return v6;
}

- (id)buildInlineCardSection
{
  v10.receiver = self;
  v10.super_class = SPUISMessageResultBuilder;
  v3 = [(SPUISResultBuilder *)&v10 buildInlineCardSection];
  v4 = MEMORY[0x277D4C3A0];
  v5 = [(SPUISMessageResultBuilder *)self sendDate];
  v6 = [SPUISDateFormatManager dynamicCompactStringFromDate:v5];
  v7 = [v4 textWithString:v6];
  [v3 setSecondaryTitle:v7];

  [v3 setIsSecondaryTitleDetached:1];
  v8 = [(SPUISMessageResultBuilder *)self buildAttachmentThumbnail];
  [v3 setTrailingThumbnail:v8];

  return v3;
}

- (id)buildDescriptions
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISResultBuilder *)self coreSpotlightId];
  v4 = isMessagesAttachmentCoreSpotlightId();

  if (v4)
  {
    v5 = [(SPUISMessageResultBuilder *)self attachmentPaths];
    v6 = [v5 firstObject];
    v7 = [v6 lastPathComponent];

    v8 = v7;
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      goto LABEL_12;
    }
  }

  v9 = [(SPUISMessageResultBuilder *)self message];
  if (!v9)
  {
    goto LABEL_11;
  }

  v11 = [(SPUISMessageResultBuilder *)self message];
  v12 = [(SPUISResultBuilder *)self matchedStrings];
  v13 = [v12 firstObject];
  v14 = [v11 isEqual:v13];

  if (!v14)
  {
LABEL_10:
    v9 = 0;
LABEL_11:
    v10 = 1;
LABEL_12:
    v19 = [(SPUISResultBuilder *)self result];
    v20 = [v19 formattedSnippet];
    if (v20)
    {
      v21 = v20;
      v22 = [(SPUISResultBuilder *)self result];
      v23 = [v22 formattedSnippet];
      v24 = [v23 formattedTextPieces];
      v25 = [v24 count];

      if (v25)
      {
        v26 = [(SPUISResultBuilder *)self result];
        v27 = [v26 formattedSnippet];
        v32 = v27;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];

        v18 = v9;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
    }

    v18 = v9;
    if (v10)
    {
      v18 = [(SPUISMessageResultBuilder *)self message];
    }

    if (!v18)
    {
      v18 = [(SPUISMessageResultBuilder *)self buildAttachmentSummary];
      if (!v18)
      {
        v17 = 0;
        goto LABEL_22;
      }
    }

    v26 = [MEMORY[0x277D4C598] textWithString:v18];
    v31 = v26;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    goto LABEL_21;
  }

  v15 = [(SPUISResultBuilder *)self buildHighlightedMatchedTextWithTitle:0 headTruncation:1];
  v16 = [v15 formattedTextPieces];

  if (!v16)
  {

    goto LABEL_10;
  }

  v33[0] = v15;
  v10 = 1;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];

  v9 = 0;
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = 0;
LABEL_22:
  v28 = v17;

  v29 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)buildAttachmentSummary
{
  v70 = *MEMORY[0x277D85DE8];
  v59 = objc_opt_new();
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v52 = self;
  v3 = [(SPUISMessageResultBuilder *)self attachmentTypes];
  v4 = [v3 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v65;
    v7 = *MEMORY[0x277CE1DB0];
    v58 = *MEMORY[0x277CE1E00];
    v56 = *MEMORY[0x277CE1F20];
    v57 = *MEMORY[0x277CE1F18];
    v54 = *MEMORY[0x277CE1F08];
    v55 = *MEMORY[0x277CE1F28];
    v51 = *MEMORY[0x277CE1D00];
    v45 = *MEMORY[0x277CE1D38];
    v42 = *MEMORY[0x277D1AD58];
    v43 = *MEMORY[0x277CE1D20];
    v41 = *MEMORY[0x277D1AD48];
    v44 = *MEMORY[0x277D1AD50];
    v49 = *MEMORY[0x277D1ADA8];
    v50 = *MEMORY[0x277D1AD40];
    v8 = *MEMORY[0x277D1ADA0];
    v9 = *MEMORY[0x277D1AD98];
    v10 = *MEMORY[0x277D1AD90];
    do
    {
      v11 = 0;
      do
      {
        if (*v65 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v12 = [MEMORY[0x277CE1CB8] typeWithIdentifier:*(*(&v64 + 1) + 8 * v11)];
        v13 = [v12 conformsToType:v7];
        v14 = v10;
        if ((v13 & 1) == 0)
        {
          v15 = [v12 conformsToType:v58];
          v14 = v9;
          if ((v15 & 1) == 0)
          {
            v16 = [v12 conformsToType:v57];
            v14 = v8;
            if ((v16 & 1) == 0)
            {
              v17 = [v12 conformsToType:v56];
              v14 = v8;
              if ((v17 & 1) == 0)
              {
                v18 = [v12 conformsToType:v55];
                v14 = v8;
                if ((v18 & 1) == 0)
                {
                  if ([v12 conformsToType:v54])
                  {
                    v53 = [(SPUISMessageResultBuilder *)v52 attachmentTypes];
                    if ([v53 count] == 1)
                    {
                      v48 = [(SPUISMessageResultBuilder *)v52 senders];
                      v46 = [v48 firstObject];
                      v47 = [v46 length];

                      v14 = v49;
                      if (v47)
                      {
                        v34 = MEMORY[0x277CCACA8];
                        v35 = [SPUISUtilities localizedStringForKey:@"SHARED_WATCHFACE_NOTIFICATION"];
                        v36 = [(SPUISMessageResultBuilder *)v52 senders];
                        v37 = [v36 firstObject];
                        v38 = [v34 localizedStringWithFormat:v35, v37];

                        goto LABEL_36;
                      }
                    }

                    else
                    {

                      v14 = v49;
                    }
                  }

                  else
                  {
                    v19 = [v12 conformsToType:v51];
                    v14 = v50;
                    if ((v19 & 1) == 0)
                    {
                      v20 = [v12 conformsToType:v45];
                      v14 = v44;
                      if ((v20 & 1) == 0)
                      {
                        if ([v12 conformsToType:v43])
                        {
                          v14 = v41;
                        }

                        else
                        {
                          v14 = v42;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        [v59 addObject:v14];

        ++v11;
      }

      while (v5 != v11);
      v21 = [v3 countByEnumeratingWithState:&v64 objects:v69 count:16];
      v5 = v21;
    }

    while (v21);
  }

  v22 = v59;
  if ([v59 count])
  {
    v38 = objc_opt_new();
    v23 = MEMORY[0x277CCACA8];
    v24 = [SPUISUtilities localizedStringForKey:@"%lu Attachments: "];
    v25 = [v23 localizedStringWithFormat:v24, objc_msgSend(v59, "count")];
    [v38 appendString:v25];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v3 = v59;
    v26 = [v3 countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v61;
      v29 = 1;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v61 != v28)
          {
            objc_enumerationMutation(v3);
          }

          v31 = *(*(&v60 + 1) + 8 * i);
          v32 = [v3 countForObject:v31];
          if ((v29 & 1) == 0)
          {
            [v38 appendString:{@", "}];
          }

          v33 = [SPUISUtilities localizedStringForKey:v31];
          [v38 appendFormat:v33, v32];

          v29 = 0;
        }

        v27 = [v3 countByEnumeratingWithState:&v60 objects:v68 count:16];
        v29 = 0;
      }

      while (v27);
LABEL_36:
      v22 = v59;
    }
  }

  else
  {
    v38 = 0;
  }

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

- (id)buildThumbnail
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(SPUISMessageResultBuilder *)self senderContactIds];
  v5 = [v3 initWithArray:v4];

  v6 = [(SPUISMessageResultBuilder *)self recipientContactIds];
  v7 = [v6 count];

  if (v7 >= 2)
  {
    v8 = [(SPUISMessageResultBuilder *)self recipientContactIds];
    [v5 addObjectsFromArray:v8];
  }

  v9 = [(SPUISMessageResultBuilder *)self groupPhotoPath];

  if (v9)
  {
    v10 = objc_opt_new();
    [v10 setCornerRoundingStyle:4];
    v11 = MEMORY[0x277CBEBC0];
    v12 = [(SPUISMessageResultBuilder *)self groupPhotoPath];
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
  v3 = [(SPUISMessageResultBuilder *)self attachmentTypes];
  if ([v3 count])
  {
    v4 = 0;
    v5 = *MEMORY[0x277CE1D08];
    v6 = *MEMORY[0x277CE1DB0];
    while (1)
    {
      v7 = [(SPUISMessageResultBuilder *)self attachmentNames];
      v8 = [v7 count];

      if (v4 >= v8)
      {
        break;
      }

      v9 = [(SPUISMessageResultBuilder *)self attachmentTypes];
      v3 = [v9 objectAtIndexedSubscript:v4];

      v10 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v3];
      if (([v10 conformsToType:v5] & 1) != 0 || objc_msgSend(v10, "conformsToType:", v6))
      {
        v12 = [(SPUISMessageResultBuilder *)self attachmentNames];
        v11 = [v12 objectAtIndexedSubscript:v4];

        goto LABEL_9;
      }

      ++v4;
      v3 = [(SPUISMessageResultBuilder *)self attachmentTypes];
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
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D4C598];
  v4 = [(SPUISMessageResultBuilder *)self sendDate];
  v5 = [SPUISDateFormatManager dynamicCompactStringFromDate:v4];
  v6 = [v3 textWithString:v5];
  v14[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  v13.receiver = self;
  v13.super_class = SPUISMessageResultBuilder;
  v8 = [(SPUISResultBuilder *)&v13 buildCompactCardSection];
  v9 = [v8 descriptions];
  v10 = [v7 arrayByAddingObjectsFromArray:v9];
  [v8 setDescriptions:v10];

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)buildTitle
{
  v3 = [(SPUISMessageResultBuilder *)self groupDisplayName];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(SPUISMessageResultBuilder *)self senders];
    if (!v5 || (v6 = v5, -[SPUISMessageResultBuilder senders](self, "senders"), v7 = objc_claimAutoreleasedReturnValue(), [v7 firstObject], v4 = objc_claimAutoreleasedReturnValue(), v7, v6, !v4))
    {
      v8 = [(SPUISMessageResultBuilder *)self recipients];
      if (v8)
      {
        v9 = [(SPUISMessageResultBuilder *)self recipients];
        v4 = [v9 firstObject];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  if (MEMORY[0x26D683D30](v4))
  {
    v10 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v4];
    v11 = [v10 formattedStringValue];

    v4 = v11;
  }

  v12 = [MEMORY[0x277D4C598] textWithString:v4];

  return v12;
}

@end