@interface PCAdPolicyFormat
- (void)policiesForContainerType:(id)type adType:(id)adType adFormatType:(id)formatType completion:(id)completion;
- (void)policiesToEnforce:(id)enforce;
@end

@implementation PCAdPolicyFormat

- (void)policiesForContainerType:(id)type adType:(id)adType adFormatType:(id)formatType completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    formatTypeCopy = formatType;
    adTypeCopy = adType;
    typeCopy = type;
    v13 = objc_alloc_init(PCSupportRequester);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_260F21910;
    v14[3] = &unk_279AC9968;
    v15 = completionCopy;
    [(PCSupportRequester *)v13 policiesForContainerType:typeCopy adType:adTypeCopy adFormatType:formatTypeCopy completion:v14];
  }
}

- (void)policiesToEnforce:(id)enforce
{
  enforceCopy = enforce;
  if (enforceCopy)
  {
    v4 = objc_alloc_init(PCSupportRequester);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_260F219C8;
    v5[3] = &unk_279AC9968;
    v6 = enforceCopy;
    [(PCSupportRequester *)v4 policiesToEnforce:v5];
  }
}

@end