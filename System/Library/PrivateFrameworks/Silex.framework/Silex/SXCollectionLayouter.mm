@interface SXCollectionLayouter
- (SXCollectionLayouter)initWithContainerComponent:(id)a3 layouterFactory:(id)a4 columnCalculator:(id)a5 unitConverterFactory:(id)a6;
- (SXLayouterDelegate)delegate;
- (id)childColumnLayoutForRowLayout:(id)a3 display:(id)a4 collectionContainerBlueprint:(id)a5 childContainerComponentBlueprint:(id)a6 documentColumnLayout:(id)a7 unitConverter:(id)a8;
- (void)layoutBlueprint:(id)a3 columnLayout:(id)a4 description:(id)a5 shouldContinue:(BOOL *)a6;
@end

@implementation SXCollectionLayouter

- (SXCollectionLayouter)initWithContainerComponent:(id)a3 layouterFactory:(id)a4 columnCalculator:(id)a5 unitConverterFactory:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SXCollectionLayouter;
  v15 = [(SXCollectionLayouter *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_containerComponentBlueprint, a3);
    objc_storeStrong(&v16->_layouterFactory, a4);
    objc_storeStrong(&v16->_columnCalculator, a5);
    objc_storeStrong(&v16->_unitConverterFactory, a6);
  }

  return v16;
}

- (void)layoutBlueprint:(id)a3 columnLayout:(id)a4 description:(id)a5 shouldContinue:(BOOL *)a6
{
  v151 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v125 = a4;
  v129 = a5;
  v9 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v129 taskIdentifier];
    *buf = 134218242;
    v148 = v8;
    v149 = 2114;
    v150 = v11;
    _os_log_impl(&dword_1D825C000, v10, OS_LOG_TYPE_DEFAULT, "Starting collection layout, blueprint=%p, task-identifier=%{public}@", buf, 0x16u);
  }

  v12 = [(SXCollectionLayouter *)self containerComponentBlueprint];
  v13 = [v12 component];

  v14 = [(SXCollectionLayouter *)self containerComponentBlueprint];
  v15 = [v14 componentLayout];

  v114 = v13;
  v16 = [v13 contentDisplay];
  v17 = [(SXCollectionLayouter *)self containerComponentBlueprint];
  v18 = [v17 columnRange];
  v113 = v15;
  [v125 widthForColumnRange:v18 ignoreMargin:v19 ignoreGutter:objc_msgSend(v15 ignoreViewportPadding:{"ignoreDocumentMargin"), objc_msgSend(v15, "ignoreDocumentGutter"), objc_msgSend(v15, "ignoreViewportPadding")}];
  v21 = v20;

  [v8 startUpdatesForWidth:v21];
  v22 = [(SXCollectionLayouter *)self unitConverterFactory];
  v23 = [(SXCollectionLayouter *)self containerComponentBlueprint];
  v24 = [v23 parentLayoutBlueprint];
  [v24 blueprintSize];
  v26 = v25;
  v27 = [v8 layoutOptions];
  v28 = [v22 createUnitConverterWithComponentWidth:v27 parentWidth:v21 layoutOptions:v26];

  v29 = [v8 componentIdentifiers];
  v124 = v16;
  v112 = v28;
  v30 = +[SXCollectionCalculator layoutWithCollectionDisplay:width:numberOfComponents:unitConverter:](SXCollectionCalculator, "layoutWithCollectionDisplay:width:numberOfComponents:unitConverter:", v16, [v29 count], v28, v21);

  v31 = [v30 rowsLayouts];
  v32 = [v31 count];

  if (v32)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0.0;
    v122 = v8;
    v115 = v30;
    do
    {
      v36 = [v30 rowsLayouts];
      v37 = [v36 objectAtIndex:v34];

      v128 = v37;
      v38 = [v37 componentsPerRow];
      v39 = [v8 componentIdentifiers];
      v40 = [v39 subarrayWithRange:{v33, v38}];

      if (v34)
      {
        [v30 spaceBetweenRows];
        v35 = v35 + v41;
      }

      v42 = [(SXCollectionLayouter *)self unitConverterFactory];
      [v128 componentWidth];
      v44 = v43;
      v45 = [v8 layoutOptions];
      v127 = [v42 createUnitConverterWithComponentWidth:v45 parentWidth:v44 layoutOptions:v21];

      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      obj = v40;
      v46 = [obj countByEnumeratingWithState:&v140 objects:v146 count:16];
      if (v46)
      {
        v116 = v38;
        v117 = v34;
        v118 = v33;
        v47 = 0;
        v48 = *v141;
        v49 = 0.0;
        v50 = obj;
        v51 = v46;
        v119 = *v141;
        do
        {
          v52 = 0;
          v121 = v51;
          do
          {
            if (*v141 != v48)
            {
              objc_enumerationMutation(v50);
            }

            v53 = *(*(&v140 + 1) + 8 * v52);
            v54 = [v50 indexOfObject:v53];
            v55 = [v8 componentBlueprintForComponentIdentifier:v53];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v56 = SXLayoutLog;
              if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
              {
                v57 = v56;
                v58 = [v55 component];
                v59 = [v58 identifier];
                v60 = [v129 taskIdentifier];
                *buf = 138543618;
                v148 = v59;
                v149 = 2114;
                v150 = v60;
                _os_log_impl(&dword_1D825C000, v57, OS_LOG_TYPE_DEFAULT, "Calculating size and position, component-identifier=%{public}@, task-identifier=%{public}@", buf, 0x16u);
              }

              v61 = [v55 layoutBlueprint];
              v62 = [v55 componentLayout];
              v63 = [v62 minimumHeight];
              [v127 convertValueToPoints:{v63, v64}];
              v66 = v65;

              v67 = [(SXCollectionLayouter *)self containerComponentBlueprint];
              v68 = [(SXCollectionLayouter *)self childColumnLayoutForRowLayout:v128 display:v124 collectionContainerBlueprint:v67 childContainerComponentBlueprint:v55 documentColumnLayout:v125 unitConverter:v127];

              [v68 setMinimumHeight:v66];
              v69 = [(SXCollectionLayouter *)self layouterFactory];
              v70 = [(SXCollectionLayouter *)self delegate];
              v71 = [v69 layouterForContainerComponentBlueprint:v55 delegate:v70];

              [v71 layoutBlueprint:v61 columnLayout:v68 description:v129 shouldContinue:a6];
              v72 = [v55 componentSizer];
              [v72 contentInsetsWithUnitConverter:v127];
              v74 = v73;
              v76 = v75;

              [v128 componentWidth];
              v78 = v77;
              [v61 blueprintSize];
              if (v76 + v74 + v79 >= v66)
              {
                v66 = v76 + v74 + v79;
              }

              [v128 componentWidth];
              v81 = v80;
              [v128 spaceBetweenComponents];
              v83 = v82 * v54 + v81 * v54;
              [v128 leftMargin];
              v85 = v84 + v83;
              v8 = v122;
              [v122 updateSize:v53 forComponentWithIdentifier:{v78, v66}];
              [v122 updatePosition:v53 forComponentWithIdentifier:{v85, v35}];
              v86 = v49 != 0.0;
              if (v49 == v66)
              {
                v86 = 0;
              }

              v47 |= v86;
              if (v66 > v49)
              {
                v49 = v66;
              }

              v48 = v119;
              v50 = obj;
              v51 = v121;
            }

            ++v52;
          }

          while (v51 != v52);
          v51 = [v50 countByEnumeratingWithState:&v140 objects:v146 count:16];
        }

        while (v51);

        if ((v47 & 1) == 0)
        {
          v30 = v115;
          v38 = v116;
          v34 = v117;
          v33 = v118;
          goto LABEL_47;
        }

        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v131 = v50;
        v87 = [v131 countByEnumeratingWithState:&v136 objects:v145 count:16];
        if (v87)
        {
          v88 = v87;
          v89 = *v137;
          do
          {
            v90 = 0;
            v130 = v88;
            do
            {
              if (*v137 != v89)
              {
                objc_enumerationMutation(v131);
              }

              v91 = *(*(&v136 + 1) + 8 * v90);
              v92 = [v8 componentBlueprintForComponentIdentifier:v91];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v93 = [v92 layoutBlueprint];
                v132 = 0u;
                v133 = 0u;
                v134 = 0u;
                v135 = 0u;
                v94 = [v93 componentIdentifiers];
                v95 = [v94 countByEnumeratingWithState:&v132 objects:v144 count:16];
                if (v95)
                {
                  v96 = v95;
                  v97 = *v133;
                  do
                  {
                    for (i = 0; i != v96; ++i)
                    {
                      if (*v133 != v97)
                      {
                        objc_enumerationMutation(v94);
                      }

                      [v93 invalidatePositionForComponentWithIdentifier:*(*(&v132 + 1) + 8 * i)];
                    }

                    v96 = [v94 countByEnumeratingWithState:&v132 objects:v144 count:16];
                  }

                  while (v96);
                }

                v99 = [(SXCollectionLayouter *)self containerComponentBlueprint];
                v100 = [(SXCollectionLayouter *)self childColumnLayoutForRowLayout:v128 display:v124 collectionContainerBlueprint:v99 childContainerComponentBlueprint:v92 documentColumnLayout:v125 unitConverter:v127];

                [v100 setMinimumHeight:v49];
                v101 = [(SXCollectionLayouter *)self layouterFactory];
                v102 = [(SXCollectionLayouter *)self delegate];
                v103 = [v101 layouterForContainerComponentBlueprint:v92 delegate:v102];

                [v103 layoutBlueprint:v93 columnLayout:v100 description:v129 shouldContinue:a6];
                [v128 componentWidth];
                v105 = v104;
                [v93 blueprintSize];
                if (v106 < v49)
                {
                  v106 = v49;
                }

                v8 = v122;
                [v122 updateSize:v91 forComponentWithIdentifier:{v105, v106}];

                v88 = v130;
              }

              ++v90;
            }

            while (v90 != v88);
            v88 = [v131 countByEnumeratingWithState:&v136 objects:v145 count:16];
          }

          while (v88);
        }

        v30 = v115;
        v38 = v116;
        v34 = v117;
        v33 = v118;
      }

      else
      {
        v49 = 0.0;
      }

      v50 = obj;

LABEL_47:
      v33 += v38;
      v35 = v35 + v49;

      ++v34;
      v107 = [v30 rowsLayouts];
      v108 = [v107 count];
    }

    while (v34 < v108);
  }

  [v8 endUpdates];
  v109 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v110 = v109;
    v111 = [v129 taskIdentifier];
    *buf = 134218242;
    v148 = v8;
    v149 = 2114;
    v150 = v111;
    _os_log_impl(&dword_1D825C000, v110, OS_LOG_TYPE_DEFAULT, "Finished collection layout, blueprint=%p, task-identifier=%{public}@", buf, 0x16u);
  }
}

- (id)childColumnLayoutForRowLayout:(id)a3 display:(id)a4 collectionContainerBlueprint:(id)a5 childContainerComponentBlueprint:(id)a6 documentColumnLayout:(id)a7 unitConverter:(id)a8
{
  v65 = a3;
  v14 = a4;
  v15 = a5;
  v63 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [v16 documentLayout];
  v19 = [v15 componentLayout];
  v20 = [v18 width];
  v21 = [v18 width];
  v61 = self;
  v22 = [(SXCollectionLayouter *)self columnCalculator];
  v23 = v16;
  [v16 contentScaleFactor];
  v24 = *MEMORY[0x1E69DDCE0];
  v25 = *(MEMORY[0x1E69DDCE0] + 8);
  v26 = *(MEMORY[0x1E69DDCE0] + 16);
  v27 = *(MEMORY[0x1E69DDCE0] + 24);
  v62 = v18;
  v29 = [v22 columnLayoutWithViewportSize:v18 constrainedToWidth:v20 documentLayout:v21 contentScaleFactor:v20 safeAreaInsets:{v28, *MEMORY[0x1E69DDCE0], v25, v26, v27}];

  v30 = [v19 columnRange];
  v60 = v19;
  [v29 widthForColumnRange:v30 ignoreMargin:v31 ignoreGutter:objc_msgSend(v19 ignoreViewportPadding:{"ignoreDocumentMargin"), objc_msgSend(v19, "ignoreDocumentGutter"), objc_msgSend(v19, "ignoreViewportPadding")}];
  v33 = v32;
  v34 = v15;
  v35 = [v15 layoutBlueprint];
  v36 = [v35 componentIdentifiers];
  v64 = v14;
  v37 = +[SXCollectionCalculator layoutWithCollectionDisplay:width:numberOfComponents:unitConverter:](SXCollectionCalculator, "layoutWithCollectionDisplay:width:numberOfComponents:unitConverter:", v14, [v36 count], v17, v33);

  v38 = [v37 rowsLayouts];
  v39 = [v38 objectEnumerator];

  v40 = 0;
  do
  {
    v41 = v40;
    v40 = [v39 nextObject];

    if (!v40)
    {
      break;
    }

    v42 = [v40 intendedComponentsPerRow];
  }

  while (v42 != [v40 componentsPerRow]);
  [v40 componentWidth];
  v44 = v43;
  v45 = [SXDocumentLayout alloc];
  v46 = [v23 gutter];
  v47 = [v34 componentLayout];
  [v47 columnRange];
  v49 = [(SXDocumentLayout *)v45 initWithWidth:v44 margin:0 gutter:v46 columns:v48];

  v50 = [v63 componentSizer];
  [v50 contentInsetsWithUnitConverter:v17];
  v52 = v51;
  v54 = v53;

  [v65 componentWidth];
  v56 = v55 - (v52 + v54);
  v57 = [(SXCollectionLayouter *)v61 columnCalculator];
  v58 = [v57 columnLayoutWithConstrainedViewportSize:v49 viewportSize:v56 documentLayout:v56 safeAreaInsets:{v56, v56, v24, v25, v26, v27}];

  return v58;
}

- (SXLayouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end