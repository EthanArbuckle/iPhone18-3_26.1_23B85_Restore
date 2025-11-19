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
  v2 = [(SBInsecureDrawingAlertItem *)self processName];
  if ([v2 length])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 localizedStringForKey:@"INSECURE_DRAWING_ALERT_TITLE_WITH_PROCESS" value:&stru_283094718 table:@"SpringBoard"];
    v6 = [v3 stringWithFormat:v5, v2];
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v4 localizedStringForKey:@"INSECURE_DRAWING_ALERT_TITLE_NO_PROCESS" value:&stru_283094718 table:@"SpringBoard"];
  }

  return v6;
}

- (id)message
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:@"INSECURE_DRAWING_ALERT_MESSAGE" value:&stru_283094718 table:@"SpringBoard"];
  v6 = [(SBInsecureDrawingAlertItem *)self radarComponentName];
  v7 = [(SBInsecureDrawingAlertItem *)self radarComponentVersion];
  v8 = [v3 stringWithFormat:v5, v6, v7];

  return v8;
}

- (id)radarTitle
{
  v3 = [(SBInsecureDrawingAlertItem *)self processName];
  v4 = [(SBInsecureDrawingAlertItem *)self _buildVersion];
  if ([v3 length])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Secure Draw Violation Reported - %@", v4, v3];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@: Secure Draw Violation Reported - Unknown Process", v4, v7];
  }
  v5 = ;

  return v5;
}

- (id)radarDescription
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 localizedStringForKey:@"INSECURE_DRAWING_RADAR_DESCRIPTION" value:&stru_283094718 table:@"SpringBoard"];

  v5 = [(SBDiagnosticRequestAlertItem *)self radarAttachments];
  v6 = [v5 bs_map:&__block_literal_global_237];

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
    v11 = [(NSSet *)self->_layerNames allObjects];
    v12 = [v11 componentsJoinedByString:@"\n"];
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