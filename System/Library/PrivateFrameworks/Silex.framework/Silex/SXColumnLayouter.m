@interface SXColumnLayouter
- (BOOL)anchorPossibleForComponentWithBlueprint:(id)a3 anchoredToComponentWithBlueprint:(id)a4 layoutBlueprint:(id)a5 columnStack:(id)a6;
- (BOOL)componentBlueprint:(id)a3 shouldIntersectWithComponentBlueprint:(id)a4;
- (BOOL)intersectionPossibleForComponentWithBlueprint:(id)a3 anchoredToComponentWithBlueprint:(id)a4 layoutBlueprint:(id)a5 columnStack:(id)a6;
- (BOOL)stack:(id)a3 stackComponents:(id)a4 containsComponentIncludingAnchoredComponents:(id)a5 forSourceComponent:(id)a6;
- (CGPoint)calculatePositionForComponentNode:(id)a3 columnLayout:(id)a4 layoutBlueprint:(id)a5;
- (CGSize)calculateSizeForComponentNode:(id)a3 columnLayout:(id)a4 layoutBlueprint:(id)a5 dependencyResolver:(id)a6;
- (SXColumnLayouter)initWithLayouterFactory:(id)a3 layoutContextFactory:(id)a4 unitConverterFactory:(id)a5;
- (SXLayouterDelegate)delegate;
- (double)factorForLayoutAttribute:(int)a3;
- (id)columnStackForLayoutBlueprint:(id)a3 columnLayout:(id)a4;
- (id)findComponentStackBeforeComponent:(id)a3 inColumnStack:(id)a4;
- (id)sortComponentDependencies:(id)a3 forBlueprint:(id)a4;
- (int)layoutAttributeForAnchor:(int64_t)a3;
- (void)analyzeSnapLinesForLayoutBlueprint:(id)a3;
- (void)createDependenciesForLayoutBlueprint:(id)a3 columnStack:(id)a4 inDependencyResolver:(id)a5;
- (void)layoutBlueprint:(id)a3 columnLayout:(id)a4 description:(id)a5 shouldContinue:(BOOL *)a6;
@end

@implementation SXColumnLayouter

- (SXColumnLayouter)initWithLayouterFactory:(id)a3 layoutContextFactory:(id)a4 unitConverterFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXColumnLayouter;
  v12 = [(SXColumnLayouter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_layouterFactory, a3);
    objc_storeStrong(&v13->_layoutContextFactory, a4);
    objc_storeStrong(&v13->_unitConverterFactory, a5);
  }

  return v13;
}

- (void)layoutBlueprint:(id)a3 columnLayout:(id)a4 description:(id)a5 shouldContinue:(BOOL *)a6
{
  v96 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v82 = a5;
  v11 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v82 taskIdentifier];
    *buf = 134218242;
    v93 = v9;
    v94 = 2114;
    v95 = v13;
    _os_log_impl(&dword_1D825C000, v12, OS_LOG_TYPE_DEFAULT, "Starting column layout, blueprint=%p, task-identifier=%{public}@", buf, 0x16u);
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  intersectionCache = self->_intersectionCache;
  self->_intersectionCache = v14;

  *a6 = 1;
  [v10 widthForColumnRange:0 ignoreMargin:objc_msgSend(v10 ignoreGutter:"numberOfColumns") ignoreViewportPadding:{3, 3, 3}];
  v17 = v16;
  [v9 startUpdatesForWidth:?];
  v18 = [(SXColumnLayouter *)self columnStackForLayoutBlueprint:v9 columnLayout:v10];
  v19 = [SXComponentDependencyResolver alloc];
  v20 = [v9 componentIdentifiers];
  v21 = [(SXComponentDependencyResolver *)v19 initWithComponentIdentifiers:v20];

  [v9 setDependencySolver:v21];
  v79 = v18;
  [(SXColumnLayouter *)self createDependenciesForLayoutBlueprint:v9 columnStack:v18 inDependencyResolver:v21];
  v80 = v21;
  [(SXComponentDependencyResolver *)v21 solvableOrder];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v90 = 0u;
  v22 = [obj countByEnumeratingWithState:&v87 objects:v91 count:16];
  if (!v22)
  {
    goto LABEL_39;
  }

  v23 = v22;
  v85 = *v88;
  v81 = v10;
  v83 = self;
  while (2)
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v88 != v85)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v87 + 1) + 8 * i);
      v26 = [(SXFullscreenCaption *)v25 text];
      v27 = [v9 componentBlueprintForComponentIdentifier:v26];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
        v29 = [v28 layoutBlueprint];
        if ([v29 isComplete])
        {
          v30 = [v28 hasValidLayout] ^ 1;
        }

        else
        {
          LOBYTE(v30) = 1;
        }
      }

      else
      {
        LOBYTE(v30) = 0;
      }

      v31 = [v27 componentSizer];
      [v27 suggestedSizeAfterInvalidation];
      [v31 setSuggestedSize:?];

      v32 = [v27 componentSizer];
      v33 = [v27 componentState];
      [v32 setComponentState:v33];

      if (-[SXFullscreenCaption caption](v25) == 1 && v30 & 1 | (([v27 hasValidPosition] & 1) == 0))
      {
        v34 = SXLayoutLog;
        if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v34;
          v36 = [v27 component];
          v37 = [v36 identifier];
          v38 = [v82 taskIdentifier];
          *buf = 138543618;
          v93 = v37;
          v94 = 2114;
          v95 = v38;
          _os_log_impl(&dword_1D825C000, v35, OS_LOG_TYPE_DEFAULT, "Calculating position, component-identifier=%{public}@, task-identifier=%{public}@", buf, 0x16u);

          v10 = v81;
          self = v83;
        }

        [(SXColumnLayouter *)self calculatePositionForComponentNode:v25 columnLayout:v10 layoutBlueprint:v9];
        v40 = v39;
        v42 = v41;
        v43 = [(SXFullscreenCaption *)v25 text];
        [v9 updatePosition:v43 forComponentWithIdentifier:{v40, v42}];
      }

      else
      {
        if (-[SXFullscreenCaption caption](v25) != 2 || !(v30 & 1 | (([v27 hasValidSize] & 1) == 0)))
        {
          goto LABEL_29;
        }

        v44 = SXLayoutLog;
        if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
        {
          v45 = v44;
          v46 = [v27 component];
          v47 = [v46 identifier];
          v48 = [v82 taskIdentifier];
          *buf = 138543618;
          v93 = v47;
          v94 = 2114;
          v95 = v48;
          _os_log_impl(&dword_1D825C000, v45, OS_LOG_TYPE_DEFAULT, "Calculating size, component-identifier=%{public}@, task-identifier=%{public}@", buf, 0x16u);

          v10 = v81;
          self = v83;
        }

        [(SXColumnLayouter *)self calculateSizeForComponentNode:v25 columnLayout:v10 layoutBlueprint:v9 dependencyResolver:v80];
        v50 = v49;
        v52 = v51;
        v53 = [v27 component];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          unitConverterFactory = self->_unitConverterFactory;
          v56 = v27;
          v57 = [v9 layoutOptions];
          v58 = [(SXUnitConverterFactory *)unitConverterFactory createUnitConverterWithComponentWidth:v57 parentWidth:v50 layoutOptions:v17];

          v59 = [v10 columnLayoutForComponentBlueprint:v56 unitConverter:v58];
          layouterFactory = v83->_layouterFactory;
          WeakRetained = objc_loadWeakRetained(&v83->_delegate);
          v62 = [(SXLayouterFactory *)layouterFactory layouterForContainerComponentBlueprint:v56 delegate:WeakRetained];

          v63 = [v56 layoutBlueprint];
          [v62 layoutBlueprint:v63 columnLayout:v59 description:v82 shouldContinue:a6];

          v64 = [v56 componentSizer];
          [v64 contentInsetsWithUnitConverter:v58];
          v66 = v65;
          v68 = v67;

          v69 = [v56 layoutBlueprint];

          [v69 blueprintSize];
          v52 = v68 + v66 + v70;

          [v59 minimumHeight];
          if (v52 < v71)
          {
            v52 = v71;
          }

          v10 = v81;
          self = v83;
        }

        v43 = [(SXFullscreenCaption *)v25 text];
        [v9 updateSize:v43 forComponentWithIdentifier:{v50, v52}];
      }

LABEL_29:
      if ([v27 hasValidLayout])
      {
        v72 = *a6;
        if (v72)
        {
          v73 = [(SXColumnLayouter *)self delegate];
          v74 = objc_opt_respondsToSelector();

          if (v74)
          {
            v75 = [(SXColumnLayouter *)self delegate];
            [v75 layouter:self didFinishLayoutForComponentBlueprint:v27 layoutBlueprint:v9 shouldContinueLayout:a6];
          }

          v72 = *a6;
        }

        if (!v72)
        {

          goto LABEL_39;
        }
      }
    }

    v23 = [obj countByEnumeratingWithState:&v87 objects:v91 count:16];
    if (v23)
    {
      continue;
    }

    break;
  }

LABEL_39:

  [(SXColumnLayouter *)self analyzeSnapLinesForLayoutBlueprint:v9];
  [v9 endUpdates];
  v76 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v77 = v76;
    v78 = [v82 taskIdentifier];
    *buf = 134218242;
    v93 = v9;
    v94 = 2114;
    v95 = v78;
    _os_log_impl(&dword_1D825C000, v77, OS_LOG_TYPE_DEFAULT, "Finished column layout, blueprint=%p, task-identifier=%{public}@", buf, 0x16u);
  }
}

- (void)createDependenciesForLayoutBlueprint:(id)a3 columnStack:(id)a4 inDependencyResolver:(id)a5
{
  v251 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v188 = a4;
  v8 = a5;
  v164 = [MEMORY[0x1E695DF90] dictionary];
  v239 = 0u;
  v240 = 0u;
  v241 = 0u;
  v242 = 0u;
  obj = [v7 componentIdentifiers];
  v197 = v7;
  v210 = v8;
  v167 = [obj countByEnumeratingWithState:&v239 objects:v250 count:16];
  if (v167)
  {
    v166 = *v240;
    do
    {
      v9 = 0;
      do
      {
        if (*v240 != v166)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v169 = v9;
        v207 = *(*(&v239 + 1) + 8 * v9);
        v179 = [v7 componentBlueprintForComponentIdentifier:?];
        v194 = [v179 component];
        v11 = [v194 classification];
        v12 = [v11 isCollapsible];

        if (v12)
        {
          v13 = [v194 anchor];
          v14 = [v13 targetComponentIdentifier];
          v15 = [v7 componentBlueprintForComponentIdentifier:v14];

          if (!v15 || ![(SXColumnLayouter *)self intersectionPossibleForComponentWithBlueprint:v179 anchoredToComponentWithBlueprint:v15 layoutBlueprint:v7 columnStack:v188])
          {
            v16 = SXComponentDependencyCreate(v207, v207, 1, 2, 0);
            [(SXComponentDependencyResolver *)v8 addDependency:v16];
          }
        }

        v17 = [v188 componentsBeforeComponent:v179];
        v235 = 0u;
        v236 = 0u;
        v237 = 0u;
        v238 = 0u;
        v171 = v17;
        v176 = [v17 countByEnumeratingWithState:&v235 objects:v249 count:16];
        if (v176)
        {
          v173 = *v236;
          do
          {
            v18 = 0;
            do
            {
              if (*v236 != v173)
              {
                objc_enumerationMutation(v171);
              }

              v182 = v18;
              v19 = *(*(&v235 + 1) + 8 * v18);
              v20 = [v19 component];
              v21 = [v194 anchor];
              v22 = [v20 identifier];
              v198 = v21;
              v23 = [v21 targetComponentIdentifier];
              v24 = [v22 isEqualToString:v23];

              v185 = v20;
              v25 = [v20 anchor];
              v26 = [v25 targetComponentIdentifier];
              v27 = [v194 identifier];
              v28 = [v26 isEqualToString:v27];

              if (v24)
              {
                v29 = v198;
                if (!-[SXColumnLayouter componentBlueprint:shouldIntersectWithComponentBlueprint:](self, "componentBlueprint:shouldIntersectWithComponentBlueprint:", v179, v19) || [v198 range] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_39;
                }

                if ((v28 & 1) == 0)
                {
                  v30 = self;
                  v31 = v179;
                  v32 = v19;
                  goto LABEL_25;
                }
              }

              else
              {
                v29 = v198;
                if (!v28)
                {
                  goto LABEL_39;
                }

                if (![(SXColumnLayouter *)self componentBlueprint:v19 shouldIntersectWithComponentBlueprint:v179])
                {
                  goto LABEL_39;
                }

                v33 = [v19 component];
                v34 = [v33 anchor];
                v35 = [v34 range];

                if (v35 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_39;
                }
              }

              v30 = self;
              v31 = v19;
              v32 = v179;
LABEL_25:
              if ([(SXColumnLayouter *)v30 intersectionPossibleForComponentWithBlueprint:v31 anchoredToComponentWithBlueprint:v32 layoutBlueprint:v7 columnStack:v188])
              {
                v36 = [(SXColumnLayouter *)self findComponentStackBeforeComponent:v19 inColumnStack:v188];
                v231 = 0u;
                v232 = 0u;
                v233 = 0u;
                v234 = 0u;
                v191 = v36;
                v204 = [v36 countByEnumeratingWithState:&v231 objects:v248 count:16];
                if (!v204)
                {
                  goto LABEL_54;
                }

                v201 = *v232;
                while (1)
                {
                  for (i = 0; i != v204; i = i + 1)
                  {
                    if (*v232 != v201)
                    {
                      objc_enumerationMutation(v191);
                    }

                    v38 = *(*(&v231 + 1) + 8 * i);
                    v39 = [v38 identifier];
                    v40 = [v7 componentBlueprintForComponentIdentifier:v39];

                    v41 = [SXComponentLayoutAttributeDescriptor descriptorWithFromLayoutAttribute:2 toLayoutAttribute:0 ignoreMargin:?];
                    v42 = [v38 identifier];
                    v43 = SXComponentDependencyCreate(v207, v42, 1, 1, v41);
                    [(SXComponentDependencyResolver *)v210 addDependency:v43];

                    v44 = [v38 identifier];
                    v45 = SXComponentDependencyCreate(v207, v44, 1, 2, v41);
                    [(SXComponentDependencyResolver *)v210 addDependency:v45];

                    v46 = [v38 anchor];
                    v47 = [v46 targetComponentIdentifier];
                    if (v47)
                    {
                      v48 = v47;
                      v49 = [v194 anchor];
                      v50 = [v49 targetComponentIdentifier];
                      v51 = [v38 anchor];
                      v52 = [v51 targetComponentIdentifier];

                      v7 = v197;
                      v53 = v50 == v52;
                      v29 = v198;
                      if (v53)
                      {
                        goto LABEL_36;
                      }

                      v54 = [v38 anchor];
                      v55 = [v54 targetComponentIdentifier];
                      v46 = [v197 componentBlueprintForComponentIdentifier:v55];

                      if ([(SXColumnLayouter *)self intersectionPossibleForComponentWithBlueprint:v40 anchoredToComponentWithBlueprint:v46 layoutBlueprint:v197 columnStack:v188])
                      {
                        v56 = [SXComponentLayoutAttributeDescriptor descriptorWithFromLayoutAttribute:2 toLayoutAttribute:0 ignoreMargin:?];
                        v57 = [v46 component];
                        v58 = [v57 identifier];
                        v59 = SXComponentDependencyCreate(v207, v58, 1, 1, v56);
                        [(SXComponentDependencyResolver *)v210 addDependency:v59];

                        v60 = [v46 component];
                        v61 = [v60 identifier];
                        v7 = v197;
                        v62 = SXComponentDependencyCreate(v207, v61, 1, 2, v56);
                        [(SXComponentDependencyResolver *)v210 addDependency:v62];

                        v29 = v198;
                      }
                    }

LABEL_36:
                  }

                  v204 = [v191 countByEnumeratingWithState:&v231 objects:v248 count:16];
                  if (!v204)
                  {
                    v8 = v210;
                    goto LABEL_54;
                  }
                }
              }

LABEL_39:
              v63 = [SXComponentLayoutAttributeDescriptor descriptorWithFromLayoutAttribute:2 toLayoutAttribute:0 ignoreMargin:?];
              v64 = [v185 identifier];
              v65 = SXComponentDependencyCreate(v207, v64, 1, 1, v63);
              [(SXComponentDependencyResolver *)v8 addDependency:v65];

              v66 = [v185 identifier];
              v191 = v63;
              v67 = SXComponentDependencyCreate(v207, v66, 1, 2, v63);
              [(SXComponentDependencyResolver *)v8 addDependency:v67];

              v68 = [v185 anchor];
              v69 = v68;
              if (v68)
              {
                v70 = [v68 targetComponentIdentifier];
                if (v70)
                {
                  v71 = v70;
                  v72 = [v69 targetComponentIdentifier];
                  v73 = [v29 targetComponentIdentifier];
                  if (([v72 isEqualToString:v73] & 1) == 0)
                  {

LABEL_45:
                    v75 = [v185 anchor];
                    v76 = [v75 targetComponentIdentifier];
                    v77 = [v7 componentBlueprintForComponentIdentifier:v76];

                    v78 = [v179 columnRange];
                    v80 = v79;
                    v255.location = [v77 columnRange];
                    v255.length = v81;
                    v252.location = v78;
                    v252.length = v80;
                    if (NSIntersectionRange(v252, v255).length)
                    {
                      v82 = [(SXColumnLayouter *)self intersectionPossibleForComponentWithBlueprint:v19 anchoredToComponentWithBlueprint:v77 layoutBlueprint:v7 columnStack:v188];
                      if (([v171 containsObject:v77] & 1) == 0 && v82)
                      {
                        v83 = [v194 identifier];
                        v84 = [v77 component];
                        v85 = [v84 identifier];
                        v86 = [v83 isEqualToString:v85];

                        if ((v86 & 1) == 0)
                        {
                          v87 = [SXComponentLayoutAttributeDescriptor descriptorWithFromLayoutAttribute:2 toLayoutAttribute:0 ignoreMargin:?];
                          v88 = [v77 component];
                          v89 = [v88 identifier];
                          v90 = SXComponentDependencyCreate(v207, v89, 1, 1, v87);
                          [(SXComponentDependencyResolver *)v8 addDependency:v90];

                          v91 = [v77 component];
                          v92 = [v91 identifier];
                          v93 = SXComponentDependencyCreate(v207, v92, 1, 2, v87);
                          [(SXComponentDependencyResolver *)v8 addDependency:v93];

                          if ([v77 hasValidSize])
                          {
                            v94 = [v77 component];
                            v95 = [v94 identifier];
                            [v7 invalidateSizeForComponentWithIdentifier:v95];
                          }

                          v29 = v198;
                        }
                      }
                    }

                    goto LABEL_53;
                  }

                  v74 = [v29 range];

                  if (v74 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_45;
                  }
                }
              }

LABEL_53:

LABEL_54:
              v18 = v182 + 1;
            }

            while (v182 + 1 != v176);
            v176 = [v171 countByEnumeratingWithState:&v235 objects:v249 count:16];
          }

          while (v176);
        }

        v9 = v169 + 1;
      }

      while (v169 + 1 != v167);
      v167 = [obj countByEnumeratingWithState:&v239 objects:v250 count:16];
    }

    while (v167);
  }

  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v96 = [v7 componentIdentifiers];
  v97 = [v96 countByEnumeratingWithState:&v227 objects:v247 count:16];
  if (!v97)
  {
    goto LABEL_110;
  }

  v98 = v97;
  v195 = *v228;
  v180 = v96;
  do
  {
    for (j = 0; j != v98; ++j)
    {
      if (*v228 != v195)
      {
        objc_enumerationMutation(v96);
      }

      v100 = *(*(&v227 + 1) + 8 * j);
      v101 = [v7 componentBlueprintForComponentIdentifier:v100];
      v102 = [v101 component];
      v103 = [v102 anchor];
      if (v103)
      {
        v199 = v100;
        v104 = v103;
        v202 = v102;
        if ([v103 originAnchorPosition])
        {
          v105 = [v104 originAnchorPosition];
        }

        else
        {
          v105 = [v104 targetAnchorPosition];
        }

        v106 = [(SXColumnLayouter *)self layoutAttributeForAnchor:v105];
        v192 = -[SXColumnLayouter layoutAttributeForAnchor:](self, "layoutAttributeForAnchor:", [v104 targetAnchorPosition]);
        v107 = [v104 targetComponentIdentifier];

        if (!v107)
        {
          v102 = v202;
          v103 = v104;
          if (!v106)
          {
            goto LABEL_108;
          }

          v205 = v104;
          v109 = SXComponentDependencyCreate(v199, v199, 1, 2, 0);
          [(SXComponentDependencyResolver *)v8 addDependency:v109];
          goto LABEL_107;
        }

        v186 = v106;
        v205 = v104;
        v108 = [v104 targetComponentIdentifier];
        v109 = [v7 componentBlueprintForComponentIdentifier:v108];

        if (v109)
        {
          if ([(SXColumnLayouter *)self componentBlueprint:v101 shouldIntersectWithComponentBlueprint:v109])
          {
            v110 = [v205 range] != 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v110 = 0;
          }

          v183 = v101;
          v112 = [v101 columnRange];
          v114 = v113;
          v256.location = [v109 columnRange];
          v256.length = v115;
          v253.location = v112;
          v253.length = v114;
          if (NSIntersectionRange(v253, v256).length && !v110)
          {
            v8 = v210;
            v96 = v180;
            v101 = v183;
LABEL_79:
            v102 = v202;
LABEL_107:

            v103 = v205;
            goto LABEL_108;
          }

          v111 = [v205 targetComponentIdentifier];
          if ([v205 range] == 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v205, "range"), v116 == 0x7FFFFFFFFFFFFFFFLL))
          {
            v117 = [SXComponentLayoutAttributeDescriptor descriptorWithFromLayoutAttribute:v186 toLayoutAttribute:v192 ignoreMargin:1];
            v101 = v183;
            v8 = v210;
            if (![(SXColumnLayouter *)self anchorPossibleForComponentWithBlueprint:v183 anchoredToComponentWithBlueprint:v109 layoutBlueprint:v7 columnStack:v188])
            {
              goto LABEL_105;
            }
          }

          else
          {
            v174 = j;
            v118 = [v205 range];
            v117 = [SXTextComponentLayoutAttributeDescriptor descriptorWithFromLayoutAttribute:v186 toLayoutAttribute:v192 ignoreMargin:1 withRange:v118, v119];
            v101 = v183;
            v120 = [v183 columnRange];
            v122 = v121;
            v257.location = [v109 columnRange];
            v257.length = v123;
            v254.location = v120;
            v254.length = v122;
            v8 = v210;
            if (NSIntersectionRange(v254, v257).length)
            {
              if (![(SXColumnLayouter *)self intersectionPossibleForComponentWithBlueprint:v183 anchoredToComponentWithBlueprint:v109 layoutBlueprint:v7 columnStack:v188])
              {
                j = v174;
                goto LABEL_105;
              }

              v170 = v109;
              v172 = v98;
              v124 = SXComponentDependencyCreate(v111, v199, 2, 2, v117);
              [(SXComponentDependencyResolver *)v210 addDependency:v124];

              v177 = v117;
              v125 = SXComponentDependencyCreate(v199, v111, 1, 2, v117);
              [(SXComponentDependencyResolver *)v210 addDependency:v125];

              v126 = SXComponentDependencyCreate(v111, v111, 2, 1, 0);
              [(SXComponentDependencyResolver *)v210 addDependency:v126];

              v127 = [(SXComponentDependencyResolver *)v210 componentNodeForComponentIdentifier:v199 andAttribute:1];
              v223 = 0u;
              v224 = 0u;
              v225 = 0u;
              v226 = 0u;
              v168 = v127;
              v208 = [(SXComponentNode *)v127 dependencies];
              v128 = [v208 countByEnumeratingWithState:&v223 objects:v246 count:16];
              if (v128)
              {
                v129 = v128;
                v130 = *v224;
                do
                {
                  for (k = 0; k != v129; ++k)
                  {
                    if (*v224 != v130)
                    {
                      objc_enumerationMutation(v208);
                    }

                    v132 = *(*(*(&v223 + 1) + 8 * k) + 16);
                    v133 = [v7 componentBlueprintForComponentIdentifier:v132];
                    if (([v132 isEqualToString:v111] & 1) == 0)
                    {
                      v134 = [v133 component];
                      [v134 anchor];
                      v136 = v135 = v111;
                      v137 = [v136 targetComponentIdentifier];
                      v138 = [v137 isEqualToString:v135];

                      v111 = v135;
                      if ((v138 & 1) == 0)
                      {
                        v139 = SXComponentDependencyCreate(v135, v132, 2, 1, 0);
                        [(SXComponentDependencyResolver *)v210 addDependency:v139];

                        v140 = SXComponentDependencyCreate(v135, v132, 2, 2, 0);
                        v111 = v135;
                        [(SXComponentDependencyResolver *)v210 addDependency:v140];
                      }
                    }

                    v7 = v197;
                  }

                  v129 = [v208 countByEnumeratingWithState:&v223 objects:v246 count:16];
                }

                while (v129);
              }

              v8 = v210;
              v98 = v172;
              j = v174;
              v109 = v170;
              v117 = v177;
            }

            else
            {
              j = v174;
              if (![(SXColumnLayouter *)self anchorPossibleForComponentWithBlueprint:v183 anchoredToComponentWithBlueprint:v109 layoutBlueprint:v7 columnStack:v188])
              {
                goto LABEL_105;
              }
            }
          }

          v141 = j;
          v142 = SXComponentDependencyCreate(v199, v111, 1, 1, v117);
          [(SXComponentDependencyResolver *)v8 addDependency:v142];

          if (v186 | v192)
          {
            v143 = SXComponentDependencyCreate(v199, v111, 1, 2, v117);
            [(SXComponentDependencyResolver *)v8 addDependency:v143];

            if (v186)
            {
              v144 = SXComponentDependencyCreate(v199, v199, 1, 2, 0);
              [(SXComponentDependencyResolver *)v8 addDependency:v144];
            }
          }

          v145 = [v164 objectForKey:v111];
          if (!v145)
          {
            v145 = [MEMORY[0x1E695DF70] array];
            [v164 setObject:v145 forKey:v111];
          }

          v146 = [v202 identifier];
          [v145 addObject:v146];

          j = v141;
          v101 = v183;
LABEL_105:

          v96 = v180;
        }

        else
        {
          if (!v106)
          {
            goto LABEL_79;
          }

          v111 = SXComponentDependencyCreate(v199, v199, 2, 1, 0);
          [(SXComponentDependencyResolver *)v8 addDependency:v111];
        }

        v102 = v202;

        goto LABEL_107;
      }

LABEL_108:
    }

    v98 = [v96 countByEnumeratingWithState:&v227 objects:v247 count:16];
  }

  while (v98);
LABEL_110:

  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  v181 = v164;
  v178 = [v181 countByEnumeratingWithState:&v219 objects:v245 count:16];
  if (v178)
  {
    v175 = *v220;
    do
    {
      v147 = 0;
      do
      {
        if (*v220 != v175)
        {
          objc_enumerationMutation(v181);
        }

        v187 = v147;
        v148 = *(*(&v219 + 1) + 8 * v147);
        v196 = [v181 objectForKey:v148];
        v149 = [(SXComponentDependencyResolver *)v8 componentNodeForComponentIdentifier:v148 andAttribute:1];
        v215 = 0u;
        v216 = 0u;
        v217 = 0u;
        v218 = 0u;
        v184 = v149;
        v190 = [(SXComponentNode *)v149 dependencies];
        v200 = [v190 countByEnumeratingWithState:&v215 objects:v244 count:16];
        if (v200)
        {
          v193 = *v216;
          do
          {
            v150 = 0;
            do
            {
              if (*v216 != v193)
              {
                objc_enumerationMutation(v190);
              }

              v203 = v150;
              v151 = *(*(&v215 + 1) + 8 * v150);
              v206 = [SXComponentLayoutAttributeDescriptor descriptorWithFromLayoutAttribute:2 toLayoutAttribute:0 ignoreMargin:?];
              v211 = 0u;
              v212 = 0u;
              v213 = 0u;
              v214 = 0u;
              v152 = v196;
              v153 = [v152 countByEnumeratingWithState:&v211 objects:v243 count:16];
              if (v153)
              {
                v154 = v153;
                v155 = *v212;
                do
                {
                  v156 = 0;
                  v209 = v154;
                  do
                  {
                    if (*v212 != v155)
                    {
                      objc_enumerationMutation(v152);
                    }

                    v157 = *(*(&v211 + 1) + 8 * v156);
                    v158 = *(v151 + 16);
                    if (([v152 containsObject:v158] & 1) == 0 && (objc_msgSend(v158, "isEqualToString:", v148) & 1) == 0)
                    {
                      SXComponentDependencyCreate(v157, v158, 1, 1, v206);
                      v159 = v155;
                      v160 = v151;
                      v162 = v161 = v148;
                      [(SXComponentDependencyResolver *)v210 addDependency:v162];

                      v163 = SXComponentDependencyCreate(v157, v158, 2, 1, v206);
                      [(SXComponentDependencyResolver *)v210 addDependency:v163];

                      v148 = v161;
                      v151 = v160;
                      v155 = v159;
                      v154 = v209;
                    }

                    ++v156;
                  }

                  while (v154 != v156);
                  v154 = [v152 countByEnumeratingWithState:&v211 objects:v243 count:16];
                }

                while (v154);
              }

              v150 = v203 + 1;
            }

            while (v203 + 1 != v200);
            v200 = [v190 countByEnumeratingWithState:&v215 objects:v244 count:16];
          }

          while (v200);
        }

        v147 = v187 + 1;
        v8 = v210;
      }

      while (v187 + 1 != v178);
      v178 = [v181 countByEnumeratingWithState:&v219 objects:v245 count:16];
    }

    while (v178);
  }
}

- (id)findComponentStackBeforeComponent:(id)a3 inColumnStack:(id)a4
{
  v20 = self;
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v24 = [MEMORY[0x1E695DF70] array];
  v25 = v5;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = v6;
  obj = [v6 componentsBeforeComponent:v5];
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v23 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 component];
        v12 = [v11 anchor];
        v13 = [v12 targetComponentIdentifier];
        v14 = [v25 component];
        v15 = [v14 anchor];
        v16 = [v15 targetComponentIdentifier];
        v17 = [v13 isEqualToString:v16];

        if (v17)
        {
          v18 = [(SXColumnLayouter *)v20 findComponentStackBeforeComponent:v10 inColumnStack:v21];
          [v24 addObjectsFromArray:v18];
        }

        else
        {
          v18 = [v10 component];
          [v24 addObject:v18];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  return v24;
}

- (CGPoint)calculatePositionForComponentNode:(id)a3 columnLayout:(id)a4 layoutBlueprint:(id)a5
{
  v142 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SXFullscreenCaption *)v7 text];
  v11 = [v9 componentBlueprintForComponentIdentifier:v10];

  v12 = [v11 componentLayout];
  v127 = [v11 componentSizer];
  v131 = v11;
  v128 = v12;
  v129 = v8;
  [v8 xPositionForColumnIndex:objc_msgSend(v11 ignoreMargin:"columnRange") ignoreGutter:objc_msgSend(v127 ignoreViewportPadding:"shouldIgnoreMarginsForColumnLayout:" ignoreSafeAreaInsets:{v8), objc_msgSend(v12, "ignoreDocumentGutter"), objc_msgSend(v127, "shouldIgnoreViewportPaddingForColumnLayout:", v8), 0}];
  v14 = v13;
  v132 = [MEMORY[0x1E695DF70] array];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v130 = v7;
  v15 = [(SXComponentNode *)v7 dependencies];
  v16 = [v15 countByEnumeratingWithState:&v137 objects:v141 count:16];
  if (!v16)
  {
    v18 = 0;
    v20 = 0.0;
    v22 = v131;
    v21 = v132;
    goto LABEL_39;
  }

  v17 = v16;
  v18 = 0;
  v19 = *v138;
  v20 = 0.0;
  v22 = v131;
  v21 = v132;
  v133 = *v138;
  v134 = v15;
  do
  {
    v23 = 0;
    v136 = v17;
    do
    {
      if (*v138 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v24 = *(*(&v137 + 1) + 8 * v23);
      v25 = [(SXTangierTextRenderCollectorItem *)v24 componentIdentifier];
      if ([v21 containsObject:v25])
      {
        goto LABEL_34;
      }

      v26 = [(SXTangierTextRenderCollectorItem *)v24 componentIdentifier];

      if (!v26)
      {
        v17 = v136;
        goto LABEL_35;
      }

      v25 = [(SXTangierTextRenderCollectorItem *)v24 componentIdentifier];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [(SXTangierTextRenderCollectorItem *)v24 componentIdentifier];
        v28 = [(SXFullscreenCaption *)v24 caption];
        v29 = [v9 componentBlueprintForComponentIdentifier:v28 includeChildren:0];

        v30 = [v22 columnRange];
        v32 = v31;
        v144.location = [v29 columnRange];
        v144.length = v33;
        v143.location = v30;
        v143.length = v32;
        if (NSIntersectionRange(v143, v144).length)
        {
          v34 = [(SXTextComponentLayoutAttributeDescriptor *)v27 resultingExclusionPath];
          if (v34)
          {
            v35 = [(SXTextComponentLayoutAttributeDescriptor *)v27 resultingExclusionPath];
          }

          else
          {
            v62 = [v29 exclusionPaths];
            [(SXFullscreenCaption *)v130 text];
            v64 = v63 = v9;
            v35 = [v62 objectForKey:v64];

            v9 = v63;
            v22 = v131;

            v21 = v132;
          }

          [v29 frame];
          MinY = CGRectGetMinY(v152);
          [(SXTextExclusionPath *)v35 position];
          v67 = v66;
          [(SXTextExclusionPath *)v35 position];
          if (v67 >= v68)
          {
            v69 = v67;
          }

          else
          {
            v69 = v68;
          }

          v70 = MinY + v69;
          if (v70 >= v20)
          {
            v20 = v70;
          }

          v54 = [(SXTextExclusionPath *)v35 insets]+ v20;
        }

        else
        {
          v55 = [(SXFullscreenCaption *)v24 caption];
          v35 = [v9 componentBlueprintForComponentIdentifier:v55 includeChildren:0];

          v56 = [v35 componentSizer];
          v57 = [(SXTextComponentLayoutAttributeDescriptor *)v27 range];
          [v56 verticalPositionForRange:{v57, v58}];
          v60 = v59;
          [v35 frame];
          v61 = v60 + CGRectGetMinY(v151);
          if (v61 >= v20)
          {
            v54 = v61;
          }

          else
          {
            v54 = v20;
          }

          v21 = v132;
        }

        v18 = 1;
        v19 = v133;
        v15 = v134;
LABEL_32:

        v20 = v54;
        goto LABEL_33;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = [(SXFullscreenCaption *)v24 caption];
        v27 = [v9 componentBlueprintForComponentIdentifier:v36];

        [v27 frame];
        v37 = CGRectGetMinY(v146);
        [v27 frame];
        Height = CGRectGetHeight(v147);
        [(SXColumnLayouter *)self factorForLayoutAttribute:[(SXComponentLayoutAttributeDescriptor *)v25 toLayoutAttribute]];
        v40 = v37 + Height * v39;
        if (([(SXComponentLayoutAttributeDescriptor *)v25 ignoreMargins]& 1) == 0)
        {
          [v27 frame];
          if (CGRectGetHeight(v148) != 0.0)
          {
            unitConverterFactory = self->_unitConverterFactory;
            [v27 frame];
            Width = CGRectGetWidth(v149);
            [v9 blueprintSize];
            v44 = v43;
            v45 = [v9 layoutOptions];
            v46 = [(SXUnitConverterFactory *)unitConverterFactory createUnitConverterWithComponentWidth:v45 parentWidth:Width layoutOptions:v44];

            v47 = [v27 componentLayout];
            v48 = [v47 margin];
            v49 = [v48 bottom];
            [v46 convertValueToPoints:{v49, v50}];
            v40 = v40 + v51;

            v19 = v133;
            v15 = v134;
          }
        }

        [v22 frame];
        v52 = CGRectGetHeight(v150);
        [(SXColumnLayouter *)self factorForLayoutAttribute:[(SXComponentLayoutAttributeDescriptor *)v25 fromLayoutAttribute]];
        v54 = v40 - v52 * v53;
        v21 = v132;
        if (v54 <= v20)
        {
          v54 = v20;
        }

        else
        {
          v18 = [(SXComponentLayoutAttributeDescriptor *)v25 ignoreMargins];
        }

        goto LABEL_32;
      }

LABEL_33:
      v71 = [(SXTangierTextRenderCollectorItem *)v24 componentIdentifier];
      [v21 addObject:v71];

      v17 = v136;
LABEL_34:

LABEL_35:
      ++v23;
    }

    while (v17 != v23);
    v17 = [v15 countByEnumeratingWithState:&v137 objects:v141 count:16];
  }

  while (v17);
LABEL_39:

  v72 = [v22 component];
  v73 = [v72 anchor];
  if (v73)
  {
    v74 = v73;
    v75 = [v22 component];
    v76 = [v75 anchor];
    v77 = [v76 targetComponentIdentifier];
    v78 = v129;
    if (v77)
    {

      goto LABEL_46;
    }

    [v129 minimumHeight];
    v80 = v79;

    if (v80 <= 0.0)
    {
LABEL_46:
      v22 = v131;
    }

    else
    {
      v81 = [v131 component];
      v82 = [v81 anchor];
      v83 = [v82 originAnchorPosition];
      v84 = [v131 component];
      v85 = [v84 anchor];
      v86 = v85;
      if (v83)
      {
        v87 = [v85 originAnchorPosition];
      }

      else
      {
        v87 = [v85 targetAnchorPosition];
      }

      v116 = v87;

      v22 = v131;
      v117 = [v131 component];
      v118 = [v117 anchor];
      v119 = [v118 targetAnchorPosition];

      [v131 frame];
      v120 = CGRectGetHeight(v156);
      [(SXColumnLayouter *)self factorForLayoutAttribute:[(SXColumnLayouter *)self layoutAttributeForAnchor:v116]];
      v122 = v120 * v121;
      [v129 minimumHeight];
      v124 = v123;
      [(SXColumnLayouter *)self factorForLayoutAttribute:[(SXColumnLayouter *)self layoutAttributeForAnchor:v119]];
      v126 = v124 * v125 - v122;
      if (v126 >= v20)
      {
        v20 = v126;
      }

      v18 |= v116 != 0;
      v21 = v132;
    }
  }

  else
  {

    v78 = v129;
  }

  [v22 frame];
  if (CGRectGetHeight(v153) == 0.0 && [v22 hasValidSize])
  {
    v88 = [v22 component];
    v89 = [v88 classification];
    v90 = [v89 isCollapsible];

    v21 = v132;
  }

  else
  {
    v90 = 1;
  }

  [v22 frame];
  v91 = CGRectGetHeight(v154);
  if (v18 & 1) != 0 || v91 == 0.0 && (v91 != 0.0) | v90 & 1 && ([v22 hasValidSize])
  {
    v93 = v127;
    v92 = v128;
  }

  else
  {
    [v22 frame];
    v94 = CGRectGetWidth(v155);
    v93 = v127;
    v92 = v128;
    if (([v22 hasValidSize] & 1) == 0)
    {
      v95 = [v22 componentSizer];
      v96 = [v95 shouldIgnoreMarginsForColumnLayout:v78];

      v97 = [v127 shouldIgnoreViewportPaddingForColumnLayout:v78];
      v98 = [v22 columnRange];
      v100 = v99;
      v101 = [v128 ignoreDocumentGutter];
      v102 = v98;
      v21 = v132;
      [v78 widthForColumnRange:v102 ignoreMargin:v100 ignoreGutter:v96 ignoreViewportPadding:{v101, v97}];
      v94 = v103;
    }

    v104 = self->_unitConverterFactory;
    [v9 blueprintSize];
    v106 = v105;
    v107 = [v9 layoutOptions];
    v108 = [(SXUnitConverterFactory *)v104 createUnitConverterWithComponentWidth:v107 parentWidth:v94 layoutOptions:v106];

    v109 = [v128 margin];
    v110 = [v109 top];
    [v108 convertValueToPoints:{v110, v111}];
    v113 = v112;

    v20 = v20 + v113;
  }

  v114 = v14;
  v115 = v20;
  result.y = v115;
  result.x = v114;
  return result;
}

- (CGSize)calculateSizeForComponentNode:(id)a3 columnLayout:(id)a4 layoutBlueprint:(id)a5 dependencyResolver:(id)a6
{
  v173 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v133 = a6;
  v135 = v10;
  v13 = [(SXFullscreenCaption *)v10 text];
  v14 = [v12 componentBlueprintForComponentIdentifier:v13];

  v15 = [v14 columnRange];
  v17 = v16;
  v18 = [v14 componentLayout];
  v19 = [v14 componentSizer];
  v20 = [v19 shouldIgnoreMarginsForColumnLayout:v11];
  v129 = v19;
  v21 = [v19 shouldIgnoreViewportPaddingForColumnLayout:v11];
  [v11 xPositionForColumnIndex:v15 ignoreMargin:v20 ignoreGutter:objc_msgSend(v18 ignoreViewportPadding:"ignoreDocumentGutter") ignoreSafeAreaInsets:{v21, 0}];
  v23 = v22;
  v132 = v18;
  v154 = v11;
  [v11 widthForColumnRange:v15 ignoreMargin:v17 ignoreGutter:v20 ignoreViewportPadding:{objc_msgSend(v18, "ignoreDocumentGutter"), v21}];
  v25 = v24;
  v134 = self;
  unitConverterFactory = self->_unitConverterFactory;
  [v12 blueprintSize];
  v28 = v27;
  v148 = v12;
  v29 = v12;
  v30 = v14;
  v31 = [v29 layoutOptions];
  v32 = [(SXUnitConverterFactory *)unitConverterFactory createUnitConverterWithComponentWidth:v31 parentWidth:v25 layoutOptions:v28];

  v33 = [v14 componentSizer];
  v143 = v32;
  [v33 contentInsetsWithUnitConverter:v32];
  v35 = v34;
  v37 = v36;

  v38 = v35 + v37;
  v39 = [MEMORY[0x1E695DF70] array];
  v40 = [v30 componentSizer];
  objc_opt_class();
  LOBYTE(v31) = objc_opt_isKindOfClass();

  if (v31)
  {
    v41 = [v30 componentSizer];
    [v41 removeAllExclusionPaths];
  }

  v128 = v25 - v38;
  v42 = [(SXComponentNode *)v135 dependencies];
  v43 = [(SXColumnLayouter *)self sortComponentDependencies:v42 forBlueprint:v148];

  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v44 = v43;
  v45 = [v44 countByEnumeratingWithState:&v168 objects:v172 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v169;
    v138 = *(MEMORY[0x1E69DDCE0] + 8);
    v139 = *MEMORY[0x1E69DDCE0];
    v136 = *(MEMORY[0x1E69DDCE0] + 24);
    v137 = *(MEMORY[0x1E69DDCE0] + 16);
    v130 = *(MEMORY[0x1E695EFF8] + 8);
    v131 = *MEMORY[0x1E695EFF8];
    v142 = v30;
    v140 = v23;
    v141 = v25;
    v145 = v44;
    v146 = v39;
    v151 = *v169;
    do
    {
      v48 = 0;
      v147 = v46;
      do
      {
        if (*v169 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v168 + 1) + 8 * v48);
        v50 = [(SXTangierTextRenderCollectorItem *)v49 componentIdentifier];
        v51 = [v39 containsObject:v50];

        if ((v51 & 1) == 0)
        {
          v52 = [v30 component];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v54 = [v30 component];
            v55 = [(SXTangierTextRenderCollectorItem *)v49 componentIdentifier];
            objc_opt_class();
            v56 = objc_opt_isKindOfClass();

            if (v56)
            {
              v150 = v54;
              v57 = [v54 identifier];
              v58 = [v148 componentBlueprintForComponentIdentifier:v57 includeChildren:1];

              v59 = [v58 componentSizer];
              v153 = v58;
              v60 = [v58 componentLayout];
              v152 = [(SXTangierTextRenderCollectorItem *)v49 componentIdentifier];
              v61 = [v59 shouldIgnoreMarginsForColumnLayout:v154];
              v149 = v59;
              v62 = [v59 shouldIgnoreViewportPaddingForColumnLayout:v154];
              v63 = [(SXFullscreenCaption *)v49 caption];
              v64 = [v148 componentBlueprintForComponentIdentifier:v63];

              v65 = [v64 componentLayout];
              [v154 xPositionForColumnIndex:objc_msgSend(v64 ignoreMargin:"columnRange") ignoreGutter:v61 ignoreViewportPadding:objc_msgSend(v60 ignoreSafeAreaInsets:{"ignoreDocumentGutter"), v62, 0}];
              v67 = v66;
              v68 = [v64 columnRange];
              [v154 widthForColumnRange:v68 ignoreMargin:v69 ignoreGutter:v61 ignoreViewportPadding:{objc_msgSend(v60, "ignoreDocumentGutter"), v62}];
              v71 = v70;
              v155 = v65;
              v72 = [v65 margin];
              v73 = [v72 bottom];
              [v143 convertValueToPoints:{v73, v74}];
              v76 = v75;

              [v64 frame];
              v182.size.height = v76 + CGRectGetHeight(v175);
              v176.origin.y = 0.0;
              v182.origin.y = 0.0;
              v176.origin.x = v23;
              v176.size.width = v25;
              v176.size.height = 1.79769313e308;
              v182.origin.x = v67;
              v182.size.width = v71;
              v177 = CGRectIntersection(v176, v182);
              y = v177.origin.y;
              width = v177.size.width;
              height = v177.size.height;
              v80 = v177.origin.x - v23;
              v81 = v177.origin.x - v23 == 0.0;
              v82 = v138;
              if (!v81)
              {
                v82 = [v154 gutter];
              }

              v144 = v82;
              v178.origin.x = v80;
              v178.origin.y = y;
              v178.size.width = width;
              v178.size.height = height;
              MaxX = CGRectGetMaxX(v178);
              v179.origin.y = 0.0;
              v179.origin.x = v23;
              v179.size.width = v25;
              v179.size.height = 1.79769313e308;
              v84 = MaxX + CGRectGetMinX(v179);
              v180.origin.y = 0.0;
              v180.origin.x = v23;
              v180.size.width = v25;
              v180.size.height = 1.79769313e308;
              v85 = v136;
              if (v84 != CGRectGetMaxX(v180))
              {
                v85 = [v154 gutter];
              }

              v86 = v152;
              v87 = v139;
              v30 = v142;
              v44 = v145;
              v46 = v147;
              if ([(SXTextComponentLayoutAttributeDescriptor *)v152 range])
              {
                v88 = [v155 margin];
                v89 = [v88 top];
                [v143 convertValueToPoints:{v89, v90}];
                v87 = v91;
              }

              v92 = v137;
              if ([(SXComponentLayoutAttributeDescriptor *)v152 fromLayoutAttribute]!= 2)
              {
                v93 = [v155 margin];
                v94 = [v93 bottom];
                [v143 convertValueToPoints:{v94, v95}];
                v92 = v96;
              }

              [v64 frame];
              if (CGRectGetHeight(v181) != 0.0 && [v149 stringLength])
              {
                v97 = [(SXTextComponentLayoutAttributeDescriptor *)v152 range];
                v98 = [v149 stringLength];
                if (v97 >= v98 - 1)
                {
                  v97 = v98 - 1;
                }

                v99 = [SXTextExclusionPath alloc];
                v102 = [(SXTextExclusionPath *)v99 initWithTextRange:v97 position:0 rect:v80 withInsets:y, v131, v130, width, height, v100, v101, v87, v144, v92, v85];
                v103 = [(SXFullscreenCaption *)v49 caption];
                [(SXTextExclusionPath *)v102 setComponentIdentifier:v103];

                [(SXTextExclusionPath *)v102 setVerticalAlignmentFactor:?];
                [(SXTextExclusionPath *)v102 setLineVerticalAlignment:?];
                v104 = [v64 columnRange];
                if (v104 <= [v153 columnRange])
                {
                  [v64 columnRange];
                  v107 = v106;
                  [v153 columnRange];
                  v105 = v107 >= v108;
                }

                else
                {
                  v105 = 0;
                }

                [(SXTextExclusionPath *)v102 setFullBleed:v105];
                newValue[0] = MEMORY[0x1E69E9820];
                newValue[1] = 3221225472;
                newValue[2] = __98__SXColumnLayouter_calculateSizeForComponentNode_columnLayout_layoutBlueprint_dependencyResolver___block_invoke;
                newValue[3] = &unk_1E84FEE98;
                v159 = v133;
                v160 = v49;
                v161 = v135;
                v162 = v148;
                v163 = v134;
                v109 = v149;
                v164 = v109;
                v165 = v142;
                v166 = v143;
                v167 = v132;
                [(SXTextExclusionPath *)v102 setMinYBlock:?];
                v156[0] = MEMORY[0x1E69E9820];
                v156[1] = 3221225472;
                v156[2] = __98__SXColumnLayouter_calculateSizeForComponentNode_columnLayout_layoutBlueprint_dependencyResolver___block_invoke_2;
                v156[3] = &unk_1E84FEEC0;
                v157 = v152;
                [(SXTextExclusionPath *)v102 setCompletionBlock:v156];
                [v109 addExclusionPath:v102];
                v110 = [(SXFullscreenCaption *)v49 caption];
                v86 = v152;
                [v153 addExclusionPath:v102 forIdentifier:v110];

                v111 = [(SXTangierTextRenderCollectorItem *)v49 componentIdentifier];
                [v146 addObject:v111];

                v44 = v145;
              }

              v23 = v140;
              v25 = v141;
              v39 = v146;
              v54 = v150;
            }

            v47 = v151;
          }
        }

        ++v48;
      }

      while (v46 != v48);
      v46 = [v44 countByEnumeratingWithState:&v168 objects:v172 count:16];
    }

    while (v46);
  }

  v112 = [(SXLayoutContextFactory *)v134->_layoutContextFactory createLayoutContextForColumnLayout:v154 unitConverter:v143];
  v113 = [v30 componentSizer];
  [v113 calculateHeightForWidth:v112 layoutContext:v128];
  v115 = v114;

  v116 = [v30 componentSizer];
  [v116 contentInsetsWithUnitConverter:v143];
  v118 = v117;
  v120 = v119;

  v121 = v115 + v118 + v120;
  [v132 minimumHeight];
  if (v122)
  {
    v123 = [v132 minimumHeight];
    [v143 convertValueToPoints:{v123, v124}];
    if (v121 < v125)
    {
      v121 = v125;
    }
  }

  v126 = v25;
  v127 = v121;
  result.height = v127;
  result.width = v126;
  return result;
}

double __98__SXColumnLayouter_calculateSizeForComponentNode_columnLayout_layoutBlueprint_dependencyResolver___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [(SXFullscreenCaption *)*(a1 + 40) caption];
  v4 = [(SXComponentDependencyResolver *)v2 componentNodeForComponentIdentifier:v3 andAttribute:1];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v5 = [(SXComponentNode *)v4 dependencies];
  v6 = [v5 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v6)
  {
    v7 = v6;
    v53 = v4;
    v54 = 0;
    v8 = *v57;
    v9 = 0.0;
    v55 = *v57;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v56 + 1) + 8 * i);
        v12 = [(SXFullscreenCaption *)v11 caption];
        v13 = [(SXFullscreenCaption *)*(a1 + 48) text];
        if ([v12 isEqualToString:v13])
        {
          v14 = v9;
        }

        else
        {
          v15 = v7;
          v16 = v5;
          v17 = [(SXFullscreenCaption *)v11 caption];
          v18 = [(SXFullscreenCaption *)*(a1 + 40) caption];
          v19 = [v17 isEqualToString:v18];

          if (v19)
          {
            v5 = v16;
            v8 = v55;
            v7 = v15;
            continue;
          }

          v12 = [(SXTangierTextRenderCollectorItem *)v11 componentIdentifier];
          v20 = *(a1 + 56);
          v21 = [(SXFullscreenCaption *)v11 caption];
          v13 = [v20 componentBlueprintForComponentIdentifier:v21];

          if ([v13 hasValidLayout])
          {
            [v13 frame];
            MinY = CGRectGetMinY(v62);
            [v13 frame];
            Height = CGRectGetHeight(v63);
            [*(a1 + 64) factorForLayoutAttribute:-[SXComponentLayoutAttributeDescriptor toLayoutAttribute](v12)];
            v25 = MinY + Height * v24;
          }

          else
          {
            v26 = *(a1 + 72);
            v27 = [v13 component];
            v28 = [v27 identifier];
            v29 = [v26 existingExclusionPathForComponentWithIdentifier:v28];
            [(SXTextExclusionPath *)v29 position];
            v31 = v30;

            [v13 frame];
            v32 = CGRectGetHeight(v64);
            [*(a1 + 64) factorForLayoutAttribute:-[SXComponentLayoutAttributeDescriptor toLayoutAttribute](v12)];
            v34 = v31 + v32 * v33;
            [*(a1 + 80) frame];
            v25 = v34 + CGRectGetMinY(v65);
          }

          if (([(SXComponentLayoutAttributeDescriptor *)v12 ignoreMargins]& 1) == 0)
          {
            v35 = [v13 componentLayout];
            v36 = *(a1 + 88);
            v37 = [v35 margin];
            v38 = [v37 bottom];
            [v36 convertValueToPoints:{v38, v39}];
            v41 = v40;

            [v13 frame];
            if (CGRectGetHeight(v66) == 0.0)
            {
              v42 = 0.0;
            }

            else
            {
              v42 = v41;
            }

            v25 = v25 + v42;
          }

          v7 = v15;
          [v13 frame];
          v43 = CGRectGetHeight(v67);
          [*(a1 + 64) factorForLayoutAttribute:-[SXComponentLayoutAttributeDescriptor fromLayoutAttribute](v12)];
          v14 = v25 - v43 * v44;
          if (v14 <= v9)
          {
            v14 = v9;
          }

          else
          {
            v54 = [(SXComponentLayoutAttributeDescriptor *)v12 ignoreMargins];
          }

          v5 = v16;
          v8 = v55;
        }

        v9 = v14;
      }

      v7 = [v5 countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (!v7)
      {

        v4 = v53;
        if (v54)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }
  }

  v9 = 0.0;
LABEL_28:
  v45 = *(a1 + 88);
  v46 = [*(a1 + 96) margin];
  v47 = [v46 top];
  [v45 convertValueToPoints:{v47, v48}];
  v50 = v49;

  v9 = v9 + v50;
LABEL_29:
  [*(a1 + 80) frame];
  v51 = CGRectGetMinY(v68);

  return v9 - v51;
}

- (void)analyzeSnapLinesForLayoutBlueprint:(id)a3
{
  v30 = self;
  v44 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA0] orderedSet];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [v3 componentIdentifiers];
  v5 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    v31 = *v39;
    do
    {
      v8 = 0;
      v32 = v6;
      do
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [v3 componentBlueprintForComponentIdentifier:{*(*(&v38 + 1) + 8 * v8), v30}];
        if ([v9 hasValidLayout])
        {
          v10 = v3;
          [v9 absoluteFrame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;
          [v9 absoluteFrame];
          v19 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMinY(v45)];
          [v4 addObject:v19];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [v9 layoutBlueprint];
            [(SXColumnLayouter *)v30 analyzeSnapLinesForLayoutBlueprint:v20];
          }

          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v21 = [v9 componentSizer];
          v22 = [v21 snapLines];

          v23 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v35;
            do
            {
              v26 = 0;
              do
              {
                if (*v35 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                [*(*(&v34 + 1) + 8 * v26) floatValue];
                v28 = v27;
                v46.origin.x = v12;
                v46.origin.y = v14;
                v46.size.width = v16;
                v46.size.height = v18;
                v29 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMinY(v46) + v28];
                [v4 addObject:v29];

                ++v26;
              }

              while (v24 != v26);
              v24 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v24);
          }

          v3 = v10;
          v7 = v31;
          v6 = v32;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v6);
  }

  [v3 setSnapLines:v4];
}

- (id)columnStackForLayoutBlueprint:(id)a3 columnLayout:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v25 = -[SXColumnStack initWithNumberOfColumns:]([SXColumnStack alloc], "initWithNumberOfColumns:", [v6 numberOfColumns]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v5;
  obj = [v5 componentIdentifiers];
  v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [v7 componentBlueprintForComponentIdentifier:*(*(&v26 + 1) + 8 * i)];
        v13 = [v12 componentSizer];
        v14 = [v12 componentLayout];
        v15 = [v14 columnRange];
        v17 = [v6 convertColumnRange:v15 minimumColumnLength:{v16, objc_msgSend(v13, "minimumColumnLength")}];
        v19 = v18;

        v20 = [v13 overrideColumnLayoutForColumnRange:v17 inColumnLayout:{v19, v6}];
        v22 = v21;
        if (v20 + v21 > [v6 numberOfColumns])
        {
          v22 = [v6 numberOfColumns] - v20;
        }

        [v12 setColumnRange:{v20, v22}];
        [(SXColumnStack *)v25 addComponentBlueprint:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  return v25;
}

- (id)sortComponentDependencies:(id)a3 forBlueprint:(id)a4
{
  v5 = a4;
  v6 = [a3 allObjects];
  v7 = [v6 mutableCopy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__SXColumnLayouter_sortComponentDependencies_forBlueprint___block_invoke;
  v10[3] = &unk_1E84FEEE8;
  v11 = v5;
  v8 = v5;
  [v7 sortUsingComparator:v10];

  return v7;
}

uint64_t __59__SXColumnLayouter_sortComponentDependencies_forBlueprint___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 componentIdentifiers];
  v9 = [(SXFullscreenCaption *)v7 caption];

  v10 = [v8 indexOfObject:v9];
  v11 = [*(a1 + 32) componentIdentifiers];
  v12 = [(SXFullscreenCaption *)v6 caption];

  if (v10 < [v11 indexOfObject:v12])
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)anchorPossibleForComponentWithBlueprint:(id)a3 anchoredToComponentWithBlueprint:(id)a4 layoutBlueprint:(id)a5 columnStack:(id)a6
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v11 componentIdentifiers];
  v14 = [v9 component];
  v15 = [v14 identifier];
  v16 = [v13 indexOfObjectIdenticalTo:v15];

  v17 = [v11 componentIdentifiers];
  v51 = v10;
  v18 = [v10 component];
  v19 = [v18 identifier];
  v20 = [v17 indexOfObjectIdenticalTo:v19];

  if (v16 <= v20)
  {
    [v12 componentsAfterComponent:v9];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v21 = v55 = 0u;
    v36 = [v21 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v36)
    {
      v37 = v36;
      v49 = v12;
      v50 = v9;
      v38 = *v53;
LABEL_14:
      v39 = 0;
      while (1)
      {
        if (*v53 != v38)
        {
          objc_enumerationMutation(v21);
        }

        v40 = *(*(&v52 + 1) + 8 * v39);
        v41 = [v40 component];
        v28 = [v41 identifier];

        v42 = [v11 componentIdentifiers];
        v43 = [v42 indexOfObjectIdenticalTo:v28];

        if (v43 < v20)
        {
          v44 = [v40 columnRange];
          v46 = v45;
          v66.location = [v51 columnRange];
          v66.length = v47;
          v64.location = v44;
          v64.length = v46;
          if (NSIntersectionRange(v64, v66).length)
          {
            goto LABEL_22;
          }
        }

        if (v37 == ++v39)
        {
          v37 = [v21 countByEnumeratingWithState:&v52 objects:v60 count:16];
          v35 = 1;
          if (v37)
          {
            goto LABEL_14;
          }

          goto LABEL_23;
        }
      }
    }

LABEL_24:
    v35 = 1;
    goto LABEL_25;
  }

  [v12 componentsBeforeComponent:v9];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v21 = v59 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (!v22)
  {
    goto LABEL_24;
  }

  v23 = v22;
  v49 = v12;
  v50 = v9;
  v24 = *v57;
LABEL_4:
  v25 = 0;
  while (1)
  {
    if (*v57 != v24)
    {
      objc_enumerationMutation(v21);
    }

    v26 = *(*(&v56 + 1) + 8 * v25);
    v27 = [v26 component];
    v28 = [v27 identifier];

    v29 = [v11 componentIdentifiers];
    v30 = [v29 indexOfObjectIdenticalTo:v28];

    if (v30 > v20)
    {
      v31 = [v26 columnRange];
      v33 = v32;
      v65.location = [v51 columnRange];
      v65.length = v34;
      v63.location = v31;
      v63.length = v33;
      if (NSIntersectionRange(v63, v65).length)
      {
        break;
      }
    }

    if (v23 == ++v25)
    {
      v23 = [v21 countByEnumeratingWithState:&v56 objects:v61 count:16];
      v35 = 1;
      if (v23)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

LABEL_22:

  v35 = 0;
LABEL_23:
  v12 = v49;
  v9 = v50;
LABEL_25:

  return v35;
}

- (BOOL)intersectionPossibleForComponentWithBlueprint:(id)a3 anchoredToComponentWithBlueprint:(id)a4 layoutBlueprint:(id)a5 columnStack:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x1E696AEC0];
  v15 = [v10 component];
  v16 = [v15 identifier];
  v17 = [v11 component];
  v18 = [v17 identifier];
  v19 = [v14 stringWithFormat:@"%@-%@", v16, v18];

  v20 = [(NSMutableDictionary *)self->_intersectionCache objectForKey:v19];
  v21 = v20;
  if (v20)
  {
    LOBYTE(v22) = [v20 BOOLValue];
  }

  else
  {
    v48 = v12;
    v23 = [v11 component];
    v24 = [v23 anchor];

    v25 = [v10 columnRange];
    v27 = v26;
    v50.location = [v11 columnRange];
    v50.length = v28;
    v49.location = v25;
    v49.length = v27;
    if (NSIntersectionRange(v49, v50).length)
    {
      v47 = v24;
      v29 = [v24 targetComponentIdentifier];
      v30 = [v10 component];
      v31 = [v30 identifier];
      v32 = [v29 isEqualToString:v31];

      if (v32)
      {
        v22 = 0;
      }

      else
      {
        v33 = [v48 componentIdentifiers];
        v34 = [v10 component];
        v35 = [v34 identifier];
        v46 = [v33 indexOfObjectIdenticalTo:v35];

        v36 = [v48 componentIdentifiers];
        v37 = [v11 component];
        v38 = [v37 identifier];
        v39 = [v36 indexOfObjectIdenticalTo:v38];

        if (v46 <= v39)
        {
          v40 = v11;
        }

        else
        {
          v40 = v10;
        }

        if (v46 <= v39)
        {
          v41 = v10;
        }

        else
        {
          v41 = v11;
        }

        v42 = [v13 componentsBeforeComponent:v40];
        v22 = [(SXColumnLayouter *)self stack:v13 stackComponents:v42 containsComponentIncludingAnchoredComponents:v41 forSourceComponent:v10];
      }

      v24 = v47;
    }

    else
    {
      v22 = 0;
    }

    intersectionCache = self->_intersectionCache;
    v44 = [MEMORY[0x1E696AD98] numberWithBool:v22];
    [(NSMutableDictionary *)intersectionCache setObject:v44 forKey:v19];

    v12 = v48;
  }

  return v22;
}

- (BOOL)stack:(id)a3 stackComponents:(id)a4 containsComponentIncludingAnchoredComponents:(id)a5 forSourceComponent:(id)a6
{
  v47 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v38 = v9;
  v13 = [v9 allComponentsBeforeComponent:v11];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    v17 = 1;
    v36 = v13;
    v40 = *v43;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v42 + 1) + 8 * i);
        if (([v13 containsObject:{v19, v36}] & 1) == 0)
        {
          v20 = [v19 component];
          v21 = [v20 anchor];

          if (v19 == v11)
          {
            goto LABEL_20;
          }

          v22 = [v19 columnRange];
          v24 = v23;
          v50.location = [v12 columnRange];
          v50.length = v25;
          v48.location = v22;
          v48.length = v24;
          if (NSIntersectionRange(v48, v50).length)
          {
            v26 = [v19 columnRange];
            v28 = v27;
            v51.location = [v11 columnRange];
            v51.length = v29;
            v49.location = v26;
            v49.length = v28;
            if (NSIntersectionRange(v49, v51).length)
            {
              v30 = [v12 component];
              v31 = [v30 anchor];
              v32 = [v31 targetComponentIdentifier];
              v33 = [v21 targetComponentIdentifier];
              if (![v32 isEqualToString:v33])
              {

LABEL_19:
                v17 = 0;
                v13 = v36;
LABEL_20:

                goto LABEL_21;
              }

              v39 = [v21 range];

              if (v39 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_19;
              }

              v34 = [v38 componentsBeforeComponent:v19];
              v17 = [(SXColumnLayouter *)self stack:v38 stackComponents:v34 containsComponentIncludingAnchoredComponents:v11 forSourceComponent:v12];

              v13 = v36;
            }
          }

          v16 = v40;
        }
      }

      v15 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_21:

  return v17;
}

- (BOOL)componentBlueprint:(id)a3 shouldIntersectWithComponentBlueprint:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 columnRange];
  if (v7 <= [v6 columnRange])
  {
    v13 = 1;
  }

  else
  {
    v8 = [v5 columnRange];
    [v5 columnRange];
    v10 = v9 + v8;
    v11 = [v6 columnRange];
    [v6 columnRange];
    v13 = v10 >= v12 + v11;
  }

  v14 = [v6 componentSizer];
  v15 = [v14 allowComponentIntersection];

  return v15 & v13;
}

- (double)factorForLayoutAttribute:(int)a3
{
  result = 0.0;
  if (a3 == 1)
  {
    result = 0.5;
  }

  if (a3 == 2)
  {
    return 1.0;
  }

  return result;
}

- (int)layoutAttributeForAnchor:(int64_t)a3
{
  if (a3 == 3)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 2);
  }
}

- (SXLayouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end