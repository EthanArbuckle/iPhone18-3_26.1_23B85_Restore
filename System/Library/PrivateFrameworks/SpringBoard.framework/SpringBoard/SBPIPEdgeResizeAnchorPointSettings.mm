@interface SBPIPEdgeResizeAnchorPointSettings
+ (id)settingsControllerModule;
- (void)_setAnchorPointForType:(unint64_t)a3;
- (void)setDefaultValues;
@end

@implementation SBPIPEdgeResizeAnchorPointSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBPIPEdgeResizeAnchorPointSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeTopEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeTopEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeBottomEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeBottomEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeLeftEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeLeftEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeRightEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeRightEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeTopEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeTopEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeBottomEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeBottomEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeLeftEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeLeftEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeRightEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeRightEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeTopEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeTopEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeBottomEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeBottomEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeLeftEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeLeftEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeRightEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeRightEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeTopEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeTopEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeBottomEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeBottomEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeLeftEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeLeftEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeRightEdgeAnchorPointX:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeRightEdgeAnchorPointY:0.5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setAnchorPointType:1];
}

+ (id)settingsControllerModule
{
  v124[1] = *MEMORY[0x277D85DE8];
  v113 = [MEMORY[0x277D431B8] rowWithTitle:@"Type" valueKeyPath:@"anchorPointType"];
  [v113 setPossibleTitles:&unk_28336F0D8];
  [v113 setPossibleValues:&unk_28336F0F0];
  v2 = MEMORY[0x277D43210];
  v124[0] = v113;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:1];
  v118 = [v2 sectionWithRows:v3 title:@"Type"];

  v4 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Top Edge Anchor Point X" valueKeyPath:@"dockUpperLeftResizeTopEdgeAnchorPointX"];
  v5 = [v4 between:0.0 and:1.0];
  v117 = [v5 precision:2];

  v6 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Top Edge Anchor Point Y" valueKeyPath:@"dockUpperLeftResizeBottomEdgeAnchorPointX"];
  v7 = [v6 between:0.0 and:1.0];
  v112 = [v7 precision:2];

  v8 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Bottom Edge Anchor Point X" valueKeyPath:@"dockUpperLeftResizeBottomEdgeAnchorPointX"];
  v9 = [v8 between:0.0 and:1.0];
  v111 = [v9 precision:2];

  v10 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Bottom Edge Anchor Point Y" valueKeyPath:@"dockUpperLeftResizeBottomEdgeAnchorPointY"];
  v11 = [v10 between:0.0 and:1.0];
  v110 = [v11 precision:2];

  v12 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Left Edge Anchor Point X" valueKeyPath:@"dockUpperLeftResizeLeftEdgeAnchorPointX"];
  v13 = [v12 between:0.0 and:1.0];
  v109 = [v13 precision:2];

  v14 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Left Edge Anchor Point Y" valueKeyPath:@"dockUpperLeftResizeLeftEdgeAnchorPointY"];
  v15 = [v14 between:0.0 and:1.0];
  v108 = [v15 precision:2];

  v16 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Right Edge Anchor Point X" valueKeyPath:@"dockUpperLeftResizeRightEdgeAnchorPointY"];
  v17 = [v16 between:0.0 and:1.0];
  v107 = [v17 precision:2];

  v18 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Right Edge Anchor Point Y" valueKeyPath:@"dockUpperLeftResizeRightEdgeAnchorPointY"];
  v19 = [v18 between:0.0 and:1.0];
  v106 = [v19 precision:2];

  v20 = MEMORY[0x277D43210];
  v123[0] = v117;
  v123[1] = v112;
  v123[2] = v111;
  v123[3] = v110;
  v123[4] = v109;
  v123[5] = v108;
  v123[6] = v107;
  v123[7] = v106;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:8];
  v105 = [v20 sectionWithRows:v21 title:@"PIP dock at upper left"];

  v22 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Top Edge Anchor Point X" valueKeyPath:@"dockLowerLeftResizeTopEdgeAnchorPointX"];
  v23 = [v22 between:0.0 and:1.0];
  v116 = [v23 precision:2];

  v24 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Top Edge Anchor Point Y" valueKeyPath:@"dockLowerLeftResizeTopEdgeAnchorPointY"];
  v25 = [v24 between:0.0 and:1.0];
  v104 = [v25 precision:2];

  v26 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Bottom Edge Anchor Point X" valueKeyPath:@"dockLowerLeftResizeBottomEdgeAnchorPointX"];
  v27 = [v26 between:0.0 and:1.0];
  v103 = [v27 precision:2];

  v28 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Bottom Edge Anchor Point Y" valueKeyPath:@"dockLowerLeftResizeBottomEdgeAnchorPointY"];
  v29 = [v28 between:0.0 and:1.0];
  v102 = [v29 precision:2];

  v30 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Left Edge Anchor Point X" valueKeyPath:@"dockLowerLeftResizeLeftEdgeAnchorPointX"];
  v31 = [v30 between:0.0 and:1.0];
  v101 = [v31 precision:2];

  v32 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Left Edge Anchor Point Y" valueKeyPath:@"dockLowerLeftResizeLeftEdgeAnchorPointY"];
  v33 = [v32 between:0.0 and:1.0];
  v100 = [v33 precision:2];

  v34 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Right Edge Anchor Point X" valueKeyPath:@"dockLowerLeftResizeRightEdgeAnchorPointX"];
  v35 = [v34 between:0.0 and:1.0];
  v99 = [v35 precision:2];

  v36 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Right Edge Anchor Point Y" valueKeyPath:@"dockLowerLeftResizeRightEdgeAnchorPointY"];
  v37 = [v36 between:0.0 and:1.0];
  v98 = [v37 precision:2];

  v38 = MEMORY[0x277D43210];
  v122[0] = v116;
  v122[1] = v104;
  v122[2] = v103;
  v122[3] = v102;
  v122[4] = v101;
  v122[5] = v100;
  v122[6] = v99;
  v122[7] = v98;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:8];
  v97 = [v38 sectionWithRows:v39 title:@"PIP dock at lower left"];

  v40 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Top Edge Anchor Point X" valueKeyPath:@"dockUpperRightResizeTopEdgeAnchorPointX"];
  v41 = [v40 between:0.0 and:1.0];
  v115 = [v41 precision:2];

  v42 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Top Edge Anchor Point Y" valueKeyPath:@"dockUpperRightResizeTopEdgeAnchorPointY"];
  v43 = [v42 between:0.0 and:1.0];
  v96 = [v43 precision:2];

  v44 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Bottom Edge Anchor Point X" valueKeyPath:@"dockUpperRightResizeBottomEdgeAnchorPointX"];
  v45 = [v44 between:0.0 and:1.0];
  v95 = [v45 precision:2];

  v46 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Bottom Edge Anchor Point Y" valueKeyPath:@"dockUpperRightResizeBottomEdgeAnchorPointY"];
  v47 = [v46 between:0.0 and:1.0];
  v94 = [v47 precision:2];

  v48 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Left Edge Anchor Point X" valueKeyPath:@"dockUpperRightResizeLeftEdgeAnchorPointX"];
  v49 = [v48 between:0.0 and:1.0];
  v93 = [v49 precision:2];

  v50 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Left Edge Anchor Point Y" valueKeyPath:@"dockUpperRightResizeLeftEdgeAnchorPointY"];
  v51 = [v50 between:0.0 and:1.0];
  v92 = [v51 precision:2];

  v52 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Right Edge Anchor Point X" valueKeyPath:@"dockUpperRightResizeRightEdgeAnchorPointX"];
  v53 = [v52 between:0.0 and:1.0];
  v91 = [v53 precision:2];

  v54 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Right Edge Anchor Point Y" valueKeyPath:@"dockUpperRightResizeRightEdgeAnchorPointY"];
  v55 = [v54 between:0.0 and:1.0];
  v90 = [v55 precision:2];

  v56 = MEMORY[0x277D43210];
  v121[0] = v115;
  v121[1] = v96;
  v121[2] = v95;
  v121[3] = v94;
  v121[4] = v93;
  v121[5] = v92;
  v121[6] = v91;
  v121[7] = v90;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:8];
  v89 = [v56 sectionWithRows:v57 title:@"PIP dock at upper right"];

  v58 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Top Edge Anchor Point X" valueKeyPath:@"dockLowerRightResizeTopEdgeAnchorPointX"];
  v59 = [v58 between:0.0 and:1.0];
  v114 = [v59 precision:2];

  v60 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Top Edge Anchor Point Y" valueKeyPath:@"dockLowerRightResizeTopEdgeAnchorPointY"];
  v61 = [v60 between:0.0 and:1.0];
  v88 = [v61 precision:2];

  v62 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Bottom Edge Anchor Point X" valueKeyPath:@"dockLowerRightResizeBottomEdgeAnchorPointX"];
  v63 = [v62 between:0.0 and:1.0];
  v87 = [v63 precision:2];

  v64 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Bottom Edge Anchor Point Y" valueKeyPath:@"dockLowerRightResizeBottomEdgeAnchorPointY"];
  v65 = [v64 between:0.0 and:1.0];
  v86 = [v65 precision:2];

  v66 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Left Edge Anchor Point X" valueKeyPath:@"dockLowerRightResizeLeftEdgeAnchorPointX"];
  v67 = [v66 between:0.0 and:1.0];
  v85 = [v67 precision:2];

  v68 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Left Edge Anchor Point Y" valueKeyPath:@"dockLowerRightResizeLeftEdgeAnchorPointY"];
  v69 = [v68 between:0.0 and:1.0];
  v70 = [v69 precision:2];

  v71 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Right Edge Anchor Point X" valueKeyPath:@"dockLowerRightResizeRightEdgeAnchorPointX"];
  v72 = [v71 between:0.0 and:1.0];
  v73 = [v72 precision:2];

  v74 = [MEMORY[0x277D431E8] rowWithTitle:@"Resize Right Edge Anchor Point Y" valueKeyPath:@"dockLowerRightResizeRightEdgeAnchorPointY"];
  v75 = [v74 between:0.0 and:1.0];
  v76 = [v75 precision:2];

  v77 = MEMORY[0x277D43210];
  v120[0] = v114;
  v120[1] = v88;
  v120[2] = v87;
  v120[3] = v86;
  v120[4] = v85;
  v120[5] = v70;
  v78 = v70;
  v120[6] = v73;
  v120[7] = v76;
  v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v120 count:8];
  v80 = [v77 sectionWithRows:v79 title:@"PIP dock at lower right"];

  v81 = MEMORY[0x277D43210];
  v119[0] = v118;
  v119[1] = v105;
  v119[2] = v97;
  v119[3] = v89;
  v119[4] = v80;
  v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:5];
  v83 = [v81 moduleWithTitle:@"Edge Resize Anchor Point" contents:v82];

  return v83;
}

- (void)_setAnchorPointForType:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    v4 = 1.0;
    v5 = 0.0;
  }

  else
  {
    v5 = 0.5;
    v4 = 0.5;
  }

  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeTopEdgeAnchorPointX:v5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeTopEdgeAnchorPointY:1.0];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeBottomEdgeAnchorPointX:v5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeBottomEdgeAnchorPointY:0.0];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeLeftEdgeAnchorPointX:1.0];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeLeftEdgeAnchorPointY:v5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeRightEdgeAnchorPointX:0.0];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperLeftResizeRightEdgeAnchorPointY:v5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeTopEdgeAnchorPointX:v5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeTopEdgeAnchorPointY:1.0];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeBottomEdgeAnchorPointX:v5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeBottomEdgeAnchorPointY:0.0];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeLeftEdgeAnchorPointX:1.0];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeLeftEdgeAnchorPointY:v4];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeRightEdgeAnchorPointX:0.0];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerLeftResizeRightEdgeAnchorPointY:v4];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeTopEdgeAnchorPointX:v4];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeTopEdgeAnchorPointY:1.0];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeBottomEdgeAnchorPointX:v4];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeBottomEdgeAnchorPointY:0.0];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeLeftEdgeAnchorPointX:1.0];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeLeftEdgeAnchorPointY:v5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeRightEdgeAnchorPointX:0.0];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockUpperRightResizeRightEdgeAnchorPointY:v5];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeTopEdgeAnchorPointX:v4];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeTopEdgeAnchorPointY:1.0];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeBottomEdgeAnchorPointX:v4];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeBottomEdgeAnchorPointY:0.0];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeLeftEdgeAnchorPointX:1.0];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeLeftEdgeAnchorPointY:v4];
  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeRightEdgeAnchorPointX:0.0];

  [(SBPIPEdgeResizeAnchorPointSettings *)self setDockLowerRightResizeRightEdgeAnchorPointY:v4];
}

@end