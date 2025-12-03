@interface SXColumnVisualizerModifier
- (id)componentLayoutWithJSON:(id)n;
- (id)componentStyleWithJSON:(id)n;
- (id)containerComponentWithJSON:(id)n;
- (void)modifyDOM:(id)m context:(id)context;
@end

@implementation SXColumnVisualizerModifier

- (void)modifyDOM:(id)m context:(id)context
{
  v194[3] = *MEMORY[0x1E69E9840];
  mCopy = m;
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
  v151 = contextCopy;
  layoutOptions = [contextCopy layoutOptions];
  columnLayout = [layoutOptions columnLayout];

  v10 = [(SXColumnVisualizerModifier *)self componentStyleWithJSON:&unk_1F538A8C0];
  v11 = [(SXColumnVisualizerModifier *)self componentStyleWithJSON:&unk_1F538A8E8];
  v12 = [(SXColumnVisualizerModifier *)self componentStyleWithJSON:&unk_1F538A910];
  v13 = [(SXColumnVisualizerModifier *)self componentStyleWithJSON:&unk_1F538A938];
  componentStyles = [mCopy componentStyles];
  identifier = [v10 identifier];
  v150 = v10;
  [componentStyles setObject:v10 forKey:identifier];

  componentStyles2 = [mCopy componentStyles];
  identifier2 = [v11 identifier];
  v149 = v11;
  [componentStyles2 setObject:v11 forKey:identifier2];

  v156 = mCopy;
  componentStyles3 = [mCopy componentStyles];
  identifier3 = [v12 identifier];
  v158 = v12;
  [componentStyles3 setObject:v12 forKey:identifier3];

  componentStyles4 = [mCopy componentStyles];
  identifier4 = [v13 identifier];
  v161 = v13;
  [componentStyles4 setObject:v13 forKey:identifier4];

  v194[0] = @"both";
  v193[0] = @"ignoreViewportPadding";
  v193[1] = @"columnRange";
  v191[0] = @"start";
  v191[1] = @"length";
  v192[0] = &unk_1F538A1F0;
  v22 = MEMORY[0x1E696AD98];
  documentLayout = [columnLayout documentLayout];
  v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(documentLayout, "columns")}];
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
  [columnLayout leftScreenMargin];
  v29 = [v28 numberWithDouble:?];
  v190[0] = v29;
  v189[1] = @"maximumWidth";
  v30 = MEMORY[0x1E696AD98];
  [columnLayout leftScreenMargin];
  v31 = [v30 numberWithDouble:?];
  v190[1] = v31;
  v189[2] = @"minimumHeight";
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:25];
  v190[2] = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v190 forKeys:v189 count:3];
  v154 = [(SXColumnVisualizerModifier *)self componentLayoutWithJSON:v33];

  v187[0] = @"minimumWidth";
  v34 = MEMORY[0x1E696AD98];
  [columnLayout rightScreenMargin];
  v35 = [v34 numberWithDouble:?];
  v188[0] = v35;
  v187[1] = @"maximumWidth";
  v36 = MEMORY[0x1E696AD98];
  [columnLayout rightScreenMargin];
  v37 = [v36 numberWithDouble:?];
  v188[1] = v37;
  v187[2] = @"minimumHeight";
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:25];
  v188[2] = v38;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v188 forKeys:v187 count:3];
  v153 = [(SXColumnVisualizerModifier *)self componentLayoutWithJSON:v39];

  v185[0] = @"minimumWidth";
  v40 = MEMORY[0x1E696AD98];
  [columnLayout leftMargin];
  v41 = [v40 numberWithDouble:?];
  v186[0] = v41;
  v185[1] = @"maximumWidth";
  v42 = MEMORY[0x1E696AD98];
  [columnLayout leftMargin];
  v43 = [v42 numberWithDouble:?];
  v186[1] = v43;
  v185[2] = @"minimumHeight";
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:25];
  v186[2] = v44;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v186 forKeys:v185 count:3];
  v152 = [(SXColumnVisualizerModifier *)self componentLayoutWithJSON:v45];

  v183[0] = @"minimumWidth";
  v46 = MEMORY[0x1E696AD98];
  [columnLayout rightMargin];
  v47 = [v46 numberWithDouble:?];
  v184[0] = v47;
  v183[1] = @"maximumWidth";
  v48 = MEMORY[0x1E696AD98];
  [columnLayout rightMargin];
  v49 = [v48 numberWithDouble:?];
  v184[1] = v49;
  v183[2] = @"minimumHeight";
  v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:25];
  v184[2] = v50;
  v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v184 forKeys:v183 count:3];
  v52 = [(SXColumnVisualizerModifier *)self componentLayoutWithJSON:v51];

  v181[0] = @"minimumWidth";
  v53 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(columnLayout, "gutter")}];
  v182[0] = v53;
  v181[1] = @"maximumWidth";
  v54 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(columnLayout, "gutter")}];
  v182[1] = v54;
  v181[2] = @"minimumHeight";
  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:25];
  v182[2] = v55;
  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v182 forKeys:v181 count:3];
  v57 = [(SXColumnVisualizerModifier *)self componentLayoutWithJSON:v56];

  v179[0] = @"minimumWidth";
  v58 = MEMORY[0x1E696AD98];
  [columnLayout columnWidth];
  v59 = [v58 numberWithDouble:?];
  v180[0] = v59;
  v179[1] = @"maximumWidth";
  v60 = MEMORY[0x1E696AD98];
  [columnLayout columnWidth];
  v61 = [v60 numberWithDouble:?];
  v180[1] = v61;
  v179[2] = @"minimumHeight";
  v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:25];
  v180[2] = v62;
  v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v180 forKeys:v179 count:3];
  selfCopy = self;
  v65 = [(SXColumnVisualizerModifier *)self componentLayoutWithJSON:v63];

  componentLayouts = [v156 componentLayouts];
  identifier5 = [v57 identifier];
  v157 = v57;
  [componentLayouts setObject:v57 forKey:identifier5];

  componentLayouts2 = [v156 componentLayouts];
  identifier6 = [v65 identifier];
  v160 = v65;
  [componentLayouts2 setObject:v65 forKey:identifier6];

  componentLayouts3 = [v156 componentLayouts];
  identifier7 = [v155 identifier];
  [componentLayouts3 setObject:v155 forKey:identifier7];

  componentLayouts4 = [v156 componentLayouts];
  identifier8 = [v152 identifier];
  [componentLayouts4 setObject:v152 forKey:identifier8];

  componentLayouts5 = [v156 componentLayouts];
  identifier9 = [v52 identifier];
  v148 = v52;
  [componentLayouts5 setObject:v52 forKey:identifier9];

  componentLayouts6 = [v156 componentLayouts];
  identifier10 = [v154 identifier];
  [componentLayouts6 setObject:v154 forKey:identifier10];

  componentLayouts7 = [v156 componentLayouts];
  identifier11 = [v153 identifier];
  [componentLayouts7 setObject:v153 forKey:identifier11];

  v159 = columnLayout;
  [columnLayout leftScreenMargin];
  if (v80 > 0.0)
  {
    v177[0] = @"layout";
    identifier12 = [v154 identifier];
    v177[1] = @"style";
    v178[0] = identifier12;
    identifier13 = [v150 identifier];
    v178[1] = identifier13;
    v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v178 forKeys:v177 count:2];
    v84 = [(SXColumnVisualizerModifier *)self containerComponentWithJSON:v83];
    jSONRepresentation = [v84 JSONRepresentation];
    [array addObject:jSONRepresentation];
  }

  [columnLayout leftMargin];
  if (v86 > 0.0)
  {
    v175[0] = @"layout";
    identifier14 = [v152 identifier];
    v175[1] = @"style";
    v176[0] = identifier14;
    identifier15 = [v149 identifier];
    v176[1] = identifier15;
    v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v176 forKeys:v175 count:2];
    v90 = [(SXColumnVisualizerModifier *)self containerComponentWithJSON:v89];
    jSONRepresentation2 = [v90 JSONRepresentation];
    [array addObject:jSONRepresentation2];
  }

  layoutOptions2 = [v151 layoutOptions];
  columnLayout2 = [layoutOptions2 columnLayout];
  numberOfColumns = [columnLayout2 numberOfColumns];

  if (numberOfColumns)
  {
    v95 = 1;
    v96 = numberOfColumns;
    do
    {
      v173[0] = @"layout";
      identifier16 = [v160 identifier];
      v173[1] = @"style";
      v174[0] = identifier16;
      identifier17 = [v161 identifier];
      v174[1] = identifier17;
      v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v174 forKeys:v173 count:2];
      v100 = [(SXColumnVisualizerModifier *)selfCopy containerComponentWithJSON:v99];
      jSONRepresentation3 = [v100 JSONRepresentation];
      [array addObject:jSONRepresentation3];

      if (v95 < numberOfColumns && [v159 gutter] >= 1)
      {
        v171[0] = @"layout";
        identifier18 = [v157 identifier];
        v171[1] = @"style";
        v172[0] = identifier18;
        identifier19 = [v158 identifier];
        v172[1] = identifier19;
        v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v172 forKeys:v171 count:2];
        v105 = [(SXColumnVisualizerModifier *)selfCopy containerComponentWithJSON:v104];
        jSONRepresentation4 = [v105 JSONRepresentation];
        [array addObject:jSONRepresentation4];
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
    identifier20 = [v52 identifier];
    v169[1] = @"style";
    v170[0] = identifier20;
    identifier21 = [v149 identifier];
    v170[1] = identifier21;
    v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v170 forKeys:v169 count:2];
    v111 = [(SXColumnVisualizerModifier *)selfCopy containerComponentWithJSON:v110];
    jSONRepresentation5 = [v111 JSONRepresentation];
    [array addObject:jSONRepresentation5];
  }

  [v159 rightScreenMargin];
  if (v113 > 0.0)
  {
    v167[0] = @"layout";
    identifier22 = [v153 identifier];
    v167[1] = @"style";
    v168[0] = identifier22;
    identifier23 = [v150 identifier];
    v168[1] = identifier23;
    v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v168 forKeys:v167 count:2];
    v117 = [(SXColumnVisualizerModifier *)selfCopy containerComponentWithJSON:v116];
    jSONRepresentation6 = [v117 JSONRepresentation];
    [array addObject:jSONRepresentation6];
  }

  components = [v156 components];
  v165[0] = @"layout";
  identifier24 = [v155 identifier];
  v166[0] = identifier24;
  v166[1] = &unk_1F538A960;
  v165[1] = @"contentDisplay";
  v165[2] = @"components";
  v166[2] = array;
  v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v166 forKeys:v165 count:3];
  v122 = [(SXColumnVisualizerModifier *)selfCopy containerComponentWithJSON:v121];
  [components insertComponent:v122 atIndex:0];

  string = [MEMORY[0x1E696AD60] string];
  [v159 viewportSize];
  v124 = NSStringFromCGSize(v195);
  [string appendFormat:@"Viewport: %@\n", v124];

  [v159 constrainedViewportSize];
  v125 = NSStringFromCGSize(v196);
  [string appendFormat:@"Constrained Viewport: %@\n", v125];

  [v159 leftScreenMargin];
  v127 = v126;
  [v159 rightScreenMargin];
  [string appendFormat:@"Viewport Padding: %.0f/%.0f\n", v127, v128];
  [v159 leftMargin];
  v130 = v129;
  [v159 rightMargin];
  [string appendFormat:@"Document Margin: %lu/%lu\n", v130, v131];
  [string appendFormat:@"Columns: %lu\n", objc_msgSend(v159, "numberOfColumns")];
  [v159 columnWidth];
  [string appendFormat:@"ColumnWidth: %.0f\n", v132];
  [string appendFormat:@"Gutter: %lu\n", objc_msgSend(v159, "gutter")];
  documentLayout2 = [v159 documentLayout];
  width = [documentLayout2 width];
  documentLayout3 = [v159 documentLayout];
  columns = [documentLayout3 columns];
  documentLayout4 = [v159 documentLayout];
  margin = [documentLayout4 margin];
  documentLayout5 = [v159 documentLayout];
  [string appendFormat:@"Document Layout: {width: %lu, columns: %lu, margin: %lu, gutter: %lu}\n", width, columns, margin, objc_msgSend(documentLayout5, "gutter")];

  [v159 contentScaleFactor];
  [string appendFormat:@"Content Scale: %.2f", v140];
  v141 = [SXTextComponent alloc];
  v163[0] = @"identifier";
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v164[0] = uUIDString;
  v164[1] = @"text";
  v163[1] = @"role";
  v163[2] = @"type";
  v164[2] = @"text";
  v163[3] = @"layout";
  identifier25 = [v155 identifier];
  v163[4] = @"text";
  v164[3] = identifier25;
  v164[4] = string;
  v145 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v164 forKeys:v163 count:5];
  v146 = [(SXJSONObject *)v141 initWithJSONObject:v145 andVersion:@"1.30"];

  components2 = [v156 components];
  [components2 insertComponent:v146 atIndex:0];
}

- (id)componentLayoutWithJSON:(id)n
{
  v3 = [n mutableCopy];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v3 setObject:uUIDString forKey:@"identifier"];

  v6 = [(SXJSONObject *)[SXComponentLayout alloc] initWithJSONObject:v3 andVersion:@"1.30"];

  return v6;
}

- (id)componentStyleWithJSON:(id)n
{
  v3 = [n mutableCopy];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v3 setObject:uUIDString forKey:@"identifier"];

  v6 = [(SXJSONObject *)[SXComponentStyle alloc] initWithJSONObject:v3 andVersion:@"1.30"];

  return v6;
}

- (id)containerComponentWithJSON:(id)n
{
  v3 = [n mutableCopy];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v3 setObject:uUIDString forKey:@"identifier"];

  [v3 setObject:@"container" forKey:@"role"];
  [v3 setObject:@"container" forKey:@"type"];
  v6 = [(SXJSONObject *)[SXContainerComponent alloc] initWithJSONObject:v3 andVersion:@"1.30"];

  return v6;
}

@end