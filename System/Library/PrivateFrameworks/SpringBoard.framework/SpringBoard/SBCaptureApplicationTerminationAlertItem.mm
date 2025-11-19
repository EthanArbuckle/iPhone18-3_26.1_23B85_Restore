@interface SBCaptureApplicationTerminationAlertItem
- (SBCaptureApplicationTerminationAlertItem)initWithTerminationInfo:(id)a3;
- (id)message;
- (id)radarDescription;
- (id)radarTitle;
- (id)title;
@end

@implementation SBCaptureApplicationTerminationAlertItem

- (SBCaptureApplicationTerminationAlertItem)initWithTerminationInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBCaptureApplicationTerminationAlertItem;
  v6 = [(SBAlertItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_terminationInfo, a3);
  }

  return v7;
}

- (id)title
{
  v3 = [(SBCaptureApplicationTerminationInfo *)self->_terminationInfo processName];
  v4 = [(SBCaptureApplicationTerminationInfo *)self->_terminationInfo terminationReason];
  v5 = [v3 length];
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = v7;
  if (v5)
  {
    v9 = [v7 localizedStringForKey:@"CAPTURE_APPLICATION_TERMINATION_ALERT_TITLE_WITH_PROCESS_REASON" value:&stru_283094718 table:@"SpringBoard"];
    [v6 stringWithFormat:v9, v3, v4];
  }

  else
  {
    v9 = [v7 localizedStringForKey:@"CAPTURE_APPLICATION_TERMINATION_ALERT_TITLE_NO_PROCESS_WITH_REASON" value:&stru_283094718 table:@"SpringBoard"];
    [v6 stringWithFormat:v9, v4, v12];
  }
  v10 = ;

  return v10;
}

- (id)message
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"CAPTURE_APPLICATION_TERMINATION_ALERT_MESSAGE" value:&stru_283094718 table:@"SpringBoard"];
  v6 = [(SBCaptureApplicationTerminationAlertItem *)self radarComponentName];
  v7 = [(SBCaptureApplicationTerminationAlertItem *)self radarComponentVersion];
  v8 = [v3 stringWithFormat:v5, v6, v7];

  return v8;
}

- (id)radarTitle
{
  v3 = [(SBCaptureApplicationTerminationInfo *)self->_terminationInfo processName];
  v4 = [(SBCaptureApplicationTerminationInfo *)self->_terminationInfo terminationReason];
  v5 = [(SBCaptureApplicationTerminationInfo *)self->_terminationInfo buildVersion];
  v6 = @"Unknown Process";
  if (v3)
  {
    v6 = v3;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Capture Application Termination Reported - %@ - %@", v5, v6, v4];

  return v7;
}

- (id)radarDescription
{
  v3 = [(SBCaptureApplicationTerminationInfo *)self->_terminationInfo terminationReason];
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 localizedStringForKey:@"CAPTURE_APPLICATION_TERMINATION_RADAR_DESCRIPTION" value:&stru_283094718 table:@"SpringBoard"];
  v7 = [v4 stringWithFormat:v6, v3];

  v8 = [(SBDiagnosticRequestAlertItem *)self radarAttachments];
  v9 = [v8 bs_map:&__block_literal_global_42];

  if ([v9 count])
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [v9 componentsJoinedByString:@"\n"];
    v12 = [v10 stringWithFormat:@"%@\n\n%@", v7, v11];

    v7 = v12;
  }

  return v7;
}

@end