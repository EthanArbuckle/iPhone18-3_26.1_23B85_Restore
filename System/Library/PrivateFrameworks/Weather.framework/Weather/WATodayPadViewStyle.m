@interface WATodayPadViewStyle
+ (id)styleForScreenWithSize:(CGSize)a3 orientation:(int64_t)a4;
- (WATodayPadViewStyle)init;
- (WATodayPadViewStyle)initWithFormat:(unint64_t)a3 orientation:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setupForDefaultWithOrientation:(int64_t)a3;
- (void)_setupForGigantorWithOrientation:(int64_t)a3;
@end

@implementation WATodayPadViewStyle

+ (id)styleForScreenWithSize:(CGSize)a3 orientation:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [WATodayPadViewStyle alloc];
  if (width >= height)
  {
    v8 = width;
  }

  else
  {
    v8 = height;
  }

  v9 = [(WATodayPadViewStyle *)v7 initWithFormat:v8 >= 1366.0 orientation:a4];

  return v9;
}

- (WATodayPadViewStyle)initWithFormat:(unint64_t)a3 orientation:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = WATodayPadViewStyle;
  v6 = [(WATodayPadViewStyle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      [(WATodayPadViewStyle *)v6 _setupForGigantorWithOrientation:a4];
    }

    else
    {
      [(WATodayPadViewStyle *)v6 _setupForDefaultWithOrientation:a4];
    }
  }

  return v7;
}

- (WATodayPadViewStyle)init
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 _referenceBounds];
  if (v4 >= v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6 >= 1366.0;
  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = -[WATodayPadViewStyle initWithFormat:orientation:](self, "initWithFormat:orientation:", v7, [v8 orientation]);

  return v9;
}

- (void)_setupForGigantorWithOrientation:(int64_t)a3
{
  [(WATodayPadViewStyle *)self setFormat:1];
  [(WATodayPadViewStyle *)self setOrientation:a3];
  v5 = [MEMORY[0x277D74300] systemFontOfSize:50.0 weight:*MEMORY[0x277D74408]];
  [(WATodayPadViewStyle *)self setTemperatureFont:v5];

  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  v10 = [v6 fontDescriptor];

  v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:32770 options:0];
  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
  [(WATodayPadViewStyle *)self setLocationFont:v8];

  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v10 size:0.0];
  [(WATodayPadViewStyle *)self setConditionsFont:v9];

  [(WATodayPadViewStyle *)self setLabelLeadingMargin:16.0];
  [(WATodayPadViewStyle *)self setConditionsImageLeadingMargin:8.0];
  [(WATodayPadViewStyle *)self setTemperatureLabelBaselineToConditionsImageViewBottom:-40.0];
  [(WATodayPadViewStyle *)self setLocationLabelBaselineToTemperatureLabelBaseline:25.0];
  [(WATodayPadViewStyle *)self setConditionsLabelBaselineToLocationLabelBaseline:20.0];
  [(WATodayPadViewStyle *)self setConditionsLabelBaselineToBottom:0.0];
}

- (void)_setupForDefaultWithOrientation:(int64_t)a3
{
  [(WATodayPadViewStyle *)self setFormat:0];
  [(WATodayPadViewStyle *)self setOrientation:a3];
  v5 = 44.0;
  if ((a3 - 1) < 2)
  {
    v5 = 50.0;
  }

  v6 = [MEMORY[0x277D74300] systemFontOfSize:v5 weight:*MEMORY[0x277D74408]];
  [(WATodayPadViewStyle *)self setTemperatureFont:v6];

  v7 = *MEMORY[0x277D76968];
  v10 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:32770 options:0];
  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v10 size:0.0];
  [(WATodayPadViewStyle *)self setLocationFont:v8];

  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:v7];
  [(WATodayPadViewStyle *)self setConditionsFont:v9];

  [(WATodayPadViewStyle *)self setLabelLeadingMargin:16.0];
  [(WATodayPadViewStyle *)self setConditionsImageLeadingMargin:8.0];
  [(WATodayPadViewStyle *)self setTemperatureLabelBaselineToConditionsImageViewBottom:-40.0];
  [(WATodayPadViewStyle *)self setLocationLabelBaselineToTemperatureLabelBaseline:20.0];
  [(WATodayPadViewStyle *)self setConditionsLabelBaselineToLocationLabelBaseline:20.0];
  [(WATodayPadViewStyle *)self setConditionsLabelBaselineToBottom:0.0];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WATodayPadViewStyle allocWithZone:?]];
  v5 = [(WATodayPadViewStyle *)self temperatureFont];
  [(WATodayPadViewStyle *)v4 setTemperatureFont:v5];

  v6 = [(WATodayPadViewStyle *)self locationFont];
  [(WATodayPadViewStyle *)v4 setLocationFont:v6];

  v7 = [(WATodayPadViewStyle *)self conditionsFont];
  [(WATodayPadViewStyle *)v4 setConditionsFont:v7];

  [(WATodayPadViewStyle *)self labelLeadingMargin];
  [(WATodayPadViewStyle *)v4 setLabelLeadingMargin:?];
  [(WATodayPadViewStyle *)self conditionsImageLeadingMargin];
  [(WATodayPadViewStyle *)v4 setConditionsImageLeadingMargin:?];
  [(WATodayPadViewStyle *)self temperatureLabelBaselineToConditionsImageViewBottom];
  [(WATodayPadViewStyle *)v4 setTemperatureLabelBaselineToConditionsImageViewBottom:?];
  [(WATodayPadViewStyle *)self locationLabelBaselineToTemperatureLabelBaseline];
  [(WATodayPadViewStyle *)v4 setLocationLabelBaselineToTemperatureLabelBaseline:?];
  [(WATodayPadViewStyle *)self conditionsLabelBaselineToLocationLabelBaseline];
  [(WATodayPadViewStyle *)v4 setConditionsLabelBaselineToLocationLabelBaseline:?];
  [(WATodayPadViewStyle *)self conditionsLabelBaselineToBottom];
  [(WATodayPadViewStyle *)v4 setConditionsLabelBaselineToBottom:?];
  return v4;
}

@end