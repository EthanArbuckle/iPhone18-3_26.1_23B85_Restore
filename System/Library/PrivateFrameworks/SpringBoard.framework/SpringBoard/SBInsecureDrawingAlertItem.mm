@interface SBInsecureDrawingAlertItem
- (id)_buildVersion;
- (id)message;
- (id)radarDescription;
- (id)radarTitle;
- (id)title;
@end

@implementation SBInsecureDrawingAlertItem

- (id)title
{
  processName = [(SBInsecureDrawingAlertItem *)self processName];
  if ([processName length])
  {
    v3 = MEMORY[0x277CCACA8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [mainBundle localizedStringForKey:@"INSECURE_DRAWING_ALERT_TITLE_WITH_PROCESS" value:&stru_283094718 table:@"SpringBoard"];
    v6 = [v3 stringWithFormat:v5, processName];
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"INSECURE_DRAWING_ALERT_TITLE_NO_PROCESS" value:&stru_283094718 table:@"SpringBoard"];
  }

  return v6;
}

- (id)message
{
  v3 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"INSECURE_DRAWING_ALERT_MESSAGE" value:&stru_283094718 table:@"SpringBoard"];
  radarComponentName = [(SBInsecureDrawingAlertItem *)self radarComponentName];
  radarComponentVersion = [(SBInsecureDrawingAlertItem *)self radarComponentVersion];
  v8 = [v3 stringWithFormat:v5, radarComponentName, radarComponentVersion];

  return v8;
}

- (id)radarTitle
{
  processName = [(SBInsecureDrawingAlertItem *)self processName];
  _buildVersion = [(SBInsecureDrawingAlertItem *)self _buildVersion];
  if ([processName length])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Secure Draw Violation Reported - %@", _buildVersion, processName];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Secure Draw Violation Reported - Unknown Process", _buildVersion, v7];
  }
  v5 = ;

  return v5;
}

- (id)radarDescription
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"INSECURE_DRAWING_RADAR_DESCRIPTION" value:&stru_283094718 table:@"SpringBoard"];

  radarAttachments = [(SBDiagnosticRequestAlertItem *)self radarAttachments];
  v6 = [radarAttachments bs_map:&__block_literal_global_237];

  if ([v6 count])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [v6 componentsJoinedByString:@"\n"];
    v9 = [v7 stringWithFormat:@"%@\n\n%@", v4, v8];

    v4 = v9;
  }

  if ([(NSSet *)self->_layerNames count])
  {
    v10 = MEMORY[0x277CCACA8];
    allObjects = [(NSSet *)self->_layerNames allObjects];
    v12 = [allObjects componentsJoinedByString:@"\n"];
    v13 = [v10 stringWithFormat:@"%@\n\nLayer names:\n%@", v4, v12];

    v4 = v13;
  }

  return v4;
}

- (id)_buildVersion
{
  v2 = _CFCopySystemVersionDictionaryValue();

  return v2;
}

@end