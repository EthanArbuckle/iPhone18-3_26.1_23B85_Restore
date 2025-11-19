@interface SPUISVoiceMemosResultBuilder
- (SPUISVoiceMemosResultBuilder)initWithResult:(id)a3;
- (id)buildDescriptions;
- (id)buildTitle;
@end

@implementation SPUISVoiceMemosResultBuilder

- (SPUISVoiceMemosResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SPUISVoiceMemosResultBuilder;
  v5 = [(SPUISResultBuilder *)&v10 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISVoiceMemosResultBuilder *)v5 setCreationDate:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x277CC2780] withType:objc_opt_class()];
    [(SPUISVoiceMemosResultBuilder *)v5 setDurationInSeconds:v7];

    v8 = [v4 valueForAttribute:*MEMORY[0x277CC3118] withType:objc_opt_class()];
    [(SPUISVoiceMemosResultBuilder *)v5 setTranscription:v8];
  }

  return v5;
}

- (id)buildTitle
{
  v3 = [(SPUISVoiceMemosResultBuilder *)self transcription];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(SPUISVoiceMemosResultBuilder *)self transcription];
    v6 = [(SPUISResultBuilder *)self buildHighlightedTextWithString:v5 includeQuotes:1];

    [v6 setMaxLines:2];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SPUISVoiceMemosResultBuilder;
    v6 = [(SPUISResultBuilder *)&v8 buildTitle];
  }

  return v6;
}

- (id)buildDescriptions
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(SPUISVoiceMemosResultBuilder *)self transcription];
  v5 = [v4 length];

  if (v5)
  {
    v25.receiver = self;
    v25.super_class = SPUISVoiceMemosResultBuilder;
    v6 = [(SPUISResultBuilder *)&v25 buildTitle];
    v7 = [v6 text];
    [v3 addObject:v7];
  }

  v8 = [(SPUISVoiceMemosResultBuilder *)self creationDate];

  if (v8)
  {
    v9 = [(SPUISVoiceMemosResultBuilder *)self creationDate];
    v10 = [SPUISDateFormatManager dynamicMediumStringFromDate:v9];
    [v3 addObject:v10];
  }

  v11 = [(SPUISVoiceMemosResultBuilder *)self durationInSeconds];

  if (v11)
  {
    v12 = [(SPUISVoiceMemosResultBuilder *)self durationInSeconds];
    [v12 doubleValue];
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