@interface SSMailResultBuilder
+ (BOOL)supportsResult:(id)result;
+ (id)_authorEmailFromResult:(id)result;
+ (id)authorEmailsFromResults:(id)results;
+ (id)contactKeysToFetch;
- (SSMailResultBuilder)initWithResult:(id)result;
- (id)buildCompactCardSection;
- (id)buildInlineCardSection;
- (id)buildRecipientsString;
- (id)buildThumbnail;
- (id)bundleIdentifierForAppIconBadgeImage;
- (id)fallbackTitleString;
@end

@implementation SSMailResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___SSMailResultBuilder;
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
  v3 = *MEMORY[0x1E6963D00];
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
  v20 = *MEMORY[0x1E69E9840];
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
        if ([SSResultBuilder resultBuilderClassForResult:v11 preferAppVendedView:0, v15]== self)
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

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)contactKeysToFetch
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:{objc_msgSend(objc_opt_class(), "contactFormatterStyle")}];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (SSMailResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v26.receiver = self;
  v26.super_class = SSMailResultBuilder;
  v5 = [(SSResultBuilder *)&v26 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6963D18] withType:objc_opt_class()];
    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E69649F8] withType:objc_opt_class()];
    v8 = [resultCopy valueForAttribute:*MEMORY[0x1E69649F0] withType:objc_opt_class()];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      result = [(SSResultBuilder *)v5 result];
      v10 = [result valueForAttribute:*MEMORY[0x1E69648E8] withType:objc_opt_class()];
    }

    v12 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
    [(SSMailResultBuilder *)v5 setCreationDate:v12];

    v13 = [resultCopy valueForAttribute:*MEMORY[0x1E6964B18] withType:objc_opt_class()];
    [(SSMailResultBuilder *)v5 setBody:v13];

    v14 = [resultCopy valueForAttribute:*MEMORY[0x1E6964B58] withType:objc_opt_class()];
    if (v14)
    {
      [(SSMailResultBuilder *)v5 setSubject:v14];
    }

    else
    {
      v15 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
      [(SSMailResultBuilder *)v5 setSubject:v15];
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

    [(SSMailResultBuilder *)v5 setRecipientEmails:v17];

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

    [(SSMailResultBuilder *)v5 setRecipients:v19];

    v20 = [objc_opt_class() _authorEmailFromResult:resultCopy];
    [(SSMailResultBuilder *)v5 setAuthorEmail:v20];

    firstObject3 = [v6 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject4 = [v6 firstObject];
      [(SSMailResultBuilder *)v5 setAuthor:firstObject4];
    }

    else
    {
      [(SSMailResultBuilder *)v5 setAuthor:0];
    }

    authorEmail = [(SSMailResultBuilder *)v5 authorEmail];
    v24 = [SSContactStore contactWithEmailForMailResults:authorEmail];
    [(SSMailResultBuilder *)v5 setAuthorContact:v24];
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v48[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  subject = [(SSMailResultBuilder *)self subject];
  v5 = [v3 whiteSpaceCondensedStringForString:subject];

  v45 = v5;
  if (v5)
  {
    v6 = [MEMORY[0x1E69CA0F0] textWithString:v5];
    [v6 setIsEmphasized:1];
    v7 = objc_opt_new();
    v48[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
    [v7 setFormattedTextPieces:v8];

    v9 = objc_opt_new();
    if (v7 && (isMacOS() & 1) == 0)
    {
      [v9 addObject:v7];
      lastObject = [v9 lastObject];
      [lastObject setMaxLines:1];
    }
  }

  else
  {
    v9 = objc_opt_new();
    v7 = 0;
    v6 = 0;
  }

  result = [(SSResultBuilder *)self result];
  formattedSnippet = [result formattedSnippet];

  v46 = v9;
  if (formattedSnippet)
  {
    result2 = [(SSResultBuilder *)self result];
    formattedSnippet2 = [result2 formattedSnippet];
    [v9 addObject:formattedSnippet2];

    lastObject2 = [v9 lastObject];
    [lastObject2 setMaxLines:2];
  }

  else
  {
    body = [(SSMailResultBuilder *)self body];

    if (!body)
    {
      goto LABEL_17;
    }

    body2 = [(SSMailResultBuilder *)self body];
    matchedStrings = [(SSResultBuilder *)self matchedStrings];
    firstObject = [matchedStrings firstObject];
    if ([body2 isEqual:firstObject])
    {
      lastObject2 = [(SSResultBuilder *)self buildHighlightedMatchedTextWithTitle:0 headTruncation:1];
    }

    else
    {
      lastObject2 = 0;
    }

    formattedTextPieces = [lastObject2 formattedTextPieces];

    if (formattedTextPieces)
    {
      v21 = v46;
      [v46 addObject:lastObject2];
    }

    else
    {
      v22 = MEMORY[0x1E69CA3A0];
      body3 = [(SSMailResultBuilder *)self body];
      v24 = [v22 textWithString:body3];
      v21 = v46;
      [v46 addObject:v24];
    }

    lastObject3 = [v21 lastObject];
    [lastObject3 setMaxLines:1];
  }

LABEL_17:
  v26 = objc_opt_new();
  authorContact = [(SSMailResultBuilder *)self authorContact];
  v28 = [MEMORY[0x1E695CD80] stringFromContact:authorContact style:{objc_msgSend(objc_opt_class(), "contactFormatterStyle")}];
  v29 = v28;
  if (v28)
  {
    author = v28;
LABEL_21:
    v31 = author;
    v32 = [MEMORY[0x1E69CA0F0] textWithString:author];
    [v32 setIsEmphasized:1];
    [v26 addObject:v32];

    goto LABEL_22;
  }

  author = [(SSMailResultBuilder *)self author];
  if (author)
  {
    goto LABEL_21;
  }

  author = [(SSMailResultBuilder *)self authorEmail];
  if (author)
  {
    goto LABEL_21;
  }

LABEL_22:
  v44 = v7;
  if (v6 && isMacOS())
  {
    v33 = [MEMORY[0x1E69CA0F0] textWithString:@" — "];
    [v26 addObject:v33];

    [v6 setIsEmphasized:0];
    [v26 addObject:v6];
  }

  v34 = v6;
  v35 = objc_opt_new();
  [v35 setFormattedTextPieces:v26];
  v47.receiver = self;
  v47.super_class = SSMailResultBuilder;
  buildInlineCardSection = [(SSResultBuilder *)&v47 buildInlineCardSection];
  [buildInlineCardSection setTitle:v35];
  [buildInlineCardSection setDescriptions:v46];
  creationDate = [(SSMailResultBuilder *)self creationDate];
  if (creationDate)
  {
    v38 = MEMORY[0x1E69CA0F0];
    creationDate2 = [(SSMailResultBuilder *)self creationDate];
    v40 = [SSDateFormatManager dynamicCompactStringFromDate:creationDate2];
    v41 = [v38 textWithString:v40];
    [buildInlineCardSection setSecondaryTitle:v41];
  }

  else
  {
    [buildInlineCardSection setSecondaryTitle:0];
  }

  [buildInlineCardSection setIsSecondaryTitleDetached:1];
  v42 = *MEMORY[0x1E69E9840];

  return buildInlineCardSection;
}

- (id)buildCompactCardSection
{
  subject = [(SSMailResultBuilder *)self subject];
  if ([subject length])
  {
    [(SSMailResultBuilder *)self subject];
  }

  else
  {
    [(SSMailResultBuilder *)self fallbackTitleString];
  }
  v4 = ;

  v5 = objc_opt_new();
  creationDate = [(SSMailResultBuilder *)self creationDate];
  if (creationDate)
  {
    v7 = [SSDateFormatManager dynamicCompactStringFromDate:creationDate];
    [v5 addObject:v7];
  }

  author = [(SSMailResultBuilder *)self author];
  if (author || ([(SSMailResultBuilder *)self authorEmail], (author = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = author;
    [v5 addObject:author];
  }

  buildRecipientsString = [(SSMailResultBuilder *)self buildRecipientsString];
  if (buildRecipientsString)
  {
    [v5 addObject:buildRecipientsString];
  }

  v15.receiver = self;
  v15.super_class = SSMailResultBuilder;
  buildCompactCardSection = [(SSResultBuilder *)&v15 buildCompactCardSection];
  v12 = [MEMORY[0x1E69CA3A0] textWithString:v4];
  [buildCompactCardSection setTitle:v12];

  v13 = [objc_opt_class() richTextsFromStrings:v5];
  [buildCompactCardSection setDescriptions:v13];

  return buildCompactCardSection;
}

- (id)buildRecipientsString
{
  recipients = [(SSMailResultBuilder *)self recipients];
  firstObject = [recipients firstObject];
  v5 = [recipients count];
  if (!firstObject || (v6 = v5, ![recipients count]))
  {
    recipientEmails = [(SSMailResultBuilder *)self recipientEmails];
    firstObject2 = [recipientEmails firstObject];

    v6 = [recipientEmails count];
    firstObject = firstObject2;
  }

  if (firstObject && v6 >= 2)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"MAIL_RECIPIENT_FORMAT" value:&stru_1F556FE60 table:@"SpotlightServices"];
    v12 = [v9 stringWithFormat:v11, firstObject, v6];

    firstObject = v12;
  }

  return firstObject;
}

- (id)fallbackTitleString
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"NO_SUBJECT" value:&stru_1F556FE60 table:@"SpotlightServices"];

  return v3;
}

- (id)buildThumbnail
{
  v14[1] = *MEMORY[0x1E69E9840];
  authorContact = [(SSMailResultBuilder *)self authorContact];
  if (authorContact)
  {
    v4 = objc_opt_new();
    identifier = [authorContact identifier];
    v14[0] = identifier;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v4 setContactIdentifiers:v6];

    [v4 setThreeDTouchEnabled:1];
  }

  else
  {
    author = [(SSMailResultBuilder *)self author];
    v8 = [author length];

    if (v8)
    {
      author2 = [(SSMailResultBuilder *)self author];
      v10 = [SSNameFormatManager contactFromName:author2];

      v4 = objc_opt_new();
      v11 = [MEMORY[0x1E695CD80] stringFromContact:v10 style:1002];
      [v4 setMonogramLetters:v11];
    }

    else
    {
      v4 = objc_opt_new();
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)bundleIdentifierForAppIconBadgeImage
{
  result = [(SSResultBuilder *)self result];
  applicationBundleIdentifier = [result applicationBundleIdentifier];
  if ([applicationBundleIdentifier isEqualToString:@"com.apple.email.SearchIndexer"])
  {
    resultAppBundleId = [(SSMailResultBuilder *)self resultAppBundleId];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSMailResultBuilder;
    resultAppBundleId = [(SSResultBuilder *)&v8 bundleIdentifierForAppIconBadgeImage];
  }

  v6 = resultAppBundleId;

  return v6;
}

@end