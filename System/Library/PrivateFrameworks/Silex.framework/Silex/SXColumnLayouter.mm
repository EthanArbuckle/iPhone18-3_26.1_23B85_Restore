@interface SXColumnLayouter
- (BOOL)anchorPossibleForComponentWithBlueprint:(id)blueprint anchoredToComponentWithBlueprint:(id)withBlueprint layoutBlueprint:(id)layoutBlueprint columnStack:(id)stack;
- (BOOL)componentBlueprint:(id)blueprint shouldIntersectWithComponentBlueprint:(id)componentBlueprint;
- (BOOL)intersectionPossibleForComponentWithBlueprint:(id)blueprint anchoredToComponentWithBlueprint:(id)withBlueprint layoutBlueprint:(id)layoutBlueprint columnStack:(id)stack;
- (BOOL)stack:(id)stack stackComponents:(id)components containsComponentIncludingAnchoredComponents:(id)anchoredComponents forSourceComponent:(id)component;
- (CGPoint)calculatePositionForComponentNode:(id)node columnLayout:(id)layout layoutBlueprint:(id)blueprint;
- (CGSize)calculateSizeForComponentNode:(id)node columnLayout:(id)layout layoutBlueprint:(id)blueprint dependencyResolver:(id)resolver;
- (SXColumnLayouter)initWithLayouterFactory:(id)factory layoutContextFactory:(id)contextFactory unitConverterFactory:(id)converterFactory;
- (SXLayouterDelegate)delegate;
- (double)factorForLayoutAttribute:(int)attribute;
- (id)columnStackForLayoutBlueprint:(id)blueprint columnLayout:(id)layout;
- (id)findComponentStackBeforeComponent:(id)component inColumnStack:(id)stack;
- (id)sortComponentDependencies:(id)dependencies forBlueprint:(id)blueprint;
- (int)layoutAttributeForAnchor:(int64_t)anchor;
- (void)analyzeSnapLinesForLayoutBlueprint:(id)blueprint;
- (void)createDependenciesForLayoutBlueprint:(id)blueprint columnStack:(id)stack inDependencyResolver:(id)resolver;
- (void)layoutBlueprint:(id)blueprint columnLayout:(id)layout description:(id)description shouldContinue:(BOOL *)continue;
@end

@implementation SXColumnLayouter

- (SXColumnLayouter)initWithLayouterFactory:(id)factory layoutContextFactory:(id)contextFactory unitConverterFactory:(id)converterFactory
{
  factoryCopy = factory;
  contextFactoryCopy = contextFactory;
  converterFactoryCopy = converterFactory;
  v15.receiver = self;
  v15.super_class = SXColumnLayouter;
  v12 = [(SXColumnLayouter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_layouterFactory, factory);
    objc_storeStrong(&v13->_layoutContextFactory, contextFactory);
    objc_storeStrong(&v13->_unitConverterFactory, converterFactory);
  }

  return v13;
}

- (void)layoutBlueprint:(id)blueprint columnLayout:(id)layout description:(id)description shouldContinue:(BOOL *)continue
{
  v96 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  layoutCopy = layout;
  descriptionCopy = description;
  v11 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    taskIdentifier = [descriptionCopy taskIdentifier];
    *buf = 134218242;
    v93 = blueprintCopy;
    v94 = 2114;
    v95 = taskIdentifier;
    _os_log_impl(&dword_1D825C000, v12, OS_LOG_TYPE_DEFAULT, "Starting column layout, blueprint=%p, task-identifier=%{public}@", buf, 0x16u);
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  intersectionCache = self->_intersectionCache;
  self->_intersectionCache = v14;

  *continue = 1;
  [layoutCopy widthForColumnRange:0 ignoreMargin:objc_msgSend(layoutCopy ignoreGutter:"numberOfColumns") ignoreViewportPadding:{3, 3, 3}];
  v17 = v16;
  [blueprintCopy startUpdatesForWidth:?];
  v18 = [(SXColumnLayouter *)self columnStackForLayoutBlueprint:blueprintCopy columnLayout:layoutCopy];
  v19 = [SXComponentDependencyResolver alloc];
  componentIdentifiers = [blueprintCopy componentIdentifiers];
  v21 = [(SXComponentDependencyResolver *)v19 initWithComponentIdentifiers:componentIdentifiers];

  [blueprintCopy setDependencySolver:v21];
  v79 = v18;
  [(SXColumnLayouter *)self createDependenciesForLayoutBlueprint:blueprintCopy columnStack:v18 inDependencyResolver:v21];
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
  v81 = layoutCopy;
  selfCopy = self;
  while (2)
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v88 != v85)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v87 + 1) + 8 * i);
      text = [(SXFullscreenCaption *)v25 text];
      v27 = [blueprintCopy componentBlueprintForComponentIdentifier:text];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
        layoutBlueprint = [v28 layoutBlueprint];
        if ([layoutBlueprint isComplete])
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

      componentSizer = [v27 componentSizer];
      [v27 suggestedSizeAfterInvalidation];
      [componentSizer setSuggestedSize:?];

      componentSizer2 = [v27 componentSizer];
      componentState = [v27 componentState];
      [componentSizer2 setComponentState:componentState];

      if (-[SXFullscreenCaption caption](v25) == 1 && v30 & 1 | (([v27 hasValidPosition] & 1) == 0))
      {
        v34 = SXLayoutLog;
        if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v34;
          component = [v27 component];
          identifier = [component identifier];
          taskIdentifier2 = [descriptionCopy taskIdentifier];
          *buf = 138543618;
          v93 = identifier;
          v94 = 2114;
          v95 = taskIdentifier2;
          _os_log_impl(&dword_1D825C000, v35, OS_LOG_TYPE_DEFAULT, "Calculating position, component-identifier=%{public}@, task-identifier=%{public}@", buf, 0x16u);

          layoutCopy = v81;
          self = selfCopy;
        }

        [(SXColumnLayouter *)self calculatePositionForComponentNode:v25 columnLayout:layoutCopy layoutBlueprint:blueprintCopy];
        v40 = v39;
        v42 = v41;
        text2 = [(SXFullscreenCaption *)v25 text];
        [blueprintCopy updatePosition:text2 forComponentWithIdentifier:{v40, v42}];
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
          component2 = [v27 component];
          identifier2 = [component2 identifier];
          taskIdentifier3 = [descriptionCopy taskIdentifier];
          *buf = 138543618;
          v93 = identifier2;
          v94 = 2114;
          v95 = taskIdentifier3;
          _os_log_impl(&dword_1D825C000, v45, OS_LOG_TYPE_DEFAULT, "Calculating size, component-identifier=%{public}@, task-identifier=%{public}@", buf, 0x16u);

          layoutCopy = v81;
          self = selfCopy;
        }

        [(SXColumnLayouter *)self calculateSizeForComponentNode:v25 columnLayout:layoutCopy layoutBlueprint:blueprintCopy dependencyResolver:v80];
        v50 = v49;
        v52 = v51;
        component3 = [v27 component];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          unitConverterFactory = self->_unitConverterFactory;
          v56 = v27;
          layoutOptions = [blueprintCopy layoutOptions];
          v58 = [(SXUnitConverterFactory *)unitConverterFactory createUnitConverterWithComponentWidth:layoutOptions parentWidth:v50 layoutOptions:v17];

          v59 = [layoutCopy columnLayoutForComponentBlueprint:v56 unitConverter:v58];
          layouterFactory = selfCopy->_layouterFactory;
          WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
          v62 = [(SXLayouterFactory *)layouterFactory layouterForContainerComponentBlueprint:v56 delegate:WeakRetained];

          layoutBlueprint2 = [v56 layoutBlueprint];
          [v62 layoutBlueprint:layoutBlueprint2 columnLayout:v59 description:descriptionCopy shouldContinue:continue];

          componentSizer3 = [v56 componentSizer];
          [componentSizer3 contentInsetsWithUnitConverter:v58];
          v66 = v65;
          v68 = v67;

          layoutBlueprint3 = [v56 layoutBlueprint];

          [layoutBlueprint3 blueprintSize];
          v52 = v68 + v66 + v70;

          [v59 minimumHeight];
          if (v52 < v71)
          {
            v52 = v71;
          }

          layoutCopy = v81;
          self = selfCopy;
        }

        text2 = [(SXFullscreenCaption *)v25 text];
        [blueprintCopy updateSize:text2 forComponentWithIdentifier:{v50, v52}];
      }

LABEL_29:
      if ([v27 hasValidLayout])
      {
        v72 = *continue;
        if (v72)
        {
          delegate = [(SXColumnLayouter *)self delegate];
          v74 = objc_opt_respondsToSelector();

          if (v74)
          {
            delegate2 = [(SXColumnLayouter *)self delegate];
            [delegate2 layouter:self didFinishLayoutForComponentBlueprint:v27 layoutBlueprint:blueprintCopy shouldContinueLayout:continue];
          }

          v72 = *continue;
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

  [(SXColumnLayouter *)self analyzeSnapLinesForLayoutBlueprint:blueprintCopy];
  [blueprintCopy endUpdates];
  v76 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v77 = v76;
    taskIdentifier4 = [descriptionCopy taskIdentifier];
    *buf = 134218242;
    v93 = blueprintCopy;
    v94 = 2114;
    v95 = taskIdentifier4;
    _os_log_impl(&dword_1D825C000, v77, OS_LOG_TYPE_DEFAULT, "Finished column layout, blueprint=%p, task-identifier=%{public}@", buf, 0x16u);
  }
}

- (void)createDependenciesForLayoutBlueprint:(id)blueprint columnStack:(id)stack inDependencyResolver:(id)resolver
{
  v251 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  stackCopy = stack;
  resolverCopy = resolver;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v239 = 0u;
  v240 = 0u;
  v241 = 0u;
  v242 = 0u;
  obj = [blueprintCopy componentIdentifiers];
  v197 = blueprintCopy;
  v210 = resolverCopy;
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
        v179 = [blueprintCopy componentBlueprintForComponentIdentifier:?];
        component = [v179 component];
        classification = [component classification];
        isCollapsible = [classification isCollapsible];

        if (isCollapsible)
        {
          anchor = [component anchor];
          targetComponentIdentifier = [anchor targetComponentIdentifier];
          v15 = [blueprintCopy componentBlueprintForComponentIdentifier:targetComponentIdentifier];

          if (!v15 || ![(SXColumnLayouter *)self intersectionPossibleForComponentWithBlueprint:v179 anchoredToComponentWithBlueprint:v15 layoutBlueprint:blueprintCopy columnStack:stackCopy])
          {
            v16 = SXComponentDependencyCreate(v207, v207, 1, 2, 0);
            [(SXComponentDependencyResolver *)resolverCopy addDependency:v16];
          }
        }

        v17 = [stackCopy componentsBeforeComponent:v179];
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
              component2 = [v19 component];
              anchor2 = [component anchor];
              identifier = [component2 identifier];
              v198 = anchor2;
              targetComponentIdentifier2 = [anchor2 targetComponentIdentifier];
              v24 = [identifier isEqualToString:targetComponentIdentifier2];

              v185 = component2;
              anchor3 = [component2 anchor];
              targetComponentIdentifier3 = [anchor3 targetComponentIdentifier];
              identifier2 = [component identifier];
              v28 = [targetComponentIdentifier3 isEqualToString:identifier2];

              if (v24)
              {
                v29 = v198;
                if (!-[SXColumnLayouter componentBlueprint:shouldIntersectWithComponentBlueprint:](self, "componentBlueprint:shouldIntersectWithComponentBlueprint:", v179, v19) || [v198 range] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_39;
                }

                if ((v28 & 1) == 0)
                {
                  selfCopy2 = self;
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

                component3 = [v19 component];
                anchor4 = [component3 anchor];
                range = [anchor4 range];

                if (range == 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_39;
                }
              }

              selfCopy2 = self;
              v31 = v19;
              v32 = v179;
LABEL_25:
              if ([(SXColumnLayouter *)selfCopy2 intersectionPossibleForComponentWithBlueprint:v31 anchoredToComponentWithBlueprint:v32 layoutBlueprint:blueprintCopy columnStack:stackCopy])
              {
                v36 = [(SXColumnLayouter *)self findComponentStackBeforeComponent:v19 inColumnStack:stackCopy];
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
                    identifier3 = [v38 identifier];
                    v40 = [blueprintCopy componentBlueprintForComponentIdentifier:identifier3];

                    v41 = [SXComponentLayoutAttributeDescriptor descriptorWithFromLayoutAttribute:2 toLayoutAttribute:0 ignoreMargin:?];
                    identifier4 = [v38 identifier];
                    v43 = SXComponentDependencyCreate(v207, identifier4, 1, 1, v41);
                    [(SXComponentDependencyResolver *)v210 addDependency:v43];

                    identifier5 = [v38 identifier];
                    v45 = SXComponentDependencyCreate(v207, identifier5, 1, 2, v41);
                    [(SXComponentDependencyResolver *)v210 addDependency:v45];

                    anchor5 = [v38 anchor];
                    targetComponentIdentifier4 = [anchor5 targetComponentIdentifier];
                    if (targetComponentIdentifier4)
                    {
                      v48 = targetComponentIdentifier4;
                      anchor6 = [component anchor];
                      targetComponentIdentifier5 = [anchor6 targetComponentIdentifier];
                      anchor7 = [v38 anchor];
                      targetComponentIdentifier6 = [anchor7 targetComponentIdentifier];

                      blueprintCopy = v197;
                      v53 = targetComponentIdentifier5 == targetComponentIdentifier6;
                      v29 = v198;
                      if (v53)
                      {
                        goto LABEL_36;
                      }

                      anchor8 = [v38 anchor];
                      targetComponentIdentifier7 = [anchor8 targetComponentIdentifier];
                      anchor5 = [v197 componentBlueprintForComponentIdentifier:targetComponentIdentifier7];

                      if ([(SXColumnLayouter *)self intersectionPossibleForComponentWithBlueprint:v40 anchoredToComponentWithBlueprint:anchor5 layoutBlueprint:v197 columnStack:stackCopy])
                      {
                        v56 = [SXComponentLayoutAttributeDescriptor descriptorWithFromLayoutAttribute:2 toLayoutAttribute:0 ignoreMargin:?];
                        component4 = [anchor5 component];
                        identifier6 = [component4 identifier];
                        v59 = SXComponentDependencyCreate(v207, identifier6, 1, 1, v56);
                        [(SXComponentDependencyResolver *)v210 addDependency:v59];

                        component5 = [anchor5 component];
                        identifier7 = [component5 identifier];
                        blueprintCopy = v197;
                        v62 = SXComponentDependencyCreate(v207, identifier7, 1, 2, v56);
                        [(SXComponentDependencyResolver *)v210 addDependency:v62];

                        v29 = v198;
                      }
                    }

LABEL_36:
                  }

                  v204 = [v191 countByEnumeratingWithState:&v231 objects:v248 count:16];
                  if (!v204)
                  {
                    resolverCopy = v210;
                    goto LABEL_54;
                  }
                }
              }

LABEL_39:
              v63 = [SXComponentLayoutAttributeDescriptor descriptorWithFromLayoutAttribute:2 toLayoutAttribute:0 ignoreMargin:?];
              identifier8 = [v185 identifier];
              v65 = SXComponentDependencyCreate(v207, identifier8, 1, 1, v63);
              [(SXComponentDependencyResolver *)resolverCopy addDependency:v65];

              identifier9 = [v185 identifier];
              v191 = v63;
              v67 = SXComponentDependencyCreate(v207, identifier9, 1, 2, v63);
              [(SXComponentDependencyResolver *)resolverCopy addDependency:v67];

              anchor9 = [v185 anchor];
              v69 = anchor9;
              if (anchor9)
              {
                targetComponentIdentifier8 = [anchor9 targetComponentIdentifier];
                if (targetComponentIdentifier8)
                {
                  v71 = targetComponentIdentifier8;
                  targetComponentIdentifier9 = [v69 targetComponentIdentifier];
                  targetComponentIdentifier10 = [v29 targetComponentIdentifier];
                  if (([targetComponentIdentifier9 isEqualToString:targetComponentIdentifier10] & 1) == 0)
                  {

LABEL_45:
                    anchor10 = [v185 anchor];
                    targetComponentIdentifier11 = [anchor10 targetComponentIdentifier];
                    v77 = [blueprintCopy componentBlueprintForComponentIdentifier:targetComponentIdentifier11];

                    columnRange = [v179 columnRange];
                    v80 = v79;
                    v255.location = [v77 columnRange];
                    v255.length = v81;
                    v252.location = columnRange;
                    v252.length = v80;
                    if (NSIntersectionRange(v252, v255).length)
                    {
                      v82 = [(SXColumnLayouter *)self intersectionPossibleForComponentWithBlueprint:v19 anchoredToComponentWithBlueprint:v77 layoutBlueprint:blueprintCopy columnStack:stackCopy];
                      if (([v171 containsObject:v77] & 1) == 0 && v82)
                      {
                        identifier10 = [component identifier];
                        component6 = [v77 component];
                        identifier11 = [component6 identifier];
                        v86 = [identifier10 isEqualToString:identifier11];

                        if ((v86 & 1) == 0)
                        {
                          v87 = [SXComponentLayoutAttributeDescriptor descriptorWithFromLayoutAttribute:2 toLayoutAttribute:0 ignoreMargin:?];
                          component7 = [v77 component];
                          identifier12 = [component7 identifier];
                          v90 = SXComponentDependencyCreate(v207, identifier12, 1, 1, v87);
                          [(SXComponentDependencyResolver *)resolverCopy addDependency:v90];

                          component8 = [v77 component];
                          identifier13 = [component8 identifier];
                          v93 = SXComponentDependencyCreate(v207, identifier13, 1, 2, v87);
                          [(SXComponentDependencyResolver *)resolverCopy addDependency:v93];

                          if ([v77 hasValidSize])
                          {
                            component9 = [v77 component];
                            identifier14 = [component9 identifier];
                            [blueprintCopy invalidateSizeForComponentWithIdentifier:identifier14];
                          }

                          v29 = v198;
                        }
                      }
                    }

                    goto LABEL_53;
                  }

                  range2 = [v29 range];

                  if (range2 == 0x7FFFFFFFFFFFFFFFLL)
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
  componentIdentifiers = [blueprintCopy componentIdentifiers];
  v97 = [componentIdentifiers countByEnumeratingWithState:&v227 objects:v247 count:16];
  if (!v97)
  {
    goto LABEL_110;
  }

  v98 = v97;
  v195 = *v228;
  v180 = componentIdentifiers;
  do
  {
    for (j = 0; j != v98; ++j)
    {
      if (*v228 != v195)
      {
        objc_enumerationMutation(componentIdentifiers);
      }

      v100 = *(*(&v227 + 1) + 8 * j);
      v101 = [blueprintCopy componentBlueprintForComponentIdentifier:v100];
      component10 = [v101 component];
      anchor11 = [component10 anchor];
      if (anchor11)
      {
        v199 = v100;
        v104 = anchor11;
        v202 = component10;
        if ([anchor11 originAnchorPosition])
        {
          originAnchorPosition = [v104 originAnchorPosition];
        }

        else
        {
          originAnchorPosition = [v104 targetAnchorPosition];
        }

        v106 = [(SXColumnLayouter *)self layoutAttributeForAnchor:originAnchorPosition];
        v192 = -[SXColumnLayouter layoutAttributeForAnchor:](self, "layoutAttributeForAnchor:", [v104 targetAnchorPosition]);
        targetComponentIdentifier12 = [v104 targetComponentIdentifier];

        if (!targetComponentIdentifier12)
        {
          component10 = v202;
          anchor11 = v104;
          if (!v106)
          {
            goto LABEL_108;
          }

          v205 = v104;
          v109 = SXComponentDependencyCreate(v199, v199, 1, 2, 0);
          [(SXComponentDependencyResolver *)resolverCopy addDependency:v109];
          goto LABEL_107;
        }

        v186 = v106;
        v205 = v104;
        targetComponentIdentifier13 = [v104 targetComponentIdentifier];
        v109 = [blueprintCopy componentBlueprintForComponentIdentifier:targetComponentIdentifier13];

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
          columnRange2 = [v101 columnRange];
          v114 = v113;
          v256.location = [v109 columnRange];
          v256.length = v115;
          v253.location = columnRange2;
          v253.length = v114;
          if (NSIntersectionRange(v253, v256).length && !v110)
          {
            resolverCopy = v210;
            componentIdentifiers = v180;
            v101 = v183;
LABEL_79:
            component10 = v202;
LABEL_107:

            anchor11 = v205;
            goto LABEL_108;
          }

          targetComponentIdentifier14 = [v205 targetComponentIdentifier];
          if ([v205 range] == 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v205, "range"), v116 == 0x7FFFFFFFFFFFFFFFLL))
          {
            v119 = [SXComponentLayoutAttributeDescriptor descriptorWithFromLayoutAttribute:v186 toLayoutAttribute:v192 ignoreMargin:1];
            v101 = v183;
            resolverCopy = v210;
            if (![(SXColumnLayouter *)self anchorPossibleForComponentWithBlueprint:v183 anchoredToComponentWithBlueprint:v109 layoutBlueprint:blueprintCopy columnStack:stackCopy])
            {
              goto LABEL_105;
            }
          }

          else
          {
            v174 = j;
            range3 = [v205 range];
            v119 = [SXTextComponentLayoutAttributeDescriptor descriptorWithFromLayoutAttribute:v186 toLayoutAttribute:v192 ignoreMargin:1 withRange:range3, v119];
            v101 = v183;
            columnRange3 = [v183 columnRange];
            v122 = v121;
            v257.location = [v109 columnRange];
            v257.length = v123;
            v254.location = columnRange3;
            v254.length = v122;
            resolverCopy = v210;
            if (NSIntersectionRange(v254, v257).length)
            {
              if (![(SXColumnLayouter *)self intersectionPossibleForComponentWithBlueprint:v183 anchoredToComponentWithBlueprint:v109 layoutBlueprint:blueprintCopy columnStack:stackCopy])
              {
                j = v174;
                goto LABEL_105;
              }

              v170 = v109;
              v172 = v98;
              v124 = SXComponentDependencyCreate(targetComponentIdentifier14, v199, 2, 2, v119);
              [(SXComponentDependencyResolver *)v210 addDependency:v124];

              v177 = v119;
              v125 = SXComponentDependencyCreate(v199, targetComponentIdentifier14, 1, 2, v119);
              [(SXComponentDependencyResolver *)v210 addDependency:v125];

              v126 = SXComponentDependencyCreate(targetComponentIdentifier14, targetComponentIdentifier14, 2, 1, 0);
              [(SXComponentDependencyResolver *)v210 addDependency:v126];

              v127 = [(SXComponentDependencyResolver *)v210 componentNodeForComponentIdentifier:v199 andAttribute:1];
              v223 = 0u;
              v224 = 0u;
              v225 = 0u;
              v226 = 0u;
              v168 = v127;
              dependencies = [(SXComponentNode *)v127 dependencies];
              v128 = [dependencies countByEnumeratingWithState:&v223 objects:v246 count:16];
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
                      objc_enumerationMutation(dependencies);
                    }

                    v132 = *(*(*(&v223 + 1) + 8 * k) + 16);
                    v133 = [blueprintCopy componentBlueprintForComponentIdentifier:v132];
                    if (([v132 isEqualToString:targetComponentIdentifier14] & 1) == 0)
                    {
                      component11 = [v133 component];
                      [component11 anchor];
                      v136 = v135 = targetComponentIdentifier14;
                      targetComponentIdentifier15 = [v136 targetComponentIdentifier];
                      v138 = [targetComponentIdentifier15 isEqualToString:v135];

                      targetComponentIdentifier14 = v135;
                      if ((v138 & 1) == 0)
                      {
                        v139 = SXComponentDependencyCreate(v135, v132, 2, 1, 0);
                        [(SXComponentDependencyResolver *)v210 addDependency:v139];

                        v140 = SXComponentDependencyCreate(v135, v132, 2, 2, 0);
                        targetComponentIdentifier14 = v135;
                        [(SXComponentDependencyResolver *)v210 addDependency:v140];
                      }
                    }

                    blueprintCopy = v197;
                  }

                  v129 = [dependencies countByEnumeratingWithState:&v223 objects:v246 count:16];
                }

                while (v129);
              }

              resolverCopy = v210;
              v98 = v172;
              j = v174;
              v109 = v170;
              v119 = v177;
            }

            else
            {
              j = v174;
              if (![(SXColumnLayouter *)self anchorPossibleForComponentWithBlueprint:v183 anchoredToComponentWithBlueprint:v109 layoutBlueprint:blueprintCopy columnStack:stackCopy])
              {
                goto LABEL_105;
              }
            }
          }

          v141 = j;
          v142 = SXComponentDependencyCreate(v199, targetComponentIdentifier14, 1, 1, v119);
          [(SXComponentDependencyResolver *)resolverCopy addDependency:v142];

          if (v186 | v192)
          {
            v143 = SXComponentDependencyCreate(v199, targetComponentIdentifier14, 1, 2, v119);
            [(SXComponentDependencyResolver *)resolverCopy addDependency:v143];

            if (v186)
            {
              v144 = SXComponentDependencyCreate(v199, v199, 1, 2, 0);
              [(SXComponentDependencyResolver *)resolverCopy addDependency:v144];
            }
          }

          array = [dictionary objectForKey:targetComponentIdentifier14];
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
            [dictionary setObject:array forKey:targetComponentIdentifier14];
          }

          identifier15 = [v202 identifier];
          [array addObject:identifier15];

          j = v141;
          v101 = v183;
LABEL_105:

          componentIdentifiers = v180;
        }

        else
        {
          if (!v106)
          {
            goto LABEL_79;
          }

          targetComponentIdentifier14 = SXComponentDependencyCreate(v199, v199, 2, 1, 0);
          [(SXComponentDependencyResolver *)resolverCopy addDependency:targetComponentIdentifier14];
        }

        component10 = v202;

        goto LABEL_107;
      }

LABEL_108:
    }

    v98 = [componentIdentifiers countByEnumeratingWithState:&v227 objects:v247 count:16];
  }

  while (v98);
LABEL_110:

  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  v181 = dictionary;
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
        v149 = [(SXComponentDependencyResolver *)resolverCopy componentNodeForComponentIdentifier:v148 andAttribute:1];
        v215 = 0u;
        v216 = 0u;
        v217 = 0u;
        v218 = 0u;
        v184 = v149;
        dependencies2 = [(SXComponentNode *)v149 dependencies];
        v200 = [dependencies2 countByEnumeratingWithState:&v215 objects:v244 count:16];
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
                objc_enumerationMutation(dependencies2);
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
            v200 = [dependencies2 countByEnumeratingWithState:&v215 objects:v244 count:16];
          }

          while (v200);
        }

        v147 = v187 + 1;
        resolverCopy = v210;
      }

      while (v187 + 1 != v178);
      v178 = [v181 countByEnumeratingWithState:&v219 objects:v245 count:16];
    }

    while (v178);
  }
}

- (id)findComponentStackBeforeComponent:(id)component inColumnStack:(id)stack
{
  selfCopy = self;
  v31 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  stackCopy = stack;
  array = [MEMORY[0x1E695DF70] array];
  v25 = componentCopy;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = stackCopy;
  obj = [stackCopy componentsBeforeComponent:componentCopy];
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
        component = [v10 component];
        anchor = [component anchor];
        targetComponentIdentifier = [anchor targetComponentIdentifier];
        component2 = [v25 component];
        anchor2 = [component2 anchor];
        targetComponentIdentifier2 = [anchor2 targetComponentIdentifier];
        v17 = [targetComponentIdentifier isEqualToString:targetComponentIdentifier2];

        if (v17)
        {
          component3 = [(SXColumnLayouter *)selfCopy findComponentStackBeforeComponent:v10 inColumnStack:v21];
          [array addObjectsFromArray:component3];
        }

        else
        {
          component3 = [v10 component];
          [array addObject:component3];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  return array;
}

- (CGPoint)calculatePositionForComponentNode:(id)node columnLayout:(id)layout layoutBlueprint:(id)blueprint
{
  v142 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  layoutCopy = layout;
  blueprintCopy = blueprint;
  text = [(SXFullscreenCaption *)nodeCopy text];
  v11 = [blueprintCopy componentBlueprintForComponentIdentifier:text];

  componentLayout = [v11 componentLayout];
  componentSizer = [v11 componentSizer];
  v131 = v11;
  v128 = componentLayout;
  v129 = layoutCopy;
  [layoutCopy xPositionForColumnIndex:objc_msgSend(v11 ignoreMargin:"columnRange") ignoreGutter:objc_msgSend(componentSizer ignoreViewportPadding:"shouldIgnoreMarginsForColumnLayout:" ignoreSafeAreaInsets:{layoutCopy), objc_msgSend(componentLayout, "ignoreDocumentGutter"), objc_msgSend(componentSizer, "shouldIgnoreViewportPaddingForColumnLayout:", layoutCopy), 0}];
  v14 = v13;
  array = [MEMORY[0x1E695DF70] array];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v130 = nodeCopy;
  dependencies = [(SXComponentNode *)nodeCopy dependencies];
  v16 = [dependencies countByEnumeratingWithState:&v137 objects:v141 count:16];
  if (!v16)
  {
    ignoreMargins = 0;
    v20 = 0.0;
    v22 = v131;
    v21 = array;
    goto LABEL_39;
  }

  v17 = v16;
  ignoreMargins = 0;
  v19 = *v138;
  v20 = 0.0;
  v22 = v131;
  v21 = array;
  v133 = *v138;
  v134 = dependencies;
  do
  {
    v23 = 0;
    v136 = v17;
    do
    {
      if (*v138 != v19)
      {
        objc_enumerationMutation(dependencies);
      }

      v24 = *(*(&v137 + 1) + 8 * v23);
      componentIdentifier = [(SXTangierTextRenderCollectorItem *)v24 componentIdentifier];
      if ([v21 containsObject:componentIdentifier])
      {
        goto LABEL_34;
      }

      componentIdentifier2 = [(SXTangierTextRenderCollectorItem *)v24 componentIdentifier];

      if (!componentIdentifier2)
      {
        v17 = v136;
        goto LABEL_35;
      }

      componentIdentifier = [(SXTangierTextRenderCollectorItem *)v24 componentIdentifier];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        componentIdentifier3 = [(SXTangierTextRenderCollectorItem *)v24 componentIdentifier];
        caption = [(SXFullscreenCaption *)v24 caption];
        v29 = [blueprintCopy componentBlueprintForComponentIdentifier:caption includeChildren:0];

        columnRange = [v22 columnRange];
        v32 = v31;
        v144.location = [v29 columnRange];
        v144.length = v33;
        v143.location = columnRange;
        v143.length = v32;
        if (NSIntersectionRange(v143, v144).length)
        {
          resultingExclusionPath = [(SXTextComponentLayoutAttributeDescriptor *)componentIdentifier3 resultingExclusionPath];
          if (resultingExclusionPath)
          {
            resultingExclusionPath2 = [(SXTextComponentLayoutAttributeDescriptor *)componentIdentifier3 resultingExclusionPath];
          }

          else
          {
            exclusionPaths = [v29 exclusionPaths];
            [(SXFullscreenCaption *)v130 text];
            v64 = v63 = blueprintCopy;
            resultingExclusionPath2 = [exclusionPaths objectForKey:v64];

            blueprintCopy = v63;
            v22 = v131;

            v21 = array;
          }

          [v29 frame];
          MinY = CGRectGetMinY(v152);
          [(SXTextExclusionPath *)resultingExclusionPath2 position];
          v67 = v66;
          [(SXTextExclusionPath *)resultingExclusionPath2 position];
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

          v54 = [(SXTextExclusionPath *)resultingExclusionPath2 insets]+ v20;
        }

        else
        {
          caption2 = [(SXFullscreenCaption *)v24 caption];
          resultingExclusionPath2 = [blueprintCopy componentBlueprintForComponentIdentifier:caption2 includeChildren:0];

          componentSizer2 = [resultingExclusionPath2 componentSizer];
          range = [(SXTextComponentLayoutAttributeDescriptor *)componentIdentifier3 range];
          [componentSizer2 verticalPositionForRange:{range, v58}];
          v60 = v59;
          [resultingExclusionPath2 frame];
          v61 = v60 + CGRectGetMinY(v151);
          if (v61 >= v20)
          {
            v54 = v61;
          }

          else
          {
            v54 = v20;
          }

          v21 = array;
        }

        ignoreMargins = 1;
        v19 = v133;
        dependencies = v134;
LABEL_32:

        v20 = v54;
        goto LABEL_33;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        caption3 = [(SXFullscreenCaption *)v24 caption];
        componentIdentifier3 = [blueprintCopy componentBlueprintForComponentIdentifier:caption3];

        [componentIdentifier3 frame];
        v37 = CGRectGetMinY(v146);
        [componentIdentifier3 frame];
        Height = CGRectGetHeight(v147);
        [(SXColumnLayouter *)self factorForLayoutAttribute:[(SXComponentLayoutAttributeDescriptor *)componentIdentifier toLayoutAttribute]];
        v40 = v37 + Height * v39;
        if (([(SXComponentLayoutAttributeDescriptor *)componentIdentifier ignoreMargins]& 1) == 0)
        {
          [componentIdentifier3 frame];
          if (CGRectGetHeight(v148) != 0.0)
          {
            unitConverterFactory = self->_unitConverterFactory;
            [componentIdentifier3 frame];
            Width = CGRectGetWidth(v149);
            [blueprintCopy blueprintSize];
            v44 = v43;
            layoutOptions = [blueprintCopy layoutOptions];
            v46 = [(SXUnitConverterFactory *)unitConverterFactory createUnitConverterWithComponentWidth:layoutOptions parentWidth:Width layoutOptions:v44];

            componentLayout2 = [componentIdentifier3 componentLayout];
            margin = [componentLayout2 margin];
            bottom = [margin bottom];
            [v46 convertValueToPoints:{bottom, v50}];
            v40 = v40 + v51;

            v19 = v133;
            dependencies = v134;
          }
        }

        [v22 frame];
        v52 = CGRectGetHeight(v150);
        [(SXColumnLayouter *)self factorForLayoutAttribute:[(SXComponentLayoutAttributeDescriptor *)componentIdentifier fromLayoutAttribute]];
        v54 = v40 - v52 * v53;
        v21 = array;
        if (v54 <= v20)
        {
          v54 = v20;
        }

        else
        {
          ignoreMargins = [(SXComponentLayoutAttributeDescriptor *)componentIdentifier ignoreMargins];
        }

        goto LABEL_32;
      }

LABEL_33:
      componentIdentifier4 = [(SXTangierTextRenderCollectorItem *)v24 componentIdentifier];
      [v21 addObject:componentIdentifier4];

      v17 = v136;
LABEL_34:

LABEL_35:
      ++v23;
    }

    while (v17 != v23);
    v17 = [dependencies countByEnumeratingWithState:&v137 objects:v141 count:16];
  }

  while (v17);
LABEL_39:

  component = [v22 component];
  anchor = [component anchor];
  if (anchor)
  {
    v74 = anchor;
    component2 = [v22 component];
    anchor2 = [component2 anchor];
    targetComponentIdentifier = [anchor2 targetComponentIdentifier];
    v78 = v129;
    if (targetComponentIdentifier)
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
      component3 = [v131 component];
      anchor3 = [component3 anchor];
      originAnchorPosition = [anchor3 originAnchorPosition];
      component4 = [v131 component];
      anchor4 = [component4 anchor];
      v86 = anchor4;
      if (originAnchorPosition)
      {
        originAnchorPosition2 = [anchor4 originAnchorPosition];
      }

      else
      {
        originAnchorPosition2 = [anchor4 targetAnchorPosition];
      }

      v116 = originAnchorPosition2;

      v22 = v131;
      component5 = [v131 component];
      anchor5 = [component5 anchor];
      targetAnchorPosition = [anchor5 targetAnchorPosition];

      [v131 frame];
      v120 = CGRectGetHeight(v156);
      [(SXColumnLayouter *)self factorForLayoutAttribute:[(SXColumnLayouter *)self layoutAttributeForAnchor:v116]];
      v122 = v120 * v121;
      [v129 minimumHeight];
      v124 = v123;
      [(SXColumnLayouter *)self factorForLayoutAttribute:[(SXColumnLayouter *)self layoutAttributeForAnchor:targetAnchorPosition]];
      v126 = v124 * v125 - v122;
      if (v126 >= v20)
      {
        v20 = v126;
      }

      ignoreMargins |= v116 != 0;
      v21 = array;
    }
  }

  else
  {

    v78 = v129;
  }

  [v22 frame];
  if (CGRectGetHeight(v153) == 0.0 && [v22 hasValidSize])
  {
    component6 = [v22 component];
    classification = [component6 classification];
    isCollapsible = [classification isCollapsible];

    v21 = array;
  }

  else
  {
    isCollapsible = 1;
  }

  [v22 frame];
  v91 = CGRectGetHeight(v154);
  if (ignoreMargins & 1) != 0 || v91 == 0.0 && (v91 != 0.0) | isCollapsible & 1 && ([v22 hasValidSize])
  {
    v93 = componentSizer;
    v92 = v128;
  }

  else
  {
    [v22 frame];
    v94 = CGRectGetWidth(v155);
    v93 = componentSizer;
    v92 = v128;
    if (([v22 hasValidSize] & 1) == 0)
    {
      componentSizer3 = [v22 componentSizer];
      v96 = [componentSizer3 shouldIgnoreMarginsForColumnLayout:v78];

      v97 = [componentSizer shouldIgnoreViewportPaddingForColumnLayout:v78];
      columnRange2 = [v22 columnRange];
      v100 = v99;
      ignoreDocumentGutter = [v128 ignoreDocumentGutter];
      v102 = columnRange2;
      v21 = array;
      [v78 widthForColumnRange:v102 ignoreMargin:v100 ignoreGutter:v96 ignoreViewportPadding:{ignoreDocumentGutter, v97}];
      v94 = v103;
    }

    v104 = self->_unitConverterFactory;
    [blueprintCopy blueprintSize];
    v106 = v105;
    layoutOptions2 = [blueprintCopy layoutOptions];
    v108 = [(SXUnitConverterFactory *)v104 createUnitConverterWithComponentWidth:layoutOptions2 parentWidth:v94 layoutOptions:v106];

    margin2 = [v128 margin];
    v110 = [margin2 top];
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

- (CGSize)calculateSizeForComponentNode:(id)node columnLayout:(id)layout layoutBlueprint:(id)blueprint dependencyResolver:(id)resolver
{
  v173 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  layoutCopy = layout;
  blueprintCopy = blueprint;
  resolverCopy = resolver;
  v135 = nodeCopy;
  text = [(SXFullscreenCaption *)nodeCopy text];
  v14 = [blueprintCopy componentBlueprintForComponentIdentifier:text];

  columnRange = [v14 columnRange];
  v17 = v16;
  componentLayout = [v14 componentLayout];
  componentSizer = [v14 componentSizer];
  v20 = [componentSizer shouldIgnoreMarginsForColumnLayout:layoutCopy];
  v129 = componentSizer;
  v21 = [componentSizer shouldIgnoreViewportPaddingForColumnLayout:layoutCopy];
  [layoutCopy xPositionForColumnIndex:columnRange ignoreMargin:v20 ignoreGutter:objc_msgSend(componentLayout ignoreViewportPadding:"ignoreDocumentGutter") ignoreSafeAreaInsets:{v21, 0}];
  v23 = v22;
  v132 = componentLayout;
  v154 = layoutCopy;
  [layoutCopy widthForColumnRange:columnRange ignoreMargin:v17 ignoreGutter:v20 ignoreViewportPadding:{objc_msgSend(componentLayout, "ignoreDocumentGutter"), v21}];
  v25 = v24;
  selfCopy = self;
  unitConverterFactory = self->_unitConverterFactory;
  [blueprintCopy blueprintSize];
  v28 = v27;
  v148 = blueprintCopy;
  v29 = blueprintCopy;
  v30 = v14;
  layoutOptions = [v29 layoutOptions];
  v32 = [(SXUnitConverterFactory *)unitConverterFactory createUnitConverterWithComponentWidth:layoutOptions parentWidth:v25 layoutOptions:v28];

  componentSizer2 = [v14 componentSizer];
  v143 = v32;
  [componentSizer2 contentInsetsWithUnitConverter:v32];
  v35 = v34;
  v37 = v36;

  v38 = v35 + v37;
  array = [MEMORY[0x1E695DF70] array];
  componentSizer3 = [v30 componentSizer];
  objc_opt_class();
  LOBYTE(layoutOptions) = objc_opt_isKindOfClass();

  if (layoutOptions)
  {
    componentSizer4 = [v30 componentSizer];
    [componentSizer4 removeAllExclusionPaths];
  }

  v128 = v25 - v38;
  dependencies = [(SXComponentNode *)v135 dependencies];
  v43 = [(SXColumnLayouter *)self sortComponentDependencies:dependencies forBlueprint:v148];

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
    v146 = array;
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
        componentIdentifier = [(SXTangierTextRenderCollectorItem *)v49 componentIdentifier];
        v51 = [array containsObject:componentIdentifier];

        if ((v51 & 1) == 0)
        {
          component = [v30 component];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            component2 = [v30 component];
            componentIdentifier2 = [(SXTangierTextRenderCollectorItem *)v49 componentIdentifier];
            objc_opt_class();
            v56 = objc_opt_isKindOfClass();

            if (v56)
            {
              v150 = component2;
              identifier = [component2 identifier];
              v58 = [v148 componentBlueprintForComponentIdentifier:identifier includeChildren:1];

              componentSizer5 = [v58 componentSizer];
              v153 = v58;
              componentLayout2 = [v58 componentLayout];
              componentIdentifier3 = [(SXTangierTextRenderCollectorItem *)v49 componentIdentifier];
              v61 = [componentSizer5 shouldIgnoreMarginsForColumnLayout:v154];
              v149 = componentSizer5;
              v62 = [componentSizer5 shouldIgnoreViewportPaddingForColumnLayout:v154];
              caption = [(SXFullscreenCaption *)v49 caption];
              v64 = [v148 componentBlueprintForComponentIdentifier:caption];

              componentLayout3 = [v64 componentLayout];
              [v154 xPositionForColumnIndex:objc_msgSend(v64 ignoreMargin:"columnRange") ignoreGutter:v61 ignoreViewportPadding:objc_msgSend(componentLayout2 ignoreSafeAreaInsets:{"ignoreDocumentGutter"), v62, 0}];
              v67 = v66;
              columnRange2 = [v64 columnRange];
              [v154 widthForColumnRange:columnRange2 ignoreMargin:v69 ignoreGutter:v61 ignoreViewportPadding:{objc_msgSend(componentLayout2, "ignoreDocumentGutter"), v62}];
              v71 = v70;
              v155 = componentLayout3;
              margin = [componentLayout3 margin];
              bottom = [margin bottom];
              [v143 convertValueToPoints:{bottom, v74}];
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
              gutter = v138;
              if (!v81)
              {
                gutter = [v154 gutter];
              }

              v144 = gutter;
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
              gutter2 = v136;
              if (v84 != CGRectGetMaxX(v180))
              {
                gutter2 = [v154 gutter];
              }

              v86 = componentIdentifier3;
              v87 = v139;
              v30 = v142;
              v44 = v145;
              v46 = v147;
              if ([(SXTextComponentLayoutAttributeDescriptor *)componentIdentifier3 range])
              {
                margin2 = [v155 margin];
                v89 = [margin2 top];
                [v143 convertValueToPoints:{v89, v90}];
                v87 = v91;
              }

              v92 = v137;
              if ([(SXComponentLayoutAttributeDescriptor *)componentIdentifier3 fromLayoutAttribute]!= 2)
              {
                margin3 = [v155 margin];
                bottom2 = [margin3 bottom];
                [v143 convertValueToPoints:{bottom2, v95}];
                v92 = v96;
              }

              [v64 frame];
              if (CGRectGetHeight(v181) != 0.0 && [v149 stringLength])
              {
                range = [(SXTextComponentLayoutAttributeDescriptor *)componentIdentifier3 range];
                stringLength = [v149 stringLength];
                if (range >= stringLength - 1)
                {
                  range = stringLength - 1;
                }

                v99 = [SXTextExclusionPath alloc];
                v102 = [(SXTextExclusionPath *)v99 initWithTextRange:range position:0 rect:v80 withInsets:y, v131, v130, width, height, v100, v101, v87, v144, v92, gutter2];
                caption2 = [(SXFullscreenCaption *)v49 caption];
                [(SXTextExclusionPath *)v102 setComponentIdentifier:caption2];

                [(SXTextExclusionPath *)v102 setVerticalAlignmentFactor:?];
                [(SXTextExclusionPath *)v102 setLineVerticalAlignment:?];
                columnRange3 = [v64 columnRange];
                if (columnRange3 <= [v153 columnRange])
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
                v159 = resolverCopy;
                v160 = v49;
                v161 = v135;
                v162 = v148;
                v163 = selfCopy;
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
                v157 = componentIdentifier3;
                [(SXTextExclusionPath *)v102 setCompletionBlock:v156];
                [v109 addExclusionPath:v102];
                caption3 = [(SXFullscreenCaption *)v49 caption];
                v86 = componentIdentifier3;
                [v153 addExclusionPath:v102 forIdentifier:caption3];

                componentIdentifier4 = [(SXTangierTextRenderCollectorItem *)v49 componentIdentifier];
                [v146 addObject:componentIdentifier4];

                v44 = v145;
              }

              v23 = v140;
              v25 = v141;
              array = v146;
              component2 = v150;
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

  v112 = [(SXLayoutContextFactory *)selfCopy->_layoutContextFactory createLayoutContextForColumnLayout:v154 unitConverter:v143];
  componentSizer6 = [v30 componentSizer];
  [componentSizer6 calculateHeightForWidth:v112 layoutContext:v128];
  v115 = v114;

  componentSizer7 = [v30 componentSizer];
  [componentSizer7 contentInsetsWithUnitConverter:v143];
  v118 = v117;
  v120 = v119;

  v121 = v115 + v118 + v120;
  [v132 minimumHeight];
  if (v122)
  {
    minimumHeight = [v132 minimumHeight];
    [v143 convertValueToPoints:{minimumHeight, v124}];
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

- (void)analyzeSnapLinesForLayoutBlueprint:(id)blueprint
{
  selfCopy = self;
  v44 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [blueprintCopy componentIdentifiers];
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

        v9 = [blueprintCopy componentBlueprintForComponentIdentifier:{*(*(&v38 + 1) + 8 * v8), selfCopy}];
        if ([v9 hasValidLayout])
        {
          v10 = blueprintCopy;
          [v9 absoluteFrame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;
          [v9 absoluteFrame];
          v19 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMinY(v45)];
          [orderedSet addObject:v19];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            layoutBlueprint = [v9 layoutBlueprint];
            [(SXColumnLayouter *)selfCopy analyzeSnapLinesForLayoutBlueprint:layoutBlueprint];
          }

          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          componentSizer = [v9 componentSizer];
          snapLines = [componentSizer snapLines];

          v23 = [snapLines countByEnumeratingWithState:&v34 objects:v42 count:16];
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
                  objc_enumerationMutation(snapLines);
                }

                [*(*(&v34 + 1) + 8 * v26) floatValue];
                v28 = v27;
                v46.origin.x = v12;
                v46.origin.y = v14;
                v46.size.width = v16;
                v46.size.height = v18;
                v29 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMinY(v46) + v28];
                [orderedSet addObject:v29];

                ++v26;
              }

              while (v24 != v26);
              v24 = [snapLines countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v24);
          }

          blueprintCopy = v10;
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

  [blueprintCopy setSnapLines:orderedSet];
}

- (id)columnStackForLayoutBlueprint:(id)blueprint columnLayout:(id)layout
{
  v31 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  layoutCopy = layout;
  v25 = -[SXColumnStack initWithNumberOfColumns:]([SXColumnStack alloc], "initWithNumberOfColumns:", [layoutCopy numberOfColumns]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = blueprintCopy;
  obj = [blueprintCopy componentIdentifiers];
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
        componentSizer = [v12 componentSizer];
        componentLayout = [v12 componentLayout];
        columnRange = [componentLayout columnRange];
        v17 = [layoutCopy convertColumnRange:columnRange minimumColumnLength:{v16, objc_msgSend(componentSizer, "minimumColumnLength")}];
        v19 = v18;

        v20 = [componentSizer overrideColumnLayoutForColumnRange:v17 inColumnLayout:{v19, layoutCopy}];
        v22 = v21;
        if (v20 + v21 > [layoutCopy numberOfColumns])
        {
          v22 = [layoutCopy numberOfColumns] - v20;
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

- (id)sortComponentDependencies:(id)dependencies forBlueprint:(id)blueprint
{
  blueprintCopy = blueprint;
  allObjects = [dependencies allObjects];
  v7 = [allObjects mutableCopy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__SXColumnLayouter_sortComponentDependencies_forBlueprint___block_invoke;
  v10[3] = &unk_1E84FEEE8;
  v11 = blueprintCopy;
  v8 = blueprintCopy;
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

- (BOOL)anchorPossibleForComponentWithBlueprint:(id)blueprint anchoredToComponentWithBlueprint:(id)withBlueprint layoutBlueprint:(id)layoutBlueprint columnStack:(id)stack
{
  v62 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  withBlueprintCopy = withBlueprint;
  layoutBlueprintCopy = layoutBlueprint;
  stackCopy = stack;
  componentIdentifiers = [layoutBlueprintCopy componentIdentifiers];
  component = [blueprintCopy component];
  identifier = [component identifier];
  v16 = [componentIdentifiers indexOfObjectIdenticalTo:identifier];

  componentIdentifiers2 = [layoutBlueprintCopy componentIdentifiers];
  v51 = withBlueprintCopy;
  component2 = [withBlueprintCopy component];
  identifier2 = [component2 identifier];
  v20 = [componentIdentifiers2 indexOfObjectIdenticalTo:identifier2];

  if (v16 <= v20)
  {
    [stackCopy componentsAfterComponent:blueprintCopy];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v21 = v55 = 0u;
    v36 = [v21 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v36)
    {
      v37 = v36;
      v49 = stackCopy;
      v50 = blueprintCopy;
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
        component3 = [v40 component];
        identifier3 = [component3 identifier];

        componentIdentifiers3 = [layoutBlueprintCopy componentIdentifiers];
        v43 = [componentIdentifiers3 indexOfObjectIdenticalTo:identifier3];

        if (v43 < v20)
        {
          columnRange = [v40 columnRange];
          v46 = v45;
          v66.location = [v51 columnRange];
          v66.length = v47;
          v64.location = columnRange;
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

  [stackCopy componentsBeforeComponent:blueprintCopy];
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
  v49 = stackCopy;
  v50 = blueprintCopy;
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
    component4 = [v26 component];
    identifier3 = [component4 identifier];

    componentIdentifiers4 = [layoutBlueprintCopy componentIdentifiers];
    v30 = [componentIdentifiers4 indexOfObjectIdenticalTo:identifier3];

    if (v30 > v20)
    {
      columnRange2 = [v26 columnRange];
      v33 = v32;
      v65.location = [v51 columnRange];
      v65.length = v34;
      v63.location = columnRange2;
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
  stackCopy = v49;
  blueprintCopy = v50;
LABEL_25:

  return v35;
}

- (BOOL)intersectionPossibleForComponentWithBlueprint:(id)blueprint anchoredToComponentWithBlueprint:(id)withBlueprint layoutBlueprint:(id)layoutBlueprint columnStack:(id)stack
{
  blueprintCopy = blueprint;
  withBlueprintCopy = withBlueprint;
  layoutBlueprintCopy = layoutBlueprint;
  stackCopy = stack;
  v14 = MEMORY[0x1E696AEC0];
  component = [blueprintCopy component];
  identifier = [component identifier];
  component2 = [withBlueprintCopy component];
  identifier2 = [component2 identifier];
  v19 = [v14 stringWithFormat:@"%@-%@", identifier, identifier2];

  v20 = [(NSMutableDictionary *)self->_intersectionCache objectForKey:v19];
  v21 = v20;
  if (v20)
  {
    LOBYTE(v22) = [v20 BOOLValue];
  }

  else
  {
    v48 = layoutBlueprintCopy;
    component3 = [withBlueprintCopy component];
    anchor = [component3 anchor];

    columnRange = [blueprintCopy columnRange];
    v27 = v26;
    v50.location = [withBlueprintCopy columnRange];
    v50.length = v28;
    v49.location = columnRange;
    v49.length = v27;
    if (NSIntersectionRange(v49, v50).length)
    {
      v47 = anchor;
      targetComponentIdentifier = [anchor targetComponentIdentifier];
      component4 = [blueprintCopy component];
      identifier3 = [component4 identifier];
      v32 = [targetComponentIdentifier isEqualToString:identifier3];

      if (v32)
      {
        v22 = 0;
      }

      else
      {
        componentIdentifiers = [v48 componentIdentifiers];
        component5 = [blueprintCopy component];
        identifier4 = [component5 identifier];
        v46 = [componentIdentifiers indexOfObjectIdenticalTo:identifier4];

        componentIdentifiers2 = [v48 componentIdentifiers];
        component6 = [withBlueprintCopy component];
        identifier5 = [component6 identifier];
        v39 = [componentIdentifiers2 indexOfObjectIdenticalTo:identifier5];

        if (v46 <= v39)
        {
          v40 = withBlueprintCopy;
        }

        else
        {
          v40 = blueprintCopy;
        }

        if (v46 <= v39)
        {
          v41 = blueprintCopy;
        }

        else
        {
          v41 = withBlueprintCopy;
        }

        v42 = [stackCopy componentsBeforeComponent:v40];
        v22 = [(SXColumnLayouter *)self stack:stackCopy stackComponents:v42 containsComponentIncludingAnchoredComponents:v41 forSourceComponent:blueprintCopy];
      }

      anchor = v47;
    }

    else
    {
      v22 = 0;
    }

    intersectionCache = self->_intersectionCache;
    v44 = [MEMORY[0x1E696AD98] numberWithBool:v22];
    [(NSMutableDictionary *)intersectionCache setObject:v44 forKey:v19];

    layoutBlueprintCopy = v48;
  }

  return v22;
}

- (BOOL)stack:(id)stack stackComponents:(id)components containsComponentIncludingAnchoredComponents:(id)anchoredComponents forSourceComponent:(id)component
{
  v47 = *MEMORY[0x1E69E9840];
  stackCopy = stack;
  componentsCopy = components;
  anchoredComponentsCopy = anchoredComponents;
  componentCopy = component;
  v38 = stackCopy;
  v13 = [stackCopy allComponentsBeforeComponent:anchoredComponentsCopy];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = componentsCopy;
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
          component = [v19 component];
          anchor = [component anchor];

          if (v19 == anchoredComponentsCopy)
          {
            goto LABEL_20;
          }

          columnRange = [v19 columnRange];
          v24 = v23;
          v50.location = [componentCopy columnRange];
          v50.length = v25;
          v48.location = columnRange;
          v48.length = v24;
          if (NSIntersectionRange(v48, v50).length)
          {
            columnRange2 = [v19 columnRange];
            v28 = v27;
            v51.location = [anchoredComponentsCopy columnRange];
            v51.length = v29;
            v49.location = columnRange2;
            v49.length = v28;
            if (NSIntersectionRange(v49, v51).length)
            {
              component2 = [componentCopy component];
              anchor2 = [component2 anchor];
              targetComponentIdentifier = [anchor2 targetComponentIdentifier];
              targetComponentIdentifier2 = [anchor targetComponentIdentifier];
              if (![targetComponentIdentifier isEqualToString:targetComponentIdentifier2])
              {

LABEL_19:
                v17 = 0;
                v13 = v36;
LABEL_20:

                goto LABEL_21;
              }

              range = [anchor range];

              if (range == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_19;
              }

              v34 = [v38 componentsBeforeComponent:v19];
              v17 = [(SXColumnLayouter *)self stack:v38 stackComponents:v34 containsComponentIncludingAnchoredComponents:anchoredComponentsCopy forSourceComponent:componentCopy];

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

- (BOOL)componentBlueprint:(id)blueprint shouldIntersectWithComponentBlueprint:(id)componentBlueprint
{
  blueprintCopy = blueprint;
  componentBlueprintCopy = componentBlueprint;
  columnRange = [blueprintCopy columnRange];
  if (columnRange <= [componentBlueprintCopy columnRange])
  {
    v13 = 1;
  }

  else
  {
    columnRange2 = [blueprintCopy columnRange];
    [blueprintCopy columnRange];
    v10 = v9 + columnRange2;
    columnRange3 = [componentBlueprintCopy columnRange];
    [componentBlueprintCopy columnRange];
    v13 = v10 >= v12 + columnRange3;
  }

  componentSizer = [componentBlueprintCopy componentSizer];
  allowComponentIntersection = [componentSizer allowComponentIntersection];

  return allowComponentIntersection & v13;
}

- (double)factorForLayoutAttribute:(int)attribute
{
  result = 0.0;
  if (attribute == 1)
  {
    result = 0.5;
  }

  if (attribute == 2)
  {
    return 1.0;
  }

  return result;
}

- (int)layoutAttributeForAnchor:(int64_t)anchor
{
  if (anchor == 3)
  {
    return 1;
  }

  else
  {
    return 2 * (anchor == 2);
  }
}

- (SXLayouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end