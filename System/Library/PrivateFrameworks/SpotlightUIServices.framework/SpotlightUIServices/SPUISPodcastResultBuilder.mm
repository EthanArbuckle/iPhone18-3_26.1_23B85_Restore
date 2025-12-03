@interface SPUISPodcastResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SPUISPodcastResultBuilder)initWithResult:(id)result;
- (id)buildCompactCardSection;
- (id)buildDescriptions;
- (id)buildInlineCardSection;
- (id)buildLastViewedString;
@end

@implementation SPUISPodcastResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___SPUISPodcastResultBuilder;
  if (objc_msgSendSuper2(&v9, sel_supportsResult_, resultCopy))
  {
    v5 = 1;
  }

  else
  {
    contentType = [resultCopy contentType];
    bundleId = [self bundleId];
    v5 = [contentType hasPrefix:bundleId];
  }

  return v5;
}

- (SPUISPodcastResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = SPUISPodcastResultBuilder;
  v5 = [(SPUISResultBuilder *)&v12 initWithResult:resultCopy];
  if (v5)
  {
    lastUsedDate = [resultCopy lastUsedDate];
    [(SPUISPodcastResultBuilder *)v5 setLastViewedDate:lastUsedDate];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    [(SPUISPodcastResultBuilder *)v5 setName:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
    [(SPUISPodcastResultBuilder *)v5 setPodcastDescription:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x277CC2688] withType:objc_opt_class()];
    [(SPUISPodcastResultBuilder *)v5 setImageURL:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x277CC24E0] withType:objc_opt_class()];
    [(SPUISPodcastResultBuilder *)v5 setAuthors:v10];
  }

  return v5;
}

- (id)buildLastViewedString
{
  lastViewedDate = [(SPUISPodcastResultBuilder *)self lastViewedDate];

  if (lastViewedDate)
  {
    v4 = +[SPUISDateFormatManager dateLastOpenedStringFormat];
    v5 = MEMORY[0x277CCACA8];
    lastViewedDate2 = [(SPUISPodcastResultBuilder *)self lastViewedDate];
    v7 = [SPUISDateFormatManager dyanmicStringFromDate:lastViewedDate2];
    v8 = [v5 stringWithFormat:v4, v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)buildInlineCardSection
{
  v4.receiver = self;
  v4.super_class = SPUISPodcastResultBuilder;
  buildInlineCardSection = [(SPUISResultBuilder *)&v4 buildInlineCardSection];
  [buildInlineCardSection setPunchoutOptions:0];

  return buildInlineCardSection;
}

- (id)buildCompactCardSection
{
  v10.receiver = self;
  v10.super_class = SPUISPodcastResultBuilder;
  buildCompactCardSection = [(SPUISResultBuilder *)&v10 buildCompactCardSection];
  descriptions = [buildCompactCardSection descriptions];
  v5 = MEMORY[0x277D4C598];
  buildLastViewedString = [(SPUISPodcastResultBuilder *)self buildLastViewedString];
  v7 = [v5 textWithString:buildLastViewedString];
  v8 = [descriptions arrayByAddingObject:v7];
  [buildCompactCardSection setDescriptions:v8];

  return buildCompactCardSection;
}

- (id)buildDescriptions
{
  v14[1] = *MEMORY[0x277D85DE8];
  result = [(SPUISResultBuilder *)self result];
  contentType = [result contentType];
  if ([contentType isEqualToString:@"com.apple.podcasts.show"])
  {
    authors = [(SPUISPodcastResultBuilder *)self authors];

    if (authors)
    {
      v6 = MEMORY[0x277D4C598];
      authors2 = [(SPUISPodcastResultBuilder *)self authors];
      v8 = [authors2 componentsJoinedByString:{@", "}];
      v9 = [v6 textWithString:v8];
      v14[0] = v9;
      buildDescriptions = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v13.receiver = self;
  v13.super_class = SPUISPodcastResultBuilder;
  buildDescriptions = [(SPUISResultBuilder *)&v13 buildDescriptions];
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];

  return buildDescriptions;
}

@end