@interface _UIPointerEffectSettings
+ (id)settingsControllerModule;
- (CGPoint)plasmaRubberbandFactor;
- (void)setDefaultValues;
@end

@implementation _UIPointerEffectSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = _UIPointerEffectSettings;
  [(PTSettings *)&v5 setDefaultValues];
  [(_UIPointerEffectSettings *)self setDefaultPointerCornerRadius:8.0];
  [(_UIPointerEffectSettings *)self setSlipFactorX:0.099];
  [(_UIPointerEffectSettings *)self setSlipFactorY:0.09];
  [(_UIPointerEffectSettings *)self setParallaxAmount:0.3];
  [(_UIPointerEffectSettings *)self setMaxSlipPoints:15.0];
  [(_UIPointerEffectSettings *)self setScaleUpPoints:4.0];
  [(_UIPointerEffectSettings *)self setScaleUpAnimationResponse:0.32];
  [(_UIPointerEffectSettings *)self setScaleUpAnimationDampingRatio:0.7];
  [(_UIPointerEffectSettings *)self setDampedAnimationResponse:0.4];
  [(_UIPointerEffectSettings *)self setDampedAnimationDampingRatio:1.0];
  [(_UIPointerEffectSettings *)self setLiftForceFloor:0.1];
  [(_UIPointerEffectSettings *)self setLiftForceExponent:0.2];
  v3 = [(_UIPointerEffectSettings *)self liftProgress];
  [v3 setDampingRatio:1.0];

  v4 = [(_UIPointerEffectSettings *)self liftProgress];
  [v4 setResponse:0.5];

  [(_UIPointerEffectSettings *)self setPlasmaRubberbandFactor:0.2, 0.2];
  [(_UIPointerEffectSettings *)self setPlasmaParallaxFactor:0.5];
  [(_UIPointerEffectSettings *)self setPlasmaLensParallaxFactor:0.5];
}

+ (id)settingsControllerModule
{
  v66[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C6638];
  v4 = [MEMORY[0x1E69C6618] rowWithTitle:@"Default Corner Radius" valueKeyPath:@"defaultPointerCornerRadius"];
  v5 = [v4 between:0.0 and:2.0];
  v6 = [v5 precision:1];
  v66[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
  v61 = [v3 sectionWithRows:v7 title:@"Pointer Appearance"];

  v8 = [MEMORY[0x1E696AE18] predicateWithValue:{objc_msgSend(a1, "pointerSlipMatchesContentSlip") ^ 1}];
  v58 = MEMORY[0x1E69C6638];
  v60 = v8;
  v56 = [MEMORY[0x1E69C6618] rowWithTitle:@"Slip X" valueKeyPath:@"slipFactorX"];
  v54 = [v56 between:0.0 and:1.0];
  v52 = [v54 precision:3];
  v65[0] = v52;
  v50 = [MEMORY[0x1E69C6618] rowWithTitle:@"Slip Y" valueKeyPath:@"slipFactorY"];
  v48 = [v50 between:0.0 and:1.0];
  v45 = [v48 precision:3];
  v65[1] = v45;
  v43 = [MEMORY[0x1E69C6618] rowWithTitle:@"Parallax Amount" valueKeyPath:@"parallaxAmount"];
  v41 = [v43 between:0.0 and:1.0];
  v40 = [v41 precision:3];
  v39 = [v40 condition:v8];
  v65[2] = v39;
  v9 = [MEMORY[0x1E69C6618] rowWithTitle:@"Max Slip Points" valueKeyPath:@"maxSlipPoints"];
  v10 = [v9 between:0.0 and:100.0];
  v11 = [v10 precision:1];
  v65[3] = v11;
  v12 = [MEMORY[0x1E69C6618] rowWithTitle:@"Lift Force Floor" valueKeyPath:@"liftForceFloor"];
  v13 = [v12 between:0.0 and:1.0];
  v14 = [v13 precision:3];
  v65[4] = v14;
  v15 = [MEMORY[0x1E69C6618] rowWithTitle:@"Lift Force Exponent" valueKeyPath:@"liftForceExponent"];
  v16 = [v15 between:0.0 and:1.0];
  v17 = [v16 precision:3];
  v65[5] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:6];
  v59 = [v58 sectionWithRows:v18 title:@"Pointer & Effect Motion"];

  v46 = MEMORY[0x1E69C6638];
  v57 = [MEMORY[0x1E69C6618] rowWithTitle:@"Scale Up Points" valueKeyPath:@"scaleUpPoints"];
  v55 = [v57 between:0.0 and:20.0];
  v53 = [v55 precision:1];
  v64[0] = v53;
  v51 = [MEMORY[0x1E69C6618] rowWithTitle:@"Scale Animation Response" valueKeyPath:@"scaleUpAnimationResponse"];
  v49 = [v51 between:0.0 and:1.0];
  v44 = [v49 precision:2];
  v64[1] = v44;
  v42 = [MEMORY[0x1E69C6618] rowWithTitle:@"Scale Animation Damping Ratio" valueKeyPath:@"scaleUpAnimationDampingRatio"];
  v19 = [v42 between:0.0 and:1.0];
  v20 = [v19 precision:2];
  v64[2] = v20;
  v21 = [MEMORY[0x1E69C6618] rowWithTitle:@"Shadow & Tint Animation Response" valueKeyPath:@"dampedAnimationResponse"];
  v22 = [v21 between:0.0 and:1.0];
  v23 = [v22 precision:2];
  v64[3] = v23;
  v24 = [MEMORY[0x1E69C6618] rowWithTitle:@"Shadow & Tint Animation Damping Ratio" valueKeyPath:@"dampedAnimationDampingRatio"];
  v25 = [v24 between:0.0 and:1.0];
  v26 = [v25 precision:2];
  v64[4] = v26;
  v27 = [MEMORY[0x1E69C6610] rowWithTitle:@"Lift Progress Animation" childSettingsKeyPath:@"liftProgress"];
  v64[5] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:6];
  v47 = [v46 sectionWithRows:v28 title:@"Effect Animations"];

  v29 = MEMORY[0x1E69C65E8];
  v30 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v31 = [v29 rowWithTitle:@"Restore Defaults" action:v30];

  v32 = MEMORY[0x1E69C6638];
  v63 = v31;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
  v34 = [v32 sectionWithRows:v33];

  v35 = MEMORY[0x1E69C6638];
  v62[0] = v61;
  v62[1] = v59;
  v62[2] = v47;
  v62[3] = v34;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:4];
  v37 = [v35 moduleWithTitle:0 contents:v36];

  return v37;
}

- (CGPoint)plasmaRubberbandFactor
{
  x = self->_plasmaRubberbandFactor.x;
  y = self->_plasmaRubberbandFactor.y;
  result.y = y;
  result.x = x;
  return result;
}

@end