@interface SSPodcastResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (SSPodcastResultBuilder)initWithResult:(id)a3;
- (id)buildCompactCardSection;
- (id)buildDescriptions;
- (id)buildInlineCardSection;
- (id)buildLastViewedString;
@end

@implementation SSPodcastResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___SSPodcastResultBuilder;
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

- (SSPodcastResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SSPodcastResultBuilder;
  v5 = [(SSResultBuilder *)&v12 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 lastUsedDate];
    [(SSPodcastResultBuilder *)v5 setLastViewedDate:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
    [(SSPodcastResultBuilder *)v5 setName:v7];

    v8 = [v4 valueForAttribute:*MEMORY[0x1E6963F28] withType:objc_opt_class()];
    [(SSPodcastResultBuilder *)v5 setPodcastDescription:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x1E6963EB0] withType:objc_opt_class()];
    [(SSPodcastResultBuilder *)v5 setImageURL:v9];

    v10 = [v4 valueForAttribute:*MEMORY[0x1E6963D18] withType:objc_opt_class()];
    [(SSPodcastResultBuilder *)v5 setAuthors:v10];
  }

  return v5;
}

- (id)buildLastViewedString
{
  v3 = [(SSPodcastResultBuilder *)self lastViewedDate];

  if (v3)
  {
    v4 = +[SSDateFormatManager dateLastOpenedStringFormat];
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(SSPodcastResultBuilder *)self lastViewedDate];
    v7 = [SSDateFormatManager dyanmicStringFromDate:v6];
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
  v2 = [(SSResultBuilder *)&v4 buildInlineCardSection];
  [v2 setPunchoutOptions:0];

  return v2;
}

- (id)buildCompactCardSection
{
  v10.receiver = self;
  v10.super_class = SSPodcastResultBuilder;
  v3 = [(SSResultBuilder *)&v10 buildCompactCardSection];
  v4 = [v3 descriptions];
  v5 = MEMORY[0x1E69CA3A0];
  v6 = [(SSPodcastResultBuilder *)self buildLastViewedString];
  v7 = [v5 textWithString:v6];
  v8 = [v4 arrayByAddingObject:v7];
  [v3 setDescriptions:v8];

  return v3;
}

- (id)buildDescriptions
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(SSResultBuilder *)self result];
  v4 = [v3 contentType];
  if ([v4 isEqualToString:@"com.apple.podcasts.show"])
  {
    v5 = [(SSPodcastResultBuilder *)self authors];

    if (v5)
    {
      v6 = MEMORY[0x1E69CA3A0];
      v7 = [(SSPodcastResultBuilder *)self authors];
      v8 = [v7 componentsJoinedByString:{@", "}];
      v9 = [v6 textWithString:v8];
      v14[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v13.receiver = self;
  v13.super_class = SSPodcastResultBuilder;
  v10 = [(SSResultBuilder *)&v13 buildDescriptions];
LABEL_6:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end