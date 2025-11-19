@interface SSMailResultBuilder
+ (BOOL)supportsResult:(id)a3;
+ (id)_authorEmailFromResult:(id)a3;
+ (id)authorEmailsFromResults:(id)a3;
+ (id)contactKeysToFetch;
- (SSMailResultBuilder)initWithResult:(id)a3;
- (id)buildCompactCardSection;
- (id)buildInlineCardSection;
- (id)buildRecipientsString;
- (id)buildThumbnail;
- (id)bundleIdentifierForAppIconBadgeImage;
- (id)fallbackTitleString;
@end

@implementation SSMailResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___SSMailResultBuilder;
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
  v3 = *MEMORY[0x1E6963D00];
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
  v20 = *MEMORY[0x1E69E9840];
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
        if ([SSResultBuilder resultBuilderClassForResult:v11 preferAppVendedView:0, v15]== a1)
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

- (SSMailResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SSMailResultBuilder;
  v5 = [(SSResultBuilder *)&v26 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x1E6963D18] withType:objc_opt_class()];
    v7 = [v4 valueForAttribute:*MEMORY[0x1E69649F8] withType:objc_opt_class()];
    v8 = [v4 valueForAttribute:*MEMORY[0x1E69649F0] withType:objc_opt_class()];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = [(SSResultBuilder *)v5 result];
      v10 = [v11 valueForAttribute:*MEMORY[0x1E69648E8] withType:objc_opt_class()];
    }

    v12 = [v4 valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
    [(SSMailResultBuilder *)v5 setCreationDate:v12];

    v13 = [v4 valueForAttribute:*MEMORY[0x1E6964B18] withType:objc_opt_class()];
    [(SSMailResultBuilder *)v5 setBody:v13];

    v14 = [v4 valueForAttribute:*MEMORY[0x1E6964B58] withType:objc_opt_class()];
    if (v14)
    {
      [(SSMailResultBuilder *)v5 setSubject:v14];
    }

    else
    {
      v15 = [v4 valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
      [(SSMailResultBuilder *)v5 setSubject:v15];
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

    [(SSMailResultBuilder *)v5 setRecipientEmails:v17];

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

    [(SSMailResultBuilder *)v5 setRecipients:v19];

    v20 = [objc_opt_class() _authorEmailFromResult:v4];
    [(SSMailResultBuilder *)v5 setAuthorEmail:v20];

    v21 = [v6 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v6 firstObject];
      [(SSMailResultBuilder *)v5 setAuthor:v22];
    }

    else
    {
      [(SSMailResultBuilder *)v5 setAuthor:0];
    }

    v23 = [(SSMailResultBuilder *)v5 authorEmail];
    v24 = [SSContactStore contactWithEmailForMailResults:v23];
    [(SSMailResultBuilder *)v5 setAuthorContact:v24];
  }

  return v5;
}

- (id)buildInlineCardSection
{
  v48[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = [(SSMailResultBuilder *)self subject];
  v5 = [v3 whiteSpaceCondensedStringForString:v4];

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
      v10 = [v9 lastObject];
      [v10 setMaxLines:1];
    }
  }

  else
  {
    v9 = objc_opt_new();
    v7 = 0;
    v6 = 0;
  }

  v11 = [(SSResultBuilder *)self result];
  v12 = [v11 formattedSnippet];

  v46 = v9;
  if (v12)
  {
    v13 = [(SSResultBuilder *)self result];
    v14 = [v13 formattedSnippet];
    [v9 addObject:v14];

    v15 = [v9 lastObject];
    [v15 setMaxLines:2];
  }

  else
  {
    v16 = [(SSMailResultBuilder *)self body];

    if (!v16)
    {
      goto LABEL_17;
    }

    v17 = [(SSMailResultBuilder *)self body];
    v18 = [(SSResultBuilder *)self matchedStrings];
    v19 = [v18 firstObject];
    if ([v17 isEqual:v19])
    {
      v15 = [(SSResultBuilder *)self buildHighlightedMatchedTextWithTitle:0 headTruncation:1];
    }

    else
    {
      v15 = 0;
    }

    v20 = [v15 formattedTextPieces];

    if (v20)
    {
      v21 = v46;
      [v46 addObject:v15];
    }

    else
    {
      v22 = MEMORY[0x1E69CA3A0];
      v23 = [(SSMailResultBuilder *)self body];
      v24 = [v22 textWithString:v23];
      v21 = v46;
      [v46 addObject:v24];
    }

    v25 = [v21 lastObject];
    [v25 setMaxLines:1];
  }

LABEL_17:
  v26 = objc_opt_new();
  v27 = [(SSMailResultBuilder *)self authorContact];
  v28 = [MEMORY[0x1E695CD80] stringFromContact:v27 style:{objc_msgSend(objc_opt_class(), "contactFormatterStyle")}];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
LABEL_21:
    v31 = v30;
    v32 = [MEMORY[0x1E69CA0F0] textWithString:v30];
    [v32 setIsEmphasized:1];
    [v26 addObject:v32];

    goto LABEL_22;
  }

  v30 = [(SSMailResultBuilder *)self author];
  if (v30)
  {
    goto LABEL_21;
  }

  v30 = [(SSMailResultBuilder *)self authorEmail];
  if (v30)
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
  v36 = [(SSResultBuilder *)&v47 buildInlineCardSection];
  [v36 setTitle:v35];
  [v36 setDescriptions:v46];
  v37 = [(SSMailResultBuilder *)self creationDate];
  if (v37)
  {
    v38 = MEMORY[0x1E69CA0F0];
    v39 = [(SSMailResultBuilder *)self creationDate];
    v40 = [SSDateFormatManager dynamicCompactStringFromDate:v39];
    v41 = [v38 textWithString:v40];
    [v36 setSecondaryTitle:v41];
  }

  else
  {
    [v36 setSecondaryTitle:0];
  }

  [v36 setIsSecondaryTitleDetached:1];
  v42 = *MEMORY[0x1E69E9840];

  return v36;
}

- (id)buildCompactCardSection
{
  v3 = [(SSMailResultBuilder *)self subject];
  if ([v3 length])
  {
    [(SSMailResultBuilder *)self subject];
  }

  else
  {
    [(SSMailResultBuilder *)self fallbackTitleString];
  }
  v4 = ;

  v5 = objc_opt_new();
  v6 = [(SSMailResultBuilder *)self creationDate];
  if (v6)
  {
    v7 = [SSDateFormatManager dynamicCompactStringFromDate:v6];
    [v5 addObject:v7];
  }

  v8 = [(SSMailResultBuilder *)self author];
  if (v8 || ([(SSMailResultBuilder *)self authorEmail], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    [v5 addObject:v8];
  }

  v10 = [(SSMailResultBuilder *)self buildRecipientsString];
  if (v10)
  {
    [v5 addObject:v10];
  }

  v15.receiver = self;
  v15.super_class = SSMailResultBuilder;
  v11 = [(SSResultBuilder *)&v15 buildCompactCardSection];
  v12 = [MEMORY[0x1E69CA3A0] textWithString:v4];
  [v11 setTitle:v12];

  v13 = [objc_opt_class() richTextsFromStrings:v5];
  [v11 setDescriptions:v13];

  return v11;
}

- (id)buildRecipientsString
{
  v3 = [(SSMailResultBuilder *)self recipients];
  v4 = [v3 firstObject];
  v5 = [v3 count];
  if (!v4 || (v6 = v5, ![v3 count]))
  {
    v7 = [(SSMailResultBuilder *)self recipientEmails];
    v8 = [v7 firstObject];

    v6 = [v7 count];
    v4 = v8;
  }

  if (v4 && v6 >= 2)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"MAIL_RECIPIENT_FORMAT" value:&stru_1F556FE60 table:@"SpotlightServices"];
    v12 = [v9 stringWithFormat:v11, v4, v6];

    v4 = v12;
  }

  return v4;
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
  v3 = [(SSMailResultBuilder *)self authorContact];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [v3 identifier];
    v14[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v4 setContactIdentifiers:v6];

    [v4 setThreeDTouchEnabled:1];
  }

  else
  {
    v7 = [(SSMailResultBuilder *)self author];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [(SSMailResultBuilder *)self author];
      v10 = [SSNameFormatManager contactFromName:v9];

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
  v3 = [(SSResultBuilder *)self result];
  v4 = [v3 applicationBundleIdentifier];
  if ([v4 isEqualToString:@"com.apple.email.SearchIndexer"])
  {
    v5 = [(SSMailResultBuilder *)self resultAppBundleId];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSMailResultBuilder;
    v5 = [(SSResultBuilder *)&v8 bundleIdentifierForAppIconBadgeImage];
  }

  v6 = v5;

  return v6;
}

@end