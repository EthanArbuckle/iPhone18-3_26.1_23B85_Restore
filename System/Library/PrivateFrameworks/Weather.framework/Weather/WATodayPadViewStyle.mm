@interface WATodayPadViewStyle
+ (id)styleForScreenWithSize:(CGSize)size orientation:(int64_t)orientation;
- (WATodayPadViewStyle)init;
- (WATodayPadViewStyle)initWithFormat:(unint64_t)format orientation:(int64_t)orientation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setupForDefaultWithOrientation:(int64_t)orientation;
- (void)_setupForGigantorWithOrientation:(int64_t)orientation;
@end

@implementation WATodayPadViewStyle

+ (id)styleForScreenWithSize:(CGSize)size orientation:(int64_t)orientation
{
  height = size.height;
  width = size.width;
  v7 = [WATodayPadViewStyle alloc];
  if (width >= height)
  {
    v8 = width;
  }

  else
  {
    v8 = height;
  }

  v9 = [(WATodayPadViewStyle *)v7 initWithFormat:v8 >= 1366.0 orientation:orientation];

  return v9;
}

- (WATodayPadViewStyle)initWithFormat:(unint64_t)format orientation:(int64_t)orientation
{
  v9.receiver = self;
  v9.super_class = WATodayPadViewStyle;
  v6 = [(WATodayPadViewStyle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (format)
    {
      [(WATodayPadViewStyle *)v6 _setupForGigantorWithOrientation:orientation];
    }

    else
    {
      [(WATodayPadViewStyle *)v6 _setupForDefaultWithOrientation:orientation];
    }
  }

  return v7;
}

- (WATodayPadViewStyle)init
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  if (v4 >= v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6 >= 1366.0;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v9 = -[WATodayPadViewStyle initWithFormat:orientation:](self, "initWithFormat:orientation:", v7, [currentDevice orientation]);

  return v9;
}

- (void)_setupForGigantorWithOrientation:(int64_t)orientation
{
  [(WATodayPadViewStyle *)self setFormat:1];
  [(WATodayPadViewStyle *)self setOrientation:orientation];
  v5 = [MEMORY[0x277D74300] systemFontOfSize:50.0 weight:*MEMORY[0x277D74408]];
  [(WATodayPadViewStyle *)self setTemperatureFont:v5];

  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  fontDescriptor = [v6 fontDescriptor];

  v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:32770 options:0];
  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
  [(WATodayPadViewStyle *)self setLocationFont:v8];

  v9 = [MEMORY[0x277D74300] fontWithDescriptor:fontDescriptor size:0.0];
  [(WATodayPadViewStyle *)self setConditionsFont:v9];

  [(WATodayPadViewStyle *)self setLabelLeadingMargin:16.0];
  [(WATodayPadViewStyle *)self setConditionsImageLeadingMargin:8.0];
  [(WATodayPadViewStyle *)self setTemperatureLabelBaselineToConditionsImageViewBottom:-40.0];
  [(WATodayPadViewStyle *)self setLocationLabelBaselineToTemperatureLabelBaseline:25.0];
  [(WATodayPadViewStyle *)self setConditionsLabelBaselineToLocationLabelBaseline:20.0];
  [(WATodayPadViewStyle *)self setConditionsLabelBaselineToBottom:0.0];
}

- (void)_setupForDefaultWithOrientation:(int64_t)orientation
{
  [(WATodayPadViewStyle *)self setFormat:0];
  [(WATodayPadViewStyle *)self setOrientation:orientation];
  v5 = 44.0;
  if ((orientation - 1) < 2)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WATodayPadViewStyle allocWithZone:?]];
  temperatureFont = [(WATodayPadViewStyle *)self temperatureFont];
  [(WATodayPadViewStyle *)v4 setTemperatureFont:temperatureFont];

  locationFont = [(WATodayPadViewStyle *)self locationFont];
  [(WATodayPadViewStyle *)v4 setLocationFont:locationFont];

  conditionsFont = [(WATodayPadViewStyle *)self conditionsFont];
  [(WATodayPadViewStyle *)v4 setConditionsFont:conditionsFont];

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