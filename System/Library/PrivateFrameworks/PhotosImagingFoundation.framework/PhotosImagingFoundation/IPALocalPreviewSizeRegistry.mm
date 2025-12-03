@interface IPALocalPreviewSizeRegistry
+ (id)sharedInstance;
- (IPALocalPreviewSizeRegistry)init;
@end

@implementation IPALocalPreviewSizeRegistry

- (IPALocalPreviewSizeRegistry)init
{
  v55[2] = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = IPALocalPreviewSizeRegistry;
  v2 = [(IPAPreviewSizeRegistry *)&v50 initWithName:@"Local"];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"__32s"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults2 BOOLForKey:@"__32s_422"];

  if (v6)
  {
    v7 = [IPAImageSizePolicy bestFitPolicyWithEvenWidthTotalPixelCount:1020];
  }

  else
  {
    if (v4)
    {
      v8 = 1024;
    }

    else
    {
      v8 = 4096;
    }

    v7 = [IPAImageSizePolicy bestFitPolicyWithTotalPixelCount:v8];
  }

  v9 = v7;
  v10 = [[IPAPreviewSizePolicy alloc] initWithName:@"RKImageStyleMicro" style:&unk_287048EE0 sizePolicy:v7 styleNeededThreshold:&__block_literal_global_557 styleProducedThreshold:&__block_literal_global_73];
  [(IPAPreviewSizeRegistry *)v2 addPolicy:v10];
  v11 = [IPAImageSizePolicy bestFitPolicyWithTotalPixelCount:12288];
  v55[0] = v11;
  v12 = [IPAImageSizePolicy bestFitPolicyInSquare:128.0];
  v55[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  v14 = [IPAImageSizePolicy largestPolicyWithPolicies:v13];

  v15 = [IPAPreviewSizePolicy alloc];
  v16 = thresholdForSizePolicy(v14);
  v17 = thresholdForSizePolicy(v14);
  v18 = [(IPAPreviewSizePolicy *)v15 initWithName:@"RKImageStyleTiny" style:&unk_287048EF8 sizePolicy:v14 styleNeededThreshold:v16 styleProducedThreshold:v17];

  [(IPAPreviewSizeRegistry *)v2 addPolicy:v18];
  v19 = [IPAImageSizePolicy bestFitPolicyWithTotalPixelCount:97200];
  v54[0] = v19;
  v20 = [IPAImageSizePolicy bestFitPolicyInSquare:360.0];
  v54[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
  v22 = [IPAImageSizePolicy largestPolicyWithPolicies:v21];

  v23 = [IPAPreviewSizePolicy alloc];
  v24 = thresholdForSizePolicy(v22);
  v25 = thresholdForSizePolicy(v22);
  v26 = [(IPAPreviewSizePolicy *)v23 initWithName:@"RKImageStyleMini" style:&unk_287048F10 sizePolicy:v22 styleNeededThreshold:v24 styleProducedThreshold:v25];

  [(IPAPreviewSizeRegistry *)v2 addPolicy:v26];
  v27 = [IPAImageSizePolicy bestFitPolicyWithTotalPixelCount:786432];
  v53[0] = v27;
  v28 = [IPAImageSizePolicy bestFitPolicyInSquare:1024.0];
  v53[1] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v30 = [IPAImageSizePolicy largestPolicyWithPolicies:v29];

  v31 = [IPAPreviewSizePolicy alloc];
  v32 = thresholdForSizePolicy(v30);
  v33 = thresholdForSizePolicy(v30);
  v34 = [(IPAPreviewSizePolicy *)v31 initWithName:@"RKImageStyleThumbnail" style:&unk_287048F28 sizePolicy:v30 styleNeededThreshold:v32 styleProducedThreshold:v33];

  [(IPAPreviewSizeRegistry *)v2 addPolicy:v34];
  v35 = [IPAImageSizePolicy bestFitPolicyWithTotalPixelCount:15725430];
  v52[0] = v35;
  v36 = [IPAImageSizePolicy bestFitPolicyInSquare:4579.0];
  v52[1] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v38 = [IPAImageSizePolicy largestPolicyWithPolicies:v37];

  v39 = [IPAPreviewSizePolicy alloc];
  v40 = thresholdForSizePolicy(v38);
  v41 = thresholdForSizePolicy(v38);
  v42 = [(IPAPreviewSizePolicy *)v39 initWithName:@"RKImageStyleLargePreview" style:&unk_287048F40 sizePolicy:v38 styleNeededThreshold:v40 styleProducedThreshold:v41];

  [(IPAPreviewSizeRegistry *)v2 addPolicy:v42];
  v43 = +[IPAImageSizePolicy originalSizePolicy];

  v44 = [[IPAPreviewSizePolicy alloc] initWithName:@"RKImageStyleFullSizePreview" style:&unk_287048F58 sizePolicy:v43 styleNeededThreshold:&__block_literal_global_87 styleProducedThreshold:&__block_literal_global_90];
  [(IPAPreviewSizeRegistry *)v2 addPolicy:v44];
  v45 = [IPAImageSizePolicy bestFitPolicyInSquare:480.0];
  v51 = v45;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  v47 = [IPAImageSizePolicy largestPolicyWithPolicies:v46];

  v48 = [[IPAPreviewSizePolicy alloc] initWithName:@"RKImageStyleFaceTile" style:&unk_287048F70 sizePolicy:v47 styleNeededThreshold:&__block_literal_global_95 styleProducedThreshold:&__block_literal_global_98];
  [(IPAPreviewSizeRegistry *)v2 addPolicy:v48];

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__IPALocalPreviewSizeRegistry_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __45__IPALocalPreviewSizeRegistry_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end