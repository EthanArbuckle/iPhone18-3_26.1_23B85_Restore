@interface SPUISSystemPreferenceResultBuilder
- (SPUISSystemPreferenceResultBuilder)initWithResult:(id)a3;
- (id)buildDescriptions;
@end

@implementation SPUISSystemPreferenceResultBuilder

- (SPUISSystemPreferenceResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SPUISSystemPreferenceResultBuilder;
  v5 = [(SPUISResultBuilder *)&v10 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 applicationBundleIdentifier];
    [(SPUISSystemPreferenceResultBuilder *)v5 setBundleId:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    [(SPUISSystemPreferenceResultBuilder *)v5 setName:v7];

    v8 = [v4 valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
    [(SPUISSystemPreferenceResultBuilder *)v5 setPreferenceDescription:v8];
  }

  return v5;
}

- (id)buildDescriptions
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISSystemPreferenceResultBuilder *)self preferenceDescription];
  v4 = [v3 length];

  if (v4)
  {
    v5 = MEMORY[0x277D4C598];
    v6 = [(SPUISSystemPreferenceResultBuilder *)self preferenceDescription];
    v7 = [v5 textWithString:v6];
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