@interface SPUISSystemPreferenceResultBuilder
- (SPUISSystemPreferenceResultBuilder)initWithResult:(id)result;
- (id)buildDescriptions;
@end

@implementation SPUISSystemPreferenceResultBuilder

- (SPUISSystemPreferenceResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = SPUISSystemPreferenceResultBuilder;
  v5 = [(SPUISResultBuilder *)&v10 initWithResult:resultCopy];
  if (v5)
  {
    applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
    [(SPUISSystemPreferenceResultBuilder *)v5 setBundleId:applicationBundleIdentifier];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    [(SPUISSystemPreferenceResultBuilder *)v5 setName:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
    [(SPUISSystemPreferenceResultBuilder *)v5 setPreferenceDescription:v8];
  }

  return v5;
}

- (id)buildDescriptions
{
  v11[1] = *MEMORY[0x277D85DE8];
  preferenceDescription = [(SPUISSystemPreferenceResultBuilder *)self preferenceDescription];
  v4 = [preferenceDescription length];

  if (v4)
  {
    v5 = MEMORY[0x277D4C598];
    preferenceDescription2 = [(SPUISSystemPreferenceResultBuilder *)self preferenceDescription];
    v7 = [v5 textWithString:preferenceDescription2];
    v11[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end