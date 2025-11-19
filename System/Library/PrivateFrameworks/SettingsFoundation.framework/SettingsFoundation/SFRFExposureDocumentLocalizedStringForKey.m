@interface SFRFExposureDocumentLocalizedStringForKey
@end

@implementation SFRFExposureDocumentLocalizedStringForKey

void ___SFRFExposureDocumentLocalizedStringForKey_block_invoke()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = SFRuntimeAbsoluteFilePathForPath(@"/System/Library/ProductDocuments/Notices");
  v6 = [v0 fileURLWithPath:v1];

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.bundle", @"RFExposure"];
  v3 = [v6 URLByAppendingPathComponent:v2];

  v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v3];
  v5 = _SFRFExposureDocumentLocalizedStringForKey___rfExposureBundle;
  _SFRFExposureDocumentLocalizedStringForKey___rfExposureBundle = v4;
}

@end