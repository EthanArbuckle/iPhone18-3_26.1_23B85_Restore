@interface LTWordTimingInfo
@end

@implementation LTWordTimingInfo

void __58___LTWordTimingInfo_Daemon__wordTimingInfoFromArray_text___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CE1C50];
  v4 = a2;
  v9 = objc_alloc_init(v3);
  [v9 setLength:{objc_msgSend(v4, "length")}];
  [v9 setOffset:{objc_msgSend(v4, "offset")}];
  v5 = [v4 word];
  [v9 setWord:v5];

  [v9 setSampleIndex:{objc_msgSend(v4, "sample_idx")}];
  [v4 timestamp];
  [v9 setStartTime:v6];
  v7 = [v4 offset];
  v8 = [v4 length];

  [v9 setTextRange:{v7, v8}];
  [*(a1 + 32) addObject:v9];
}

void __67___LTWordTimingInfo_Daemon__wordTimingInfoFromSiriTTSService_text___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CE1C50];
  v4 = a2;
  v10 = objc_alloc_init(v3);
  [v4 textRange];
  [v10 setLength:v5];
  [v10 setOffset:{objc_msgSend(v4, "textRange")}];
  [v10 setWord:&stru_284834138];
  [v4 startTime];
  [v10 setStartTime:v6 * 1000.0];
  v7 = [v4 textRange];
  v9 = v8;

  [v10 setTextRange:{v7, v9}];
  [*(a1 + 32) addObject:v10];
}

@end