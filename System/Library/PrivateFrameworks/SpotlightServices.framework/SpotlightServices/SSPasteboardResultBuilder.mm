@interface SSPasteboardResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SSPasteboardResultBuilder)initWithResult:(id)result;
- (id)buildBadgingImageWithThumbnail:(id)thumbnail;
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

+ (BOOL)supportsResult:(id)result
{
  v3 = *MEMORY[0x1E6963E60];
  resultCopy = result;
  v5 = [resultCopy valueForAttribute:v3 withType:objc_opt_class()];

  v6 = [v5 hasPrefix:@"com.apple.spotlight.pasteboard"];
  return v6;
}

- (SSPasteboardResultBuilder)initWithResult:(id)result
{
  v24 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v22.receiver = self;
  v22.super_class = SSPasteboardResultBuilder;
  v5 = [(SSResultBuilder *)&v22 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
    [(SSPasteboardResultBuilder *)v5 setCopiedText:v6];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E6964548] withType:objc_opt_class()];
    if (v7)
    {
      [(SSPasteboardResultBuilder *)v5 setDateCopied:v7];
    }

    else
    {
      v8 = [resultCopy valueForAttribute:*MEMORY[0x1E6963E78] withType:objc_opt_class()];
      [(SSPasteboardResultBuilder *)v5 setDateCopied:v8];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    contentTypeTree = [resultCopy contentTypeTree];
    v10 = [contentTypeTree countByEnumeratingWithState:&v18 objects:v23 count:16];
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
            objc_enumerationMutation(contentTypeTree);
          }

          v14 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v18 + 1) + 8 * i)];
          if (v14)
          {
            v15 = v14;
            [(SSPasteboardResultBuilder *)v5 setContentType:v14];

            goto LABEL_15;
          }
        }

        v11 = [contentTypeTree countByEnumeratingWithState:&v18 objects:v23 count:16];
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
  copiedText = [(SSPasteboardResultBuilder *)self copiedText];
  v5 = copiedText;
  if (copiedText)
  {
    v6 = MEMORY[0x1E69CA3A0];
    v7 = [v3 stringByReplacingMatchesInString:copiedText options:0 range:0 withTemplate:{objc_msgSend(copiedText, "length"), @" "}];
    buildTitle = [v6 textWithString:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SSPasteboardResultBuilder;
    buildTitle = [(SSResultBuilder *)&v10 buildTitle];
  }

  return buildTitle;
}

- (id)buildDescriptions
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  pasteboardDescription = [(SSPasteboardResultBuilder *)self pasteboardDescription];
  if ([pasteboardDescription length])
  {
    [v3 addObject:pasteboardDescription];
  }

  dateCopied = [(SSPasteboardResultBuilder *)self dateCopied];

  if (dateCopied)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"Copied %@" value:0 table:0];
    dateCopied2 = [(SSPasteboardResultBuilder *)self dateCopied];
    v10 = [SSDateFormatManager dynamicCompactStringFromDate:dateCopied2];
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
  contentType = [(SSPasteboardResultBuilder *)self contentType];
  localizedDescription = [contentType localizedDescription];
  localizedCapitalizedString = [localizedDescription localizedCapitalizedString];

  return localizedCapitalizedString;
}

- (id)buildThumbnail
{
  contentType = [(SSPasteboardResultBuilder *)self contentType];
  v4 = [contentType conformsToType:*MEMORY[0x1E6983020]];

  if (v4)
  {
    buildThumbnail = objc_opt_new();
    identifier = [*MEMORY[0x1E6982F40] identifier];
    [buildThumbnail setContentType:identifier];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SSPasteboardResultBuilder;
    buildThumbnail = [(SSResultBuilder *)&v8 buildThumbnail];
  }

  return buildThumbnail;
}

- (id)buildBadgingImageWithThumbnail:(id)thumbnail
{
  v4 = objc_opt_new();
  relatedAppBundleIdentifier = [(SSResultBuilder *)self relatedAppBundleIdentifier];
  [v4 setBundleIdentifier:relatedAppBundleIdentifier];

  return v4;
}

- (id)buildCopyItem
{
  v3 = objc_opt_new();
  copiedText = [(SSPasteboardResultBuilder *)self copiedText];
  [v3 setCopyableString:copiedText];

  return v3;
}

- (id)buildCopyItems
{
  v7[1] = *MEMORY[0x1E69E9840];
  buildCopyItem = [(SSPasteboardResultBuilder *)self buildCopyItem];
  v3 = buildCopyItem;
  if (buildCopyItem)
  {
    v7[0] = buildCopyItem;
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
  buildCopyButtonItem = [(SSPasteboardResultBuilder *)self buildCopyButtonItem];
  v3 = buildCopyButtonItem;
  if (buildCopyButtonItem)
  {
    v7[0] = buildCopyButtonItem;
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
  buildCopyItems = [(SSPasteboardResultBuilder *)self buildCopyItems];
  [v3 setCopyableItems:buildCopyItems];

  [v3 setCommandDetail:@"SSPasteboardHistoryCommandDetail"];

  return v3;
}

- (id)buildPasteButtonItem
{
  buildPasteCommand = [(SSPasteboardResultBuilder *)self buildPasteCommand];
  v3 = objc_opt_new();
  [v3 setSymbolName:@"document.on.clipboard"];
  [v3 setIsTemplate:1];
  v4 = objc_opt_new();
  [v4 setCommand:buildPasteCommand];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"Paste" value:0 table:0];
  [v4 setTitle:v6];

  [v4 setImage:v3];

  return v4;
}

- (id)buildCopyButtonItem
{
  v3 = objc_opt_new();
  buildCopyItem = [(SSPasteboardResultBuilder *)self buildCopyItem];
  [v3 setCopyableItem:buildCopyItem];

  buildCopyItems = [(SSPasteboardResultBuilder *)self buildCopyItems];
  [v3 setCopyableItems:buildCopyItems];

  [v3 setCommandDetail:@"SSPasteboardHistoryCommandDetail"];
  v6 = objc_opt_new();
  [v6 setCommand:v3];

  return v6;
}

- (id)buildDeleteCommand
{
  v8[1] = *MEMORY[0x1E69E9840];
  result = [(SSResultBuilder *)self result];
  v3 = [result valueForAttribute:*MEMORY[0x1E6964C48] withType:objc_opt_class()];

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
  buildDeleteCommand = [(SSPasteboardResultBuilder *)self buildDeleteCommand];
  if (buildDeleteCommand)
  {
    v3 = objc_opt_new();
    [v3 setSymbolName:@"minus.circle"];
    [v3 setIsTemplate:1];
    v4 = objc_opt_new();
    [v4 setCommand:buildDeleteCommand];
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
  buildCopyButtonItem = [(SSPasteboardResultBuilder *)self buildCopyButtonItem];
  if (buildCopyButtonItem)
  {
    [v3 addObject:buildCopyButtonItem];
  }

  buildPasteButtonItem = [(SSPasteboardResultBuilder *)self buildPasteButtonItem];
  if (buildPasteButtonItem)
  {
    [v3 addObject:buildPasteButtonItem];
  }

  buildShareItems = [(SSPasteboardResultBuilder *)self buildShareItems];
  if ([buildShareItems count])
  {
    v7 = objc_opt_new();
    [v7 setShareItems:buildShareItems];
    v8 = objc_opt_new();
    [v8 setCommand:v7];
    [v3 addObject:v8];
  }

  buildDeleteButtonItem = [(SSPasteboardResultBuilder *)self buildDeleteButtonItem];
  if (buildDeleteButtonItem)
  {
    [v3 addObject:buildDeleteButtonItem];
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