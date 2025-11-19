@interface SBSwitcherWindowingSnapPaddingSettings
+ (id)settingsControllerModule;
- (BOOL)isEqual:(id)a3;
- (SBSwitcherWindowingSnapPaddingSettings)initWithDefaultValues;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SBSwitcherWindowingSnapPaddingSettings

- (SBSwitcherWindowingSnapPaddingSettings)initWithDefaultValues
{
  v9.receiver = self;
  v9.super_class = SBSwitcherWindowingSnapPaddingSettings;
  v2 = [(PTSettings *)&v9 initWithDefaultValues];
  v3 = v2;
  if (v2)
  {
    [(SBSwitcherWindowingSnapPaddingSettings *)v2 setEdgePadding:45.0];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 edgePadding];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 setSingleAppCenterPadding:v4 + v4];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 edgePadding];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 setMultiAppCenterPadding:v5 * 0.5];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 edgePadding];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 setFullScreenSnapPadding:v6 * 0.5];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 edgePadding];
    [(SBSwitcherWindowingSnapPaddingSettings *)v3 setInterItemPadding:v7 * 0.25];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(SBSwitcherWindowingSnapPaddingSettings *)v5 edgePadding];
      if (BSFloatEqualToFloat() && ([(SBSwitcherWindowingSnapPaddingSettings *)v5 multiAppCenterPadding], BSFloatEqualToFloat()) && ([(SBSwitcherWindowingSnapPaddingSettings *)v5 singleAppCenterPadding], BSFloatEqualToFloat()) && ([(SBSwitcherWindowingSnapPaddingSettings *)v5 fullScreenSnapPadding], BSFloatEqualToFloat()))
      {
        [(SBSwitcherWindowingSnapPaddingSettings *)v5 interItemPadding];
        v6 = BSFloatEqualToFloat();
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  [(SBSwitcherWindowingSnapPaddingSettings *)self edgePadding];
  v4 = v3;
  [(SBSwitcherWindowingSnapPaddingSettings *)self multiAppCenterPadding];
  v6 = v5 * 1000000.0 + v4 * 1000.0;
  [(SBSwitcherWindowingSnapPaddingSettings *)self singleAppCenterPadding];
  v8 = v6 + v7 * 1000000000.0;
  [(SBSwitcherWindowingSnapPaddingSettings *)self fullScreenSnapPadding];
  v10 = v8 + v9 * 1.0e12;
  [(SBSwitcherWindowingSnapPaddingSettings *)self interItemPadding];
  return (v10 + v11 * 1.0e15);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setEdgePadding:self->_edgePadding];
  [v4 setMultiAppCenterPadding:self->_multiAppCenterPadding];
  [v4 setSingleAppCenterPadding:self->_singleAppCenterPadding];
  [v4 setFullScreenSnapPadding:self->_fullScreenSnapPadding];
  [v4 setInterItemPadding:self->_interItemPadding];
  return v4;
}

+ (id)settingsControllerModule
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43210];
  v3 = MEMORY[0x277D431E8];
  v32 = NSStringFromSelector(sel_edgePadding);
  v31 = [v3 rowWithTitle:@"Edge Padding" valueKeyPath:v32];
  v30 = [v31 between:0.0 and:300.0];
  v29 = [v30 precision:2];
  v33[0] = v29;
  v4 = MEMORY[0x277D431E8];
  v28 = NSStringFromSelector(sel_singleAppCenterPadding);
  v27 = [v4 rowWithTitle:@"Single App Center Padding" valueKeyPath:v28];
  v26 = [v27 between:0.0 and:300.0];
  v25 = [v26 precision:2];
  v33[1] = v25;
  v5 = MEMORY[0x277D431E8];
  v24 = NSStringFromSelector(sel_multiAppCenterPadding);
  v23 = [v5 rowWithTitle:@"Multi App Center Padding" valueKeyPath:v24];
  v22 = [v23 between:0.0 and:300.0];
  v21 = [v22 precision:2];
  v33[2] = v21;
  v6 = MEMORY[0x277D431E8];
  v20 = NSStringFromSelector(sel_fullScreenSnapPadding);
  v19 = [v6 rowWithTitle:@"Full Screen Padding" valueKeyPath:v20];
  v7 = [v19 between:0.0 and:300.0];
  v8 = [v7 precision:2];
  v33[3] = v8;
  v9 = MEMORY[0x277D431E8];
  v10 = NSStringFromSelector(sel_interItemPadding);
  v11 = [v9 rowWithTitle:@"Inter Item Padding" valueKeyPath:v10];
  v12 = [v11 between:0.0 and:300.0];
  v13 = [v12 precision:2];
  v33[4] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:5];
  v15 = [v2 sectionWithRows:v14];
  v34[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  v17 = [v2 moduleWithTitle:@"Snap Padding Settings" contents:v16];

  return v17;
}

@end