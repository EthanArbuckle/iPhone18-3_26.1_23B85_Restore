@interface SXHorizontalStackLayouter
- (SXLayouterDelegate)delegate;
- (double)calculateSizeForComponentWithBlueprint:(void *)blueprint width:(double)width layoutContext:;
- (double)calculateSizeForContainerComponentWithBlueprint:(void *)blueprint width:(void *)width layoutContext:(uint64_t)context layoutDescription:(double)description shouldContinue:;
- (id)childColumnLayoutForContainerComponentWidth:(void *)width componentWidth:(void *)componentWidth componentBlueprint:(double)blueprint columnLayout:(double)layout unitConverter:;
- (id)initWithContainerComponent:(void *)component layouterFactory:(void *)factory columnCalculator:(void *)calculator layoutContextFactory:(void *)contextFactory unitConverterFactory:;
- (void)calculatePositionForComponentWithBlueprint:layout:unitConverter:margin:maximumY:layoutBlueprint:;
- (void)layoutBlueprint:(id)blueprint columnLayout:(id)layout description:(id)description shouldContinue:(BOOL *)continue;
@end

@implementation SXHorizontalStackLayouter

- (SXLayouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (id)initWithContainerComponent:(void *)component layouterFactory:(void *)factory columnCalculator:(void *)calculator layoutContextFactory:(void *)contextFactory unitConverterFactory:
{
  v18 = a2;
  componentCopy = component;
  factoryCopy = factory;
  calculatorCopy = calculator;
  contextFactoryCopy = contextFactory;
  if (self)
  {
    v19.receiver = self;
    v19.super_class = SXHorizontalStackLayouter;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    self = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 2, a2);
      objc_storeStrong(self + 3, component);
      objc_storeStrong(self + 4, factory);
      objc_storeStrong(self + 5, calculator);
      objc_storeStrong(self + 6, contextFactory);
    }
  }

  return self;
}

- (void)layoutBlueprint:(id)blueprint columnLayout:(id)layout description:(id)description shouldContinue:(BOOL *)continue
{
  OUTLINED_FUNCTION_9_0();
  v192 = v6;
  v8 = v7;
  v10 = v9;
  v204 = v11;
  v239 = *MEMORY[0x1E69E9840];
  v13 = v12;
  v193 = v10;
  v194 = v8;
  v14 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    taskIdentifier = [v194 taskIdentifier];
    OUTLINED_FUNCTION_2_1(taskIdentifier, 3.8521e-34);
    _os_log_impl(&dword_1D825C000, v15, OS_LOG_TYPE_DEFAULT, "Starting horizontal stack layout, blueprint=%p, task-identifier=%{public}@", v238, 0x16u);
  }

  if (v204)
  {
    v17 = v204[2];
  }

  else
  {
    v17 = 0;
  }

  layoutBlueprint = [v17 layoutBlueprint];
  componentIdentifiers = [layoutBlueprint componentIdentifiers];
  v20 = [componentIdentifiers copy];

  if (v204)
  {
    v21 = v204[2];
  }

  else
  {
    v21 = 0;
  }

  componentLayout = [v21 componentLayout];
  if (v204)
  {
    v23 = v204[2];
  }

  else
  {
    v23 = 0;
  }

  componentSizer = [v23 componentSizer];
  v25 = [componentSizer shouldIgnoreMarginsForColumnLayout:v193];

  if (v204)
  {
    v26 = v204[2];
  }

  else
  {
    v26 = 0;
  }

  componentSizer2 = [v26 componentSizer];
  v28 = [componentSizer2 shouldIgnoreViewportPaddingForColumnLayout:v193];

  if (v204)
  {
    v29 = v204[2];
  }

  else
  {
    v29 = 0;
  }

  columnRange = [v29 columnRange];
  [v193 widthForColumnRange:columnRange ignoreMargin:v31 ignoreGutter:v25 ignoreViewportPadding:{objc_msgSend(componentLayout, "ignoreDocumentGutter"), v28}];
  v33 = v32;
  v191 = componentLayout;
  if (v204)
  {
    v34 = v204[6];
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  layoutOptions = [v13 layoutOptions];
  v195 = [v35 createUnitConverterWithComponentWidth:layoutOptions parentWidth:0.0 layoutOptions:v33];

  v201 = objc_alloc_init(SXHorizontalStackLayoutCalculator);
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v228 = 0u;
  v229 = 0u;
  v230 = 0u;
  v231 = 0u;
  v37 = v20;
  v38 = [v37 countByEnumeratingWithState:&v228 objects:v237 count:16];
  v207 = v13;
  if (v38)
  {
    v39 = v38;
    v40 = *v229;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v229 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v228 + 1) + 8 * i);
        v43 = [v13 componentBlueprintForComponentIdentifier:v42];
        [v43 component];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_7_0();
        v44 = OUTLINED_FUNCTION_6_0();

        if (v44)
        {
          [(SXHorizontalStackLayoutCalculator *)v201 addFlexibleItemWithIdentifier:v42];
          [array addObject:v42];
        }

        else
        {
          columnRange = [v43 componentLayout];
          minimumWidth = [columnRange minimumWidth];
          [v195 convertValueToPoints:{minimumWidth, v46}];
          v48 = fmax(v47, 0.0);
          maximumWidth = [columnRange maximumWidth];
          [v195 convertValueToPoints:{maximumWidth, v50}];
          v52 = fmax(v51, 0.0);
          if (v52 >= 0.00000011920929)
          {
            v53 = v52;
          }

          else
          {
            v53 = v33;
          }

          [(SXHorizontalStackLayoutCalculator *)v201 addItemWithMinimumWidth:v42 maximumWidth:v48 identifier:v53];
          [array2 addObject:v42];
        }

        v13 = v207;
      }

      v39 = [v37 countByEnumeratingWithState:&v228 objects:v237 count:16];
    }

    while (v39);
  }

  v206 = [(SXHorizontalStackLayoutCalculator *)v201 layoutForComponentWidth:v33];
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v54 = v37;
  v55 = [v54 countByEnumeratingWithState:&v224 objects:v236 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v225;
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v225 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v224 + 1) + 8 * j);
        [v206 widthForIdentifier:v59];
        if (v60 < 2.22044605e-16)
        {
          v61 = [v13 componentBlueprintForComponentIdentifier:v59];
          [v61 setHidden:1];
          [array removeObject:v59];
          [array2 removeObject:v59];
        }
      }

      v56 = [v54 countByEnumeratingWithState:&v224 objects:v236 count:16];
    }

    while (v56);
  }

  componentIdentifiers2 = [v13 componentIdentifiers];

  v63 = [[SXComponentDependencyResolver alloc] initWithComponentIdentifiers:componentIdentifiers2];
  [v13 setDependencySolver:v63];
  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  obj = componentIdentifiers2;
  v202 = [obj countByEnumeratingWithState:&v220 objects:v235 count:16];
  if (v202)
  {
    v198 = *v221;
    do
    {
      for (k = 0; k != v202; ++k)
      {
        if (*v221 != v198)
        {
          objc_enumerationMutation(obj);
        }

        v65 = *(*(&v220 + 1) + 8 * k);
        v66 = [v13 componentBlueprintForComponentIdentifier:v65];
        component = [v66 component];
        anchor = [component anchor];

        if (anchor)
        {
          component = [anchor targetComponentIdentifier];

          if (!component)
          {
            v218 = 0u;
            v219 = 0u;
            v216 = 0u;
            v217 = 0u;
            targetComponentIdentifier = array2;
            v78 = [targetComponentIdentifier countByEnumeratingWithState:&v216 objects:v234 count:16];
            if (v78)
            {
              v79 = v78;
              v80 = *v217;
              do
              {
                for (m = 0; m != v79; ++m)
                {
                  if (*v217 != v80)
                  {
                    objc_enumerationMutation(targetComponentIdentifier);
                  }

                  OUTLINED_FUNCTION_4_0();
                  v87 = SXComponentDependencyCreate(v82, v83, v84, v85, v86);
                  OUTLINED_FUNCTION_3_0(v87);
                }

                v79 = [targetComponentIdentifier countByEnumeratingWithState:&v216 objects:v234 count:16];
              }

              while (v79);
            }

            goto LABEL_55;
          }

          component = [anchor targetComponentIdentifier];
          v69 = [obj containsObject:component];

          if (v69)
          {
            component = [anchor targetComponentIdentifier];
            v70 = SXComponentDependencyCreate(v65, component, 1, 1, 0);
            [(SXComponentDependencyResolver *)v63 addDependency:v70];

            if ([anchor targetAnchorPosition] == 3 || objc_msgSend(anchor, "targetAnchorPosition") == 2)
            {
              targetComponentIdentifier = [anchor targetComponentIdentifier];
              OUTLINED_FUNCTION_4_0();
              v77 = SXComponentDependencyCreate(v72, v73, v74, v75, v76);
              OUTLINED_FUNCTION_3_0(v77);

LABEL_55:
            }
          }
        }

        [v66 component];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_7_0();
        v88 = OUTLINED_FUNCTION_6_0();

        if (v88)
        {
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v89 = array2;
          v90 = [v89 countByEnumeratingWithState:&v212 objects:v233 count:16];
          if (v90)
          {
            v91 = v90;
            v92 = *v213;
            do
            {
              for (n = 0; n != v91; ++n)
              {
                if (*v213 != v92)
                {
                  objc_enumerationMutation(v89);
                }

                v94 = SXComponentDependencyCreate(v65, *(*(&v212 + 1) + 8 * n), 2, 2, 0);
                OUTLINED_FUNCTION_3_0(v94);
              }

              v91 = [v89 countByEnumeratingWithState:&v212 objects:v233 count:16];
            }

            while (v91);
          }

          OUTLINED_FUNCTION_4_0();
          v100 = SXComponentDependencyCreate(v95, v96, v97, v98, v99);
          OUTLINED_FUNCTION_3_0(v100);
        }

        v13 = v207;
      }

      v202 = [obj countByEnumeratingWithState:&v220 objects:v235 count:16];
    }

    while (v202);
  }

  [v13 startUpdatesForWidth:v33];
  [v193 minimumHeight];
  v102 = v101;
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  solvableOrder = [(SXComponentDependencyResolver *)v63 solvableOrder];
  v203 = [solvableOrder countByEnumeratingWithState:&v208 objects:v232 count:16];
  if (v203)
  {
    v199 = *v209;
    do
    {
      v103 = 0;
      do
      {
        if (*v209 != v199)
        {
          objc_enumerationMutation(solvableOrder);
        }

        v104 = *(*(&v208 + 1) + 8 * v103);
        text = [(SXFullscreenCaption *)v104 text];
        v106 = [v13 componentBlueprintForComponentIdentifier:text];
        componentSizer3 = [v106 componentSizer];
        [v106 suggestedSizeAfterInvalidation];
        [componentSizer3 setSuggestedSize:?];

        [v206 widthForIdentifier:text];
        v109 = v108;
        componentLayout2 = [v106 componentLayout];
        margin = [componentLayout2 margin];

        v112 = v204;
        if (v204)
        {
          v112 = v204[6];
        }

        v113 = v112;
        layoutOptions2 = [v13 layoutOptions];
        v115 = [v113 createUnitConverterWithComponentWidth:layoutOptions2 parentWidth:v109 layoutOptions:v33];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v116 = v106;
          layoutBlueprint2 = [v116 layoutBlueprint];
          if ([layoutBlueprint2 isComplete])
          {
            v118 = [v116 hasValidLayout] ^ 1;
          }

          else
          {
            v118 = 1;
          }
        }

        else
        {
          v118 = 0;
        }

        if ((![v106 hasValidPosition] || v118) && -[SXFullscreenCaption caption](v104) == 1)
        {
          v147 = SXLayoutLog;
          if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
          {
            v148 = v147;
            component2 = [v106 component];
            identifier = [component2 identifier];
            taskIdentifier2 = [v194 taskIdentifier];
            OUTLINED_FUNCTION_1_2(taskIdentifier2, v152, v153, v154, v155, v156, v157, v158, v190, v191, v192, v193, v159);
            _os_log_impl(&dword_1D825C000, v148, OS_LOG_TYPE_DEFAULT, "Calculating position, component-identifier=%{public}@, task-identifier=%{public}@", v160, 0x16u);
          }

          v13 = v207;
          [SXHorizontalStackLayouter calculatePositionForComponentWithBlueprint:layout:unitConverter:margin:maximumY:layoutBlueprint:];
          [v207 updatePosition:text forComponentWithIdentifier:?];
        }

        else if (v118 & 1 | (([v106 hasValidSize] & 1) == 0))
        {
          v13 = v207;
          if ([(SXFullscreenCaption *)v104 caption]== 2)
          {
            v119 = SXLayoutLog;
            if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
            {
              v120 = v119;
              component3 = [v106 component];
              identifier2 = [component3 identifier];
              taskIdentifier3 = [v194 taskIdentifier];
              OUTLINED_FUNCTION_1_2(taskIdentifier3, v124, v125, v126, v127, v128, v129, v130, v190, v191, v192, v193, v131);
              _os_log_impl(&dword_1D825C000, v120, OS_LOG_TYPE_DEFAULT, "Calculating size, component-identifier=%{public}@, task-identifier=%{public}@", v132, 0x16u);

              v13 = v207;
            }

            componentLayout3 = [v106 componentLayout];
            minimumHeight = [componentLayout3 minimumHeight];
            OUTLINED_FUNCTION_0_7(minimumHeight, v135);
            v137 = v136;

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v161 = [(SXHorizontalStackLayouter *)v204 childColumnLayoutForContainerComponentWidth:v106 componentWidth:v193 componentBlueprint:v115 columnLayout:v33 unitConverter:v109];
              [v161 setMinimumHeight:v137];
              if (v204)
              {
                v162 = v204[5];
              }

              else
              {
                v162 = 0;
              }

              v163 = [v162 createLayoutContextForColumnLayout:v161 unitConverter:v115];
              v164 = [(SXHorizontalStackLayouter *)v204 calculateSizeForContainerComponentWithBlueprint:v106 width:v163 layoutContext:v194 layoutDescription:v192 shouldContinue:v109];
              OUTLINED_FUNCTION_5_0(v164, v165);
              v166 = [margin top];
              OUTLINED_FUNCTION_0_7(v166, v167);
              v169 = v109 + v168;
              bottom = [margin bottom];
              OUTLINED_FUNCTION_0_7(bottom, v171);
              v173 = v169 + v172;
              if (v102 < v173)
              {
                v102 = v173;
              }
            }

            else
            {
              [v106 component];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_7_0();
              v138 = OUTLINED_FUNCTION_6_0();

              if (v138)
              {
                [v106 component];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_7_0();
                v139 = OUTLINED_FUNCTION_6_0();

                if (v139)
                {
                  v140 = [margin top];
                  OUTLINED_FUNCTION_0_7(v140, v141);
                  v143 = v102 - v142;
                  bottom2 = [margin bottom];
                  OUTLINED_FUNCTION_0_7(bottom2, v145);
                  [v13 updateSize:text forComponentWithIdentifier:{v109, fmax(v143 - v146, 0.0)}];
                }
              }

              else
              {
                if (v204)
                {
                  v174 = v204[5];
                }

                else
                {
                  v174 = 0;
                }

                v175 = [v174 createLayoutContextForColumnLayout:v193 unitConverter:v115];
                v176 = [(SXHorizontalStackLayouter *)v204 calculateSizeForComponentWithBlueprint:v106 width:v175 layoutContext:v109];
                OUTLINED_FUNCTION_5_0(v176, v177);
                v178 = [margin top];
                OUTLINED_FUNCTION_0_7(v178, v179);
                v181 = v109 + v180;
                bottom3 = [margin bottom];
                OUTLINED_FUNCTION_0_7(bottom3, v183);
                v185 = v181 + v184;
                if (v102 < v185)
                {
                  v102 = v185;
                }
              }
            }
          }
        }

        else
        {
          v13 = v207;
        }

        ++v103;
      }

      while (v203 != v103);
      v186 = [solvableOrder countByEnumeratingWithState:&v208 objects:v232 count:16];
      v203 = v186;
    }

    while (v186);
  }

  [v13 endUpdates];
  v187 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v188 = v187;
    taskIdentifier4 = [v194 taskIdentifier];
    OUTLINED_FUNCTION_2_1(taskIdentifier4, 3.8521e-34);
    _os_log_impl(&dword_1D825C000, v188, OS_LOG_TYPE_DEFAULT, "Finished horizontal stack layout, blueprint=%p, task-identifier=%{public}@", v238, 0x16u);
  }

  OUTLINED_FUNCTION_8_0();
}

- (void)calculatePositionForComponentWithBlueprint:layout:unitConverter:margin:maximumY:layoutBlueprint:
{
  OUTLINED_FUNCTION_9_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v7;
  v13 = v5;
  v14 = v3;
  v15 = v1;
  if (v9)
  {
    v16 = [v14 top];
    [v13 convertValueToPoints:{v16, v17}];
    component = [v11 component];
    identifier = [component identifier];
    [v12 positionForIdentifier:identifier];

    component2 = [v11 component];
    anchor = [component2 anchor];

    if (anchor)
    {
      targetComponentIdentifier = [anchor targetComponentIdentifier];
      if (!targetComponentIdentifier || (v23 = targetComponentIdentifier, [anchor targetComponentIdentifier], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(v9 + 16), "component"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "identifier"), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v24, v23, v24 == v26))
      {
        [anchor targetAnchorPosition];
        [v11 frame];
        CGRectGetHeight(v40);
        [anchor originAnchorPosition];
      }

      else
      {
        targetComponentIdentifier2 = [anchor targetComponentIdentifier];
        [v12 widthForIdentifier:targetComponentIdentifier2];
        v29 = v28;

        if (v29 > 0.0)
        {
          targetComponentIdentifier3 = [anchor targetComponentIdentifier];
          v31 = [v15 componentBlueprintForComponentIdentifier:targetComponentIdentifier3];

          if ([anchor range] == 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend(v31, "component"), v32 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v32, (isKindOfClass & 1) == 0))
          {
            [v31 frame];
            CGRectGetMinY(v41);
            [v31 frame];
            CGRectGetHeight(v42);
            [anchor targetAnchorPosition];
          }

          else
          {
            componentSizer = [v31 componentSizer];
            [v31 frame];
            CGRectGetMinY(v39);
            range = [anchor range];
            [componentSizer verticalPositionForRange:{range, v36}];
          }

          [v11 frame];
          CGRectGetHeight(v43);
          [anchor originAnchorPosition];
        }
      }

      [v11 frame];
      CGRectGetHeight(v44);
      bottom = [v14 bottom];
      [v13 convertValueToPoints:{bottom, v38}];
    }
  }

  OUTLINED_FUNCTION_8_0();
}

- (id)childColumnLayoutForContainerComponentWidth:(void *)width componentWidth:(void *)componentWidth componentBlueprint:(double)blueprint columnLayout:(double)layout unitConverter:
{
  selfCopy = self;
  if (self)
  {
    componentWidthCopy = componentWidth;
    widthCopy = width;
    v13 = a2;
    v14 = [SXDocumentLayout alloc];
    gutter = [widthCopy gutter];

    v16 = [(SXDocumentLayout *)v14 initWithWidth:blueprint margin:0 gutter:gutter columns:1];
    componentSizer = [v13 componentSizer];

    [componentSizer contentInsetsWithUnitConverter:componentWidthCopy];
    v19 = v18;
    v21 = v20;

    selfCopy = [selfCopy[4] columnLayoutWithConstrainedViewportSize:v16 viewportSize:layout - (v19 + v21) documentLayout:layout - (v19 + v21) safeAreaInsets:{layout - (v19 + v21), layout - (v19 + v21), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  }

  return selfCopy;
}

- (double)calculateSizeForContainerComponentWithBlueprint:(void *)blueprint width:(void *)width layoutContext:(uint64_t)context layoutDescription:(double)description shouldContinue:
{
  if (!self)
  {
    return 0.0;
  }

  widthCopy = width;
  blueprintCopy = blueprint;
  v13 = a2;
  layoutBlueprint = [v13 layoutBlueprint];
  v15 = self[3];
  delegate = [self delegate];
  v17 = [v15 layouterForContainerComponentBlueprint:v13 delegate:delegate];

  columnLayout = [blueprintCopy columnLayout];
  [v17 layoutBlueprint:layoutBlueprint columnLayout:columnLayout description:widthCopy shouldContinue:context];

  componentSizer = [v13 componentSizer];

  unitConverter = [blueprintCopy unitConverter];

  [componentSizer contentInsetsWithUnitConverter:unitConverter];
  [layoutBlueprint blueprintSize];

  return description;
}

- (double)calculateSizeForComponentWithBlueprint:(void *)blueprint width:(double)width layoutContext:
{
  if (!self)
  {
    return 0.0;
  }

  blueprintCopy = blueprint;
  v7 = a2;
  componentSizer = [v7 componentSizer];
  unitConverter = [blueprintCopy unitConverter];
  [componentSizer contentInsetsWithUnitConverter:unitConverter];
  v11 = v10;
  v13 = v12;

  componentSizer2 = [v7 componentSizer];

  [componentSizer2 calculateHeightForWidth:blueprintCopy layoutContext:{fmax(width - (v11 + v13), 0.0)}];
  return width;
}

@end