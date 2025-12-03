@interface SBCaptureApplicationTerminationAlertItem
- (SBCaptureApplicationTerminationAlertItem)initWithTerminationInfo:(id)info;
- (id)message;
- (id)radarDescription;
- (id)radarTitle;
- (id)title;
@end

@implementation SBCaptureApplicationTerminationAlertItem

- (SBCaptureApplicationTerminationAlertItem)initWithTerminationInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = SBCaptureApplicationTerminationAlertItem;
  v6 = [(SBAlertItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_terminationInfo, info);
  }

  return v7;
}

- (id)title
{
  processName = [(SBCaptureApplicationTerminationInfo *)self->_terminationInfo processName];
  terminationReason = [(SBCaptureApplicationTerminationInfo *)self->_terminationInfo terminationReason];
  v5 = [processName length];
  v6 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = mainBundle;
  if (v5)
  {
    v9 = [mainBundle localizedStringForKey:@"CAPTURE_APPLICATION_TERMINATION_ALERT_TITLE_WITH_PROCESS_REASON" value:&stru_283094718 table:@"SpringBoard"];
    [v6 stringWithFormat:v9, processName, terminationReason];
  }

  else
  {
    v9 = [mainBundle localizedStringForKey:@"CAPTURE_APPLICATION_TERMINATION_ALERT_TITLE_NO_PROCESS_WITH_REASON" value:&stru_283094718 table:@"SpringBoard"];
    [v6 stringWithFormat:v9, terminationReason, v12];
  }
  v10 = ;

  return v10;
}

- (id)message
{
  v3 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"CAPTURE_APPLICATION_TERMINATION_ALERT_MESSAGE" value:&stru_283094718 table:@"SpringBoard"];
  radarComponentName = [(SBCaptureApplicationTerminationAlertItem *)self radarComponentName];
  radarComponentVersion = [(SBCaptureApplicationTerminationAlertItem *)self radarComponentVersion];
  v8 = [v3 stringWithFormat:v5, radarComponentName, radarComponentVersion];

  return v8;
}

- (id)radarTitle
{
  processName = [(SBCaptureApplicationTerminationInfo *)self->_terminationInfo processName];
  terminationReason = [(SBCaptureApplicationTerminationInfo *)self->_terminationInfo terminationReason];
  buildVersion = [(SBCaptureApplicationTerminationInfo *)self->_terminationInfo buildVersion];
  v6 = @"Unknown Process";
  if (processName)
  {
    v6 = processName;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Capture Application Termination Reported - %@ - %@", buildVersion, v6, terminationReason];

  return v7;
}

- (id)radarDescription
{
  terminationReason = [(SBCaptureApplicationTerminationInfo *)self->_terminationInfo terminationReason];
  v4 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [mainBundle localizedStringForKey:@"CAPTURE_APPLICATION_TERMINATION_RADAR_DESCRIPTION" value:&stru_283094718 table:@"SpringBoard"];
  v7 = [v4 stringWithFormat:v6, terminationReason];

  radarAttachments = [(SBDiagnosticRequestAlertItem *)self radarAttachments];
  v9 = [radarAttachments bs_map:&__block_literal_global_42];

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