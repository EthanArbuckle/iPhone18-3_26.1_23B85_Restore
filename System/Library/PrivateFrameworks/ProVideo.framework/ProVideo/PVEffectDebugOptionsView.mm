@interface PVEffectDebugOptionsView
- (PVEffectDebugOptionsView)initWithFrame:(CGRect)frame options:(id)options;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateWithOptions:(id)options;
@end

@implementation PVEffectDebugOptionsView

- (void)dealloc
{
  options = [(PVEffectDebugOptionsView *)self options];
  [options removeObserver:self forKeyPath:@"enabled"];

  v4.receiver = self;
  v4.super_class = PVEffectDebugOptionsView;
  [(PVEffectDebugOptionsView *)&v4 dealloc];
}

- (PVEffectDebugOptionsView)initWithFrame:(CGRect)frame options:(id)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v224[4] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v207.receiver = self;
  v207.super_class = PVEffectDebugOptionsView;
  height = [(PVEffectDebugOptionsView *)&v207 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(PVEffectDebugOptionsView *)height setOptions:optionsCopy];
    v12 = objc_alloc(MEMORY[0x277D75A68]);
    [(PVEffectDebugOptionsView *)v11 bounds];
    v13 = [v12 initWithFrame:?];
    [(PVEffectDebugOptionsView *)v11 setRowsStackView:v13];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 setAlignment:1];
    [v13 setAxis:1];
    [v13 setDistribution:3];
    [v13 setSpacing:10.0];
    [v13 setLayoutMarginsRelativeArrangement:1];
    [(PVEffectDebugOptionsView *)v11 addSubview:v13];
    v169 = MEMORY[0x277CCAAD0];
    layoutMarginsGuide = [(PVEffectDebugOptionsView *)v11 layoutMarginsGuide];
    leadingAnchor = [layoutMarginsGuide leadingAnchor];
    leadingAnchor2 = [v13 leadingAnchor];
    v173 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v224[0] = v173;
    layoutMarginsGuide2 = [(PVEffectDebugOptionsView *)v11 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
    trailingAnchor2 = [v13 trailingAnchor];
    [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v168 = v177 = optionsCopy;
    v224[1] = v168;
    layoutMarginsGuide3 = [(PVEffectDebugOptionsView *)v11 layoutMarginsGuide];
    topAnchor = [layoutMarginsGuide3 topAnchor];
    topAnchor2 = [v13 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v224[2] = v17;
    v176 = v11;
    layoutMarginsGuide4 = [(PVEffectDebugOptionsView *)v11 layoutMarginsGuide];
    bottomAnchor = [layoutMarginsGuide4 bottomAnchor];
    bottomAnchor2 = [v13 bottomAnchor];
    v21 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    v224[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v224 count:4];
    [v169 activateConstraints:v22];

    v23 = objc_alloc(MEMORY[0x277D755E8]);
    v24 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.3.offgrid"];
    v25 = [v23 initWithImage:v24];

    [v25 setFrame:{0.0, 0.0, 30.0, 30.0}];
    v26 = [PVEffectDebugKeyRowView alloc];
    v222[0] = @"title";
    v222[1] = @"icon";
    v223[0] = @"Enable Debug View";
    v223[1] = v25;
    v222[2] = @"on";
    v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v177, "isEnabled")}];
    v223[2] = v27;
    v222[3] = @"action";
    v28 = MEMORY[0x277D750C8];
    v204[0] = MEMORY[0x277D85DD0];
    v204[1] = *"";
    v204[2] = __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke;
    v204[3] = &unk_279AA4BB0;
    v29 = v177;
    v205 = v29;
    v206 = @"Enable Debug View";
    v30 = [v28 actionWithHandler:v204];
    v223[3] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v223 forKeys:v222 count:4];
    v32 = *MEMORY[0x277CBF3A0];
    v33 = *(MEMORY[0x277CBF3A0] + 8);
    v34 = *(MEMORY[0x277CBF3A0] + 16);
    v35 = *(MEMORY[0x277CBF3A0] + 24);
    v36 = [(PVEffectDebugKeyRowView *)v26 initWithFrame:v31 config:*MEMORY[0x277CBF3A0], v33, v34, v35];

    v179 = v13;
    [v13 addArrangedSubview:v36];

    v37 = [PVEffectDebugView documentBoundsLayerWithFrame:v29 options:0.0, 0.0, 30.0, 30.0];
    v38 = [PVEffectDebugKeyRowView alloc];
    v221[0] = @"Document Bounds / Origin";
    v220[0] = @"title";
    v220[1] = @"icon";
    v39 = objc_alloc(MEMORY[0x277D755E8]);
    v40 = v37;
    [v40 frame];
    v42 = v41;
    [v40 frame];
    v44 = v43;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v47 = v46;
    v225.width = v42;
    v225.height = v44;
    UIGraphicsBeginImageContextWithOptions(v225, 0, v47);

    [v40 renderInContext:UIGraphicsGetCurrentContext()];
    v48 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v49 = [v39 initWithImage:v48];
    v221[1] = v49;
    v220[2] = @"on";
    v50 = MEMORY[0x277CCABB0];
    showDocumentBoundingBox = [v29 showDocumentBoundingBox];
    showOrigin = 0;
    if (showDocumentBoundingBox)
    {
      showOrigin = [v29 showOrigin];
    }

    v53 = [v50 numberWithInt:showOrigin];
    v221[2] = v53;
    v220[3] = @"action";
    v54 = MEMORY[0x277D750C8];
    v201[0] = MEMORY[0x277D85DD0];
    v201[1] = *"";
    v201[2] = __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_2;
    v201[3] = &unk_279AA4BB0;
    v55 = v29;
    v202 = v55;
    v203 = @"Document Bounds / Origin";
    v56 = [v54 actionWithHandler:v201];
    v221[3] = v56;
    v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v221 forKeys:v220 count:4];
    v58 = [(PVEffectDebugKeyRowView *)v38 initWithFrame:v57 config:v32, v33, v34, v35];

    [v179 addArrangedSubview:v58];
    v59 = [PVEffectDebugView outputROILayerWithFrame:v55 options:0.0, 0.0, 30.0, 30.0];
    v60 = [PVEffectDebugKeyRowView alloc];
    v219[0] = @"Output ROI";
    v218[0] = @"title";
    v218[1] = @"icon";
    v61 = objc_alloc(MEMORY[0x277D755E8]);
    v62 = v59;
    [v62 frame];
    v64 = v63;
    [v62 frame];
    v66 = v65;
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v69 = v68;
    v226.width = v64;
    v226.height = v66;
    UIGraphicsBeginImageContextWithOptions(v226, 0, v69);

    [v62 renderInContext:UIGraphicsGetCurrentContext()];
    v70 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v71 = [v61 initWithImage:v70];
    v219[1] = v71;
    v218[2] = @"on";
    v72 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v55, "showOutputROI")}];
    v219[2] = v72;
    v218[3] = @"action";
    v73 = MEMORY[0x277D750C8];
    v198[0] = MEMORY[0x277D85DD0];
    v198[1] = *"";
    v198[2] = __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_3;
    v198[3] = &unk_279AA4BB0;
    v74 = v55;
    v199 = v74;
    v200 = @"Output ROI";
    v75 = [v73 actionWithHandler:v198];
    v219[3] = v75;
    v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v219 forKeys:v218 count:4];
    v77 = [(PVEffectDebugKeyRowView *)v60 initWithFrame:v76 config:v32, v33, v34, v35];

    [v179 addArrangedSubview:v77];
    v78 = [PVEffectDebugView objectBoundsLayerWithFrame:v74 options:0.0, 0.0, 30.0, 30.0];
    v79 = [PVEffectDebugKeyRowView alloc];
    v217[0] = @"Object Bounds / Midpoint";
    v216[0] = @"title";
    v216[1] = @"icon";
    v80 = objc_alloc(MEMORY[0x277D755E8]);
    v81 = v78;
    [v81 frame];
    v83 = v82;
    [v81 frame];
    v85 = v84;
    mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen3 scale];
    v88 = v87;
    v227.width = v83;
    v227.height = v85;
    UIGraphicsBeginImageContextWithOptions(v227, 0, v88);

    [v81 renderInContext:UIGraphicsGetCurrentContext()];
    v89 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v90 = [v80 initWithImage:v89];
    v217[1] = v90;
    v216[2] = @"on";
    v91 = MEMORY[0x277CCABB0];
    if ([v74 showObjectAlignedBoundingBox] && objc_msgSend(v74, "showMidpoint"))
    {
      showCornerPoints = [v74 showCornerPoints];
    }

    else
    {
      showCornerPoints = 0;
    }

    v93 = [v91 numberWithInt:showCornerPoints];
    v217[2] = v93;
    v216[3] = @"action";
    v94 = MEMORY[0x277D750C8];
    v195[0] = MEMORY[0x277D85DD0];
    v195[1] = *"";
    v195[2] = __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_4;
    v195[3] = &unk_279AA4BB0;
    v95 = v74;
    v196 = v95;
    v197 = @"Object Bounds / Midpoint";
    v96 = [v94 actionWithHandler:v195];
    v217[3] = v96;
    v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v217 forKeys:v216 count:4];
    v98 = [(PVEffectDebugKeyRowView *)v79 initWithFrame:v97 config:v32, v33, v34, v35];

    [v179 addArrangedSubview:v98];
    v99 = [PVEffectDebugView textBoundsLayerWithFrame:v95 options:0.0, 0.0, 30.0, 30.0];
    v100 = [PVEffectDebugKeyRowView alloc];
    v215[0] = @"Text Bounds";
    v214[0] = @"title";
    v214[1] = @"icon";
    v101 = objc_alloc(MEMORY[0x277D755E8]);
    v102 = v99;
    [v102 frame];
    v104 = v103;
    [v102 frame];
    v106 = v105;
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 scale];
    v109 = v108;
    v228.width = v104;
    v228.height = v106;
    UIGraphicsBeginImageContextWithOptions(v228, 0, v109);

    [v102 renderInContext:UIGraphicsGetCurrentContext()];
    v110 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v111 = [v101 initWithImage:v110];
    v215[1] = v111;
    v214[2] = @"on";
    v112 = MEMORY[0x277CCABB0];
    showTextBoundingBoxes = [v95 showTextBoundingBoxes];
    showTextCornerPoints = 0;
    if (showTextBoundingBoxes)
    {
      showTextCornerPoints = [v95 showTextCornerPoints];
    }

    v115 = [v112 numberWithInt:showTextCornerPoints];
    v215[2] = v115;
    v214[3] = @"action";
    v116 = MEMORY[0x277D750C8];
    v192[0] = MEMORY[0x277D85DD0];
    v192[1] = *"";
    v192[2] = __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_5;
    v192[3] = &unk_279AA4BB0;
    v117 = v95;
    v193 = v117;
    v194 = @"Text Bounds";
    v118 = [v116 actionWithHandler:v192];
    v215[3] = v118;
    v119 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v215 forKeys:v214 count:4];
    v120 = [(PVEffectDebugKeyRowView *)v100 initWithFrame:v119 config:v32, v33, v34, v35];

    [v179 addArrangedSubview:v120];
    v121 = [PVEffectDebugView hitAreaShapeLayerWithFrame:v117 options:0.0, 0.0, 30.0, 30.0];
    v122 = [PVEffectDebugKeyRowView alloc];
    v213[0] = @"Hit Shape";
    v212[0] = @"title";
    v212[1] = @"icon";
    v123 = objc_alloc(MEMORY[0x277D755E8]);
    v124 = v121;
    [v124 frame];
    v126 = v125;
    [v124 frame];
    v128 = v127;
    mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen5 scale];
    v131 = v130;
    v229.width = v126;
    v229.height = v128;
    UIGraphicsBeginImageContextWithOptions(v229, 0, v131);

    [v124 renderInContext:UIGraphicsGetCurrentContext()];
    v132 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v133 = [v123 initWithImage:v132];
    v213[1] = v133;
    v212[2] = @"on";
    v134 = MEMORY[0x277CCABB0];
    showHitAreaShape = [v117 showHitAreaShape];
    showHitAreaPoints = 0;
    if (showHitAreaShape)
    {
      showHitAreaPoints = [v117 showHitAreaPoints];
    }

    v137 = [v134 numberWithInt:showHitAreaPoints];
    v213[2] = v137;
    v212[3] = @"action";
    v138 = MEMORY[0x277D750C8];
    v189[0] = MEMORY[0x277D85DD0];
    v189[1] = *"";
    v189[2] = __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_6;
    v189[3] = &unk_279AA4BB0;
    v139 = v117;
    v190 = v139;
    v191 = @"Hit Shape";
    v140 = [v138 actionWithHandler:v189];
    v213[3] = v140;
    v141 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v213 forKeys:v212 count:4];
    v142 = [(PVEffectDebugKeyRowView *)v122 initWithFrame:v141 config:v32, v33, v34, v35];

    [v179 addArrangedSubview:v142];
    v143 = objc_alloc(MEMORY[0x277D755E8]);
    v144 = [MEMORY[0x277D755B8] systemImageNamed:@"person.fill"];
    v145 = [v143 initWithImage:v144];

    [v145 setFrame:{0.0, 0.0, 30.0, 30.0}];
    v146 = [PVEffectDebugKeyRowView alloc];
    v210[0] = @"title";
    v210[1] = @"icon";
    v211[0] = @"User Rects";
    v211[1] = v145;
    v210[2] = @"on";
    v147 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v139, "showUserRects")}];
    v211[2] = v147;
    v210[3] = @"action";
    v148 = MEMORY[0x277D750C8];
    v186[0] = MEMORY[0x277D85DD0];
    v186[1] = *"";
    v186[2] = __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_7;
    v186[3] = &unk_279AA4BB0;
    v149 = v139;
    v187 = v149;
    v188 = @"User Rects";
    v150 = [v148 actionWithHandler:v186];
    v211[3] = v150;
    v151 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v211 forKeys:v210 count:4];
    v152 = [(PVEffectDebugKeyRowView *)v146 initWithFrame:v151 config:v32, v33, v34, v35];

    [v179 addArrangedSubview:v152];
    v153 = objc_alloc(MEMORY[0x277D755E8]);
    v154 = [MEMORY[0x277D755B8] systemImageNamed:@"person.fill"];
    v155 = [v153 initWithImage:v154];

    [v155 setFrame:{0.0, 0.0, 30.0, 30.0}];
    v156 = [PVEffectDebugKeyRowView alloc];
    v208[0] = @"title";
    v208[1] = @"icon";
    v209[0] = @"User Points";
    v209[1] = v155;
    v208[2] = @"on";
    v157 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v149, "showUserPoints")}];
    v209[2] = v157;
    v208[3] = @"action";
    v158 = MEMORY[0x277D750C8];
    v183[0] = MEMORY[0x277D85DD0];
    v183[1] = *"";
    v183[2] = __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_8;
    v183[3] = &unk_279AA4BB0;
    v159 = v149;
    v184 = v159;
    v185 = @"User Points";
    v160 = [v158 actionWithHandler:v183];
    v209[3] = v160;
    v161 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v209 forKeys:v208 count:4];
    v162 = [(PVEffectDebugKeyRowView *)v156 initWithFrame:v161 config:v32, v33, v34, v35];

    [v179 addArrangedSubview:v162];
    array = [MEMORY[0x277CBEB18] array];
    arrangedSubviews = [v179 arrangedSubviews];
    v180[0] = MEMORY[0x277D85DD0];
    v180[1] = *"";
    v180[2] = __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_9;
    v180[3] = &unk_279AA4BD8;
    v181 = array;
    v182 = v179;
    v165 = v179;
    v166 = array;
    [arrangedSubviews enumerateObjectsUsingBlock:v180];

    [MEMORY[0x277CCAAD0] activateConstraints:v166];
    v11 = v176;
    [(PVEffectDebugOptionsView *)v176 updateWithOptions:v159];
    [v159 addObserver:v176 forKeyPath:@"enabled" options:1 context:0];

    optionsCopy = v177;
  }

  return v11;
}

void __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isEnabled];
  [*(a1 + 32) setEnabled:v2 ^ 1u];
  v3 = @"On";
  if (v2)
  {
    v3 = @"Off";
  }

  NSLog(&cfstr_Switched.isa, v3, *(a1 + 40));
}

void __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) showDocumentBoundingBox];
  [*(a1 + 32) setShowDocumentBoundingBox:v2 ^ 1u];
  [*(a1 + 32) setShowOrigin:v2 ^ 1u];
  v3 = @"On";
  if (v2)
  {
    v3 = @"Off";
  }

  NSLog(&cfstr_Switched.isa, v3, *(a1 + 40));
}

void __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) showOutputROI];
  [*(a1 + 32) setShowOutputROI:v2 ^ 1u];
  v3 = @"On";
  if (v2)
  {
    v3 = @"Off";
  }

  NSLog(&cfstr_Switched.isa, v3, *(a1 + 40));
}

void __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) showObjectAlignedBoundingBox];
  [*(a1 + 32) setShowObjectAlignedBoundingBox:v2 ^ 1u];
  [*(a1 + 32) setShowMidpoint:v2 ^ 1u];
  [*(a1 + 32) setShowCornerPoints:v2 ^ 1u];
  v3 = @"On";
  if (v2)
  {
    v3 = @"Off";
  }

  NSLog(&cfstr_Switched.isa, v3, *(a1 + 40));
}

void __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) showTextBoundingBoxes];
  [*(a1 + 32) setShowTextBoundingBoxes:v2 ^ 1u];
  [*(a1 + 32) setShowTextCornerPoints:v2 ^ 1u];
  v3 = @"On";
  if (v2)
  {
    v3 = @"Off";
  }

  NSLog(&cfstr_Switched.isa, v3, *(a1 + 40));
}

void __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) showHitAreaShape];
  [*(a1 + 32) setShowHitAreaShape:v2 ^ 1u];
  [*(a1 + 32) setShowHitAreaPoints:v2 ^ 1u];
  v3 = @"On";
  if (v2)
  {
    v3 = @"Off";
  }

  NSLog(&cfstr_Switched.isa, v3, *(a1 + 40));
}

void __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) showUserRects];
  [*(a1 + 32) setShowUserRects:v2 ^ 1u];
  v3 = @"On";
  if (v2)
  {
    v3 = @"Off";
  }

  NSLog(&cfstr_Switched.isa, v3, *(a1 + 40));
}

void __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) showUserPoints];
  [*(a1 + 32) setShowUserPoints:v2 ^ 1u];
  v3 = @"On";
  if (v2)
  {
    v3 = @"Off";
  }

  NSLog(&cfstr_Switched.isa, v3, *(a1 + 40));
}

void __50__PVEffectDebugOptionsView_initWithFrame_options___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = [a2 subviews];
  v4 = [v9 lastObject];
  v5 = [v4 trailingAnchor];
  v6 = [*(a1 + 40) layoutMarginsGuide];
  v7 = [v6 trailingAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  [v3 addObject:v8];
}

- (void)updateWithOptions:(id)options
{
  optionsCopy = options;
  rowsStackView = [(PVEffectDebugOptionsView *)self rowsStackView];
  arrangedSubviews = [rowsStackView arrangedSubviews];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = __46__PVEffectDebugOptionsView_updateWithOptions___block_invoke;
  v8[3] = &unk_279AA4C00;
  v9 = optionsCopy;
  v7 = optionsCopy;
  [arrangedSubviews enumerateObjectsUsingBlock:v8];
}

void __46__PVEffectDebugOptionsView_updateWithOptions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v8;
  if (isKindOfClass)
  {
    v7 = v8;
    if (a3)
    {
      [v7 setEnabled:{objc_msgSend(*(a1 + 32), "isEnabled")}];
    }

    v6 = v8;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"enabled"])
  {
    v11 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    bOOLValue = [v11 BOOLValue];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    NSLog(&cfstr_UpdatedFor.isa, v13, pathCopy);

    [(PVEffectDebugOptionsView *)self updateWithOptions:objectCopy];
  }
}

@end