@interface SBFParallaxSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBFParallaxSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBFParallaxSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBFParallaxSettings *)self setSlideEnabled:1];
  [(SBFParallaxSettings *)self setSlideDirectionX:1];
  [(SBFParallaxSettings *)self setSlideDirectionY:1];
  [(SBFParallaxSettings *)self setSlidePixelsX:10.0];
  [(SBFParallaxSettings *)self setSlidePixelsY:10.0];
  [(SBFParallaxSettings *)self setTiltEnabled:0];
  [(SBFParallaxSettings *)self setTiltDirectionX:1];
  [(SBFParallaxSettings *)self setTiltDirectionY:1];
  [(SBFParallaxSettings *)self setTiltDegreesX:0.0];
  [(SBFParallaxSettings *)self setTiltDegreesY:0.0];
  [(SBFParallaxSettings *)self setDistanceFromScreen:0];
  [(SBFParallaxSettings *)self setIncreaseEnabled:0];
  [(SBFParallaxSettings *)self setSlideIncreaseX:0.0];
  [(SBFParallaxSettings *)self setSlideIncreaseY:0.0];
}

+ (id)settingsControllerModule
{
  v59[5] = *MEMORY[0x1E69E9840];
  v53 = [MEMORY[0x1E69C66B0] rowWithTitle:@"Slide enabled" valueKeyPath:@"slideEnabled"];
  v59[0] = v53;
  v50 = [MEMORY[0x1E69C65F0] rowWithTitle:@"Horizontal direction" valueKeyPath:@"slideDirectionX"];
  v47 = [v50 possibleValues:&unk_1F3D3EC88 titles:&unk_1F3D3ECA0];
  v44 = [v47 conditionFormat:@"slideEnabled != 0"];
  v59[1] = v44;
  v42 = [MEMORY[0x1E69C6620] rowWithTitle:@"Horizontal offset (pixels)" valueKeyPath:@"slidePixelsX"];
  v39 = [v42 between:0.0 and:200.0];
  v2 = [v39 precision:0];
  v3 = [v2 conditionFormat:@"slideEnabled != 0"];
  v59[2] = v3;
  v4 = [MEMORY[0x1E69C65F0] rowWithTitle:@"Vertical direction" valueKeyPath:@"slideDirectionY"];
  v5 = [v4 possibleValues:&unk_1F3D3EC88 titles:&unk_1F3D3ECA0];
  v6 = [v5 conditionFormat:@"slideEnabled != 0"];
  v59[3] = v6;
  v7 = [MEMORY[0x1E69C6620] rowWithTitle:@"Vertical offset (pixels)" valueKeyPath:@"slidePixelsY"];
  v8 = [v7 between:0.0 and:200.0];
  v9 = [v8 precision:0];
  v10 = [v9 conditionFormat:@"slideEnabled != 0"];
  v59[4] = v10;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:5];

  v54 = [MEMORY[0x1E69C6630] sectionWithRows:v41 title:@"Slide"];
  v51 = [MEMORY[0x1E69C66B0] rowWithTitle:@"Tilt enabled" valueKeyPath:@"tiltEnabled"];
  v58[0] = v51;
  v48 = [MEMORY[0x1E69C65F0] rowWithTitle:@"Horizontal direction" valueKeyPath:@"tiltDirectionX"];
  v45 = [v48 possibleValues:&unk_1F3D3EC88 titles:&unk_1F3D3ECA0];
  v43 = [v45 conditionFormat:@"tiltEnabled != 0"];
  v58[1] = v43;
  v40 = [MEMORY[0x1E69C6620] rowWithTitle:@"Horizontal rotation (degrees)" valueKeyPath:@"tiltDegreesX"];
  v38 = [v40 between:0.0 and:90.0];
  v11 = [v38 precision:1];
  v12 = [v11 conditionFormat:@"tiltEnabled != 0"];
  v58[2] = v12;
  v13 = [MEMORY[0x1E69C65F0] rowWithTitle:@"Vertical direction" valueKeyPath:@"tiltDirectionY"];
  v14 = [v13 possibleValues:&unk_1F3D3EC88 titles:&unk_1F3D3ECA0];
  v15 = [v14 conditionFormat:@"tiltEnabled != 0"];
  v58[3] = v15;
  v16 = [MEMORY[0x1E69C6620] rowWithTitle:@"Vertical rotation (degrees)" valueKeyPath:@"tiltDegreesY"];
  v17 = [v16 between:0.0 and:90.0];
  v18 = [v17 precision:1];
  v19 = [v18 conditionFormat:@"tiltEnabled != 0"];
  v58[4] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:5];

  v52 = [MEMORY[0x1E69C6630] sectionWithRows:v20 title:@"Tilt"];
  v21 = [MEMORY[0x1E69C6620] rowWithTitle:@"Distance from screen" valueKeyPath:@"distanceFromScreen"];
  v22 = [v21 precision:0];
  v57 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];

  v49 = [MEMORY[0x1E69C6630] sectionWithRows:v23 title:@"Perspective" conditionFormat:@"tiltEnabled != 0"];
  v46 = [MEMORY[0x1E69C66B0] rowWithTitle:@"Lock effects enabled" valueKeyPath:@"increaseEnabled"];
  v56[0] = v46;
  v24 = [MEMORY[0x1E69C6620] rowWithTitle:@"Horizontal slide increase (px)" valueKeyPath:@"slideIncreaseX"];
  v25 = [v24 between:0.0 and:200.0];
  v26 = [v25 precision:0];
  v27 = [v26 conditionFormat:@"increaseEnabled != 0 && slideEnabled != 0"];
  v56[1] = v27;
  v28 = [MEMORY[0x1E69C6620] rowWithTitle:@"Vertical slide increase (px)" valueKeyPath:@"slideIncreaseY"];
  v29 = [v28 between:0.0 and:200.0];
  v30 = [v29 precision:0];
  v31 = [v30 conditionFormat:@"increaseEnabled != 0 && slideEnabled != 0"];
  v56[2] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];

  v33 = [MEMORY[0x1E69C6630] sectionWithRows:v32 title:@"Directional Lock Effects"];
  v34 = MEMORY[0x1E69C6630];
  v55[0] = v54;
  v55[1] = v52;
  v55[2] = v49;
  v55[3] = v33;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:4];
  v36 = [v34 moduleWithTitle:0 contents:v35];

  return v36;
}

@end