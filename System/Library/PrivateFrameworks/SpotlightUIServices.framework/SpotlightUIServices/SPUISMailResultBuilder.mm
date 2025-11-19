@interface SPUISMailResultBuilder
+ (BOOL)supportsResult:(id)a3;
+ (id)_authorEmailFromResult:(id)a3;
+ (id)authorEmailsFromResults:(id)a3;
+ (id)contactKeysToFetch;
- (SPUISMailResultBuilder)initWithResult:(id)a3;
- (id)buildCompactCardSection;
- (id)buildInlineCardSection;
- (id)buildRecipientsString;
- (id)buildThumbnail;
- (id)bundleIdentifierForAppIconBadgeImage;
@end

@implementation SPUISMailResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___SPUISMailResultBuilder;
  if (objc_msgSendSuper2(&v8, sel_supportsResult_, v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 resultBundleId];
    v5 = [v6 isEqualToString:@"com.apple.email.SearchIndexer"];
  }

  return v5;
}

+ (id)_authorEmailFromResult:(id)a3
{
  v3 = *MEMORY[0x277CC24C8];
  v4 = a3;
  v5 = [v4 valueForAttribute:v3 withType:objc_opt_class()];

  v6 = [v5 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)authorEmailsFromResults:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([SPUISResultBuilder resultBuilderClassForResult:v11 preferAppVendedView:0, v15]== a1)
        {
          v12 = [a1 _authorEmailFromResult:v11];
          if (v12)
          {
            [v5 addObject:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)contactKeysToFetch
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:{objc_msgSend(objc_opt_class(), "contactFormatterStyle")}];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (SPUISMailResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SPUISMailResultBuilder;
  v5 = [(SPUISResultBuilder *)&v26 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x277CC24E0] withType:objc_opt_class()];
    v7 = [v4 valueForAttribute:*MEMORY[0x277CC3028] withType:objc_opt_class()];
    v8 = [v4 valueForAttribute:*MEMORY[0x277CC3020] withType:objc_opt_class()];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = [(SPUISResultBuilder *)v5 result];
      v10 = [v11 valueForAttribute:*MEMORY[0x277CC2FA8] withType:objc_opt_class()];
    }

    v12 = [v4 valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISMailResultBuilder *)v5 setCreationDate:v12];

    v13 = [v4 valueForAttribute:*MEMORY[0x277CC3118] withType:objc_opt_class()];
    [(SPUISMailResultBuilder *)v5 setBody:v13];

    v14 = [v4 valueForAttribute:*MEMORY[0x277CC3140] withType:objc_opt_class()];
    if (v14)
    {
      [(SPUISMailResultBuilder *)v5 setSubject:v14];
    }

    else
    {
      v15 = [v4 valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
      [(SPUISMailResultBuilder *)v5 setSubject:v15];
    }

    v16 = [v10 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v10;
    }

    else
    {
      v17 = 0;
    }

    [(SPUISMailResultBuilder *)v5 setRecipientEmails:v17];

    v18 = [v7 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v7;
    }

    else
    {
      v19 = 0;
    }

    [(SPUISMailResultBuilder *)v5 setRecipients:v19];

    v20 = [objc_opt_class() _authorEmailFromResult:v4];
    [(SPUISMailResultBuilder *)v5 setAuthorEmail:v20];

    v21 = [v6 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v6 firstObject];
      [(SPUISMailResultBuilder *)v5 setAuthor:v22];
    }

    else
    {
      [(SPUISMailResultBuilder *)v5 setAuthor:0];
    }

    v23 = [(SPUISMailResultBuilder *)v5 authorEmail];
    v24 = [SPUISContactStore contactWithEmailForMailResults:v23];
    [(SPUISMailResultBuilder *)v5 setAuthorContact:v24];
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v46[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = [(SPUISMailResultBuilder *)self subject];
  v5 = [v3 whiteSpaceCondensedStringForString:v4];

  v43 = v5;
  if (v5)
  {
    v6 = [MEMORY[0x277D4C3A0] textWithString:v5];
    [v6 setIsEmphasized:1];
    v7 = objc_opt_new();
    v44 = v6;
    v46[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
    [v7 setFormattedTextPieces:v8];

    v9 = objc_opt_new();
    if (v7)
    {
      v42 = v7;
      if (!+[SPUISUtilities isMacOS])
      {
        [v9 addObject:v7];
        v10 = [v9 lastObject];
        [v10 setMaxLines:1];
      }
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v9 = objc_opt_new();
    v42 = 0;
    v44 = 0;
  }

  v11 = [(SPUISResultBuilder *)self result];
  v12 = [v11 formattedSnippet];

  if (v12)
  {
    v13 = [(SPUISResultBuilder *)self result];
    v14 = [v13 formattedSnippet];
    [v9 addObject:v14];

    v15 = [v9 lastObject];
    [v15 setMaxLines:2];
  }

  else
  {
    v16 = [(SPUISMailResultBuilder *)self body];

    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = [(SPUISMailResultBuilder *)self body];
    v18 = [(SPUISResultBuilder *)self matchedStrings];
    v19 = [v18 firstObject];
    if ([v17 isEqual:v19])
    {
      v15 = [(SPUISResultBuilder *)self buildHighlightedMatchedTextWithTitle:0 headTruncation:1];
    }

    else
    {
      v15 = 0;
    }

    v20 = [v15 formattedTextPieces];

    if (v20)
    {
      [v9 addObject:v15];
    }

    else
    {
      v21 = MEMORY[0x277D4C598];
      v22 = [(SPUISMailResultBuilder *)self body];
      v23 = [v21 textWithString:v22];
      [v9 addObject:v23];
    }

    v24 = [v9 lastObject];
    [v24 setMaxLines:1];
  }

LABEL_18:
  v25 = objc_opt_new();
  v26 = [(SPUISMailResultBuilder *)self authorContact];
  v27 = [MEMORY[0x277CBDA78] stringFromContact:v26 style:{objc_msgSend(objc_opt_class(), "contactFormatterStyle")}];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
LABEL_22:
    v30 = v29;
    v31 = [MEMORY[0x277D4C3A0] textWithString:v29];
    [v31 setIsEmphasized:1];
    [v25 addObject:v31];

    goto LABEL_23;
  }

  v29 = [(SPUISMailResultBuilder *)self author];
  if (v29)
  {
    goto LABEL_22;
  }

  v29 = [(SPUISMailResultBuilder *)self authorEmail];
  if (v29)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v44 && +[SPUISUtilities isMacOS])
  {
    v32 = [MEMORY[0x277D4C3A0] textWithString:@" — "];
    [v25 addObject:v32];

    [v44 setIsEmphasized:0];
    [v25 addObject:v44];
  }

  v33 = objc_opt_new();
  [v33 setFormattedTextPieces:v25];
  v45.receiver = self;
  v45.super_class = SPUISMailResultBuilder;
  v34 = [(SPUISResultBuilder *)&v45 buildInlineCardSection];
  [v34 setTitle:v33];
  [v34 setDescriptions:v9];
  v35 = [(SPUISMailResultBuilder *)self creationDate];
  if (v35)
  {
    v36 = MEMORY[0x277D4C3A0];
    v37 = [(SPUISMailResultBuilder *)self creationDate];
    v38 = [SPUISDateFormatManager dynamicCompactStringFromDate:v37];
    v39 = [v36 textWithString:v38];
    [v34 setSecondaryTitle:v39];
  }

  else
  {
    [v34 setSecondaryTitle:0];
  }

  [v34 setIsSecondaryTitleDetached:1];
  v40 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)buildCompactCardSection
{
  v3 = [(SPUISMailResultBuilder *)self subject];
  if ([v3 length])
  {
    [(SPUISMailResultBuilder *)self subject];
  }

  else
  {
    [(SPUISMailResultBuilder *)self fallbackTitleString];
  }
  v4 = ;

  v5 = objc_opt_new();
  v6 = [(SPUISMailResultBuilder *)self creationDate];
  if (v6)
  {
    v7 = [SPUISDateFormatManager dynamicCompactStringFromDate:v6];
    [v5 addObject:v7];
  }

  v8 = [(SPUISMailResultBuilder *)self author];
  if (v8 || ([(SPUISMailResultBuilder *)self authorEmail], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    [v5 addObject:v8];
  }

  v10 = [(SPUISMailResultBuilder *)self buildRecipientsString];
  if (v10)
  {
    [v5 addObject:v10];
  }

  v15.receiver = self;
  v15.super_class = SPUISMailResultBuilder;
  v11 = [(SPUISResultBuilder *)&v15 buildCompactCardSection];
  v12 = [MEMORY[0x277D4C598] textWithString:v4];
  [v11 setTitle:v12];

  v13 = [objc_opt_class() richTextsFromStrings:v5];
  [v11 setDescriptions:v13];

  return v11;
}

- (id)buildRecipientsString
{
  v3 = [(SPUISMailResultBuilder *)self recipients];
  v4 = [v3 firstObject];
  v5 = [v3 count];
  if (!v4 || (v6 = v5, ![v3 count]))
  {
    v7 = [(SPUISMailResultBuilder *)self recipientEmails];
    v8 = [v7 firstObject];

    v6 = [v7 count];
    v4 = v8;
  }

  if (v4 && v6 >= 2)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [SPUISUtilities localizedStringForKey:@"MAIL_RECIPIENT_FORMAT"];
    v11 = [v9 stringWithFormat:v10, v4, v6];

    v4 = v11;
  }

  return v4;
}

- (id)buildThumbnail
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISMailResultBuilder *)self authorContact];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [v3 identifier];
    v14[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v4 setContactIdentifiers:v6];

    [v4 setThreeDTouchEnabled:1];
  }

  else
  {
    v7 = [(SPUISMailResultBuilder *)self author];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [(SPUISMailResultBuilder *)self author];
      v10 = [SPUISNameFormatManager contactFromName:v9];

      v4 = objc_opt_new();
      v11 = [MEMORY[0x277CBDA78] stringFromContact:v10 style:1002];
      [v4 setMonogramLetters:v11];
    }

    else
    {
      v4 = objc_opt_new();
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)bundleIdentifierForAppIconBadgeImage
{
  v3 = [(SPUISResultBuilder *)self result];
  v4 = [v3 applicationBundleIdentifier];
  if ([v4 isEqualToString:@"com.apple.email.SearchIndexer"])
  {
    v5 = [(SPUISMailResultBuilder *)self resultAppBundleId];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISMailResultBuilder;
    v5 = [(SPUISResultBuilder *)&v8 bundleIdentifierForAppIconBadgeImage];
  }

  v6 = v5;

  return v6;
}

@end