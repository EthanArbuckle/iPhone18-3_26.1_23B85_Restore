@interface WBSSiriIntelligenceDonor(WBSUISiriIntelligenceDonorExtras)
- (uint64_t)donateTextInWebView:()WBSUISiriIntelligenceDonorExtras extractedReaderText:canDonateFullPageText:profileIdentifier:personalizationData:extractInnerText:;
@end

@implementation WBSSiriIntelligenceDonor(WBSUISiriIntelligenceDonorExtras)

- (uint64_t)donateTextInWebView:()WBSUISiriIntelligenceDonorExtras extractedReaderText:canDonateFullPageText:profileIdentifier:personalizationData:extractInnerText:
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v14 URL];
  if (!v19)
  {
LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  if (![v15 length])
  {
    if ((a5 & 1) == 0)
    {
      [a1 donateDataForPageWithURL:v19 fullPageText:0 readerText:0 profileIdentifier:v16 personalizationData:v17];
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __179__WBSSiriIntelligenceDonor_WBSUISiriIntelligenceDonorExtras__donateTextInWebView_extractedReaderText_canDonateFullPageText_profileIdentifier_personalizationData_extractInnerText___block_invoke;
    v22[3] = &unk_1E8289718;
    v28 = a5;
    v23 = v19;
    v24 = a1;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    [v14 _getContentsAsStringWithCompletionHandler:v22];

    goto LABEL_7;
  }

  [a1 donateDataForPageWithURL:v19 fullPageText:0 readerText:v15 profileIdentifier:v16 personalizationData:v17];
  v20 = 1;
LABEL_8:

  return v20;
}

@end