@interface SPUISPodcastResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (SPUISPodcastResultBuilder)initWithResult:(id)a3;
- (id)buildCompactCardSection;
- (id)buildDescriptions;
- (id)buildInlineCardSection;
- (id)buildLastViewedString;
@end

@implementation SPUISPodcastResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___SPUISPodcastResultBuilder;
  if (objc_msgSendSuper2(&v9, sel_supportsResult_, v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 contentType];
    v7 = [a1 bundleId];
    v5 = [v6 hasPrefix:v7];
  }

  return v5;
}

- (SPUISPodcastResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SPUISPodcastResultBuilder;
  v5 = [(SPUISResultBuilder *)&v12 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 lastUsedDate];
    [(SPUISPodcastResultBuilder *)v5 setLastViewedDate:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    [(SPUISPodcastResultBuilder *)v5 setName:v7];

    v8 = [v4 valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
    [(SPUISPodcastResultBuilder *)v5 setPodcastDescription:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x277CC2688] withType:objc_opt_class()];
    [(SPUISPodcastResultBuilder *)v5 setImageURL:v9];

    v10 = [v4 valueForAttribute:*MEMORY[0x277CC24E0] withType:objc_opt_class()];
    [(SPUISPodcastResultBuilder *)v5 setAuthors:v10];
  }

  return v5;
}

- (id)buildLastViewedString
{
  v3 = [(SPUISPodcastResultBuilder *)self lastViewedDate];

  if (v3)
  {
    v4 = +[SPUISDateFormatManager dateLastOpenedStringFormat];
    v5 = MEMORY[0x277CCACA8];
    v6 = [(SPUISPodcastResultBuilder *)self lastViewedDate];
    v7 = [SPUISDateFormatManager dyanmicStringFromDate:v6];
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
  v2 = [(SPUISResultBuilder *)&v4 buildInlineCardSection];
  [v2 setPunchoutOptions:0];

  return v2;
}

- (id)buildCompactCardSection
{
  v10.receiver = self;
  v10.super_class = SPUISPodcastResultBuilder;
  v3 = [(SPUISResultBuilder *)&v10 buildCompactCardSection];
  v4 = [v3 descriptions];
  v5 = MEMORY[0x277D4C598];
  v6 = [(SPUISPodcastResultBuilder *)self buildLastViewedString];
  v7 = [v5 textWithString:v6];
  v8 = [v4 arrayByAddingObject:v7];
  [v3 setDescriptions:v8];

  return v3;
}

- (id)buildDescriptions
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISResultBuilder *)self result];
  v4 = [v3 contentType];
  if ([v4 isEqualToString:@"com.apple.podcasts.show"])
  {
    v5 = [(SPUISPodcastResultBuilder *)self authors];

    if (v5)
    {
      v6 = MEMORY[0x277D4C598];
      v7 = [(SPUISPodcastResultBuilder *)self authors];
      v8 = [v7 componentsJoinedByString:{@", "}];
      v9 = [v6 textWithString:v8];
      v14[0] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v13.receiver = self;
  v13.super_class = SPUISPodcastResultBuilder;
  v10 = [(SPUISResultBuilder *)&v13 buildDescriptions];
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end