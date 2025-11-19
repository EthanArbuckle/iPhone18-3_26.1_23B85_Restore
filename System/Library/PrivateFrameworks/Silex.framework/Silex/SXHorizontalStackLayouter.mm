@interface SXHorizontalStackLayouter
- (SXLayouterDelegate)delegate;
- (double)calculateSizeForComponentWithBlueprint:(void *)a3 width:(double)a4 layoutContext:;
- (double)calculateSizeForContainerComponentWithBlueprint:(void *)a3 width:(void *)a4 layoutContext:(uint64_t)a5 layoutDescription:(double)a6 shouldContinue:;
- (id)childColumnLayoutForContainerComponentWidth:(void *)a3 componentWidth:(void *)a4 componentBlueprint:(double)a5 columnLayout:(double)a6 unitConverter:;
- (id)initWithContainerComponent:(void *)a3 layouterFactory:(void *)a4 columnCalculator:(void *)a5 layoutContextFactory:(void *)a6 unitConverterFactory:;
- (void)calculatePositionForComponentWithBlueprint:layout:unitConverter:margin:maximumY:layoutBlueprint:;
- (void)layoutBlueprint:(id)a3 columnLayout:(id)a4 description:(id)a5 shouldContinue:(BOOL *)a6;
@end

@implementation SXHorizontalStackLayouter

- (SXLayouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (id)initWithContainerComponent:(void *)a3 layouterFactory:(void *)a4 columnCalculator:(void *)a5 layoutContextFactory:(void *)a6 unitConverterFactory:
{
  v18 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = SXHorizontalStackLayouter;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    a1 = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
      objc_storeStrong(a1 + 4, a4);
      objc_storeStrong(a1 + 5, a5);
      objc_storeStrong(a1 + 6, a6);
    }
  }

  return a1;
}

- (void)layoutBlueprint:(id)a3 columnLayout:(id)a4 description:(id)a5 shouldContinue:(BOOL *)a6
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
    v16 = [v194 taskIdentifier];
    OUTLINED_FUNCTION_2_1(v16, 3.8521e-34);
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

  v18 = [v17 layoutBlueprint];
  v19 = [v18 componentIdentifiers];
  v20 = [v19 copy];

  if (v204)
  {
    v21 = v204[2];
  }

  else
  {
    v21 = 0;
  }

  v22 = [v21 componentLayout];
  if (v204)
  {
    v23 = v204[2];
  }

  else
  {
    v23 = 0;
  }

  v24 = [v23 componentSizer];
  v25 = [v24 shouldIgnoreMarginsForColumnLayout:v193];

  if (v204)
  {
    v26 = v204[2];
  }

  else
  {
    v26 = 0;
  }

  v27 = [v26 componentSizer];
  v28 = [v27 shouldIgnoreViewportPaddingForColumnLayout:v193];

  if (v204)
  {
    v29 = v204[2];
  }

  else
  {
    v29 = 0;
  }

  v30 = [v29 columnRange];
  [v193 widthForColumnRange:v30 ignoreMargin:v31 ignoreGutter:v25 ignoreViewportPadding:{objc_msgSend(v22, "ignoreDocumentGutter"), v28}];
  v33 = v32;
  v191 = v22;
  if (v204)
  {
    v34 = v204[6];
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  v36 = [v13 layoutOptions];
  v195 = [v35 createUnitConverterWithComponentWidth:v36 parentWidth:0.0 layoutOptions:v33];

  v201 = objc_alloc_init(SXHorizontalStackLayoutCalculator);
  v200 = [MEMORY[0x1E695DF70] array];
  v205 = [MEMORY[0x1E695DF70] array];
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
          [v200 addObject:v42];
        }

        else
        {
          v30 = [v43 componentLayout];
          v45 = [v30 minimumWidth];
          [v195 convertValueToPoints:{v45, v46}];
          v48 = fmax(v47, 0.0);
          v49 = [v30 maximumWidth];
          [v195 convertValueToPoints:{v49, v50}];
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
          [v205 addObject:v42];
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
          [v200 removeObject:v59];
          [v205 removeObject:v59];
        }
      }

      v56 = [v54 countByEnumeratingWithState:&v224 objects:v236 count:16];
    }

    while (v56);
  }

  v62 = [v13 componentIdentifiers];

  v63 = [[SXComponentDependencyResolver alloc] initWithComponentIdentifiers:v62];
  [v13 setDependencySolver:v63];
  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  obj = v62;
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
        v67 = [v66 component];
        v68 = [v67 anchor];

        if (v68)
        {
          v67 = [v68 targetComponentIdentifier];

          if (!v67)
          {
            v218 = 0u;
            v219 = 0u;
            v216 = 0u;
            v217 = 0u;
            v71 = v205;
            v78 = [v71 countByEnumeratingWithState:&v216 objects:v234 count:16];
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
                    objc_enumerationMutation(v71);
                  }

                  OUTLINED_FUNCTION_4_0();
                  v87 = SXComponentDependencyCreate(v82, v83, v84, v85, v86);
                  OUTLINED_FUNCTION_3_0(v87);
                }

                v79 = [v71 countByEnumeratingWithState:&v216 objects:v234 count:16];
              }

              while (v79);
            }

            goto LABEL_55;
          }

          v67 = [v68 targetComponentIdentifier];
          v69 = [obj containsObject:v67];

          if (v69)
          {
            v67 = [v68 targetComponentIdentifier];
            v70 = SXComponentDependencyCreate(v65, v67, 1, 1, 0);
            [(SXComponentDependencyResolver *)v63 addDependency:v70];

            if ([v68 targetAnchorPosition] == 3 || objc_msgSend(v68, "targetAnchorPosition") == 2)
            {
              v71 = [v68 targetComponentIdentifier];
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
          v89 = v205;
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
  v196 = [(SXComponentDependencyResolver *)v63 solvableOrder];
  v203 = [v196 countByEnumeratingWithState:&v208 objects:v232 count:16];
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
          objc_enumerationMutation(v196);
        }

        v104 = *(*(&v208 + 1) + 8 * v103);
        v105 = [(SXFullscreenCaption *)v104 text];
        v106 = [v13 componentBlueprintForComponentIdentifier:v105];
        v107 = [v106 componentSizer];
        [v106 suggestedSizeAfterInvalidation];
        [v107 setSuggestedSize:?];

        [v206 widthForIdentifier:v105];
        v109 = v108;
        v110 = [v106 componentLayout];
        v111 = [v110 margin];

        v112 = v204;
        if (v204)
        {
          v112 = v204[6];
        }

        v113 = v112;
        v114 = [v13 layoutOptions];
        v115 = [v113 createUnitConverterWithComponentWidth:v114 parentWidth:v109 layoutOptions:v33];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v116 = v106;
          v117 = [v116 layoutBlueprint];
          if ([v117 isComplete])
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
            v149 = [v106 component];
            v150 = [v149 identifier];
            v151 = [v194 taskIdentifier];
            OUTLINED_FUNCTION_1_2(v151, v152, v153, v154, v155, v156, v157, v158, v190, v191, v192, v193, v159);
            _os_log_impl(&dword_1D825C000, v148, OS_LOG_TYPE_DEFAULT, "Calculating position, component-identifier=%{public}@, task-identifier=%{public}@", v160, 0x16u);
          }

          v13 = v207;
          [SXHorizontalStackLayouter calculatePositionForComponentWithBlueprint:layout:unitConverter:margin:maximumY:layoutBlueprint:];
          [v207 updatePosition:v105 forComponentWithIdentifier:?];
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
              v121 = [v106 component];
              v122 = [v121 identifier];
              v123 = [v194 taskIdentifier];
              OUTLINED_FUNCTION_1_2(v123, v124, v125, v126, v127, v128, v129, v130, v190, v191, v192, v193, v131);
              _os_log_impl(&dword_1D825C000, v120, OS_LOG_TYPE_DEFAULT, "Calculating size, component-identifier=%{public}@, task-identifier=%{public}@", v132, 0x16u);

              v13 = v207;
            }

            v133 = [v106 componentLayout];
            v134 = [v133 minimumHeight];
            OUTLINED_FUNCTION_0_7(v134, v135);
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
              v166 = [v111 top];
              OUTLINED_FUNCTION_0_7(v166, v167);
              v169 = v109 + v168;
              v170 = [v111 bottom];
              OUTLINED_FUNCTION_0_7(v170, v171);
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
                  v140 = [v111 top];
                  OUTLINED_FUNCTION_0_7(v140, v141);
                  v143 = v102 - v142;
                  v144 = [v111 bottom];
                  OUTLINED_FUNCTION_0_7(v144, v145);
                  [v13 updateSize:v105 forComponentWithIdentifier:{v109, fmax(v143 - v146, 0.0)}];
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
                v178 = [v111 top];
                OUTLINED_FUNCTION_0_7(v178, v179);
                v181 = v109 + v180;
                v182 = [v111 bottom];
                OUTLINED_FUNCTION_0_7(v182, v183);
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
      v186 = [v196 countByEnumeratingWithState:&v208 objects:v232 count:16];
      v203 = v186;
    }

    while (v186);
  }

  [v13 endUpdates];
  v187 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v188 = v187;
    v189 = [v194 taskIdentifier];
    OUTLINED_FUNCTION_2_1(v189, 3.8521e-34);
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
    v18 = [v11 component];
    v19 = [v18 identifier];
    [v12 positionForIdentifier:v19];

    v20 = [v11 component];
    v21 = [v20 anchor];

    if (v21)
    {
      v22 = [v21 targetComponentIdentifier];
      if (!v22 || (v23 = v22, [v21 targetComponentIdentifier], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(v9 + 16), "component"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "identifier"), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v24, v23, v24 == v26))
      {
        [v21 targetAnchorPosition];
        [v11 frame];
        CGRectGetHeight(v40);
        [v21 originAnchorPosition];
      }

      else
      {
        v27 = [v21 targetComponentIdentifier];
        [v12 widthForIdentifier:v27];
        v29 = v28;

        if (v29 > 0.0)
        {
          v30 = [v21 targetComponentIdentifier];
          v31 = [v15 componentBlueprintForComponentIdentifier:v30];

          if ([v21 range] == 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend(v31, "component"), v32 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v32, (isKindOfClass & 1) == 0))
          {
            [v31 frame];
            CGRectGetMinY(v41);
            [v31 frame];
            CGRectGetHeight(v42);
            [v21 targetAnchorPosition];
          }

          else
          {
            v34 = [v31 componentSizer];
            [v31 frame];
            CGRectGetMinY(v39);
            v35 = [v21 range];
            [v34 verticalPositionForRange:{v35, v36}];
          }

          [v11 frame];
          CGRectGetHeight(v43);
          [v21 originAnchorPosition];
        }
      }

      [v11 frame];
      CGRectGetHeight(v44);
      v37 = [v14 bottom];
      [v13 convertValueToPoints:{v37, v38}];
    }
  }

  OUTLINED_FUNCTION_8_0();
}

- (id)childColumnLayoutForContainerComponentWidth:(void *)a3 componentWidth:(void *)a4 componentBlueprint:(double)a5 columnLayout:(double)a6 unitConverter:
{
  v6 = a1;
  if (a1)
  {
    v11 = a4;
    v12 = a3;
    v13 = a2;
    v14 = [SXDocumentLayout alloc];
    v15 = [v12 gutter];

    v16 = [(SXDocumentLayout *)v14 initWithWidth:a5 margin:0 gutter:v15 columns:1];
    v17 = [v13 componentSizer];

    [v17 contentInsetsWithUnitConverter:v11];
    v19 = v18;
    v21 = v20;

    v6 = [v6[4] columnLayoutWithConstrainedViewportSize:v16 viewportSize:a6 - (v19 + v21) documentLayout:a6 - (v19 + v21) safeAreaInsets:{a6 - (v19 + v21), a6 - (v19 + v21), *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  }

  return v6;
}

- (double)calculateSizeForContainerComponentWithBlueprint:(void *)a3 width:(void *)a4 layoutContext:(uint64_t)a5 layoutDescription:(double)a6 shouldContinue:
{
  if (!a1)
  {
    return 0.0;
  }

  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = [v13 layoutBlueprint];
  v15 = a1[3];
  v16 = [a1 delegate];
  v17 = [v15 layouterForContainerComponentBlueprint:v13 delegate:v16];

  v18 = [v12 columnLayout];
  [v17 layoutBlueprint:v14 columnLayout:v18 description:v11 shouldContinue:a5];

  v19 = [v13 componentSizer];

  v20 = [v12 unitConverter];

  [v19 contentInsetsWithUnitConverter:v20];
  [v14 blueprintSize];

  return a6;
}

- (double)calculateSizeForComponentWithBlueprint:(void *)a3 width:(double)a4 layoutContext:
{
  if (!a1)
  {
    return 0.0;
  }

  v6 = a3;
  v7 = a2;
  v8 = [v7 componentSizer];
  v9 = [v6 unitConverter];
  [v8 contentInsetsWithUnitConverter:v9];
  v11 = v10;
  v13 = v12;

  v14 = [v7 componentSizer];

  [v14 calculateHeightForWidth:v6 layoutContext:{fmax(a4 - (v11 + v13), 0.0)}];
  return a4;
}

@end