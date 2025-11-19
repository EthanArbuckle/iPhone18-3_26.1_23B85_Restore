@interface SXColumnVisualizerModifier
- (id)componentLayoutWithJSON:(id)a3;
- (id)componentStyleWithJSON:(id)a3;
- (id)containerComponentWithJSON:(id)a3;
- (void)modifyDOM:(id)a3 context:(id)a4;
@end

@implementation SXColumnVisualizerModifier

- (void)modifyDOM:(id)a3 context:(id)a4
{
  v194[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v162 = [MEMORY[0x1E695DF70] array];
  v151 = v7;
  v8 = [v7 layoutOptions];
  v9 = [v8 columnLayout];

  v10 = [(SXColumnVisualizerModifier *)self componentStyleWithJSON:&unk_1F538A8C0];
  v11 = [(SXColumnVisualizerModifier *)self componentStyleWithJSON:&unk_1F538A8E8];
  v12 = [(SXColumnVisualizerModifier *)self componentStyleWithJSON:&unk_1F538A910];
  v13 = [(SXColumnVisualizerModifier *)self componentStyleWithJSON:&unk_1F538A938];
  v14 = [v6 componentStyles];
  v15 = [v10 identifier];
  v150 = v10;
  [v14 setObject:v10 forKey:v15];

  v16 = [v6 componentStyles];
  v17 = [v11 identifier];
  v149 = v11;
  [v16 setObject:v11 forKey:v17];

  v156 = v6;
  v18 = [v6 componentStyles];
  v19 = [v12 identifier];
  v158 = v12;
  [v18 setObject:v12 forKey:v19];

  v20 = [v6 componentStyles];
  v21 = [v13 identifier];
  v161 = v13;
  [v20 setObject:v13 forKey:v21];

  v194[0] = @"both";
  v193[0] = @"ignoreViewportPadding";
  v193[1] = @"columnRange";
  v191[0] = @"start";
  v191[1] = @"length";
  v192[0] = &unk_1F538A1F0;
  v22 = MEMORY[0x1E696AD98];
  v23 = [v9 documentLayout];
  v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v23, "columns")}];
  v192[1] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v192 forKeys:v191 count:2];
  v194[1] = v25;
  v193[2] = @"minimumHeight";
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:25];
  v194[2] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v194 forKeys:v193 count:3];
  v155 = [(SXColumnVisualizerModifier *)self componentLayoutWithJSON:v27];

  v189[0] = @"minimumWidth";
  v28 = MEMORY[0x1E696AD98];
  [v9 leftScreenMargin];
  v29 = [v28 numberWithDouble:?];
  v190[0] = v29;
  v189[1] = @"maximumWidth";
  v30 = MEMORY[0x1E696AD98];
  [v9 leftScreenMargin];
  v31 = [v30 numberWithDouble:?];
  v190[1] = v31;
  v189[2] = @"minimumHeight";
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:25];
  v190[2] = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v190 forKeys:v189 count:3];
  v154 = [(SXColumnVisualizerModifier *)self componentLayoutWithJSON:v33];

  v187[0] = @"minimumWidth";
  v34 = MEMORY[0x1E696AD98];
  [v9 rightScreenMargin];
  v35 = [v34 numberWithDouble:?];
  v188[0] = v35;
  v187[1] = @"maximumWidth";
  v36 = MEMORY[0x1E696AD98];
  [v9 rightScreenMargin];
  v37 = [v36 numberWithDouble:?];
  v188[1] = v37;
  v187[2] = @"minimumHeight";
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:25];
  v188[2] = v38;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v188 forKeys:v187 count:3];
  v153 = [(SXColumnVisualizerModifier *)self componentLayoutWithJSON:v39];

  v185[0] = @"minimumWidth";
  v40 = MEMORY[0x1E696AD98];
  [v9 leftMargin];
  v41 = [v40 numberWithDouble:?];
  v186[0] = v41;
  v185[1] = @"maximumWidth";
  v42 = MEMORY[0x1E696AD98];
  [v9 leftMargin];
  v43 = [v42 numberWithDouble:?];
  v186[1] = v43;
  v185[2] = @"minimumHeight";
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:25];
  v186[2] = v44;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v186 forKeys:v185 count:3];
  v152 = [(SXColumnVisualizerModifier *)self componentLayoutWithJSON:v45];

  v183[0] = @"minimumWidth";
  v46 = MEMORY[0x1E696AD98];
  [v9 rightMargin];
  v47 = [v46 numberWithDouble:?];
  v184[0] = v47;
  v183[1] = @"maximumWidth";
  v48 = MEMORY[0x1E696AD98];
  [v9 rightMargin];
  v49 = [v48 numberWithDouble:?];
  v184[1] = v49;
  v183[2] = @"minimumHeight";
  v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:25];
  v184[2] = v50;
  v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v184 forKeys:v183 count:3];
  v52 = [(SXColumnVisualizerModifier *)self componentLayoutWithJSON:v51];

  v181[0] = @"minimumWidth";
  v53 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "gutter")}];
  v182[0] = v53;
  v181[1] = @"maximumWidth";
  v54 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "gutter")}];
  v182[1] = v54;
  v181[2] = @"minimumHeight";
  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:25];
  v182[2] = v55;
  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v182 forKeys:v181 count:3];
  v57 = [(SXColumnVisualizerModifier *)self componentLayoutWithJSON:v56];

  v179[0] = @"minimumWidth";
  v58 = MEMORY[0x1E696AD98];
  [v9 columnWidth];
  v59 = [v58 numberWithDouble:?];
  v180[0] = v59;
  v179[1] = @"maximumWidth";
  v60 = MEMORY[0x1E696AD98];
  [v9 columnWidth];
  v61 = [v60 numberWithDouble:?];
  v180[1] = v61;
  v179[2] = @"minimumHeight";
  v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:25];
  v180[2] = v62;
  v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v180 forKeys:v179 count:3];
  v64 = self;
  v65 = [(SXColumnVisualizerModifier *)self componentLayoutWithJSON:v63];

  v66 = [v156 componentLayouts];
  v67 = [v57 identifier];
  v157 = v57;
  [v66 setObject:v57 forKey:v67];

  v68 = [v156 componentLayouts];
  v69 = [v65 identifier];
  v160 = v65;
  [v68 setObject:v65 forKey:v69];

  v70 = [v156 componentLayouts];
  v71 = [v155 identifier];
  [v70 setObject:v155 forKey:v71];

  v72 = [v156 componentLayouts];
  v73 = [v152 identifier];
  [v72 setObject:v152 forKey:v73];

  v74 = [v156 componentLayouts];
  v75 = [v52 identifier];
  v148 = v52;
  [v74 setObject:v52 forKey:v75];

  v76 = [v156 componentLayouts];
  v77 = [v154 identifier];
  [v76 setObject:v154 forKey:v77];

  v78 = [v156 componentLayouts];
  v79 = [v153 identifier];
  [v78 setObject:v153 forKey:v79];

  v159 = v9;
  [v9 leftScreenMargin];
  if (v80 > 0.0)
  {
    v177[0] = @"layout";
    v81 = [v154 identifier];
    v177[1] = @"style";
    v178[0] = v81;
    v82 = [v150 identifier];
    v178[1] = v82;
    v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v178 forKeys:v177 count:2];
    v84 = [(SXColumnVisualizerModifier *)self containerComponentWithJSON:v83];
    v85 = [v84 JSONRepresentation];
    [v162 addObject:v85];
  }

  [v9 leftMargin];
  if (v86 > 0.0)
  {
    v175[0] = @"layout";
    v87 = [v152 identifier];
    v175[1] = @"style";
    v176[0] = v87;
    v88 = [v149 identifier];
    v176[1] = v88;
    v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v176 forKeys:v175 count:2];
    v90 = [(SXColumnVisualizerModifier *)self containerComponentWithJSON:v89];
    v91 = [v90 JSONRepresentation];
    [v162 addObject:v91];
  }

  v92 = [v151 layoutOptions];
  v93 = [v92 columnLayout];
  v94 = [v93 numberOfColumns];

  if (v94)
  {
    v95 = 1;
    v96 = v94;
    do
    {
      v173[0] = @"layout";
      v97 = [v160 identifier];
      v173[1] = @"style";
      v174[0] = v97;
      v98 = [v161 identifier];
      v174[1] = v98;
      v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v174 forKeys:v173 count:2];
      v100 = [(SXColumnVisualizerModifier *)v64 containerComponentWithJSON:v99];
      v101 = [v100 JSONRepresentation];
      [v162 addObject:v101];

      if (v95 < v94 && [v159 gutter] >= 1)
      {
        v171[0] = @"layout";
        v102 = [v157 identifier];
        v171[1] = @"style";
        v172[0] = v102;
        v103 = [v158 identifier];
        v172[1] = v103;
        v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v172 forKeys:v171 count:2];
        v105 = [(SXColumnVisualizerModifier *)v64 containerComponentWithJSON:v104];
        v106 = [v105 JSONRepresentation];
        [v162 addObject:v106];
      }

      ++v95;
      --v96;
    }

    while (v96);
  }

  [v159 rightMargin];
  if (v107 > 0.0)
  {
    v169[0] = @"layout";
    v108 = [v52 identifier];
    v169[1] = @"style";
    v170[0] = v108;
    v109 = [v149 identifier];
    v170[1] = v109;
    v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v170 forKeys:v169 count:2];
    v111 = [(SXColumnVisualizerModifier *)v64 containerComponentWithJSON:v110];
    v112 = [v111 JSONRepresentation];
    [v162 addObject:v112];
  }

  [v159 rightScreenMargin];
  if (v113 > 0.0)
  {
    v167[0] = @"layout";
    v114 = [v153 identifier];
    v167[1] = @"style";
    v168[0] = v114;
    v115 = [v150 identifier];
    v168[1] = v115;
    v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v168 forKeys:v167 count:2];
    v117 = [(SXColumnVisualizerModifier *)v64 containerComponentWithJSON:v116];
    v118 = [v117 JSONRepresentation];
    [v162 addObject:v118];
  }

  v119 = [v156 components];
  v165[0] = @"layout";
  v120 = [v155 identifier];
  v166[0] = v120;
  v166[1] = &unk_1F538A960;
  v165[1] = @"contentDisplay";
  v165[2] = @"components";
  v166[2] = v162;
  v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v166 forKeys:v165 count:3];
  v122 = [(SXColumnVisualizerModifier *)v64 containerComponentWithJSON:v121];
  [v119 insertComponent:v122 atIndex:0];

  v123 = [MEMORY[0x1E696AD60] string];
  [v159 viewportSize];
  v124 = NSStringFromCGSize(v195);
  [v123 appendFormat:@"Viewport: %@\n", v124];

  [v159 constrainedViewportSize];
  v125 = NSStringFromCGSize(v196);
  [v123 appendFormat:@"Constrained Viewport: %@\n", v125];

  [v159 leftScreenMargin];
  v127 = v126;
  [v159 rightScreenMargin];
  [v123 appendFormat:@"Viewport Padding: %.0f/%.0f\n", v127, v128];
  [v159 leftMargin];
  v130 = v129;
  [v159 rightMargin];
  [v123 appendFormat:@"Document Margin: %lu/%lu\n", v130, v131];
  [v123 appendFormat:@"Columns: %lu\n", objc_msgSend(v159, "numberOfColumns")];
  [v159 columnWidth];
  [v123 appendFormat:@"ColumnWidth: %.0f\n", v132];
  [v123 appendFormat:@"Gutter: %lu\n", objc_msgSend(v159, "gutter")];
  v133 = [v159 documentLayout];
  v134 = [v133 width];
  v135 = [v159 documentLayout];
  v136 = [v135 columns];
  v137 = [v159 documentLayout];
  v138 = [v137 margin];
  v139 = [v159 documentLayout];
  [v123 appendFormat:@"Document Layout: {width: %lu, columns: %lu, margin: %lu, gutter: %lu}\n", v134, v136, v138, objc_msgSend(v139, "gutter")];

  [v159 contentScaleFactor];
  [v123 appendFormat:@"Content Scale: %.2f", v140];
  v141 = [SXTextComponent alloc];
  v163[0] = @"identifier";
  v142 = [MEMORY[0x1E696AFB0] UUID];
  v143 = [v142 UUIDString];
  v164[0] = v143;
  v164[1] = @"text";
  v163[1] = @"role";
  v163[2] = @"type";
  v164[2] = @"text";
  v163[3] = @"layout";
  v144 = [v155 identifier];
  v163[4] = @"text";
  v164[3] = v144;
  v164[4] = v123;
  v145 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v164 forKeys:v163 count:5];
  v146 = [(SXJSONObject *)v141 initWithJSONObject:v145 andVersion:@"1.30"];

  v147 = [v156 components];
  [v147 insertComponent:v146 atIndex:0];
}

- (id)componentLayoutWithJSON:(id)a3
{
  v3 = [a3 mutableCopy];
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKey:@"identifier"];

  v6 = [(SXJSONObject *)[SXComponentLayout alloc] initWithJSONObject:v3 andVersion:@"1.30"];

  return v6;
}

- (id)componentStyleWithJSON:(id)a3
{
  v3 = [a3 mutableCopy];
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKey:@"identifier"];

  v6 = [(SXJSONObject *)[SXComponentStyle alloc] initWithJSONObject:v3 andVersion:@"1.30"];

  return v6;
}

- (id)containerComponentWithJSON:(id)a3
{
  v3 = [a3 mutableCopy];
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKey:@"identifier"];

  [v3 setObject:@"container" forKey:@"role"];
  [v3 setObject:@"container" forKey:@"type"];
  v6 = [(SXJSONObject *)[SXContainerComponent alloc] initWithJSONObject:v3 andVersion:@"1.30"];

  return v6;
}

@end