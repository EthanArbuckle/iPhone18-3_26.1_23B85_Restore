@interface SPUISFreeFormResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (SPUISFreeFormResultBuilder)initWithResult:(id)a3;
- (id)buildDescriptions;
@end

@implementation SPUISFreeFormResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___SPUISFreeFormResultBuilder;
  if (objc_msgSendSuper2(&v9, sel_supportsResult_, v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 applicationBundleIdentifier];
    v7 = [a1 bundleId];
    v5 = [v6 isEqual:v7];
  }

  return v5;
}

- (SPUISFreeFormResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SPUISFreeFormResultBuilder;
  v5 = [(SPUISResultBuilder *)&v8 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
    [(SPUISFreeFormResultBuilder *)v5 setFreeFormDescription:v6];
  }

  return v5;
}

- (id)buildDescriptions
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISFreeFormResultBuilder *)self freeFormDescription];

  if (v3)
  {
    v4 = objc_opt_class();
    v5 = [(SPUISFreeFormResultBuilder *)self freeFormDescription];
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [v4 richTextsFromStrings:v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SPUISFreeFormResultBuilder;
    v7 = [(SPUISResultBuilder *)&v10 buildDescriptions];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end