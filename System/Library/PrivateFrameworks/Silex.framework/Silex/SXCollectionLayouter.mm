@interface SXCollectionLayouter
- (SXCollectionLayouter)initWithContainerComponent:(id)component layouterFactory:(id)factory columnCalculator:(id)calculator unitConverterFactory:(id)converterFactory;
- (SXLayouterDelegate)delegate;
- (id)childColumnLayoutForRowLayout:(id)layout display:(id)display collectionContainerBlueprint:(id)blueprint childContainerComponentBlueprint:(id)componentBlueprint documentColumnLayout:(id)columnLayout unitConverter:(id)converter;
- (void)layoutBlueprint:(id)blueprint columnLayout:(id)layout description:(id)description shouldContinue:(BOOL *)continue;
@end

@implementation SXCollectionLayouter

- (SXCollectionLayouter)initWithContainerComponent:(id)component layouterFactory:(id)factory columnCalculator:(id)calculator unitConverterFactory:(id)converterFactory
{
  componentCopy = component;
  factoryCopy = factory;
  calculatorCopy = calculator;
  converterFactoryCopy = converterFactory;
  v18.receiver = self;
  v18.super_class = SXCollectionLayouter;
  v15 = [(SXCollectionLayouter *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_containerComponentBlueprint, component);
    objc_storeStrong(&v16->_layouterFactory, factory);
    objc_storeStrong(&v16->_columnCalculator, calculator);
    objc_storeStrong(&v16->_unitConverterFactory, converterFactory);
  }

  return v16;
}

- (void)layoutBlueprint:(id)blueprint columnLayout:(id)layout description:(id)description shouldContinue:(BOOL *)continue
{
  v151 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  layoutCopy = layout;
  descriptionCopy = description;
  v9 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    taskIdentifier = [descriptionCopy taskIdentifier];
    *buf = 134218242;
    v148 = blueprintCopy;
    v149 = 2114;
    v150 = taskIdentifier;
    _os_log_impl(&dword_1D825C000, v10, OS_LOG_TYPE_DEFAULT, "Starting collection layout, blueprint=%p, task-identifier=%{public}@", buf, 0x16u);
  }

  containerComponentBlueprint = [(SXCollectionLayouter *)self containerComponentBlueprint];
  component = [containerComponentBlueprint component];

  containerComponentBlueprint2 = [(SXCollectionLayouter *)self containerComponentBlueprint];
  componentLayout = [containerComponentBlueprint2 componentLayout];

  v114 = component;
  contentDisplay = [component contentDisplay];
  containerComponentBlueprint3 = [(SXCollectionLayouter *)self containerComponentBlueprint];
  columnRange = [containerComponentBlueprint3 columnRange];
  v113 = componentLayout;
  [layoutCopy widthForColumnRange:columnRange ignoreMargin:v19 ignoreGutter:objc_msgSend(componentLayout ignoreViewportPadding:{"ignoreDocumentMargin"), objc_msgSend(componentLayout, "ignoreDocumentGutter"), objc_msgSend(componentLayout, "ignoreViewportPadding")}];
  v21 = v20;

  [blueprintCopy startUpdatesForWidth:v21];
  unitConverterFactory = [(SXCollectionLayouter *)self unitConverterFactory];
  containerComponentBlueprint4 = [(SXCollectionLayouter *)self containerComponentBlueprint];
  parentLayoutBlueprint = [containerComponentBlueprint4 parentLayoutBlueprint];
  [parentLayoutBlueprint blueprintSize];
  v26 = v25;
  layoutOptions = [blueprintCopy layoutOptions];
  v28 = [unitConverterFactory createUnitConverterWithComponentWidth:layoutOptions parentWidth:v21 layoutOptions:v26];

  componentIdentifiers = [blueprintCopy componentIdentifiers];
  v124 = contentDisplay;
  v112 = v28;
  v30 = +[SXCollectionCalculator layoutWithCollectionDisplay:width:numberOfComponents:unitConverter:](SXCollectionCalculator, "layoutWithCollectionDisplay:width:numberOfComponents:unitConverter:", contentDisplay, [componentIdentifiers count], v28, v21);

  rowsLayouts = [v30 rowsLayouts];
  v32 = [rowsLayouts count];

  if (v32)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0.0;
    v122 = blueprintCopy;
    v115 = v30;
    do
    {
      rowsLayouts2 = [v30 rowsLayouts];
      v37 = [rowsLayouts2 objectAtIndex:v34];

      v128 = v37;
      componentsPerRow = [v37 componentsPerRow];
      componentIdentifiers2 = [blueprintCopy componentIdentifiers];
      v40 = [componentIdentifiers2 subarrayWithRange:{v33, componentsPerRow}];

      if (v34)
      {
        [v30 spaceBetweenRows];
        v35 = v35 + v41;
      }

      unitConverterFactory2 = [(SXCollectionLayouter *)self unitConverterFactory];
      [v128 componentWidth];
      v44 = v43;
      layoutOptions2 = [blueprintCopy layoutOptions];
      v127 = [unitConverterFactory2 createUnitConverterWithComponentWidth:layoutOptions2 parentWidth:v44 layoutOptions:v21];

      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      obj = v40;
      v46 = [obj countByEnumeratingWithState:&v140 objects:v146 count:16];
      if (v46)
      {
        v116 = componentsPerRow;
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
            v55 = [blueprintCopy componentBlueprintForComponentIdentifier:v53];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v56 = SXLayoutLog;
              if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
              {
                v57 = v56;
                component2 = [v55 component];
                identifier = [component2 identifier];
                taskIdentifier2 = [descriptionCopy taskIdentifier];
                *buf = 138543618;
                v148 = identifier;
                v149 = 2114;
                v150 = taskIdentifier2;
                _os_log_impl(&dword_1D825C000, v57, OS_LOG_TYPE_DEFAULT, "Calculating size and position, component-identifier=%{public}@, task-identifier=%{public}@", buf, 0x16u);
              }

              layoutBlueprint = [v55 layoutBlueprint];
              componentLayout2 = [v55 componentLayout];
              minimumHeight = [componentLayout2 minimumHeight];
              [v127 convertValueToPoints:{minimumHeight, v64}];
              v66 = v65;

              containerComponentBlueprint5 = [(SXCollectionLayouter *)self containerComponentBlueprint];
              v68 = [(SXCollectionLayouter *)self childColumnLayoutForRowLayout:v128 display:v124 collectionContainerBlueprint:containerComponentBlueprint5 childContainerComponentBlueprint:v55 documentColumnLayout:layoutCopy unitConverter:v127];

              [v68 setMinimumHeight:v66];
              layouterFactory = [(SXCollectionLayouter *)self layouterFactory];
              delegate = [(SXCollectionLayouter *)self delegate];
              v71 = [layouterFactory layouterForContainerComponentBlueprint:v55 delegate:delegate];

              [v71 layoutBlueprint:layoutBlueprint columnLayout:v68 description:descriptionCopy shouldContinue:continue];
              componentSizer = [v55 componentSizer];
              [componentSizer contentInsetsWithUnitConverter:v127];
              v74 = v73;
              v76 = v75;

              [v128 componentWidth];
              v78 = v77;
              [layoutBlueprint blueprintSize];
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
              blueprintCopy = v122;
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
          componentsPerRow = v116;
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
              v92 = [blueprintCopy componentBlueprintForComponentIdentifier:v91];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                layoutBlueprint2 = [v92 layoutBlueprint];
                v132 = 0u;
                v133 = 0u;
                v134 = 0u;
                v135 = 0u;
                componentIdentifiers3 = [layoutBlueprint2 componentIdentifiers];
                v95 = [componentIdentifiers3 countByEnumeratingWithState:&v132 objects:v144 count:16];
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
                        objc_enumerationMutation(componentIdentifiers3);
                      }

                      [layoutBlueprint2 invalidatePositionForComponentWithIdentifier:*(*(&v132 + 1) + 8 * i)];
                    }

                    v96 = [componentIdentifiers3 countByEnumeratingWithState:&v132 objects:v144 count:16];
                  }

                  while (v96);
                }

                containerComponentBlueprint6 = [(SXCollectionLayouter *)self containerComponentBlueprint];
                v100 = [(SXCollectionLayouter *)self childColumnLayoutForRowLayout:v128 display:v124 collectionContainerBlueprint:containerComponentBlueprint6 childContainerComponentBlueprint:v92 documentColumnLayout:layoutCopy unitConverter:v127];

                [v100 setMinimumHeight:v49];
                layouterFactory2 = [(SXCollectionLayouter *)self layouterFactory];
                delegate2 = [(SXCollectionLayouter *)self delegate];
                v103 = [layouterFactory2 layouterForContainerComponentBlueprint:v92 delegate:delegate2];

                [v103 layoutBlueprint:layoutBlueprint2 columnLayout:v100 description:descriptionCopy shouldContinue:continue];
                [v128 componentWidth];
                v105 = v104;
                [layoutBlueprint2 blueprintSize];
                if (v106 < v49)
                {
                  v106 = v49;
                }

                blueprintCopy = v122;
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
        componentsPerRow = v116;
        v34 = v117;
        v33 = v118;
      }

      else
      {
        v49 = 0.0;
      }

      v50 = obj;

LABEL_47:
      v33 += componentsPerRow;
      v35 = v35 + v49;

      ++v34;
      rowsLayouts3 = [v30 rowsLayouts];
      v108 = [rowsLayouts3 count];
    }

    while (v34 < v108);
  }

  [blueprintCopy endUpdates];
  v109 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v110 = v109;
    taskIdentifier3 = [descriptionCopy taskIdentifier];
    *buf = 134218242;
    v148 = blueprintCopy;
    v149 = 2114;
    v150 = taskIdentifier3;
    _os_log_impl(&dword_1D825C000, v110, OS_LOG_TYPE_DEFAULT, "Finished collection layout, blueprint=%p, task-identifier=%{public}@", buf, 0x16u);
  }
}

- (id)childColumnLayoutForRowLayout:(id)layout display:(id)display collectionContainerBlueprint:(id)blueprint childContainerComponentBlueprint:(id)componentBlueprint documentColumnLayout:(id)columnLayout unitConverter:(id)converter
{
  layoutCopy = layout;
  displayCopy = display;
  blueprintCopy = blueprint;
  componentBlueprintCopy = componentBlueprint;
  columnLayoutCopy = columnLayout;
  converterCopy = converter;
  documentLayout = [columnLayoutCopy documentLayout];
  componentLayout = [blueprintCopy componentLayout];
  width = [documentLayout width];
  width2 = [documentLayout width];
  selfCopy = self;
  columnCalculator = [(SXCollectionLayouter *)self columnCalculator];
  v23 = columnLayoutCopy;
  [columnLayoutCopy contentScaleFactor];
  v24 = *MEMORY[0x1E69DDCE0];
  v25 = *(MEMORY[0x1E69DDCE0] + 8);
  v26 = *(MEMORY[0x1E69DDCE0] + 16);
  v27 = *(MEMORY[0x1E69DDCE0] + 24);
  v62 = documentLayout;
  v29 = [columnCalculator columnLayoutWithViewportSize:documentLayout constrainedToWidth:width documentLayout:width2 contentScaleFactor:width safeAreaInsets:{v28, *MEMORY[0x1E69DDCE0], v25, v26, v27}];

  columnRange = [componentLayout columnRange];
  v60 = componentLayout;
  [v29 widthForColumnRange:columnRange ignoreMargin:v31 ignoreGutter:objc_msgSend(componentLayout ignoreViewportPadding:{"ignoreDocumentMargin"), objc_msgSend(componentLayout, "ignoreDocumentGutter"), objc_msgSend(componentLayout, "ignoreViewportPadding")}];
  v33 = v32;
  v34 = blueprintCopy;
  layoutBlueprint = [blueprintCopy layoutBlueprint];
  componentIdentifiers = [layoutBlueprint componentIdentifiers];
  v64 = displayCopy;
  v37 = +[SXCollectionCalculator layoutWithCollectionDisplay:width:numberOfComponents:unitConverter:](SXCollectionCalculator, "layoutWithCollectionDisplay:width:numberOfComponents:unitConverter:", displayCopy, [componentIdentifiers count], converterCopy, v33);

  rowsLayouts = [v37 rowsLayouts];
  objectEnumerator = [rowsLayouts objectEnumerator];

  nextObject = 0;
  do
  {
    v41 = nextObject;
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    intendedComponentsPerRow = [nextObject intendedComponentsPerRow];
  }

  while (intendedComponentsPerRow != [nextObject componentsPerRow]);
  [nextObject componentWidth];
  v44 = v43;
  v45 = [SXDocumentLayout alloc];
  gutter = [v23 gutter];
  componentLayout2 = [v34 componentLayout];
  [componentLayout2 columnRange];
  v49 = [(SXDocumentLayout *)v45 initWithWidth:v44 margin:0 gutter:gutter columns:v48];

  componentSizer = [componentBlueprintCopy componentSizer];
  [componentSizer contentInsetsWithUnitConverter:converterCopy];
  v52 = v51;
  v54 = v53;

  [layoutCopy componentWidth];
  v56 = v55 - (v52 + v54);
  columnCalculator2 = [(SXCollectionLayouter *)selfCopy columnCalculator];
  v58 = [columnCalculator2 columnLayoutWithConstrainedViewportSize:v49 viewportSize:v56 documentLayout:v56 safeAreaInsets:{v56, v56, v24, v25, v26, v27}];

  return v58;
}

- (SXLayouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end