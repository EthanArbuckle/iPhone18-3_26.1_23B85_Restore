@interface SBStripModelWindowingModifier
- (id)_currentCycleResetGenerationCount;
- (id)_stageStripIdentifiersFromStrip:(id)strip;
- (id)_stripIdentifierForAppLayout:(void *)layout;
- (id)stateModel;
- (void)didUpdate;
- (void)timerFired:(id)fired;
- (void)transitionDidUpdate:(id)update;
- (void)transitionWillBegin:(id)begin;
- (void)willBegin;
- (void)willUpdate;
@end

@implementation SBStripModelWindowingModifier

- (void)willBegin
{
  v7.receiver = self;
  v7.super_class = SBStripModelWindowingModifier;
  strip = [(SBStripModelWindowingModifier *)&v7 strip];
  nextStrip = self->_nextStrip;
  self->_nextStrip = strip;

  peekingAppLayout = [(SBStripModelWindowingModifier *)self peekingAppLayout];
  peekingAppLayout = self->_peekingAppLayout;
  self->_peekingAppLayout = peekingAppLayout;
}

- (id)stateModel
{
  v5.receiver = self;
  v5.super_class = SBStripModelWindowingModifier;
  stateModel = [(SBWindowingModifier *)&v5 stateModel];
  [stateModel setStrip:self->_nextStrip];

  return stateModel;
}

- (void)transitionWillBegin:(id)begin
{
  beginCopy = begin;
  toAppExposeBundleID = [beginCopy toAppExposeBundleID];
  fromAppExposeBundleID = [beginCopy fromAppExposeBundleID];
  v6 = BSEqualObjects();

  if ((v6 & 1) == 0)
  {
    self->_needsUpdate = 1;
    toAppLayout = [beginCopy toAppLayout];
    upcomingAppLayoutForExitingAppExpose = self->_upcomingAppLayoutForExitingAppExpose;
    self->_upcomingAppLayoutForExitingAppExpose = toAppLayout;
  }
}

- (void)transitionDidUpdate:(id)update
{
  updateCopy = update;
  fromAppLayout = [updateCopy fromAppLayout];
  toAppLayout = [updateCopy toAppLayout];
  v7 = toAppLayout;
  if (fromAppLayout && toAppLayout && ([fromAppLayout isEqual:toAppLayout] & 1) == 0)
  {
    v17 = [(SBStripModelWindowingModifier *)self _stripIdentifierForAppLayout:fromAppLayout];
    v18 = [(SBStripModelWindowingModifier *)self _stripIdentifierForAppLayout:v7];
    if ([v17 isEqual:v18])
    {
      v19 = [(NSDictionary *)self->_cycleOrderForIdentifier mutableCopy];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = objc_opt_new();
      }

      v22 = v21;

      v23 = [(NSDictionary *)self->_cycleOrderForIdentifier objectForKey:v17];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = objc_opt_new();
      }

      v26 = v25;

      [v26 removeObject:v7];
      [v26 removeObject:fromAppLayout];
      [v26 addObject:fromAppLayout];
      [v22 setObject:v26 forKey:v17];
      v27 = [v22 copy];
      cycleOrderForIdentifier = self->_cycleOrderForIdentifier;
      self->_cycleOrderForIdentifier = v27;

      ++self->_cycleResetGenerationCount;
      v29 = [SBTimerEventSwitcherEventResponse alloc];
      _currentCycleResetGenerationCount = [(SBStripModelWindowingModifier *)self _currentCycleResetGenerationCount];
      v31 = [(SBTimerEventSwitcherEventResponse *)v29 initWithDelay:0 validator:_currentCycleResetGenerationCount reason:1.5];
      [(SBWindowingModifier *)self appendResponse:v31];
    }
  }

  fromDisplayItemLayoutAttributesMap = [updateCopy fromDisplayItemLayoutAttributesMap];
  toDisplayItemLayoutAttributesMap = [updateCopy toDisplayItemLayoutAttributesMap];
  if (BSEqualObjects() && (v10 = [updateCopy fromEnvironmentMode], v10 == objc_msgSend(updateCopy, "toEnvironmentMode")))
  {
    allKeys = [fromDisplayItemLayoutAttributesMap allKeys];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __53__SBStripModelWindowingModifier_transitionDidUpdate___block_invoke;
    v35[3] = &unk_2783A8C90;
    v36 = fromDisplayItemLayoutAttributesMap;
    v11 = [allKeys bs_firstObjectPassingTest:v35];
    allKeys2 = [toDisplayItemLayoutAttributesMap allKeys];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __53__SBStripModelWindowingModifier_transitionDidUpdate___block_invoke_2;
    v33[3] = &unk_2783A8C90;
    v34 = toDisplayItemLayoutAttributesMap;
    v13 = [allKeys2 bs_firstObjectPassingTest:v33];
    v14 = BSEqualObjects();

    if ((v14 & 1) == 0)
    {
      self->_needsUpdate = 1;
    }
  }

  else
  {
    self->_needsUpdate = 1;
  }

  objc_storeStrong(&self->_previousPeekingAppLayout, self->_peekingAppLayout);
  peekingAppLayout = [(SBStripModelWindowingModifier *)self peekingAppLayout];
  peekingAppLayout = self->_peekingAppLayout;
  self->_peekingAppLayout = peekingAppLayout;
}

uint64_t __53__SBStripModelWindowingModifier_transitionDidUpdate___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  [(SBDisplayItemLayoutAttributes *)v2 slideOverConfiguration];
  IsValid = SBDisplayItemSlideOverConfigurationIsValid(v5);

  return IsValid;
}

uint64_t __53__SBStripModelWindowingModifier_transitionDidUpdate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  [(SBDisplayItemLayoutAttributes *)v2 slideOverConfiguration];
  IsValid = SBDisplayItemSlideOverConfigurationIsValid(v5);

  return IsValid;
}

- (void)timerFired:(id)fired
{
  reason = [fired reason];
  _currentCycleResetGenerationCount = [(SBStripModelWindowingModifier *)self _currentCycleResetGenerationCount];
  v6 = [reason isEqualToString:_currentCycleResetGenerationCount];

  if (v6)
  {
    cycleOrderForIdentifier = self->_cycleOrderForIdentifier;
    self->_cycleOrderForIdentifier = 0;

    self->_needsUpdate = 1;
  }
}

- (void)willUpdate
{
  appLayoutsCount = self->_appLayoutsCount;
  recentAppLayouts = [(SBStripModelWindowingModifier *)self recentAppLayouts];
  self->_appLayoutsCount = [recentAppLayouts count];

  if (appLayoutsCount != self->_appLayoutsCount)
  {
    self->_needsUpdate = 1;
  }
}

- (void)didUpdate
{
  v165 = *MEMORY[0x277D85DE8];
  if (!self->_needsUpdate)
  {
    return;
  }

  self->_needsUpdate = 0;
  v3 = self->_appLayout;
  upcomingAppLayoutForExitingAppExpose = self->_upcomingAppLayoutForExitingAppExpose;
  if (upcomingAppLayoutForExitingAppExpose)
  {
    appLayout = upcomingAppLayoutForExitingAppExpose;
  }

  else
  {
    appLayout = [(SBStripModelWindowingModifier *)self appLayout];
  }

  appLayout = self->_appLayout;
  self->_appLayout = appLayout;

  v7 = self->_upcomingAppLayoutForExitingAppExpose;
  self->_upcomingAppLayoutForExitingAppExpose = 0;

  v107 = v3;
  if (self->_previousPeekingAppLayout && (BSEqualObjects() & 1) == 0)
  {
    v8 = self->_appLayout;
    v158[0] = MEMORY[0x277D85DD0];
    v158[1] = 3221225472;
    v158[2] = __42__SBStripModelWindowingModifier_didUpdate__block_invoke;
    v158[3] = &unk_2783A8C90;
    v158[4] = self;
    v9 = [(SBAppLayout *)v8 appLayoutWithItemsPassingTest:v158];
    v10 = v9;
    if (v9)
    {
      allItems = [v9 allItems];
      v12 = [allItems count];

      v3 = v107;
      if (v12 == 1)
      {
        previousPeekingAppLayout = self->_previousPeekingAppLayout;
        allItems2 = [v10 allItems];
        firstObject = [allItems2 firstObject];
        v16 = [(SBAppLayout *)previousPeekingAppLayout appLayoutByInsertingItem:firstObject];
        v17 = self->_appLayout;
        self->_appLayout = v16;

        v3 = v107;
      }
    }
  }

  windowingConfiguration = [(SBWindowingModifier *)self windowingConfiguration];
  numberOfRowsWhileInApp = [windowingConfiguration numberOfRowsWhileInApp];
  recentAppLayouts = [(SBStripModelWindowingModifier *)self recentAppLayouts];
  displayItemsToExcludeFromStrip = [(SBStripModelWindowingModifier *)self displayItemsToExcludeFromStrip];
  v105 = displayItemsToExcludeFromStrip;
  if ([displayItemsToExcludeFromStrip count])
  {
    v156[0] = MEMORY[0x277D85DD0];
    v156[1] = 3221225472;
    v156[2] = __42__SBStripModelWindowingModifier_didUpdate__block_invoke_2;
    v156[3] = &unk_2783AE218;
    v157 = displayItemsToExcludeFromStrip;
    v20 = [recentAppLayouts bs_compactMap:v156];

    recentAppLayouts = v20;
  }

  v104 = [(SBStripModelWindowingModifier *)self _stageStripIdentifiersFromStrip:self->_nextStrip];
  v109 = [v104 mutableCopy];
  v118 = objc_opt_new();
  if (v3 && self->_appLayout && ![(SBAppLayout *)v3 isEqual:?])
  {
    if ([(SBAppLayout *)v3 containsAnyItemFromAppLayout:self->_appLayout]|| [(SBAppLayout *)self->_appLayout containsAnyItemFromAppLayout:v3])
    {
      if (self->_appLayout && [(SBAppLayout *)v3 containsAllItemsFromAppLayout:?])
      {
        v154[0] = MEMORY[0x277D85DD0];
        v154[1] = 3221225472;
        v154[2] = __42__SBStripModelWindowingModifier_didUpdate__block_invoke_4;
        v154[3] = &unk_2783AF5D8;
        v154[4] = self;
        v155 = recentAppLayouts;
        v21 = [(SBAppLayout *)v3 appLayoutWithItemsPassingTest:v154];
        leafAppLayouts = [v21 leafAppLayouts];
        v153[0] = MEMORY[0x277D85DD0];
        v153[1] = 3221225472;
        v153[2] = __42__SBStripModelWindowingModifier_didUpdate__block_invoke_6;
        v153[3] = &unk_2783AE218;
        v153[4] = self;
        v23 = [leafAppLayouts bs_map:v153];

        [v118 addObjectsFromArray:v23];
      }

      goto LABEL_21;
    }

    v94 = [(SBStripModelWindowingModifier *)self _stripIdentifierForAppLayout:v3];
    v95 = [(SBStripModelWindowingModifier *)self _stripIdentifierForAppLayout:?];
    if (BSEqualObjects())
    {
      goto LABEL_116;
    }

    if (v94)
    {
      v96 = [v109 indexOfObject:v94] != 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v96 = 0;
    }

    if (v95)
    {
      v97 = [v109 indexOfObject:v95];
      if (v94)
      {
        v98 = v96;
      }

      else
      {
        v98 = 1;
      }

      if (v98)
      {
        goto LABEL_116;
      }

      v99 = v97;
      if (v97 != 0x7FFFFFFFFFFFFFFFLL)
      {
        appLayoutsInStrip = [(SBWindowingStrip *)self->_nextStrip appLayoutsInStrip];
        v100 = [appLayoutsInStrip objectAtIndex:v99];

        if ([v100 count] == 1)
        {
          [v109 replaceObjectAtIndex:v99 withObject:v94];
          [v118 addObject:v94];

LABEL_116:
          goto LABEL_21;
        }
      }
    }

    else
    {
      if (v94)
      {
        v101 = v96;
      }

      else
      {
        v101 = 1;
      }

      if (v101)
      {
        goto LABEL_116;
      }
    }

    [v118 addObject:v94];
    goto LABEL_116;
  }

LABEL_21:
  obj = objc_opt_new();
  leafAppLayouts2 = [(SBAppLayout *)self->_appLayout leafAppLayouts];
  bs_set = [leafAppLayouts2 bs_set];
  v26 = bs_set;
  if (bs_set)
  {
    v27 = bs_set;
  }

  else
  {
    v27 = [MEMORY[0x277CBEB98] set];
  }

  v28 = v27;

  if ([(SBWindowingModifier *)self transitioningToEnvironmentMode]== 1)
  {
    transitioningFromAppLayout = [(SBWindowingModifier *)self transitioningFromAppLayout];
    leafAppLayouts3 = [transitioningFromAppLayout leafAppLayouts];
    v31 = [v28 setByAddingObjectsFromArray:leafAppLayouts3];

    v28 = v31;
  }

  if ([(SBWindowingModifier *)self transitioningToEnvironmentMode]== 3)
  {
    transitioningToAppLayout = [(SBWindowingModifier *)self transitioningToAppLayout];
    leafAppLayouts4 = [transitioningToAppLayout leafAppLayouts];
    v34 = [v28 setByAddingObjectsFromArray:leafAppLayouts4];

    v28 = v34;
  }

  v120 = [v28 bs_map:&__block_literal_global_357];
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 3221225472;
  v152[2] = __42__SBStripModelWindowingModifier_didUpdate__block_invoke_8;
  v152[3] = &unk_2783AE218;
  v152[4] = self;
  v117 = [v28 bs_map:v152];
  displayOrdinal = [(SBStripModelWindowingModifier *)self displayOrdinal];
  draggingAppLayoutsForWindowDrag = [(SBStripModelWindowingModifier *)self draggingAppLayoutsForWindowDrag];
  v151[0] = MEMORY[0x277D85DD0];
  v151[1] = 3221225472;
  v151[2] = __42__SBStripModelWindowingModifier_didUpdate__block_invoke_9;
  v151[3] = &__block_descriptor_40_e21__16__0__SBAppLayout_8l;
  v151[4] = displayOrdinal;
  v37 = [draggingAppLayoutsForWindowDrag bs_compactMap:v151];
  bs_array = [v37 bs_array];
  bs_flatten = [bs_array bs_flatten];
  bs_set2 = [bs_flatten bs_set];

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v40 = recentAppLayouts;
  v41 = [v40 countByEnumeratingWithState:&v147 objects:v164 count:16];
  v42 = v28;
  v112 = v40;
  if (v41)
  {
    v43 = v41;
    v44 = *v148;
    do
    {
      v45 = 0;
      do
      {
        if (*v148 != v44)
        {
          objc_enumerationMutation(v40);
        }

        v46 = *(*(&v147 + 1) + 8 * v45);
        v47 = self->_appLayout;
        if ((!v47 || !-[SBAppLayout isOrContainsAppLayout:](v47, "isOrContainsAppLayout:", *(*(&v147 + 1) + 8 * v45)) && ([v46 isOrContainsAppLayout:self->_appLayout] & 1) == 0) && (objc_msgSend(v46, "containsAnyItemFromSet:", bs_set2) & 1) == 0)
        {
          v48 = [(SBStripModelWindowingModifier *)self _stripIdentifierForAppLayout:v46];
          if (![v117 containsObject:v48])
          {
            goto LABEL_43;
          }

          allItems3 = [v46 allItems];
          if ([allItems3 count] == 1)
          {
            v50 = [v42 containsObject:v46];

            v40 = v112;
            if ((v50 & 1) == 0)
            {
              [v118 addObject:v48];
LABEL_43:
              [obj addObject:v48];
            }
          }

          else
          {

            v40 = v112;
          }
        }

        ++v45;
      }

      while (v43 != v45);
      v51 = [v40 countByEnumeratingWithState:&v147 objects:v164 count:16];
      v43 = v51;
    }

    while (v51);
  }

  v145[0] = MEMORY[0x277D85DD0];
  v145[1] = 3221225472;
  v145[2] = __42__SBStripModelWindowingModifier_didUpdate__block_invoke_10;
  v145[3] = &unk_2783A8B78;
  v52 = obj;
  v146 = v52;
  v53 = [v118 bs_filter:v145];
  v54 = [v53 mutableCopy];

  v111 = v52;
  v55 = [v52 count];
  if ([v54 count] < numberOfRowsWhileInApp && v55 >= 1)
  {
    for (i = 0; i < v55; ++i)
    {
      v57 = [v111 objectAtIndex:i];
      [v54 addObject:v57];

      if ([v54 count] >= numberOfRowsWhileInApp)
      {
        break;
      }
    }
  }

  v103 = v42;
  if ([v54 count] > numberOfRowsWhileInApp)
  {
    [v54 removeObjectsInRange:{numberOfRowsWhileInApp, objc_msgSend(v54, "count") - numberOfRowsWhileInApp}];
  }

  v143[0] = MEMORY[0x277D85DD0];
  v143[1] = 3221225472;
  v143[2] = __42__SBStripModelWindowingModifier_didUpdate__block_invoke_11;
  v143[3] = &unk_2783A8B78;
  v58 = v54;
  v144 = v58;
  v59 = [v109 bs_filter:v143];
  array = [v59 array];
  v61 = [array mutableCopy];

  v141[0] = MEMORY[0x277D85DD0];
  v141[1] = 3221225472;
  v141[2] = __42__SBStripModelWindowingModifier_didUpdate__block_invoke_12;
  v141[3] = &unk_2783A8B78;
  v62 = v109;
  v142 = v62;
  v102 = v58;
  [v58 bs_filter:v141];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  obja = v140 = 0u;
  v63 = [obja countByEnumeratingWithState:&v137 objects:v163 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v138;
    do
    {
      for (j = 0; j != v64; ++j)
      {
        if (*v138 != v65)
        {
          objc_enumerationMutation(obja);
        }

        v67 = *(*(&v137 + 1) + 8 * j);
        _sb_dequeue = [v61 _sb_dequeue];
        v69 = [v62 indexOfObject:_sb_dequeue];
        if (v69 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v62 addObject:v67];
        }

        else
        {
          [v62 replaceObjectAtIndex:v69 withObject:v67];
        }
      }

      v64 = [obja countByEnumeratingWithState:&v137 objects:v163 count:16];
    }

    while (v64);
  }

  v119 = objc_opt_new();
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v70 = v112;
  v71 = [v70 countByEnumeratingWithState:&v133 objects:v162 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v134;
    do
    {
      v74 = 0;
      do
      {
        if (*v134 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = *(*(&v133 + 1) + 8 * v74);
        v76 = self->_appLayout;
        if ((!v76 || !-[SBAppLayout isOrContainsAppLayout:](v76, "isOrContainsAppLayout:", v75) && ([v75 isOrContainsAppLayout:self->_appLayout] & 1) == 0) && (objc_msgSend(v75, "containsAnyItemFromSet:", bs_set2) & 1) == 0 && (objc_msgSend(v75, "containsAnyItemFromSet:", v120) & 1) == 0)
        {
          v77 = [(SBStripModelWindowingModifier *)self _stripIdentifierForAppLayout:v75];
          if ([v62 containsObject:?] && (objc_msgSend(v75, "containsAnyItemFromSet:", bs_set2) & 1) == 0)
          {
            v78 = [v119 objectForKey:v77];
            if (!v78)
            {
              v113 = objc_opt_new();
              v160 = v77;
              v161 = v113;
              v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
              [v119 addEntriesFromDictionary:v110];

              v78 = v113;
            }

            v114 = v78;
            [v78 addObject:v75];
          }
        }

        ++v74;
      }

      while (v72 != v74);
      v79 = [v70 countByEnumeratingWithState:&v133 objects:v162 count:16];
      v72 = v79;
    }

    while (v79);
  }

  v80 = objc_opt_new();
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v108 = v62;
  v81 = [v108 countByEnumeratingWithState:&v129 objects:v159 count:16];
  if (v81)
  {
    v82 = v81;
    v115 = *v130;
LABEL_85:
    v83 = 0;
    while (1)
    {
      if (*v130 != v115)
      {
        objc_enumerationMutation(v108);
      }

      v84 = *(*(&v129 + 1) + 8 * v83);
      v85 = [v119 objectForKey:v84];
      v86 = [(NSDictionary *)self->_cycleOrderForIdentifier objectForKey:v84];
      if ([v86 count])
      {
        v127[0] = MEMORY[0x277D85DD0];
        v127[1] = 3221225472;
        v127[2] = __42__SBStripModelWindowingModifier_didUpdate__block_invoke_13;
        v127[3] = &unk_2783A8CB8;
        v128 = v85;
        v87 = v85;
        v88 = [v86 bs_filter:v127];
        v125[0] = MEMORY[0x277D85DD0];
        v125[1] = 3221225472;
        v125[2] = __42__SBStripModelWindowingModifier_didUpdate__block_invoke_14;
        v125[3] = &unk_2783A8CB8;
        v126 = v88;
        v89 = v88;
        v90 = [v87 bs_filter:v125];

        v85 = [v90 arrayByAddingObjectsFromArray:v89];
      }

      if (v85)
      {
        [v80 addObject:v85];
      }

      v91 = [v80 count];

      if (v91 == numberOfRowsWhileInApp)
      {
        break;
      }

      if (v82 == ++v83)
      {
        v82 = [v108 countByEnumeratingWithState:&v129 objects:v159 count:16];
        if (v82)
        {
          goto LABEL_85;
        }

        break;
      }
    }
  }

  v92 = [[SBWindowingStrip alloc] initWithAppLayoutsInStrip:v80];
  nextStrip = self->_nextStrip;
  self->_nextStrip = v92;
}

id __42__SBStripModelWindowingModifier_didUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__SBStripModelWindowingModifier_didUpdate__block_invoke_3;
  v5[3] = &unk_2783A8C90;
  v6 = *(a1 + 32);
  v3 = [a2 appLayoutWithItemsPassingTest:v5];

  return v3;
}

uint64_t __42__SBStripModelWindowingModifier_didUpdate__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 184) containsItem:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__SBStripModelWindowingModifier_didUpdate__block_invoke_5;
    v7[3] = &unk_2783A8CB8;
    v8 = v3;
    v4 = [v5 bs_containsObjectPassingTest:v7];
  }

  return v4;
}

uint64_t __42__SBStripModelWindowingModifier_didUpdate__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uniqueIdentifier];
  v5 = [v3 containsItemWithUniqueIdentifier:v4];

  return v5;
}

id __42__SBStripModelWindowingModifier_didUpdate__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 preferredDisplayOrdinal] == *(a1 + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 allItems];
  }

  return v4;
}

- (id)_stageStripIdentifiersFromStrip:(id)strip
{
  v19 = *MEMORY[0x277D85DE8];
  stripCopy = strip;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  appLayoutsInStrip = [stripCopy appLayoutsInStrip];
  v7 = [appLayoutsInStrip countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(appLayoutsInStrip);
        }

        firstObject = [*(*(&v14 + 1) + 8 * i) firstObject];
        v12 = [(SBStripModelWindowingModifier *)self _stripIdentifierForAppLayout:firstObject];
        [v5 addObject:v12];
      }

      v8 = [appLayoutsInStrip countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_currentCycleResetGenerationCount
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@-%ld", v5, self->_cycleResetGenerationCount];

  return v6;
}

- (id)_stripIdentifierForAppLayout:(void *)layout
{
  v4 = a2;
  if (layout)
  {
    groupsWindowsByApp = [layout groupsWindowsByApp];
    if ((groupsWindowsByApp & 1) != 0 || ([v4 allItems], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "count") > 1))
    {
      peekingAppLayout = [layout peekingAppLayout];

      if ((groupsWindowsByApp & 1) == 0)
      {
      }

      if (!peekingAppLayout)
      {
        layout = [v4 continuousExposeIdentifier];
        goto LABEL_10;
      }
    }

    else
    {
    }

    allItems = [v4 allItems];
    firstObject = [allItems firstObject];
    layout = [firstObject uniqueIdentifier];
  }

LABEL_10:

  return layout;
}

@end