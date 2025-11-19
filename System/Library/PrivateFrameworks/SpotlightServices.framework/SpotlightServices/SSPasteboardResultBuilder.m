@interface SSPasteboardResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (SSPasteboardResultBuilder)initWithResult:(id)a3;
- (id)buildBadgingImageWithThumbnail:(id)a3;
- (id)buildButtonItems;
- (id)buildCopyButtonItem;
- (id)buildCopyItem;
- (id)buildCopyItems;
- (id)buildDeleteButtonItem;
- (id)buildDeleteCommand;
- (id)buildDescriptions;
- (id)buildPasteButtonItem;
- (id)buildPasteCommand;
- (id)buildPreviewButtonItems;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)pasteboardDescription;
@end

@implementation SSPasteboardResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v3 = *MEMORY[0x1E6963E60];
  v4 = a3;
  v5 = [v4 valueForAttribute:v3 withType:objc_opt_class()];

  v6 = [v5 hasPrefix:@"com.apple.spotlight.pasteboard"];
  return v6;
}

- (SSPasteboardResultBuilder)initWithResult:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SSPasteboardResultBuilder;
  v5 = [(SSResultBuilder *)&v22 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
    [(SSPasteboardResultBuilder *)v5 setCopiedText:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x1E6964548] withType:objc_opt_class()];
    if (v7)
    {
      [(SSPasteboardResultBuilder *)v5 setDateCopied:v7];
    }

    else
    {
      v8 = [v4 valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
      [(SSPasteboardResultBuilder *)v5 setDateCopied:v8];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v4 contentTypeTree];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v18 + 1) + 8 * i)];
          if (v14)
          {
            v15 = v14;
            [(SSPasteboardResultBuilder *)v5 setContentType:v14];

            goto LABEL_15;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)buildTitle
{
  v3 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\s+" options:0 error:0];
  v4 = [(SSPasteboardResultBuilder *)self copiedText];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E69CA3A0];
    v7 = [v3 stringByReplacingMatchesInString:v4 options:0 range:0 withTemplate:{objc_msgSend(v4, "length"), @" "}];
    v8 = [v6 textWithString:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SSPasteboardResultBuilder;
    v8 = [(SSResultBuilder *)&v10 buildTitle];
  }

  return v8;
}

- (id)buildDescriptions
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(SSPasteboardResultBuilder *)self pasteboardDescription];
  if ([v4 length])
  {
    [v3 addObject:v4];
  }

  v5 = [(SSPasteboardResultBuilder *)self dateCopied];

  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"Copied %@" value:0 table:0];
    v9 = [(SSPasteboardResultBuilder *)self dateCopied];
    v10 = [SSDateFormatManager dynamicCompactStringFromDate:v9];
    v11 = [v6 stringWithFormat:v8, v10];
    [v3 addObject:v11];
  }

  if ([v3 count])
  {
    v12 = MEMORY[0x1E69CA3A0];
    v13 = [v3 componentsJoinedByString:@" · "];
    v14 = [v12 textWithString:v13];
    v18[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)pasteboardDescription
{
  v2 = [(SSPasteboardResultBuilder *)self contentType];
  v3 = [v2 localizedDescription];
  v4 = [v3 localizedCapitalizedString];

  return v4;
}

- (id)buildThumbnail
{
  v3 = [(SSPasteboardResultBuilder *)self contentType];
  v4 = [v3 conformsToType:*MEMORY[0x1E6983020]];

  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [*MEMORY[0x1E6982F40] identifier];
    [v5 setContentType:v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSPasteboardResultBuilder;
    v5 = [(SSResultBuilder *)&v8 buildThumbnail];
  }

  return v5;
}

- (id)buildBadgingImageWithThumbnail:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(SSResultBuilder *)self relatedAppBundleIdentifier];
  [v4 setBundleIdentifier:v5];

  return v4;
}

- (id)buildCopyItem
{
  v3 = objc_opt_new();
  v4 = [(SSPasteboardResultBuilder *)self copiedText];
  [v3 setCopyableString:v4];

  return v3;
}

- (id)buildCopyItems
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(SSPasteboardResultBuilder *)self buildCopyItem];
  v3 = v2;
  if (v2)
  {
    v7[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)buildButtonItems
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(SSPasteboardResultBuilder *)self buildCopyButtonItem];
  v3 = v2;
  if (v2)
  {
    v7[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)buildPasteCommand
{
  v3 = objc_opt_new();
  v4 = [(SSPasteboardResultBuilder *)self buildCopyItems];
  [v3 setCopyableItems:v4];

  [v3 setCommandDetail:@"SSPasteboardHistoryCommandDetail"];

  return v3;
}

- (id)buildPasteButtonItem
{
  v2 = [(SSPasteboardResultBuilder *)self buildPasteCommand];
  v3 = objc_opt_new();
  [v3 setSymbolName:@"document.on.clipboard"];
  [v3 setIsTemplate:1];
  v4 = objc_opt_new();
  [v4 setCommand:v2];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"Paste" value:0 table:0];
  [v4 setTitle:v6];

  [v4 setImage:v3];

  return v4;
}

- (id)buildCopyButtonItem
{
  v3 = objc_opt_new();
  v4 = [(SSPasteboardResultBuilder *)self buildCopyItem];
  [v3 setCopyableItem:v4];

  v5 = [(SSPasteboardResultBuilder *)self buildCopyItems];
  [v3 setCopyableItems:v5];

  [v3 setCommandDetail:@"SSPasteboardHistoryCommandDetail"];
  v6 = objc_opt_new();
  [v6 setCommand:v3];

  return v6;
}

- (id)buildDeleteCommand
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(SSResultBuilder *)self result];
  v3 = [v2 valueForAttribute:*MEMORY[0x1E6964C48] withType:objc_opt_class()];

  if (v3)
  {
    v4 = objc_opt_new();
    v8[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v4 setItemIdentifiers:v5];
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)buildDeleteButtonItem
{
  v2 = [(SSPasteboardResultBuilder *)self buildDeleteCommand];
  if (v2)
  {
    v3 = objc_opt_new();
    [v3 setSymbolName:@"minus.circle"];
    [v3 setIsTemplate:1];
    v4 = objc_opt_new();
    [v4 setCommand:v2];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Remove" value:0 table:0];
    [v4 setTitle:v6];

    [v4 setImage:v3];
    [v4 setIsDestructive:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)buildPreviewButtonItems
{
  v3 = objc_opt_new();
  v4 = [(SSPasteboardResultBuilder *)self buildCopyButtonItem];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(SSPasteboardResultBuilder *)self buildPasteButtonItem];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(SSPasteboardResultBuilder *)self buildShareItems];
  if ([v6 count])
  {
    v7 = objc_opt_new();
    [v7 setShareItems:v6];
    v8 = objc_opt_new();
    [v8 setCommand:v7];
    [v3 addObject:v8];
  }

  v9 = [(SSPasteboardResultBuilder *)self buildDeleteButtonItem];
  if (v9)
  {
    [v3 addObject:v9];
  }

  if ([v3 count])
  {
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

@end