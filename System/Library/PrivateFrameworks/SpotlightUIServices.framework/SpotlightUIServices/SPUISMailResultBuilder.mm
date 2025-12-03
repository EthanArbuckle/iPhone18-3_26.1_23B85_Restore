@interface SPUISMailResultBuilder
+ (BOOL)supportsResult:(id)result;
+ (id)_authorEmailFromResult:(id)result;
+ (id)authorEmailsFromResults:(id)results;
+ (id)contactKeysToFetch;
- (SPUISMailResultBuilder)initWithResult:(id)result;
- (id)buildCompactCardSection;
- (id)buildInlineCardSection;
- (id)buildRecipientsString;
- (id)buildThumbnail;
- (id)bundleIdentifierForAppIconBadgeImage;
@end

@implementation SPUISMailResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___SPUISMailResultBuilder;
  if (objc_msgSendSuper2(&v8, sel_supportsResult_, resultCopy))
  {
    v5 = 1;
  }

  else
  {
    resultBundleId = [resultCopy resultBundleId];
    v5 = [resultBundleId isEqualToString:@"com.apple.email.SearchIndexer"];
  }

  return v5;
}

+ (id)_authorEmailFromResult:(id)result
{
  v3 = *MEMORY[0x277CC24C8];
  resultCopy = result;
  v5 = [resultCopy valueForAttribute:v3 withType:objc_opt_class()];

  firstObject = [v5 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject2 = [v5 firstObject];
  }

  else
  {
    firstObject2 = 0;
  }

  return firstObject2;
}

+ (id)authorEmailsFromResults:(id)results
{
  v20 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = resultsCopy;
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
        if ([SPUISResultBuilder resultBuilderClassForResult:v11 preferAppVendedView:0, v15]== self)
        {
          v12 = [self _authorEmailFromResult:v11];
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

- (SPUISMailResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v26.receiver = self;
  v26.super_class = SPUISMailResultBuilder;
  v5 = [(SPUISResultBuilder *)&v26 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC24E0] withType:objc_opt_class()];
    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC3028] withType:objc_opt_class()];
    v8 = [resultCopy valueForAttribute:*MEMORY[0x277CC3020] withType:objc_opt_class()];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      result = [(SPUISResultBuilder *)v5 result];
      v10 = [result valueForAttribute:*MEMORY[0x277CC2FA8] withType:objc_opt_class()];
    }

    v12 = [resultCopy valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISMailResultBuilder *)v5 setCreationDate:v12];

    v13 = [resultCopy valueForAttribute:*MEMORY[0x277CC3118] withType:objc_opt_class()];
    [(SPUISMailResultBuilder *)v5 setBody:v13];

    v14 = [resultCopy valueForAttribute:*MEMORY[0x277CC3140] withType:objc_opt_class()];
    if (v14)
    {
      [(SPUISMailResultBuilder *)v5 setSubject:v14];
    }

    else
    {
      v15 = [resultCopy valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
      [(SPUISMailResultBuilder *)v5 setSubject:v15];
    }

    firstObject = [v10 firstObject];
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

    firstObject2 = [v7 firstObject];
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

    v20 = [objc_opt_class() _authorEmailFromResult:resultCopy];
    [(SPUISMailResultBuilder *)v5 setAuthorEmail:v20];

    firstObject3 = [v6 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject4 = [v6 firstObject];
      [(SPUISMailResultBuilder *)v5 setAuthor:firstObject4];
    }

    else
    {
      [(SPUISMailResultBuilder *)v5 setAuthor:0];
    }

    authorEmail = [(SPUISMailResultBuilder *)v5 authorEmail];
    v24 = [SPUISContactStore contactWithEmailForMailResults:authorEmail];
    [(SPUISMailResultBuilder *)v5 setAuthorContact:v24];
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v46[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  subject = [(SPUISMailResultBuilder *)self subject];
  v5 = [v3 whiteSpaceCondensedStringForString:subject];

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
        lastObject = [v9 lastObject];
        [lastObject setMaxLines:1];
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

  result = [(SPUISResultBuilder *)self result];
  formattedSnippet = [result formattedSnippet];

  if (formattedSnippet)
  {
    result2 = [(SPUISResultBuilder *)self result];
    formattedSnippet2 = [result2 formattedSnippet];
    [v9 addObject:formattedSnippet2];

    lastObject2 = [v9 lastObject];
    [lastObject2 setMaxLines:2];
  }

  else
  {
    body = [(SPUISMailResultBuilder *)self body];

    if (!body)
    {
      goto LABEL_18;
    }

    body2 = [(SPUISMailResultBuilder *)self body];
    matchedStrings = [(SPUISResultBuilder *)self matchedStrings];
    firstObject = [matchedStrings firstObject];
    if ([body2 isEqual:firstObject])
    {
      lastObject2 = [(SPUISResultBuilder *)self buildHighlightedMatchedTextWithTitle:0 headTruncation:1];
    }

    else
    {
      lastObject2 = 0;
    }

    formattedTextPieces = [lastObject2 formattedTextPieces];

    if (formattedTextPieces)
    {
      [v9 addObject:lastObject2];
    }

    else
    {
      v21 = MEMORY[0x277D4C598];
      body3 = [(SPUISMailResultBuilder *)self body];
      v23 = [v21 textWithString:body3];
      [v9 addObject:v23];
    }

    lastObject3 = [v9 lastObject];
    [lastObject3 setMaxLines:1];
  }

LABEL_18:
  v25 = objc_opt_new();
  authorContact = [(SPUISMailResultBuilder *)self authorContact];
  v27 = [MEMORY[0x277CBDA78] stringFromContact:authorContact style:{objc_msgSend(objc_opt_class(), "contactFormatterStyle")}];
  v28 = v27;
  if (v27)
  {
    author = v27;
LABEL_22:
    v30 = author;
    v31 = [MEMORY[0x277D4C3A0] textWithString:author];
    [v31 setIsEmphasized:1];
    [v25 addObject:v31];

    goto LABEL_23;
  }

  author = [(SPUISMailResultBuilder *)self author];
  if (author)
  {
    goto LABEL_22;
  }

  author = [(SPUISMailResultBuilder *)self authorEmail];
  if (author)
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
  buildInlineCardSection = [(SPUISResultBuilder *)&v45 buildInlineCardSection];
  [buildInlineCardSection setTitle:v33];
  [buildInlineCardSection setDescriptions:v9];
  creationDate = [(SPUISMailResultBuilder *)self creationDate];
  if (creationDate)
  {
    v36 = MEMORY[0x277D4C3A0];
    creationDate2 = [(SPUISMailResultBuilder *)self creationDate];
    v38 = [SPUISDateFormatManager dynamicCompactStringFromDate:creationDate2];
    v39 = [v36 textWithString:v38];
    [buildInlineCardSection setSecondaryTitle:v39];
  }

  else
  {
    [buildInlineCardSection setSecondaryTitle:0];
  }

  [buildInlineCardSection setIsSecondaryTitleDetached:1];
  v40 = *MEMORY[0x277D85DE8];

  return buildInlineCardSection;
}

- (id)buildCompactCardSection
{
  subject = [(SPUISMailResultBuilder *)self subject];
  if ([subject length])
  {
    [(SPUISMailResultBuilder *)self subject];
  }

  else
  {
    [(SPUISMailResultBuilder *)self fallbackTitleString];
  }
  v4 = ;

  v5 = objc_opt_new();
  creationDate = [(SPUISMailResultBuilder *)self creationDate];
  if (creationDate)
  {
    v7 = [SPUISDateFormatManager dynamicCompactStringFromDate:creationDate];
    [v5 addObject:v7];
  }

  author = [(SPUISMailResultBuilder *)self author];
  if (author || ([(SPUISMailResultBuilder *)self authorEmail], (author = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = author;
    [v5 addObject:author];
  }

  buildRecipientsString = [(SPUISMailResultBuilder *)self buildRecipientsString];
  if (buildRecipientsString)
  {
    [v5 addObject:buildRecipientsString];
  }

  v15.receiver = self;
  v15.super_class = SPUISMailResultBuilder;
  buildCompactCardSection = [(SPUISResultBuilder *)&v15 buildCompactCardSection];
  v12 = [MEMORY[0x277D4C598] textWithString:v4];
  [buildCompactCardSection setTitle:v12];

  v13 = [objc_opt_class() richTextsFromStrings:v5];
  [buildCompactCardSection setDescriptions:v13];

  return buildCompactCardSection;
}

- (id)buildRecipientsString
{
  recipients = [(SPUISMailResultBuilder *)self recipients];
  firstObject = [recipients firstObject];
  v5 = [recipients count];
  if (!firstObject || (v6 = v5, ![recipients count]))
  {
    recipientEmails = [(SPUISMailResultBuilder *)self recipientEmails];
    firstObject2 = [recipientEmails firstObject];

    v6 = [recipientEmails count];
    firstObject = firstObject2;
  }

  if (firstObject && v6 >= 2)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [SPUISUtilities localizedStringForKey:@"MAIL_RECIPIENT_FORMAT"];
    v11 = [v9 stringWithFormat:v10, firstObject, v6];

    firstObject = v11;
  }

  return firstObject;
}

- (id)buildThumbnail
{
  v14[1] = *MEMORY[0x277D85DE8];
  authorContact = [(SPUISMailResultBuilder *)self authorContact];
  if (authorContact)
  {
    v4 = objc_opt_new();
    identifier = [authorContact identifier];
    v14[0] = identifier;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v4 setContactIdentifiers:v6];

    [v4 setThreeDTouchEnabled:1];
  }

  else
  {
    author = [(SPUISMailResultBuilder *)self author];
    v8 = [author length];

    if (v8)
    {
      author2 = [(SPUISMailResultBuilder *)self author];
      v10 = [SPUISNameFormatManager contactFromName:author2];

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
  result = [(SPUISResultBuilder *)self result];
  applicationBundleIdentifier = [result applicationBundleIdentifier];
  if ([applicationBundleIdentifier isEqualToString:@"com.apple.email.SearchIndexer"])
  {
    resultAppBundleId = [(SPUISMailResultBuilder *)self resultAppBundleId];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISMailResultBuilder;
    resultAppBundleId = [(SPUISResultBuilder *)&v8 bundleIdentifierForAppIconBadgeImage];
  }

  v6 = resultAppBundleId;

  return v6;
}

@end