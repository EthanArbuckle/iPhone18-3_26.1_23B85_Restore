@interface SSLinkResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SSLinkResultBuilder)initWithResult:(id)result;
- (id)buildBadgingImageWithThumbnail:(id)thumbnail;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)subclassBuildHorizontallyScrollingCardSection;
@end

@implementation SSLinkResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v5 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C38] withType:objc_opt_class()];
  v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6963D40] withType:objc_opt_class()];
  if (v5)
  {
    bundleId = [self bundleId];
    if ([v6 isEqualToString:bundleId])
    {
      contentType = [resultCopy contentType];
      if (isImageOrVideoContentType(contentType))
      {
        v9 = 0;
      }

      else
      {
        host = [v5 host];
        v9 = [host length] != 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
  v12 = [sectionBundleIdentifier isEqual:@"com.apple.searchd.syndicatedLinks"] | v9;

  return v12 & 1;
}

- (SSLinkResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v21.receiver = self;
  v21.super_class = SSLinkResultBuilder;
  v5 = [(SSResultBuilder *)&v21 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x1E6963D18] withType:objc_opt_class()];
    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E6963CF8] withType:objc_opt_class()];
    v8 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C40] withType:objc_opt_class()];
    [(SSLinkResultBuilder *)v5 setWebsiteTitle:v8];

    firstObject = [v6 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    [(SSLinkResultBuilder *)v5 setSenders:v10];

    firstObject2 = [v7 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    [(SSLinkResultBuilder *)v5 setSenderContactIdentifiers:v12];

    v13 = [resultCopy valueForAttribute:*MEMORY[0x1E6964B98] withType:objc_opt_class()];
    -[SSLinkResultBuilder setSyndicationStatus:](v5, "setSyndicationStatus:", [v13 unsignedIntValue]);

    v14 = [resultCopy url];
    if (v14)
    {
      [(SSLinkResultBuilder *)v5 setUrl:v14];
    }

    else
    {
      v15 = MEMORY[0x1E695DFF8];
      v16 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C38] withType:objc_opt_class()];
      v17 = [v15 URLWithString:v16];
      [(SSLinkResultBuilder *)v5 setUrl:v17];
    }

    v18 = [(SSLinkResultBuilder *)v5 url];
    if (v18)
    {
      [(SSLinkResultBuilder *)v5 setUrl:v18];
    }

    else
    {
      v19 = [resultCopy valueForAttribute:*MEMORY[0x1E6964C38] withType:objc_opt_class()];
      [(SSLinkResultBuilder *)v5 setUrl:v19];
    }
  }

  return v5;
}

- (id)buildThumbnail
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E69CA320];
  v5 = [(SSLinkResultBuilder *)self url];
  v6 = [v4 punchoutWithURL:v5];
  [v3 setPunchout:v6];

  return v3;
}

- (id)buildTitle
{
  websiteTitle = [(SSLinkResultBuilder *)self websiteTitle];

  if (websiteTitle)
  {
    v4 = MEMORY[0x1E69CA3A0];
    v5 = objc_opt_class();
    websiteTitle2 = [(SSLinkResultBuilder *)self websiteTitle];
    v7 = [v5 whiteSpaceCondensedStringForString:websiteTitle2];
    buildTitle = [v4 textWithString:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SSLinkResultBuilder;
    buildTitle = [(SSResultBuilder *)&v10 buildTitle];
  }

  return buildTitle;
}

- (id)buildBadgingImageWithThumbnail:(id)thumbnail
{
  v12[1] = *MEMORY[0x1E69E9840];
  thumbnailCopy = thumbnail;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (-[SSLinkResultBuilder senderContactIdentifiers](self, "senderContactIdentifiers"), v5 = objc_claimAutoreleasedReturnValue(), [v5 firstObject], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v11.receiver = self;
    v11.super_class = SSLinkResultBuilder;
    v7 = [(SSResultBuilder *)&v11 buildBadgingImageWithThumbnail:thumbnailCopy];
  }

  else
  {
    v7 = objc_opt_new();
    v12[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v7 setContactIdentifiers:v8];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)buildDescriptions
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Shared Link" value:0 table:0];

  v5 = [(SSLinkResultBuilder *)self url];
  host = [v5 host];

  if (host)
  {
    v14[0] = host;
    v14[1] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v7 componentsJoinedByString:@" · "];
  }

  else
  {
    v8 = [(SSLinkResultBuilder *)self url];
  }

  v9 = [MEMORY[0x1E69CA3A0] textWithString:host];
  v13 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)subclassBuildHorizontallyScrollingCardSection
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  senderContactIdentifiers = [(SSLinkResultBuilder *)self senderContactIdentifiers];
  v5 = [senderContactIdentifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(senderContactIdentifiers);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = objc_opt_new();
        [v10 setContactIdentifier:v9];
        [v3 addObject:v10];
      }

      v6 = [senderContactIdentifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v11 = objc_opt_new();
  v12 = [(SSLinkResultBuilder *)self url];
  absoluteString = [v12 absoluteString];
  [v11 setUrl:absoluteString];

  if ([v3 count])
  {
    v14 = v3;
  }

  else
  {
    v14 = 0;
  }

  [v11 setPeopleToBadge:v14];
  coreSpotlightId = [(SSResultBuilder *)self coreSpotlightId];
  [v11 setCoreSpotlightIdentifier:coreSpotlightId];

  [v11 setIsHighlighted:{-[SSLinkResultBuilder syndicationStatus](self, "syndicationStatus") == 2}];
  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E69CA320];
  v5 = [(SSLinkResultBuilder *)self url];
  v6 = [v4 punchoutWithURL:v5];
  [v3 setPunchout:v6];

  return v3;
}

@end