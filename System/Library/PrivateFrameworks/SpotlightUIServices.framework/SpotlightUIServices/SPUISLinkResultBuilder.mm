@interface SPUISLinkResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SPUISLinkResultBuilder)initWithResult:(id)result;
- (id)buildBadgingImageWithThumbnail:(id)thumbnail;
- (id)buildCommand;
- (id)buildDescriptions;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)subclassBuildHorizontallyScrollingCardSection;
@end

@implementation SPUISLinkResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v5 = [resultCopy valueForAttribute:*MEMORY[0x277CC31F8] withType:objc_opt_class()];
  v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC2500] withType:objc_opt_class()];
  if (v5)
  {
    bundleId = [self bundleId];
    if ([v6 isEqualToString:bundleId])
    {
      contentType = [resultCopy contentType];
      if (isImageOrVideoContentType())
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
  v12 = [sectionBundleIdentifier isEqual:@"com.apple.spotlight.syndicatedLinks"] | v9;

  return v12 & 1;
}

- (SPUISLinkResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v21.receiver = self;
  v21.super_class = SPUISLinkResultBuilder;
  v5 = [(SPUISResultBuilder *)&v21 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC24E0] withType:objc_opt_class()];
    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC24C0] withType:objc_opt_class()];
    v8 = [resultCopy valueForAttribute:*MEMORY[0x277CC3200] withType:objc_opt_class()];
    [(SPUISLinkResultBuilder *)v5 setWebsiteTitle:v8];

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

    [(SPUISLinkResultBuilder *)v5 setSenders:v10];

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

    [(SPUISLinkResultBuilder *)v5 setSenderContactIdentifiers:v12];

    v13 = [resultCopy valueForAttribute:*MEMORY[0x277CC3190] withType:objc_opt_class()];
    -[SPUISLinkResultBuilder setSyndicationStatus:](v5, "setSyndicationStatus:", [v13 unsignedIntValue]);

    v14 = [resultCopy url];
    if (v14)
    {
      [(SPUISLinkResultBuilder *)v5 setUrl:v14];
    }

    else
    {
      v15 = MEMORY[0x277CBEBC0];
      v16 = [resultCopy valueForAttribute:*MEMORY[0x277CC31F8] withType:objc_opt_class()];
      v17 = [v15 URLWithString:v16];
      [(SPUISLinkResultBuilder *)v5 setUrl:v17];
    }

    v18 = [(SPUISLinkResultBuilder *)v5 url];
    if (v18)
    {
      [(SPUISLinkResultBuilder *)v5 setUrl:v18];
    }

    else
    {
      v19 = [resultCopy valueForAttribute:*MEMORY[0x277CC31F8] withType:objc_opt_class()];
      [(SPUISLinkResultBuilder *)v5 setUrl:v19];
    }
  }

  return v5;
}

- (id)buildThumbnail
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277D4C550];
  v5 = [(SPUISLinkResultBuilder *)self url];
  v6 = [v4 punchoutWithURL:v5];
  [v3 setPunchout:v6];

  return v3;
}

- (id)buildTitle
{
  websiteTitle = [(SPUISLinkResultBuilder *)self websiteTitle];

  if (websiteTitle)
  {
    v4 = MEMORY[0x277D4C598];
    v5 = objc_opt_class();
    websiteTitle2 = [(SPUISLinkResultBuilder *)self websiteTitle];
    v7 = [v5 whiteSpaceCondensedStringForString:websiteTitle2];
    buildTitle = [v4 textWithString:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SPUISLinkResultBuilder;
    buildTitle = [(SPUISResultBuilder *)&v10 buildTitle];
  }

  return buildTitle;
}

- (id)buildBadgingImageWithThumbnail:(id)thumbnail
{
  v12[1] = *MEMORY[0x277D85DE8];
  thumbnailCopy = thumbnail;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (-[SPUISLinkResultBuilder senderContactIdentifiers](self, "senderContactIdentifiers"), v5 = objc_claimAutoreleasedReturnValue(), [v5 firstObject], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v11.receiver = self;
    v11.super_class = SPUISLinkResultBuilder;
    v7 = [(SPUISResultBuilder *)&v11 buildBadgingImageWithThumbnail:thumbnailCopy];
  }

  else
  {
    v7 = objc_opt_new();
    v12[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [v7 setContactIdentifiers:v8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)buildDescriptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(SPUISLinkResultBuilder *)self url];
  host = [v2 host];

  v4 = [MEMORY[0x277D4C598] textWithString:host];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)subclassBuildHorizontallyScrollingCardSection
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  senderContactIdentifiers = [(SPUISLinkResultBuilder *)self senderContactIdentifiers];
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
  v12 = [(SPUISLinkResultBuilder *)self url];
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
  coreSpotlightId = [(SPUISResultBuilder *)self coreSpotlightId];
  [v11 setCoreSpotlightIdentifier:coreSpotlightId];

  [v11 setIsHighlighted:{-[SPUISLinkResultBuilder syndicationStatus](self, "syndicationStatus") == 2}];
  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277D4C550];
  v5 = [(SPUISLinkResultBuilder *)self url];
  v6 = [v4 punchoutWithURL:v5];
  [v3 setPunchout:v6];

  return v3;
}

@end