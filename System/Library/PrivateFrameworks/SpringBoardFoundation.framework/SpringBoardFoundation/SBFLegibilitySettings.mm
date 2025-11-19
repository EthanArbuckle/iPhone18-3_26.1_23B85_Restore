@interface SBFLegibilitySettings
+ (id)settingsControllerModule;
- (double)appIconGrabberStrengthForStyle:(int64_t)a3;
- (double)dateStrengthForStyle:(int64_t)a3;
- (double)folderTitleStrengthForStyle:(int64_t)a3;
- (double)iconLabelStrengthForStyle:(int64_t)a3;
- (double)logoutButtonGlyphStrengthForStyle:(int64_t)a3;
- (double)logoutButtonTextStrengthForStyle:(int64_t)a3;
- (double)slideToUnlockStrengthForStyle:(int64_t)a3;
- (double)statusTextStrengthForStyle:(int64_t)a3;
- (double)timeStrengthForStyle:(int64_t)a3;
- (double)timerDialStrengthForStyle:(int64_t)a3;
- (double)timerTextStrengthForStyle:(int64_t)a3;
- (double)userPictureStrengthForStyle:(int64_t)a3;
- (void)setDefaultValues;
@end

@implementation SBFLegibilitySettings

- (void)setDefaultValues
{
  [(SBFLegibilitySettings *)self setSlideToUnlockDarkShadowStrength:0.35];
  [(SBFLegibilitySettings *)self setSlideToUnlockLightShadowStrength:0.75];
  [(SBFLegibilitySettings *)self setAppIconGrabberDarkShadowStrength:0.35];
  [(SBFLegibilitySettings *)self setAppIconGrabberLightShadowStrength:0.75];
  [(SBFLegibilitySettings *)self setTimeDarkShadowStrength:0.25];
  [(SBFLegibilitySettings *)self setTimeLightShadowStrength:0.25];
  [(SBFLegibilitySettings *)self setDateDarkShadowStrength:0.35];
  [(SBFLegibilitySettings *)self setDateLightShadowStrength:0.35];
  [(SBFLegibilitySettings *)self setStatusTextDarkShadowStrength:0.35];
  [(SBFLegibilitySettings *)self setStatusTextLightShadowStrength:0.35];
  [(SBFLegibilitySettings *)self setIconLabelDarkShadowStrength:0.3];
  [(SBFLegibilitySettings *)self setIconLabelLightShadowStrength:0.0];
  [(SBFLegibilitySettings *)self setFolderTitleDarkShadowStrength:0.25];
  [(SBFLegibilitySettings *)self setFolderTitleLightShadowStrength:0.25];
  [(SBFLegibilitySettings *)self setTimerDialDarkShadowStrength:0.15];
  [(SBFLegibilitySettings *)self setTimerDialLightShadowStrength:0.15];
  [(SBFLegibilitySettings *)self setTimerTextDarkShadowStrength:0.35];
  [(SBFLegibilitySettings *)self setTimerTextLightShadowStrength:0.35];
  [(SBFLegibilitySettings *)self setLogoutButtonGlyphDarkShadowStrength:0.35];
  [(SBFLegibilitySettings *)self setLogoutButtonGlyphLightShadowStrength:0.75];
  [(SBFLegibilitySettings *)self setLogoutButtonTextDarkShadowStrength:0.35];
  [(SBFLegibilitySettings *)self setLogoutButtonTextLightShadowStrength:0.35];
  [(SBFLegibilitySettings *)self setUserPictureDarkShadowStrength:0.15];

  [(SBFLegibilitySettings *)self setUserPictureLightShadowStrength:0.15];
}

+ (id)settingsControllerModule
{
  v49[20] = *MEMORY[0x1E69E9840];
  v47 = [MEMORY[0x1E69C6698] rowWithTitle:@"Slide To Unlock Dark Shadow Strength" valueKeyPath:@"slideToUnlockDarkShadowStrength"];
  v46 = [v47 minValue:0.0 maxValue:5.0];
  v49[0] = v46;
  v45 = [MEMORY[0x1E69C6698] rowWithTitle:@"Slide To Unlock Light Shadow Strength" valueKeyPath:@"slideToUnlockLightShadowStrength"];
  v44 = [v45 minValue:0.0 maxValue:5.0];
  v49[1] = v44;
  v43 = [MEMORY[0x1E69C6698] rowWithTitle:@"App Icon Grabber Dark Shadow Strength" valueKeyPath:@"appIconGrabberDarkShadowStrength"];
  v42 = [v43 minValue:0.0 maxValue:5.0];
  v49[2] = v42;
  v41 = [MEMORY[0x1E69C6698] rowWithTitle:@"App Icon Grabber Light Shadow Strength" valueKeyPath:@"appIconGrabberLightShadowStrength"];
  v40 = [v41 minValue:0.0 maxValue:5.0];
  v49[3] = v40;
  v39 = [MEMORY[0x1E69C6698] rowWithTitle:@"Time Dark Shadow Strength" valueKeyPath:@"timeDarkShadowStrength"];
  v38 = [v39 minValue:0.0 maxValue:5.0];
  v49[4] = v38;
  v37 = [MEMORY[0x1E69C6698] rowWithTitle:@"Time Light Shadow Strength" valueKeyPath:@"timeLightShadowStrength"];
  v36 = [v37 minValue:0.0 maxValue:5.0];
  v49[5] = v36;
  v35 = [MEMORY[0x1E69C6698] rowWithTitle:@"Date Dark Shadow Strength" valueKeyPath:@"dateDarkShadowStrength"];
  v34 = [v35 minValue:0.0 maxValue:5.0];
  v49[6] = v34;
  v33 = [MEMORY[0x1E69C6698] rowWithTitle:@"Date Light Shadow Strength" valueKeyPath:@"dateLightShadowStrength"];
  v32 = [v33 minValue:0.0 maxValue:5.0];
  v49[7] = v32;
  v31 = [MEMORY[0x1E69C6698] rowWithTitle:@"Icon Label Dark Shadow Strength" valueKeyPath:@"iconLabelDarkShadowStrength"];
  v30 = [v31 minValue:0.0 maxValue:5.0];
  v49[8] = v30;
  v29 = [MEMORY[0x1E69C6698] rowWithTitle:@"Icon Label Light Shadow Strength" valueKeyPath:@"iconLabelLightShadowStrength"];
  v28 = [v29 minValue:0.0 maxValue:5.0];
  v49[9] = v28;
  v27 = [MEMORY[0x1E69C6698] rowWithTitle:@"Folder Title Dark Shadow Strength" valueKeyPath:@"folderTitleDarkShadowStrength"];
  v26 = [v27 minValue:0.0 maxValue:5.0];
  v49[10] = v26;
  v25 = [MEMORY[0x1E69C6698] rowWithTitle:@"Folder Title Light Shadow Strength" valueKeyPath:@"folderTitleLightShadowStrength"];
  v24 = [v25 minValue:0.0 maxValue:5.0];
  v49[11] = v24;
  v23 = [MEMORY[0x1E69C6698] rowWithTitle:@"Logout Button Glyph Dark Shadow Strength" valueKeyPath:@"logoutButtonGlyphDarkShadowStrength"];
  v22 = [v23 minValue:0.0 maxValue:5.0];
  v49[12] = v22;
  v21 = [MEMORY[0x1E69C6698] rowWithTitle:@"Logout Button Glyph Light Shadow Strength" valueKeyPath:@"logoutButtonGlyphLightShadowStrength"];
  v20 = [v21 minValue:0.0 maxValue:5.0];
  v49[13] = v20;
  v18 = [MEMORY[0x1E69C6698] rowWithTitle:@"Logout Button Text Dark Shadow Strength" valueKeyPath:@"logoutButtonTextDarkShadowStrength"];
  v17 = [v18 minValue:0.0 maxValue:5.0];
  v49[14] = v17;
  v2 = [MEMORY[0x1E69C6698] rowWithTitle:@"Logout Button Text Light Shadow Strength" valueKeyPath:@"logoutButtonTextLightShadowStrength"];
  v3 = [v2 minValue:0.0 maxValue:5.0];
  v49[15] = v3;
  v4 = [MEMORY[0x1E69C6698] rowWithTitle:@"Status Text Dark Shadow Strength" valueKeyPath:@"statusTextDarkShadowStrength"];
  v5 = [v4 minValue:0.0 maxValue:5.0];
  v49[16] = v5;
  v6 = [MEMORY[0x1E69C6698] rowWithTitle:@"Status Text Light Shadow Strength" valueKeyPath:@"statusTextLightShadowStrength"];
  v7 = [v6 minValue:0.0 maxValue:5.0];
  v49[17] = v7;
  v8 = [MEMORY[0x1E69C6698] rowWithTitle:@"User Picture Dark Shadow Strength" valueKeyPath:@"userPictureDarkShadowStrength"];
  v9 = [v8 minValue:0.0 maxValue:5.0];
  v49[18] = v9;
  v10 = [MEMORY[0x1E69C6698] rowWithTitle:@"User Picture Light Shadow Strength" valueKeyPath:@"userPictureLightShadowStrength"];
  v11 = [v10 minValue:0.0 maxValue:5.0];
  v49[19] = v11;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:20];

  v12 = [MEMORY[0x1E69C6630] sectionWithRows:v19 title:@"Lock Screen Settings"];
  v13 = MEMORY[0x1E69C6630];
  v48 = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v15 = [v13 moduleWithTitle:@"Legibility Settings" contents:v14];

  return v15;
}

- (double)slideToUnlockStrengthForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    [(SBFLegibilitySettings *)self slideToUnlockDarkShadowStrength];
  }

  else if (a3 == 2)
  {
    [(SBFLegibilitySettings *)self slideToUnlockLightShadowStrength];
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (double)appIconGrabberStrengthForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    [(SBFLegibilitySettings *)self appIconGrabberDarkShadowStrength];
  }

  else if (a3 == 2)
  {
    [(SBFLegibilitySettings *)self appIconGrabberLightShadowStrength];
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (double)timeStrengthForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    [(SBFLegibilitySettings *)self timeDarkShadowStrength];
  }

  else if (a3 == 2)
  {
    [(SBFLegibilitySettings *)self timeLightShadowStrength];
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (double)dateStrengthForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    [(SBFLegibilitySettings *)self dateDarkShadowStrength];
  }

  else if (a3 == 2)
  {
    [(SBFLegibilitySettings *)self dateLightShadowStrength];
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (double)statusTextStrengthForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    [(SBFLegibilitySettings *)self statusTextDarkShadowStrength];
  }

  else if (a3 == 2)
  {
    [(SBFLegibilitySettings *)self statusTextLightShadowStrength];
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (double)iconLabelStrengthForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    [(SBFLegibilitySettings *)self iconLabelDarkShadowStrength];
  }

  else if (a3 == 2)
  {
    [(SBFLegibilitySettings *)self iconLabelLightShadowStrength];
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (double)folderTitleStrengthForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    [(SBFLegibilitySettings *)self folderTitleDarkShadowStrength];
  }

  else if (a3 == 2)
  {
    [(SBFLegibilitySettings *)self folderTitleLightShadowStrength];
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (double)timerTextStrengthForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    [(SBFLegibilitySettings *)self timerTextDarkShadowStrength];
  }

  else if (a3 == 2)
  {
    [(SBFLegibilitySettings *)self timerTextLightShadowStrength];
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (double)timerDialStrengthForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    [(SBFLegibilitySettings *)self timerDialDarkShadowStrength];
  }

  else if (a3 == 2)
  {
    [(SBFLegibilitySettings *)self timerDialLightShadowStrength];
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (double)logoutButtonGlyphStrengthForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    [(SBFLegibilitySettings *)self logoutButtonGlyphDarkShadowStrength];
  }

  else if (a3 == 2)
  {
    [(SBFLegibilitySettings *)self logoutButtonGlyphLightShadowStrength];
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (double)logoutButtonTextStrengthForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    [(SBFLegibilitySettings *)self logoutButtonTextDarkShadowStrength];
  }

  else if (a3 == 2)
  {
    [(SBFLegibilitySettings *)self logoutButtonTextLightShadowStrength];
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (double)userPictureStrengthForStyle:(int64_t)a3
{
  if (a3 == 1)
  {
    [(SBFLegibilitySettings *)self userPictureDarkShadowStrength];
  }

  else if (a3 == 2)
  {
    [(SBFLegibilitySettings *)self userPictureLightShadowStrength];
  }

  else
  {
    return 0.0;
  }

  return result;
}

@end