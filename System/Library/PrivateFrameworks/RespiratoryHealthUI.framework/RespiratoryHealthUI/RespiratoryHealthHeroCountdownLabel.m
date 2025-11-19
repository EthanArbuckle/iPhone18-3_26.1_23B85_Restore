@interface RespiratoryHealthHeroCountdownLabel
- (RespiratoryHealthHeroCountdownLabel)initWithFrame:(CGRect)a3;
- (id)_makeValueLabelFontWithSize:(double)a3;
- (id)countdownStringForScaleFactor:(double)a3;
- (void)setScaleFactor:(double)a3;
@end

@implementation RespiratoryHealthHeroCountdownLabel

- (RespiratoryHealthHeroCountdownLabel)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = RespiratoryHealthHeroCountdownLabel;
  v3 = [(RespiratoryHealthHeroCountdownLabel *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] whiteColor];
    [(RespiratoryHealthHeroCountdownLabel *)v3 setTextColor:v4];

    v5 = [(RespiratoryHealthHeroCountdownLabel *)v3 countdownStringForScaleFactor:1.0];
    [(RespiratoryHealthHeroCountdownLabel *)v3 setAttributedText:v5];
  }

  return v3;
}

- (void)setScaleFactor:(double)a3
{
  v4 = [(RespiratoryHealthHeroCountdownLabel *)self countdownStringForScaleFactor:a3];
  [(RespiratoryHealthHeroCountdownLabel *)self setAttributedText:v4];
}

- (id)countdownStringForScaleFactor:(double)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v5 setSecond:14];
  v6 = objc_alloc_init(MEMORY[0x277CCA958]);
  [v6 setUnitsStyle:2];
  v7 = [v6 stringFromDateComponents:v5];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCAB48]);
    v9 = *MEMORY[0x277D740A8];
    v23 = *MEMORY[0x277D740A8];
    v10 = [(RespiratoryHealthHeroCountdownLabel *)self _makeUnitLabelFontWithSize:a3 * 15.0];
    v24[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v12 = [v8 initWithString:v7 attributes:v11];

    [v6 setUnitsStyle:0];
    v13 = [v6 stringFromDateComponents:v5];
    if (v13)
    {
      v14 = [v7 rangeOfString:v13];
      v16 = v15;
      v21 = v9;
      v17 = [(RespiratoryHealthHeroCountdownLabel *)self _makeValueLabelFontWithSize:a3 * 20.0];
      v22 = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      [v12 addAttributes:v18 range:{v14, v16}];
    }
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_28749E498];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_makeValueLabelFontWithSize:(double)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D74300] hk_roundedSystemFontWithSize:a3 weight:*MEMORY[0x277D74410]];
  v5 = [v4 fontDescriptor];
  v6 = *MEMORY[0x277D74388];
  v12[0] = *MEMORY[0x277D74398];
  v12[1] = v6;
  v13[0] = &unk_28749F2A0;
  v13[1] = &unk_28749F2B8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v8 = [v5 fontDescriptorByAddingAttributes:v7];

  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:a3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end