@interface SBPIPEdgeResizeSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBPIPEdgeResizeSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBPIPEdgeResizeSettings;
  [(PTSettings *)&v3 setDefaultValues];
  self->_disableCornerResizeForButtons = 0;
  self->_blurNoteWhileResizing = 0;
  self->_liveResizePointerInteractionRegionOuterLength = 10.0;
  self->_liveResizePointerInteractionRegionInnerLength = 10.0;
  self->_liveResizePointerInteractionRegionCornerLength = 25.0;
  self->_hysteresis = 0.0;
}

+ (id)settingsControllerModule
{
  v35[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D431D8];
  v3 = NSStringFromSelector(sel_anchorPointSettings);
  v32 = [v2 rowWithTitle:@"Anchor point settings" childSettingsKeyPath:v3];

  v31 = [MEMORY[0x277D432A8] rowWithTitle:@"Disable Corner Resize For Buttons" valueKeyPath:@"disableCornerResizeForButtons"];
  v4 = [MEMORY[0x277D432A8] rowWithTitle:@"Blur Notes PIP while resizing" valueKeyPath:@"blurNoteWhileResizing"];
  v5 = MEMORY[0x277D431E8];
  v6 = NSStringFromSelector(sel_hysteresis);
  v7 = [v5 rowWithTitle:@"Hysteresis" valueKeyPath:v6];
  v8 = [v7 precision:0];
  v30 = [v8 between:1.0 and:1500.0];

  v9 = MEMORY[0x277D431E8];
  v10 = NSStringFromSelector(sel_liveResizePointerInteractionRegionOuterLength);
  v11 = [v9 rowWithTitle:@"Live Resize Pointer Interaction Region Outer Length" valueKeyPath:v10];
  v12 = [v11 precision:0];
  v33 = [v12 between:1.0 and:1500.0];

  v13 = MEMORY[0x277D431E8];
  v14 = NSStringFromSelector(sel_liveResizePointerInteractionRegionInnerLength);
  v15 = [v13 rowWithTitle:@"Live Resize Pointer Interaction Region Inner Length" valueKeyPath:v14];
  v16 = [v15 precision:0];
  v29 = [v16 between:1.0 and:1500.0];

  v17 = MEMORY[0x277D431E8];
  v18 = NSStringFromSelector(sel_liveResizePointerInteractionRegionCornerLength);
  v19 = [v17 rowWithTitle:@"Live Resize Pointer Interaction Region Corner Length" valueKeyPath:v18];
  v20 = [v19 precision:0];
  v21 = [v20 between:1.0 and:1500.0];

  v22 = MEMORY[0x277D43210];
  v35[0] = v32;
  v35[1] = v31;
  v35[2] = v4;
  v35[3] = v30;
  v35[4] = v33;
  v35[5] = v29;
  v35[6] = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:7];
  v24 = [v22 sectionWithRows:v23 title:@"Edge Resize"];

  v25 = MEMORY[0x277D43210];
  v34 = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v27 = [v25 moduleWithTitle:@"PIP Edge Resize" contents:v26];

  return v27;
}

@end