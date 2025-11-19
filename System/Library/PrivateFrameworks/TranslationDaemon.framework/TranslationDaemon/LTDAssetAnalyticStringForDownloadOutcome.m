@interface LTDAssetAnalyticStringForDownloadOutcome
@end

@implementation LTDAssetAnalyticStringForDownloadOutcome

void ___LTDAssetAnalyticStringForDownloadOutcome_block_invoke()
{
  v4[7] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_284867E10;
  v3[1] = &unk_284867E28;
  v4[0] = @"Downloaded with no retries";
  v4[1] = @"Downloaded with retries";
  v3[2] = &unk_284867E40;
  v3[3] = &unk_284867E58;
  v4[2] = @"User cancelled";
  v4[3] = @"Asset download error";
  v3[4] = &unk_284867E70;
  v3[5] = &unk_284867E88;
  v4[4] = @"Translation daemon shutdown";
  v4[5] = @"Event timeout";
  v3[6] = &unk_284867EA0;
  v4[6] = @"Status Mismatch";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = _LTDAssetAnalyticStringForDownloadOutcome_downloadOutcomeStringMap;
  _LTDAssetAnalyticStringForDownloadOutcome_downloadOutcomeStringMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end