@interface SSPodcastResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SSPodcastResultBuilder)initWithResult:(id)result;
- (id)buildCompactCardSection;
- (id)buildDescriptions;
- (id)buildInlineCardSection;
- (id)buildLastViewedString;
@end

@implementation SSPodcastResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___SSPodcastResultBuilder;
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

- (SSPodcastResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = SSPodcastResultBuilder;
  v5 = [(SSResultBuilder *)&v12 initWithResult:resultCopy];
  if (v5)
  {
    lastUsedDate = [resultCopy lastUsedDate];
    [(SSPodcastResultBuilder *)v5 setLastViewedDate:lastUsedDate];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
    [(SSPodcastResultBuilder *)v5 setName:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
    [(SSPodcastResultBuilder *)v5 setPodcastDescription:v8];

    v9 = [resultCopy valueForAttribute:*MEMORY[0x1E6963EB0] withType:objc_opt_class()];
    [(SSPodcastResultBuilder *)v5 setImageURL:v9];

    v10 = [resultCopy valueForAttribute:*MEMORY[0x1E6963D18] withType:objc_opt_class()];
    [(SSPodcastResultBuilder *)v5 setAuthors:v10];
  }

  return v5;
}

- (id)buildLastViewedString
{
  lastViewedDate = [(SSPodcastResultBuilder *)self lastViewedDate];

  if (lastViewedDate)
  {
    v4 = +[SSDateFormatManager dateLastOpenedStringFormat];
    v5 = MEMORY[0x1E696AEC0];
    lastViewedDate2 = [(SSPodcastResultBuilder *)self lastViewedDate];
    v7 = [SSDateFormatManager dyanmicStringFromDate:lastViewedDate2];
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
  v4.super_class = SSPodcastResultBuilder;
  buildInlineCardSection = [(SSResultBuilder *)&v4 buildInlineCardSection];
  [buildInlineCardSection setPunchoutOptions:0];

  return buildInlineCardSection;
}

- (id)buildCompactCardSection
{
  v10.receiver = self;
  v10.super_class = SSPodcastResultBuilder;
  buildCompactCardSection = [(SSResultBuilder *)&v10 buildCompactCardSection];
  descriptions = [buildCompactCardSection descriptions];
  v5 = MEMORY[0x1E69CA3A0];
  buildLastViewedString = [(SSPodcastResultBuilder *)self buildLastViewedString];
  v7 = [v5 textWithString:buildLastViewedString];
  v8 = [descriptions arrayByAddingObject:v7];
  [buildCompactCardSection setDescriptions:v8];

  return buildCompactCardSection;
}

- (id)buildDescriptions
{
  v14[1] = *MEMORY[0x1E69E9840];
  result = [(SSResultBuilder *)self result];
  contentType = [result contentType];
  if ([contentType isEqualToString:@"com.apple.podcasts.show"])
  {
    authors = [(SSPodcastResultBuilder *)self authors];

    if (authors)
    {
      v6 = MEMORY[0x1E69CA3A0];
      authors2 = [(SSPodcastResultBuilder *)self authors];
      v8 = [authors2 componentsJoinedByString:{@", "}];
      v9 = [v6 textWithString:v8];
      v14[0] = v9;
      buildDescriptions = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v13.receiver = self;
  v13.super_class = SSPodcastResultBuilder;
  buildDescriptions = [(SSResultBuilder *)&v13 buildDescriptions];
LABEL_6:
  v11 = *MEMORY[0x1E69E9840];

  return buildDescriptions;
}

@end