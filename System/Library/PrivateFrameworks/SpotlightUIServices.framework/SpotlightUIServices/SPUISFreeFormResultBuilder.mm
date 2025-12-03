@interface SPUISFreeFormResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SPUISFreeFormResultBuilder)initWithResult:(id)result;
- (id)buildDescriptions;
@end

@implementation SPUISFreeFormResultBuilder

+ (BOOL)supportsResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___SPUISFreeFormResultBuilder;
  if (objc_msgSendSuper2(&v9, sel_supportsResult_, resultCopy))
  {
    v5 = 1;
  }

  else
  {
    applicationBundleIdentifier = [resultCopy applicationBundleIdentifier];
    bundleId = [self bundleId];
    v5 = [applicationBundleIdentifier isEqual:bundleId];
  }

  return v5;
}

- (SPUISFreeFormResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = SPUISFreeFormResultBuilder;
  v5 = [(SPUISResultBuilder *)&v8 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC2750] withType:objc_opt_class()];
    [(SPUISFreeFormResultBuilder *)v5 setFreeFormDescription:v6];
  }

  return v5;
}

- (id)buildDescriptions
{
  v11[1] = *MEMORY[0x277D85DE8];
  freeFormDescription = [(SPUISFreeFormResultBuilder *)self freeFormDescription];

  if (freeFormDescription)
  {
    v4 = objc_opt_class();
    freeFormDescription2 = [(SPUISFreeFormResultBuilder *)self freeFormDescription];
    v11[0] = freeFormDescription2;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    buildDescriptions = [v4 richTextsFromStrings:v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SPUISFreeFormResultBuilder;
    buildDescriptions = [(SPUISResultBuilder *)&v10 buildDescriptions];
  }

  v8 = *MEMORY[0x277D85DE8];

  return buildDescriptions;
}

@end