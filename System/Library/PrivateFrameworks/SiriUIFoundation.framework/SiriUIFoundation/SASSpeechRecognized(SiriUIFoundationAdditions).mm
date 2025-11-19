@interface SASSpeechRecognized(SiriUIFoundationAdditions)
- (void)sruif_setRecognitionWithCorrectedSpeech:()SiriUIFoundationAdditions;
@end

@implementation SASSpeechRecognized(SiriUIFoundationAdditions)

- (void)sruif_setRecognitionWithCorrectedSpeech:()SiriUIFoundationAdditions
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D477A0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setText:v5];

  v7 = objc_alloc_init(MEMORY[0x277D47710]);
  v16[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v7 setTokens:v8];

  v9 = objc_alloc_init(MEMORY[0x277D47720]);
  v15 = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  [v9 setInterpretations:v10];

  v11 = objc_alloc_init(MEMORY[0x277D47728]);
  v14 = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  [v11 setPhrases:v12];

  [a1 setRecognition:v11];
  v13 = *MEMORY[0x277D85DE8];
}

@end