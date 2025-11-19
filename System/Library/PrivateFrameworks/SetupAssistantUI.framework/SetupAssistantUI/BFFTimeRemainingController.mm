@interface BFFTimeRemainingController
- (BFFTimeRemainingController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (id)timeRemainingString:(double)a3;
- (void)setProgress:(double)a3;
- (void)setTimeRemainingEstimate:(double)a3;
- (void)viewDidLoad;
@end

@implementation BFFTimeRemainingController

- (BFFTimeRemainingController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v9.receiver = self;
  v9.super_class = BFFTimeRemainingController;
  v5 = [(OBSetupAssistantProgressController *)&v9 initWithTitle:a3 detailText:a4 icon:a5];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA958]);
    durationFormatter = v5->_durationFormatter;
    v5->_durationFormatter = v6;

    [(NSDateComponentsFormatter *)v5->_durationFormatter setUnitsStyle:3];
    [(NSDateComponentsFormatter *)v5->_durationFormatter setMaximumUnitCount:1];
    [(NSDateComponentsFormatter *)v5->_durationFormatter setAllowedUnits:240];
    [(NSDateComponentsFormatter *)v5->_durationFormatter setIncludesApproximationPhrase:1];
  }

  return v5;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = BFFTimeRemainingController;
  [(OBSetupAssistantProgressController *)&v8 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TIME_REMAINING" value:&stru_287761F90 table:@"Localizable"];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ESTIMATING_TIME_REMAINING" value:&stru_287761F90 table:@"Localizable"];
  v7 = [v4 stringByAppendingString:v6];
  [(OBSetupAssistantProgressController *)self setProgressText:v7];
}

- (void)setTimeRemainingEstimate:(double)a3
{
  v4 = [(BFFTimeRemainingController *)self timeRemainingString:a3];
  [(OBSetupAssistantProgressController *)self setProgressText:v4];
}

- (void)setProgress:(double)a3
{
  if (a3 < 0.02)
  {
    a3 = 0.02;
  }

  v3.receiver = self;
  v3.super_class = BFFTimeRemainingController;
  [(OBSetupAssistantProgressController *)&v3 setProgress:a3];
}

- (id)timeRemainingString:(double)a3
{
  if (a3 <= 604800.0)
  {
    if (a3 > 0.0)
    {
      v6 = [(NSDateComponentsFormatter *)self->_durationFormatter stringFromTimeInterval:?];
      goto LABEL_7;
    }

    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"LESS_THAN_ONE_MINUTE_REMAINING";
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"ESTIMATING_TIME_REMAINING";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_287761F90 table:@"Localizable"];

LABEL_7:
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"TIME_REMAINING" value:&stru_287761F90 table:@"Localizable"];
  v9 = [v8 stringByAppendingString:v6];

  return v9;
}

@end