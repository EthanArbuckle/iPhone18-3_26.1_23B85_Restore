@interface SPUISVoiceMemosResultBuilder
- (SPUISVoiceMemosResultBuilder)initWithResult:(id)result;
- (id)buildDescriptions;
- (id)buildTitle;
@end

@implementation SPUISVoiceMemosResultBuilder

- (SPUISVoiceMemosResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = SPUISVoiceMemosResultBuilder;
  v5 = [(SPUISResultBuilder *)&v10 initWithResult:resultCopy];
  if (v5)
  {
    v6 = [resultCopy valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISVoiceMemosResultBuilder *)v5 setCreationDate:v6];

    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC2780] withType:objc_opt_class()];
    [(SPUISVoiceMemosResultBuilder *)v5 setDurationInSeconds:v7];

    v8 = [resultCopy valueForAttribute:*MEMORY[0x277CC3118] withType:objc_opt_class()];
    [(SPUISVoiceMemosResultBuilder *)v5 setTranscription:v8];
  }

  return v5;
}

- (id)buildTitle
{
  transcription = [(SPUISVoiceMemosResultBuilder *)self transcription];
  v4 = [transcription length];

  if (v4)
  {
    transcription2 = [(SPUISVoiceMemosResultBuilder *)self transcription];
    buildTitle = [(SPUISResultBuilder *)self buildHighlightedTextWithString:transcription2 includeQuotes:1];

    [buildTitle setMaxLines:2];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISVoiceMemosResultBuilder;
    buildTitle = [(SPUISResultBuilder *)&v8 buildTitle];
  }

  return buildTitle;
}

- (id)buildDescriptions
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  transcription = [(SPUISVoiceMemosResultBuilder *)self transcription];
  v5 = [transcription length];

  if (v5)
  {
    v25.receiver = self;
    v25.super_class = SPUISVoiceMemosResultBuilder;
    buildTitle = [(SPUISResultBuilder *)&v25 buildTitle];
    text = [buildTitle text];
    [v3 addObject:text];
  }

  creationDate = [(SPUISVoiceMemosResultBuilder *)self creationDate];

  if (creationDate)
  {
    creationDate2 = [(SPUISVoiceMemosResultBuilder *)self creationDate];
    v10 = [SPUISDateFormatManager dynamicMediumStringFromDate:creationDate2];
    [v3 addObject:v10];
  }

  durationInSeconds = [(SPUISVoiceMemosResultBuilder *)self durationInSeconds];

  if (durationInSeconds)
  {
    durationInSeconds2 = [(SPUISVoiceMemosResultBuilder *)self durationInSeconds];
    [durationInSeconds2 doubleValue];
    v14 = round(v13);

    v15 = objc_opt_new();
    v16 = v15;
    if (v14 < 60.0)
    {
      v17 = 192;
    }

    else
    {
      v17 = 224;
    }

    if (v14 < 60.0)
    {
      v18 = 0x10000;
    }

    else
    {
      v18 = 65538;
    }

    [v15 setAllowedUnits:v17];
    [v16 setZeroFormattingBehavior:v18];
    v19 = [v16 stringFromTimeInterval:v14];
    [v3 addObject:v19];
  }

  v20 = [v3 componentsJoinedByString:@" · "];
  if ([v20 length])
  {
    v21 = [MEMORY[0x277D4C598] textWithString:v20];
    v26[0] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end