@interface _UIOrderedLayoutArrangement
- (BOOL)_canvasConnectionConstraintsNeedUpdatePass;
- (BOOL)_configurationRequiresCanvasConnectionFittingConstraint;
- (BOOL)_customSpacingChanged;
- (BOOL)_hasStaleConfiguration;
- (BOOL)_hasStaleSpacing;
- (BOOL)_itemCountChanged;
- (BOOL)_monitorsSystemLayoutFittingSizeForItem:(id)item;
- (BOOL)_wantsProportionalDistribution;
- (NSString)description;
- (double)_calculatedIntrinsicHeight;
- (double)_constantForMultilineTextWidthDisambiguationConstraintWithNumberOfRelevantItems:(unint64_t)items;
- (double)_expectedEdgeToEdgeSpacingForPrecedingItem:(id)item followingItem:(id)followingItem isPrecededByVisibleItem:(BOOL)visibleItem isFollowedByVisibleItem:(BOOL)byVisibleItem;
- (double)customSpacingAfterItem:(id)item;
- (id)_baselineViewVendTallest:(BOOL)tallest forFirstBaseline:(BOOL)baseline;
- (id)_dimensionRefItemFromConstraint:(id)constraint;
- (id)_edgeToEdgeConstraintForGapBetweenPrecedingItem:(id)item followingItem:(id)followingItem isPrecededByVisibleItem:(BOOL)visibleItem isFollowedByVisibleItem:(BOOL)byVisibleItem;
- (id)_preparedFaultyCompatibleMultilineTextWidthDisambiguationConstraintForItem:(id)item;
- (id)_preparedImprovedMultilineTextWidthDisambiguationConstraintForItem:(id)item numberOfVisibleMultilineItems:(unint64_t)items;
- (id)_setUpSpacingOrCenteringGuideForGapIndex:(unint64_t)index;
- (id)_tallestItem;
- (id)_visibleItemAtEndWithEnumerationOptions:(unint64_t)options;
- (int64_t)_maxAttributeForGapConstraintRespectingBaselineRelative:(BOOL)relative;
- (int64_t)_minAttributeForGapConstraintRespectingBaselineRelative:(BOOL)relative;
- (int64_t)_precedingLocationAttributeForGuideConstraint;
- (unint64_t)_indexOfItemForLocationAttribute:(int64_t)attribute;
- (void)_activateAndInsertEdgeToEdgeConstraintForGapBetweenPrecedingItem:(id)item followingItem:(id)followingItem isPrecededByVisibleItem:(BOOL)visibleItem isFollowedByVisibleItem:(BOOL)byVisibleItem isHidden:(BOOL)hidden;
- (void)_activateAndInsertEdgeToEdgeConstraintForGapBetweenSpanningLayoutGuide:(id)guide hiddenItem:(id)item;
- (void)_adjustConstraintConstantsIfPossible;
- (void)_cleanUpEdgeToEdgeConstraintsForHiddenItemsForItem:(id)item atIndex:(unint64_t)index processAdjacentHiddenItems:(BOOL)items;
- (void)_cleanUpEdgeToEdgeConstraintsForVisibleItemsForItem:(id)item atIndex:(unint64_t)index processPrecedingVisibleItem:(BOOL)visibleItem;
- (void)_cleanUpGuideAtGapFollowingItem:(id)item;
- (void)_cleanUpGuides;
- (void)_cleanUpWithoutResettingKeepAliveWorkaround;
- (void)_clearAllConstraintsArrays;
- (void)_didEvaluateMultilineHeightForView:(id)view;
- (void)_insertIndividualGuidesAndConstraintsAsNecessary;
- (void)_intrinsicContentSizeInvalidatedForItem:(id)item;
- (void)_notifyCanvasesBaselineParametersDidChange;
- (void)_removeGuideAndConstraintGroupsAsNecessary;
- (void)_removeIndividualGuidesAndConstraintsAsNecessary;
- (void)_setUpDimensionConstraintForItem:(id)item referenceItem:(id)referenceItem atIndex:(unint64_t)index;
- (void)_setUpHidingDimensionConstraintForItem:(id)item;
- (void)_setUpMultilineTextWidthDisambiguationConstraintForItem:(id)item numberOfVisibleMultilineItems:(unint64_t)items;
- (void)_systemLayoutFittingSizeDidChangeForItem:(id)item;
- (void)_trackChangesAffectingExternalBaselineConstraints:(id)constraints;
- (void)_updateArrangementConstraints;
- (void)_updateConfigurationHistory;
- (void)_visibilityParameterChangedForItem:(id)item;
- (void)dealloc;
- (void)insertItem:(id)item atIndex:(unint64_t)index;
- (void)removeItem:(id)item;
- (void)setBaselineRelativeArrangement:(BOOL)arrangement;
- (void)setCustomSpacing:(double)spacing afterItem:(id)item;
- (void)setDistribution:(int64_t)distribution;
- (void)setSpacing:(double)spacing;
@end

@implementation _UIOrderedLayoutArrangement

- (void)_clearAllConstraintsArrays
{
  v3.receiver = self;
  v3.super_class = _UIOrderedLayoutArrangement;
  [(_UILayoutArrangement *)&v3 _clearAllConstraintsArrays];
  [(_UIOrderedLayoutArrangement *)self _cleanUpWithoutResettingKeepAliveWorkaround];
}

- (void)_cleanUpWithoutResettingKeepAliveWorkaround
{
  _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForVisibleItems);
  _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForHiddenItems);
  _UILACleanUpConstraintsMapTable(self->_relatedDimensionConstraints);
  _UILACleanUpConstraintsMapTable(self->_hidingDimensionConstraints);
  _UILACleanUpConstraintsMapTable(self->_multilineTextWidthDisambiguationConstraints);

  [(_UIOrderedLayoutArrangement *)self _cleanUpGuides];
}

- (void)_cleanUpGuides
{
  if ([(NSMapTable *)self->_spacingOrCenteringGuides count])
  {
    objectEnumerator = [(NSMapTable *)self->_spacingOrCenteringGuides objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      v4 = nextObject;
      do
      {
        [v4 _setLockedToOwningView:0];
        owningView = [v4 owningView];
        [owningView removeLayoutGuide:v4];

        nextObject2 = [objectEnumerator nextObject];

        v4 = nextObject2;
      }

      while (nextObject2);
    }

    [(NSMapTable *)self->_spacingOrCenteringGuides removeAllObjects];
  }
}

- (BOOL)_configurationRequiresCanvasConnectionFittingConstraint
{
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v3 = ([_orderedPropertySource distribution] - 3) < 2;

  return v3;
}

- (void)_insertIndividualGuidesAndConstraintsAsNecessary
{
  v134 = *MEMORY[0x1E69E9840];
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  _mutableItems = [(_UILayoutArrangement *)self _mutableItems];
  v5 = [_mutableItems count];
  v6 = v5;
  v106 = v5 - 1;
  if (v5)
  {
    v7 = v5 - 1;
  }

  else
  {
    v7 = 0;
  }

  _hiddenItems = [(_UILayoutArrangement *)self _hiddenItems];
  v9 = [_hiddenItems count];
  _newlyHiddenItems = [(_UILayoutArrangement *)self _newlyHiddenItems];
  v11 = [_newlyHiddenItems count];
  v112 = _orderedPropertySource;
  _newlyHiddenItems2 = [_orderedPropertySource _newlyHiddenItems];
  v13 = [_newlyHiddenItems2 count] - v11 + v9;

  v120 = v6;
  v14 = v6 - v13;
  v15 = self->_hidingDimensionConstraints;
  if (v13 && !v15)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:v13];
  }

  hidingDimensionConstraints = self->_hidingDimensionConstraints;
  self->_hidingDimensionConstraints = v15;

  edgeToEdgeConstraintsForVisibleItems = self->_edgeToEdgeConstraintsForVisibleItems;
  v26 = v14 == 1;
  v18 = v14 - 1;
  selfCopy = self;
  if (!v26 && v6 != v13)
  {
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    objectEnumerator = [(NSMapTable *)edgeToEdgeConstraintsForVisibleItems objectEnumerator];
    v20 = [objectEnumerator countByEnumeratingWithState:&v129 objects:v133 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v130;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v130 != v23)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v22 += [*(*(&v129 + 1) + 8 * i) isActive];
        }

        v21 = [objectEnumerator countByEnumeratingWithState:&v129 objects:v133 count:16];
      }

      while (v21);
    }

    else
    {
      v22 = 0;
    }

    v25 = self->_edgeToEdgeConstraintsForVisibleItems;
    v119 = v22 < v18;
    v26 = v22 < v18 && v25 == 0;
    if (v26)
    {
      v25 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:v18];
      v119 = 1;
    }
  }

  else
  {
    v25 = edgeToEdgeConstraintsForVisibleItems;
    v119 = 0;
  }

  v27 = v112;
  v28 = self->_edgeToEdgeConstraintsForVisibleItems;
  self->_edgeToEdgeConstraintsForVisibleItems = v25;

  edgeToEdgeConstraintsForHiddenItems = self->_edgeToEdgeConstraintsForHiddenItems;
  if (v13)
  {
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    objectEnumerator2 = [(NSMapTable *)edgeToEdgeConstraintsForHiddenItems objectEnumerator];
    v31 = [objectEnumerator2 countByEnumeratingWithState:&v129 objects:v133 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      v34 = *v130;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v130 != v34)
          {
            objc_enumerationMutation(objectEnumerator2);
          }

          v33 += [*(*(&v129 + 1) + 8 * j) isActive];
        }

        v32 = [objectEnumerator2 countByEnumeratingWithState:&v129 objects:v133 count:16];
      }

      while (v32);
    }

    else
    {
      v33 = 0;
    }

    v36 = self->_edgeToEdgeConstraintsForHiddenItems;
    v117 = v33 < v13;
    if (v33 < v13 && v36 == 0)
    {
      v36 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:v13];
      v117 = 1;
    }

    v27 = v112;
  }

  else
  {
    v36 = edgeToEdgeConstraintsForHiddenItems;
    v117 = 0;
  }

  v38 = self->_edgeToEdgeConstraintsForHiddenItems;
  self->_edgeToEdgeConstraintsForHiddenItems = v36;

  v39 = [v27 distribution] - 3;
  spacingOrCenteringGuides = self->_spacingOrCenteringGuides;
  v110 = v39;
  if (v39 >= 2)
  {
    v42 = spacingOrCenteringGuides;
    v115 = 0;
  }

  else
  {
    v41 = [(NSMapTable *)spacingOrCenteringGuides count];
    v42 = self->_spacingOrCenteringGuides;
    v115 = v41 < v7;
    if (v41 < v7 && v42 == 0)
    {
      v42 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:v7];
      v115 = 1;
    }
  }

  v44 = self->_spacingOrCenteringGuides;
  self->_spacingOrCenteringGuides = v42;

  if (v120)
  {
    if (([v27 distribution] - 1) > 3)
    {
      v113 = 0;
      v116 = 0;
    }

    else
    {
      objectEnumerator3 = [(NSMapTable *)self->_relatedDimensionConstraints objectEnumerator];
      nextObject = [objectEnumerator3 nextObject];
      v113 = [(_UIOrderedLayoutArrangement *)self _dimensionRefItemFromConstraint:nextObject];

      if (v110 > 1)
      {
        _wantsProportionalDistribution = [(_UIOrderedLayoutArrangement *)self _wantsProportionalDistribution];
        v47 = v120;
        if (!_wantsProportionalDistribution)
        {
          v47 = v106;
        }
      }

      else
      {
        v47 = v120 - 2;
        if (v120 <= 1)
        {
          v47 = 0;
        }
      }

      v116 = v47;
    }
  }

  else
  {
    v113 = 0;
    v116 = 0;
  }

  relatedDimensionConstraints = self->_relatedDimensionConstraints;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  objectEnumerator4 = [(NSMapTable *)relatedDimensionConstraints objectEnumerator];
  v51 = [objectEnumerator4 countByEnumeratingWithState:&v129 objects:v133 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = 0;
    v54 = *v130;
    do
    {
      for (k = 0; k != v52; ++k)
      {
        if (*v130 != v54)
        {
          objc_enumerationMutation(objectEnumerator4);
        }

        v53 += [*(*(&v129 + 1) + 8 * k) isActive];
      }

      v52 = [objectEnumerator4 countByEnumeratingWithState:&v129 objects:v133 count:16];
    }

    while (v52);
  }

  else
  {
    v53 = 0;
  }

  selfCopy2 = self;
  v57 = self->_relatedDimensionConstraints;
  if (v53 < v116 && v57 == 0)
  {
    v57 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:v7];
  }

  v59 = self->_relatedDimensionConstraints;
  self->_relatedDimensionConstraints = v57;

  v60 = v112;
  if ([v112 axis])
  {
    v118 = 0;
  }

  else
  {
    v118 = ([v112 distribution] - 3) < 0xFFFFFFFFFFFFFFFELL;
  }

  v61 = v119;
  if (v13)
  {
    v61 = 1;
  }

  if (((v61 | v115) & 1) != 0 || (v53 >= v116 ? (v62 = !v118) : (v62 = 0), !v62))
  {
    _firstVisibleItem = [(_UIOrderedLayoutArrangement *)self _firstVisibleItem];
    _lastVisibleItem = [(_UIOrderedLayoutArrangement *)self _lastVisibleItem];
    v111 = [_mutableItems indexOfObject:_firstVisibleItem];
    v121 = [_mutableItems indexOfObject:_lastVisibleItem];
    v107 = _firstVisibleItem;
    v103 = _lastVisibleItem;
    if (_firstVisibleItem)
    {
      v65 = _lastVisibleItem == 0;
    }

    else
    {
      v65 = 1;
    }

    v66 = !v65;
    v105 = v66;
    if (v120)
    {
      v67 = 0;
      v114 = 0;
      v108 = 0;
      v109 = 0;
      v68 = 0;
      v124 = _mutableItems;
      while (1)
      {
        v69 = [_mutableItems objectAtIndexedSubscript:{v68, v103}];
        v70 = [(_UILayoutArrangement *)selfCopy2 _itemWantsLayoutAsIfVisible:?];
        if (v119 && v70 && v67 != 0)
        {
          v72 = [(NSMapTable *)selfCopy2->_edgeToEdgeConstraintsForVisibleItems objectForKey:v67];
          v73 = selfCopy2;
          v74 = v72;
          if (v72)
          {
            if (([v72 isActive] & 1) == 0)
            {
              [v74 setActive:1];
            }
          }

          else
          {
            [(_UIOrderedLayoutArrangement *)v73 _activateAndInsertEdgeToEdgeConstraintForGapBetweenPrecedingItem:v67 followingItem:v69 isPrecededByVisibleItem:v111 < v114 isFollowedByVisibleItem:v121 > v68 isHidden:0];
          }

          selfCopy2 = selfCopy;
        }

        v122 = v67;
        if (!v117)
        {
          goto LABEL_114;
        }

        if (v70)
        {
          break;
        }

        v81 = v70;
        if (v67)
        {
          v85 = [(NSMapTable *)selfCopy2->_edgeToEdgeConstraintsForHiddenItems objectForKey:v69];
          if (!v85)
          {
            [(_UIOrderedLayoutArrangement *)selfCopy2 _activateAndInsertEdgeToEdgeConstraintForGapBetweenPrecedingItem:v122 followingItem:v69 isPrecededByVisibleItem:1 isFollowedByVisibleItem:v121 > v68 isHidden:1];
            goto LABEL_144;
          }

          goto LABEL_134;
        }

        if ((v105 & 1) == 0)
        {
          v85 = [(NSMapTable *)selfCopy2->_edgeToEdgeConstraintsForHiddenItems objectForKey:v69];
          if (v85)
          {
            goto LABEL_134;
          }

          _spanningLayoutGuideCreateIfNecessary = [(_UILayoutArrangement *)selfCopy2 _spanningLayoutGuideCreateIfNecessary];
          [(_UIOrderedLayoutArrangement *)selfCopy2 _activateAndInsertEdgeToEdgeConstraintForGapBetweenSpanningLayoutGuide:_spanningLayoutGuideCreateIfNecessary hiddenItem:v69];

LABEL_144:
LABEL_145:
          v67 = v122;
        }

        _mutableItems = v124;
        if (v118 && [v69 _ola_isCandidateForMultilineTextWidthDisambiguationWhenArranged])
        {
          canvas = [(_UILayoutArrangement *)selfCopy2 canvas];
          _ola_shouldUseImprovedMultilineTextDisambiguation = [canvas _ola_shouldUseImprovedMultilineTextDisambiguation];

          if (_ola_shouldUseImprovedMultilineTextDisambiguation)
          {
            v94 = v109;
            if (!v109)
            {
              v94 = objc_alloc_init(MEMORY[0x1E696AD50]);
            }

            v109 = v94;
            [v94 addIndex:v68];
            v108 += [v69 _la_isVisible];
          }

          else
          {
            [(_UIOrderedLayoutArrangement *)selfCopy2 _setUpMultilineTextWidthDisambiguationConstraintForItem:v69 numberOfVisibleMultilineItems:0x7FFFFFFFFFFFFFFFLL];
          }
        }

        if (v81)
        {
          v95 = v67;
          v114 = v68;
          v67 = v69;
        }

        else
        {
          v96 = [(NSMapTable *)selfCopy2->_hidingDimensionConstraints objectForKey:v69];

          if (v96)
          {
            goto LABEL_157;
          }

          v97 = [(NSMapTable *)selfCopy2->_hidingDimensionConstraints objectForKey:v69];
          v95 = v97;
          if (v97)
          {
            if (([v97 isActive] & 1) == 0)
            {
              [v95 setActive:1];
            }
          }

          else
          {
            [(_UIOrderedLayoutArrangement *)selfCopy2 _setUpHidingDimensionConstraintForItem:v69];
          }
        }

LABEL_157:
        if (++v68 == v120)
        {
          goto LABEL_164;
        }
      }

      if (v68 && v69 == v107 && v111)
      {
        for (m = 0; m != v68; ++m)
        {
          v76 = selfCopy2;
          v77 = selfCopy2->_edgeToEdgeConstraintsForHiddenItems;
          v78 = [v124 objectAtIndexedSubscript:m];
          v79 = [(NSMapTable *)v77 objectForKey:v78];

          if (v79)
          {
            if (([v79 isActive] & 1) == 0)
            {
              [v79 setActive:1];
            }
          }

          else
          {
            v80 = [v124 objectAtIndexedSubscript:m];
            [(_UIOrderedLayoutArrangement *)v76 _activateAndInsertEdgeToEdgeConstraintForGapBetweenPrecedingItem:v80 followingItem:v69 isPrecededByVisibleItem:0 isFollowedByVisibleItem:v121 > v68 isHidden:1];
          }

          selfCopy2 = selfCopy;
        }
      }

LABEL_114:
      v81 = v70;
      if (v115 && v70)
      {
        v82 = [(NSMapTable *)selfCopy2->_spacingOrCenteringGuides objectForKey:v69];

        if (!v82)
        {
          v83 = [(_UIOrderedLayoutArrangement *)selfCopy2 _setUpSpacingOrCenteringGuideForGapIndex:v68];
        }
      }

      if (v53 >= v116 || !v70)
      {
        goto LABEL_145;
      }

      v84 = [(NSMapTable *)selfCopy2->_relatedDimensionConstraints objectForKey:v69];
      if (v84)
      {
        v85 = v84;
LABEL_134:
        if (([v85 isActive] & 1) == 0)
        {
          [v85 setActive:1];
        }

        goto LABEL_144;
      }

      canvas2 = v113;
      if (!v113)
      {
        if (v110 > 1)
        {
          if (![(_UIOrderedLayoutArrangement *)selfCopy2 _wantsProportionalDistribution])
          {
            v113 = v69;
            goto LABEL_143;
          }

          canvas2 = [(_UILayoutArrangement *)selfCopy2 canvas];
LABEL_138:
          v85 = 0;
          v113 = canvas2;
          if (v110 < 2 || canvas2 == v69)
          {
            goto LABEL_144;
          }

          [(_UIOrderedLayoutArrangement *)selfCopy2 _setUpDimensionConstraintForItem:v69 referenceItem:canvas2 atIndex:v68];
LABEL_143:
          v85 = 0;
          goto LABEL_144;
        }

        objectEnumerator5 = [(NSMapTable *)selfCopy2->_spacingOrCenteringGuides objectEnumerator];
        nextObject2 = [objectEnumerator5 nextObject];

        canvas2 = nextObject2;
        selfCopy2 = selfCopy;
      }

      if (v110 <= 1 && v68 < v106)
      {
        v113 = canvas2;
        v89 = [(NSMapTable *)selfCopy2->_spacingOrCenteringGuides objectForKey:v69];
        v90 = v89;
        if (v89 && v113 != v89)
        {
          [(_UIOrderedLayoutArrangement *)selfCopy _setUpDimensionConstraintForItem:v89 referenceItem:v113 atIndex:v68];
        }

        v85 = 0;
        selfCopy2 = selfCopy;
        goto LABEL_144;
      }

      goto LABEL_138;
    }

    v108 = 0;
    v109 = 0;
    v67 = 0;
LABEL_164:
    canvas3 = [(_UILayoutArrangement *)selfCopy2 canvas];
    if ([canvas3 _ola_shouldUseImprovedMultilineTextDisambiguation])
    {
      v99 = v109;
      v100 = [v109 count];

      v101 = v100 >= 2;
      v60 = v112;
      v102 = v104;
      if (!v101)
      {
        goto LABEL_170;
      }

      v125[0] = MEMORY[0x1E69E9820];
      v125[1] = 3221225472;
      v125[2] = __79___UIOrderedLayoutArrangement__insertIndividualGuidesAndConstraintsAsNecessary__block_invoke;
      v125[3] = &unk_1E70FD030;
      v126 = _mutableItems;
      v127 = selfCopy2;
      v128 = v108;
      [v109 enumerateIndexesUsingBlock:v125];
      canvas3 = v126;
    }

    else
    {
      v60 = v112;
      v102 = v104;
      v99 = v109;
    }

LABEL_170:
  }
}

- (BOOL)_customSpacingChanged
{
  _orderedConfigurationHistory = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  customSpacings = [_orderedPropertySource customSpacings];
  customSpacings2 = [_orderedConfigurationHistory customSpacings];
  v7 = customSpacings2;
  if (customSpacings2)
  {
    v8 = 0;
  }

  else
  {
    v8 = customSpacings != 0;
  }

  if ((customSpacings != 0) != v8 && customSpacings2 != 0)
  {
    customSpacings3 = [_orderedPropertySource customSpacings];
    customSpacings4 = [_orderedConfigurationHistory customSpacings];
    v8 = [customSpacings3 isEqual:customSpacings4] ^ 1;
  }

  return v8;
}

- (void)_updateArrangementConstraints
{
  v64 = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = _UIOrderedLayoutArrangement;
  [(_UILayoutArrangement *)&v57 _updateArrangementConstraints];
  _orderedConfigurationHistory = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
  [_orderedConfigurationHistory setInOrderedArrangementUpdateSection:1];
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  if ([(NSMapTable *)self->_edgeToEdgeConstraintsForHiddenItems count]&& ![(NSMapTable *)self->_edgeToEdgeConstraintsForVisibleItems count])
  {
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForHiddenItems);
  }

  if ([_orderedPropertySource _itemOrderingChanged])
  {
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForVisibleItems);
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForHiddenItems);
  }

  _newlyUnhiddenItems = [_orderedPropertySource _newlyUnhiddenItems];
  v6 = [_newlyUnhiddenItems count];

  if (v6)
  {
    _hiddenItems = [(_UILayoutArrangement *)self _hiddenItems];
    v8 = [_hiddenItems count];

    if (v8)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      _newlyUnhiddenItems2 = [_orderedPropertySource _newlyUnhiddenItems];
      v10 = [_newlyUnhiddenItems2 countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v54;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v54 != v12)
            {
              objc_enumerationMutation(_newlyUnhiddenItems2);
            }

            v14 = *(*(&v53 + 1) + 8 * i);
            _UILACleanUpConstraintForItemInCollection(v14, self->_hidingDimensionConstraints);
            [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForHiddenItemsForItem:v14 atIndex:0x7FFFFFFFFFFFFFFFLL processAdjacentHiddenItems:1];
          }

          v11 = [_newlyUnhiddenItems2 countByEnumeratingWithState:&v53 objects:v59 count:16];
        }

        while (v11);
      }
    }

    else
    {
      _UILACleanUpConstraintsMapTable(self->_hidingDimensionConstraints);
      _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForHiddenItems);
    }
  }

  if ([_orderedPropertySource distribution] != 2)
  {
    self->_proportionalFillDenominator = 0.0;
  }

  if ([_orderedPropertySource distribution] == 2)
  {
    if (([_orderedPropertySource _itemFittingSizeChanged] & 1) != 0 || -[_UIOrderedLayoutArrangement _itemCountChanged](self, "_itemCountChanged") || objc_msgSend(_orderedConfigurationHistory, "distribution") != 2 || (v15 = objc_msgSend(_orderedPropertySource, "axis"), v15 != objc_msgSend(_orderedConfigurationHistory, "axis")))
    {
      self->_proportionalFillDenominator = 0.0;
      _mutableItems = [(_UILayoutArrangement *)self _mutableItems];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v17 = [_mutableItems countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v50;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v50 != v19)
            {
              objc_enumerationMutation(_mutableItems);
            }

            v21 = *(*(&v49 + 1) + 8 * j);
            if ([(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v21])
            {
              [v21 _proportionalFillLengthForOrderedArrangement:self relevantParentAxis:{-[_UILayoutArrangement axis](self, "axis")}];
              if (v22 > 0.0)
              {
                self->_proportionalFillDenominator = v22 + self->_proportionalFillDenominator;
              }

              [_orderedPropertySource spacing];
              self->_proportionalFillDenominator = v23 + self->_proportionalFillDenominator;
            }
          }

          v18 = [_mutableItems countByEnumeratingWithState:&v49 objects:v58 count:16];
        }

        while (v18);
      }

      [_orderedPropertySource spacing];
      self->_proportionalFillDenominator = self->_proportionalFillDenominator - v24;
    }
  }

  if ([(_UIOrderedLayoutArrangement *)self _hasStaleConfiguration])
  {
    axis = [_orderedConfigurationHistory axis];
    if (axis == [(_UILayoutArrangement *)self axis])
    {
      [(_UIOrderedLayoutArrangement *)self _removeGuideAndConstraintGroupsAsNecessary];
      [(_UIOrderedLayoutArrangement *)self _removeIndividualGuidesAndConstraintsAsNecessary];
    }

    else
    {
      [(_UIOrderedLayoutArrangement *)self _cleanUpWithoutResettingKeepAliveWorkaround];
    }

    [(_UIOrderedLayoutArrangement *)self _adjustConstraintConstantsIfPossible];
    [(_UIOrderedLayoutArrangement *)self _insertIndividualGuidesAndConstraintsAsNecessary];
    canvas = [(_UILayoutArrangement *)self canvas];
    _ola_shouldUseImprovedMultilineTextDisambiguation = [canvas _ola_shouldUseImprovedMultilineTextDisambiguation];

    if (!_ola_shouldUseImprovedMultilineTextDisambiguation)
    {
      goto LABEL_61;
    }

    v28 = [(NSMapTable *)self->_multilineTextWidthDisambiguationConstraints count];
    if (v28 < 2)
    {
      goto LABEL_61;
    }

    v29 = v28;
    if (25.0 / v28 <= 1.0)
    {
      v30 = 25.0 / v28;
    }

    else
    {
      v30 = 1.0;
    }

    v31 = *MEMORY[0x1E6997758];
    if (v30 == 0.0)
    {
      if (v31 > 0.0)
      {
LABEL_47:
        v32 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &_adjustMultilineTextDisambiguationConstraintPrioritiesAndActivate___s_category) + 8);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = v32;
          canvas2 = [(_UILayoutArrangement *)self canvas];
          *buf = 134218242;
          v61 = v29;
          v62 = 2112;
          v63 = canvas2;
          _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "Too many side-by-side multiline views (%lu) for optional width disambiguation. Making required constraints instead. Layout might be broken. Stack view: %@", buf, 0x16u);
        }

        v35 = 1000.0;
        goto LABEL_52;
      }
    }

    else if (v30 < v31)
    {
      goto LABEL_47;
    }

    v35 = 950.0;
LABEL_52:
    _mutableItems2 = [(_UILayoutArrangement *)self _mutableItems];
    if ([_mutableItems2 count])
    {
      v37 = 0;
      do
      {
        multilineTextWidthDisambiguationConstraints = self->_multilineTextWidthDisambiguationConstraints;
        v39 = [_mutableItems2 objectAtIndexedSubscript:v37];
        v40 = [(NSMapTable *)multilineTextWidthDisambiguationConstraints objectForKey:v39];

        if (v40)
        {
          [v40 priority];
          if (v41 == v35)
          {
            v42 = v35;
          }

          else
          {
            [v40 setActive:0];
            v42 = v35;
            v43 = fmax(v42, fmin(v42, 1000.0));
            *&v43 = v43;
            [v40 setPriority:v43];
          }

          v35 = v30 + v42;
          [v40 setActive:1];
        }

        ++v37;
      }

      while (v37 < [_mutableItems2 count]);
    }

LABEL_61:
    _incomingItems = [(_UILayoutArrangement *)self _incomingItems];
    if (![_incomingItems count])
    {
      _outgoingItems = [(_UILayoutArrangement *)self _outgoingItems];
      if (![_outgoingItems count] && (objc_msgSend(_orderedPropertySource, "_itemOrderingChanged") & 1) == 0)
      {
        _newlyHiddenItems = [_orderedPropertySource _newlyHiddenItems];
        if (![_newlyHiddenItems count])
        {
          _newlyUnhiddenItems3 = [_orderedPropertySource _newlyUnhiddenItems];
          v48 = [_newlyUnhiddenItems3 count];

          if (!v48)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }
      }
    }

LABEL_68:
    [(_UIOrderedLayoutArrangement *)self _notifyCanvasesBaselineParametersDidChange];
  }

LABEL_69:
  [(_UIOrderedLayoutArrangement *)self _updateConfigurationHistory];
  [_orderedConfigurationHistory setInOrderedArrangementUpdateSection:0];
}

- (BOOL)_canvasConnectionConstraintsNeedUpdatePass
{
  v6.receiver = self;
  v6.super_class = _UIOrderedLayoutArrangement;
  if ([(_UILayoutArrangement *)&v6 _canvasConnectionConstraintsNeedUpdatePass])
  {
    return 1;
  }

  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  _itemOrderingChanged = [_orderedPropertySource _itemOrderingChanged];

  return _itemOrderingChanged;
}

- (void)_updateConfigurationHistory
{
  v21 = *MEMORY[0x1E69E9840];
  _orderedConfigurationHistory = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
  if ([_orderedConfigurationHistory isInOrderedArrangementUpdateSection])
  {
    _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
    [_orderedPropertySource spacing];
    [_orderedConfigurationHistory setSpacing:?];
    [_orderedConfigurationHistory setDistribution:{objc_msgSend(_orderedPropertySource, "distribution")}];
    [_orderedConfigurationHistory setProportionalFillDenominator:self->_proportionalFillDenominator];
    [_orderedConfigurationHistory setHasEstablishedOrderingValues:1];
    [_orderedConfigurationHistory setBaselineRelativeArrangement:{objc_msgSend(_orderedPropertySource, "isBaselineRelativeArrangement")}];
    if (_orderedConfigurationHistory != _orderedPropertySource)
    {
      customSpacings = [_orderedConfigurationHistory customSpacings];
      [customSpacings removeAllObjects];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      customSpacings2 = [_orderedPropertySource customSpacings];
      keyEnumerator = [customSpacings2 keyEnumerator];

      v8 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          v11 = 0;
          do
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(keyEnumerator);
            }

            v12 = *(*(&v16 + 1) + 8 * v11);
            customSpacings3 = [_orderedPropertySource customSpacings];
            v14 = [customSpacings3 objectForKey:v12];
            [v14 doubleValue];
            [_orderedConfigurationHistory setCustomSpacing:v12 afterItem:?];

            ++v11;
          }

          while (v9 != v11);
          v9 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }
    }

    [_orderedPropertySource _setItemOrderingChanged:0];
  }

  v15.receiver = self;
  v15.super_class = _UIOrderedLayoutArrangement;
  [(_UILayoutArrangement *)&v15 _updateConfigurationHistory];
}

- (BOOL)_hasStaleConfiguration
{
  v9.receiver = self;
  v9.super_class = _UIOrderedLayoutArrangement;
  if ([(_UILayoutArrangement *)&v9 _hasStaleConfiguration])
  {
    return 1;
  }

  _orderedConfigurationHistory = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  if (![_orderedConfigurationHistory hasEstablishedOrderingValues] || -[_UIOrderedLayoutArrangement _hasStaleSpacing](self, "_hasStaleSpacing") || (objc_msgSend(_orderedPropertySource, "_itemOrderingChanged") & 1) != 0 || (v6 = objc_msgSend(_orderedConfigurationHistory, "distribution"), v6 != objc_msgSend(_orderedPropertySource, "distribution")))
  {
    v3 = 1;
  }

  else
  {
    [_orderedConfigurationHistory proportionalFillDenominator];
    v3 = v7 != self->_proportionalFillDenominator;
  }

  return v3;
}

- (void)_adjustConstraintConstantsIfPossible
{
  v117 = *MEMORY[0x1E69E9840];
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  _orderedConfigurationHistory = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
  [_orderedConfigurationHistory spacing];
  v6 = v5;
  [_orderedPropertySource spacing];
  v8 = v7;

  _customSpacingChanged = [(_UIOrderedLayoutArrangement *)self _customSpacingChanged];
  _newlyHiddenItems = [_orderedPropertySource _newlyHiddenItems];
  _newlyUnhiddenItems = [_orderedPropertySource _newlyUnhiddenItems];
  v12 = [_newlyHiddenItems setByAddingObjectsFromSet:_newlyUnhiddenItems];

  [_orderedPropertySource spacing];
  v14 = v13;
  if (v13 == 0.0)
  {
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v108 objects:v116 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v109;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v109 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(_UIOrderedLayoutArrangement *)self customSpacingAfterItem:*(*(&v108 + 1) + 8 * i)];
          if (v20 != 0.0 && v20 != 3.40282347e38 && v20 != 1.17549435e-38)
          {
            v22 = 1;
            goto LABEL_16;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v108 objects:v116 count:16];
      }

      while (v17);
    }

    v22 = 0;
LABEL_16:
  }

  else
  {
    v22 = 0;
  }

  if (v6 != v8 || _customSpacingChanged || (v22 & 1) != 0 || v14 != 0.0 && v14 != 1.17549435e-38 && [v12 count])
  {
    v84 = v12;
    v85 = _orderedPropertySource;
    items = [(_UILayoutArrangement *)self items];
    _firstVisibleItem = [(_UIOrderedLayoutArrangement *)self _firstVisibleItem];
    _lastVisibleItem = [(_UIOrderedLayoutArrangement *)self _lastVisibleItem];
    v83 = _firstVisibleItem;
    v89 = [items indexOfObject:_firstVisibleItem];
    v90 = items;
    v82 = _lastVisibleItem;
    v88 = [items indexOfObject:_lastVisibleItem];
    selfCopy = self;
    [(NSMapTable *)self->_edgeToEdgeConstraintsForVisibleItems objectEnumerator];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    obj = v107 = 0u;
    v26 = [obj countByEnumeratingWithState:&v104 objects:v115 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v105;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v105 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v104 + 1) + 8 * j);
          [v30 constant];
          v32 = v31;
          secondItem = [v30 secondItem];
          firstItem = [v30 firstItem];
          v35 = [v90 indexOfObject:secondItem];
          v36 = [v90 indexOfObject:firstItem];
          secondItem2 = [v30 secondItem];
          firstItem2 = [v30 firstItem];
          [(_UIOrderedLayoutArrangement *)selfCopy _expectedEdgeToEdgeSpacingForPrecedingItem:secondItem2 followingItem:firstItem2 isPrecededByVisibleItem:v89 < v35 isFollowedByVisibleItem:v88 > v36];
          v40 = v39;

          if (v32 != v40)
          {
            [v30 setConstant:v40];
          }
        }

        v27 = [obj countByEnumeratingWithState:&v104 objects:v115 count:16];
      }

      while (v27);
    }

    objectEnumerator = [(NSMapTable *)selfCopy->_edgeToEdgeConstraintsForHiddenItems objectEnumerator];

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    obja = objectEnumerator;
    v42 = [obja countByEnumeratingWithState:&v100 objects:v114 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v101;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v101 != v44)
          {
            objc_enumerationMutation(obja);
          }

          v46 = *(*(&v100 + 1) + 8 * k);
          [v46 constant];
          v48 = v47;
          secondItem3 = [v46 secondItem];
          firstItem3 = [v46 firstItem];
          v51 = [v90 indexOfObject:secondItem3];
          v52 = [v90 indexOfObject:firstItem3];
          secondItem4 = [v46 secondItem];
          firstItem4 = [v46 firstItem];
          [(_UIOrderedLayoutArrangement *)selfCopy _expectedEdgeToEdgeSpacingForPrecedingItem:secondItem4 followingItem:firstItem4 isPrecededByVisibleItem:v89 < v51 isFollowedByVisibleItem:v88 > v52];
          v56 = v55;

          if (v48 != v56)
          {
            [v46 setConstant:v56];
          }
        }

        v43 = [obja countByEnumeratingWithState:&v100 objects:v114 count:16];
      }

      while (v43);
    }

    if ([(NSMapTable *)selfCopy->_multilineTextWidthDisambiguationConstraints count])
    {
      _mutableItems = [(_UILayoutArrangement *)selfCopy _mutableItems];
      v58 = [_mutableItems count];
      _hiddenItems = [(_UILayoutArrangement *)selfCopy _hiddenItems];
      v60 = [_hiddenItems count];

      if ([(NSMapTable *)selfCopy->_multilineTextWidthDisambiguationConstraints count])
      {
        canvas = [(_UILayoutArrangement *)selfCopy canvas];
        _ola_shouldUseImprovedMultilineTextDisambiguation = [canvas _ola_shouldUseImprovedMultilineTextDisambiguation];

        if (_ola_shouldUseImprovedMultilineTextDisambiguation)
        {
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          _mutableItems2 = [(_UILayoutArrangement *)selfCopy _mutableItems];
          v64 = [_mutableItems2 countByEnumeratingWithState:&v96 objects:v113 count:16];
          if (v64)
          {
            v65 = v64;
            v66 = 0;
            v67 = *v97;
            do
            {
              for (m = 0; m != v65; ++m)
              {
                if (*v97 != v67)
                {
                  objc_enumerationMutation(_mutableItems2);
                }

                v69 = *(*(&v96 + 1) + 8 * m);
                if ([v69 _la_isVisible])
                {
                  if ([v69 _ola_isCandidateForMultilineTextWidthDisambiguationWhenArranged])
                  {
                    v70 = 8;
                  }

                  else
                  {
                    v70 = 0;
                  }

                  v66 += v70;
                }
              }

              v65 = [_mutableItems2 countByEnumeratingWithState:&v96 objects:v113 count:16];
            }

            while (v65);
          }

          else
          {
            v66 = 0;
          }
        }

        else
        {
          v66 = v58 - v60;
        }

        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        objectEnumerator2 = [(NSMapTable *)selfCopy->_multilineTextWidthDisambiguationConstraints objectEnumerator];
        v72 = [objectEnumerator2 countByEnumeratingWithState:&v92 objects:v112 count:16];
        if (v72)
        {
          v73 = v72;
          v74 = *v93;
          do
          {
            for (n = 0; n != v73; ++n)
            {
              if (*v93 != v74)
              {
                objc_enumerationMutation(objectEnumerator2);
              }

              v76 = *(*(&v92 + 1) + 8 * n);
              firstItem5 = [v76 firstItem];
              v78 = [(_UILayoutArrangement *)selfCopy _itemWantsLayoutAsIfVisible:firstItem5];

              if (v78)
              {
                [v76 constant];
                v80 = v79;
                [(_UIOrderedLayoutArrangement *)selfCopy _constantForMultilineTextWidthDisambiguationConstraintWithNumberOfRelevantItems:v66];
                if (v80 != v81)
                {
                  [v76 setConstant:?];
                }
              }
            }

            v73 = [objectEnumerator2 countByEnumeratingWithState:&v92 objects:v112 count:16];
          }

          while (v73);
        }
      }
    }

    v12 = v84;
    _orderedPropertySource = v85;
  }
}

- (void)_notifyCanvasesBaselineParametersDidChange
{
  canvas = [(_UILayoutArrangement *)self canvas];
  superview = canvas;
  if ([canvas _hasLayoutArrangements])
  {
    v3 = canvas;
    do
    {
      [v3 _vendedBaselineViewParametersDidChange];
      superview = [v3 superview];

      v3 = superview;
    }

    while (([superview _hasLayoutArrangements] & 1) != 0);
  }
}

- (BOOL)_hasStaleSpacing
{
  _orderedConfigurationHistory = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  [_orderedConfigurationHistory spacing];
  v6 = v5;
  [_orderedPropertySource spacing];
  if (v6 == v7)
  {
    _newlyHiddenItems = [_orderedPropertySource _newlyHiddenItems];
    if ([_newlyHiddenItems count])
    {
    }

    else
    {
      _newlyUnhiddenItems = [_orderedPropertySource _newlyUnhiddenItems];
      v10 = [_newlyUnhiddenItems count];

      if (!v10)
      {
        _customSpacingChanged = [(_UIOrderedLayoutArrangement *)self _customSpacingChanged];
        goto LABEL_6;
      }
    }
  }

  _customSpacingChanged = 1;
LABEL_6:

  return _customSpacingChanged;
}

- (void)_removeGuideAndConstraintGroupsAsNecessary
{
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  _orderedConfigurationHistory = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
  distribution = [_orderedConfigurationHistory distribution];
  if ([_orderedConfigurationHistory hasEstablishedOrderingValues])
  {
    distribution2 = [_orderedPropertySource distribution];
    v6 = distribution != distribution2;
    v7 = (distribution - 3) < 2;
    if ((distribution - 3) <= 1 && distribution != distribution2)
    {
      [(_UIOrderedLayoutArrangement *)self _cleanUpGuides];
      v7 = 1;
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
    v7 = (distribution - 3) < 2;
  }

  v8 = [_orderedPropertySource distribution] - 3;
  if (v7 != v8 < 2)
  {
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForVisibleItems);
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForHiddenItems);
  }

  if ([_orderedPropertySource _itemOrderingChanged])
  {
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForVisibleItems);
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForHiddenItems);
  }

  layoutUsesCanvasMarginsWhenFilling = [_orderedConfigurationHistory layoutUsesCanvasMarginsWhenFilling];
  v10 = layoutUsesCanvasMarginsWhenFilling ^ [_orderedPropertySource layoutUsesCanvasMarginsWhenFilling];
  if ([(NSMapTable *)self->_relatedDimensionConstraints count])
  {
    if (v6 || ([_orderedConfigurationHistory proportionalFillDenominator], (v11 != self->_proportionalFillDenominator) | v10 & 1))
    {
      _UILACleanUpConstraintsMapTable(self->_relatedDimensionConstraints);
    }
  }

  v12 = [(NSMapTable *)self->_relatedDimensionConstraints count];
  if (v8 >= 2 && v12 && [_orderedPropertySource distribution] != 2)
  {
    objectEnumerator = [(NSMapTable *)self->_relatedDimensionConstraints objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    v15 = [(_UIOrderedLayoutArrangement *)self _dimensionRefItemFromConstraint:nextObject];

    if (!-[_UILayoutArrangement _itemWantsLayoutAsIfVisible:](self, "_itemWantsLayoutAsIfVisible:", v15) || (-[_UILayoutArrangement _outgoingItems](self, "_outgoingItems"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 containsObject:v15], v16, v17))
    {
      _UILACleanUpConstraintsMapTable(self->_relatedDimensionConstraints);
    }
  }

  if (![(_UILayoutArrangement *)self axis])
  {
    if ((v10 & 1) != 0 || v6 && ([_orderedPropertySource distribution] - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_31;
    }

    _newlyHiddenItems = [(_UILayoutArrangement *)self _newlyHiddenItems];
    if ([_newlyHiddenItems count])
    {
      goto LABEL_30;
    }

    _newlyUnhiddenItems = [(_UILayoutArrangement *)self _newlyUnhiddenItems];
    if ([_newlyUnhiddenItems count])
    {
LABEL_29:

LABEL_30:
LABEL_31:
      _UILACleanUpConstraintsMapTable(self->_multilineTextWidthDisambiguationConstraints);
      goto LABEL_32;
    }

    _incomingItems = [(_UILayoutArrangement *)self _incomingItems];
    if ([_incomingItems count])
    {

      goto LABEL_29;
    }

    _outgoingItems = [(_UILayoutArrangement *)self _outgoingItems];
    v22 = [_outgoingItems count];

    if (v22)
    {
      goto LABEL_31;
    }
  }

LABEL_32:
}

- (void)_removeIndividualGuidesAndConstraintsAsNecessary
{
  v92 = *MEMORY[0x1E69E9840];
  _outgoingItems = [(_UILayoutArrangement *)self _outgoingItems];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v4 = [_outgoingItems countByEnumeratingWithState:&v84 objects:v91 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v85;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v85 != v6)
        {
          objc_enumerationMutation(_outgoingItems);
        }

        v8 = *(*(&v84 + 1) + 8 * i);
        [(_UIOrderedLayoutArrangement *)self _cleanUpGuideAtGapFollowingItem:v8];
        [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForVisibleItemsForItem:v8 atIndex:0x7FFFFFFFFFFFFFFFLL processPrecedingVisibleItem:1];
        [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForHiddenItemsForItem:v8 atIndex:0x7FFFFFFFFFFFFFFFLL processAdjacentHiddenItems:1];
        _UILACleanUpConstraintForItemInCollection(v8, self->_hidingDimensionConstraints);
        _UILACleanUpConstraintForItemInCollection(v8, self->_relatedDimensionConstraints);
        _UILACleanUpConstraintForItemInCollection(v8, self->_multilineTextWidthDisambiguationConstraints);
      }

      v5 = [_outgoingItems countByEnumeratingWithState:&v84 objects:v91 count:16];
    }

    while (v5);
  }

  _mutableItems = [(_UILayoutArrangement *)self _mutableItems];
  v10 = [_mutableItems count];
  _incomingItems = [(_UILayoutArrangement *)self _incomingItems];
  if (v10)
  {
    v11 = [_mutableItems objectAtIndexedSubscript:v10 - 1];
    [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForVisibleItemsForItem:v11 atIndex:v10 - 1 processPrecedingVisibleItem:1];

    v12 = [_mutableItems objectAtIndexedSubscript:v10 - 1];
    [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForHiddenItemsForItem:v12 atIndex:v10 - 1 processAdjacentHiddenItems:0];
  }

  v70 = _outgoingItems;
  if (([(NSMapTable *)self->_edgeToEdgeConstraintsForVisibleItems count]|| [(NSMapTable *)self->_edgeToEdgeConstraintsForHiddenItems count]|| [(NSMapTable *)self->_spacingOrCenteringGuides count]|| [(NSMapTable *)self->_multilineTextWidthDisambiguationConstraints count]) && v10)
  {
    v13 = 0;
    while (1)
    {
      v14 = [_mutableItems objectAtIndexedSubscript:v13];
      if (-[NSMapTable count](self->_multilineTextWidthDisambiguationConstraints, "count") && ([v14 _ola_isCandidateForMultilineTextWidthDisambiguationWhenArranged] & 1) == 0)
      {
        _UILACleanUpConstraintForItemInCollection(v14, self->_multilineTextWidthDisambiguationConstraints);
      }

      if ([(NSMapTable *)self->_edgeToEdgeConstraintsForVisibleItems count]|| [(NSMapTable *)self->_edgeToEdgeConstraintsForHiddenItems count]|| [(NSMapTable *)self->_spacingOrCenteringGuides count])
      {
        break;
      }

LABEL_43:

      if (++v13 == v10)
      {
        goto LABEL_44;
      }
    }

    if (v10 >= 2 && v13 < v10 - 2)
    {
      v15 = [_mutableItems objectAtIndexedSubscript:v13 + 1];
      v16 = [_incomingItems containsObject:v15];

      if (v16)
      {
        [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForVisibleItemsForItem:v14 atIndex:v13 processPrecedingVisibleItem:0];
        [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForHiddenItemsForItem:v14 atIndex:v13 processAdjacentHiddenItems:1];
      }
    }

    _newlyHiddenItems = [(_UILayoutArrangement *)self _newlyHiddenItems];
    if ([_newlyHiddenItems containsObject:v14])
    {
    }

    else
    {
      _newlyUnhiddenItems = [(_UILayoutArrangement *)self _newlyUnhiddenItems];
      v19 = [_newlyUnhiddenItems containsObject:v14];

      if (!v19)
      {
LABEL_30:
        if (![(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v14])
        {
          [(_UIOrderedLayoutArrangement *)self _cleanUpGuideAtGapFollowingItem:v14];
          _UILACleanUpConstraintForItemInCollection(v14, self->_relatedDimensionConstraints);
        }

        v20 = [(NSMapTable *)self->_spacingOrCenteringGuides objectForKey:v14];
        v21 = v20;
        if (v20)
        {
          v22 = v13;
          if ([v20 followingItemIndex] >= v10)
          {
            [(_UIOrderedLayoutArrangement *)self _cleanUpGuideAtGapFollowingItem:v14];
          }

          else
          {
            while (++v22 < v10)
            {
              if ([(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:0])
              {
                v23 = [_mutableItems objectAtIndexedSubscript:v22];
                goto LABEL_39;
              }
            }

            v23 = 0;
LABEL_39:
            followingItem = [v21 followingItem];

            if (followingItem != v23)
            {
              [(_UIOrderedLayoutArrangement *)self _cleanUpGuideAtGapFollowingItem:v14];
              _UILACleanUpConstraintForItemInCollection(v14, self->_relatedDimensionConstraints);
            }
          }
        }

        _outgoingItems = v70;
        goto LABEL_43;
      }
    }

    [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForVisibleItemsForItem:v14 atIndex:v13 processPrecedingVisibleItem:1];
    [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForHiddenItemsForItem:v14 atIndex:v13 processAdjacentHiddenItems:1];
    goto LABEL_30;
  }

LABEL_44:
  if ((self->_distribution - 3) >= 2 && [(NSMapTable *)self->_relatedDimensionConstraints count])
  {
    v25 = _mutableItems;
    v26 = [(NSMapTable *)self->_relatedDimensionConstraints copy];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    allKeys = [v26 allKeys];
    v28 = [allKeys countByEnumeratingWithState:&v80 objects:v90 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v81;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v81 != v30)
          {
            objc_enumerationMutation(allKeys);
          }

          v32 = *(*(&v80 + 1) + 8 * j);
          if (![(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v32])
          {
            _UILACleanUpConstraintForItemInCollection(v32, self->_relatedDimensionConstraints);
          }
        }

        v29 = [allKeys countByEnumeratingWithState:&v80 objects:v90 count:16];
      }

      while (v29);
    }

    _mutableItems = v25;
  }

  if ([(_UIOrderedLayoutArrangement *)self _hasStaleSpacing])
  {
    v68 = _mutableItems;
    _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
    _orderedConfigurationHistory = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
    v35 = [(NSMapTable *)self->_edgeToEdgeConstraintsForVisibleItems copy];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v67 = v35;
    keyEnumerator = [v35 keyEnumerator];
    v37 = [keyEnumerator countByEnumeratingWithState:&v76 objects:v89 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v77;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v77 != v39)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v41 = *(*(&v76 + 1) + 8 * k);
          v42 = _orderedConfigurationHistory;
          [v42 customSpacingAfterItem:v41];
          if (v43 == 3.40282347e38)
          {
            [v42 spacing];
            if (v44 == 3.40282347e38)
            {
              v45 = 0.0;
            }

            else
            {
              v45 = v44;
            }
          }

          else
          {
            v45 = v43;
          }

          v46 = _orderedPropertySource;
          [v46 customSpacingAfterItem:v41];
          if (v47 == 3.40282347e38)
          {
            [v46 spacing];
            if (v48 == 3.40282347e38)
            {
              v49 = 0.0;
            }

            else
            {
              v49 = v48;
            }
          }

          else
          {
            v49 = v47;
          }

          if (v45 != v49 && (v45 == 1.17549435e-38 || v49 == 1.17549435e-38))
          {
            _UILACleanUpConstraintForItemInCollection(v41, self->_edgeToEdgeConstraintsForVisibleItems);
          }
        }

        v38 = [keyEnumerator countByEnumeratingWithState:&v76 objects:v89 count:16];
      }

      while (v38);
    }

    v51 = [(NSMapTable *)self->_edgeToEdgeConstraintsForHiddenItems copy];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = v51;
    keyEnumerator2 = [v51 keyEnumerator];
    v53 = [keyEnumerator2 countByEnumeratingWithState:&v72 objects:v88 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v73;
      do
      {
        for (m = 0; m != v54; ++m)
        {
          if (*v73 != v55)
          {
            objc_enumerationMutation(keyEnumerator2);
          }

          v57 = *(*(&v72 + 1) + 8 * m);
          v58 = _orderedConfigurationHistory;
          [v58 customSpacingAfterItem:v57];
          if (v59 == 3.40282347e38)
          {
            [v58 spacing];
            if (v60 == 3.40282347e38)
            {
              v61 = 0.0;
            }

            else
            {
              v61 = v60;
            }
          }

          else
          {
            v61 = v59;
          }

          v62 = _orderedPropertySource;
          [v62 customSpacingAfterItem:v57];
          if (v63 == 3.40282347e38)
          {
            [v62 spacing];
            if (v64 == 3.40282347e38)
            {
              v65 = 0.0;
            }

            else
            {
              v65 = v64;
            }
          }

          else
          {
            v65 = v63;
          }

          if (v61 != v65 && (v61 == 1.17549435e-38 || v65 == 1.17549435e-38))
          {
            [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForHiddenItemsForItem:v57 atIndex:0x7FFFFFFFFFFFFFFFLL processAdjacentHiddenItems:1];
          }
        }

        v54 = [keyEnumerator2 countByEnumeratingWithState:&v72 objects:v88 count:16];
      }

      while (v54);
    }

    _outgoingItems = v70;
    _mutableItems = v68;
  }
}

- (id)_tallestItem
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _mutableItems = [(_UILayoutArrangement *)self _mutableItems];
  v3 = [_mutableItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(_mutableItems);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 _la_isVisible])
        {
          [v9 _calculatedIntrinsicHeight];
          if (v10 > v7)
          {
            v11 = v10;
            v12 = v9;

            v7 = v11;
            v5 = v12;
          }
        }
      }

      v4 = [_mutableItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_wantsProportionalDistribution
{
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  _mutableItems = [(_UILayoutArrangement *)self _mutableItems];
  v5 = [_mutableItems count];

  v6 = 0;
  if ([_orderedPropertySource distribution] == 2 && v5)
  {
    proportionalFillDenominator = self->_proportionalFillDenominator;
    [_orderedPropertySource spacing];
    v6 = proportionalFillDenominator > fmax(v8 * (v5 - 1), 1.0);
  }

  return v6;
}

- (void)dealloc
{
  if (dyld_program_sdk_at_least())
  {
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForVisibleItems);
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForHiddenItems);
    _UILACleanUpConstraintsMapTable(self->_relatedDimensionConstraints);
    _UILACleanUpConstraintsMapTable(self->_hidingDimensionConstraints);
    _UILACleanUpConstraintsMapTable(self->_multilineTextWidthDisambiguationConstraints);
  }

  v3.receiver = self;
  v3.super_class = _UIOrderedLayoutArrangement;
  [(_UIOrderedLayoutArrangement *)&v3 dealloc];
}

- (double)_calculatedIntrinsicHeight
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(_UILayoutArrangement *)self axis])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    _mutableItems = [(_UILayoutArrangement *)self _mutableItems];
    v4 = [_mutableItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v16;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(_mutableItems);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 _la_isVisible])
          {
            ++v6;
            [v10 _calculatedIntrinsicHeight];
            v8 = v8 + v11;
          }

          if (v6)
          {
            v8 = v8 + self->_spacing * (v6 - 1);
          }
        }

        v5 = [_mutableItems countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    else
    {
      v8 = 0.0;
    }
  }

  else
  {
    _tallestItem = [(_UIOrderedLayoutArrangement *)self _tallestItem];
    [_tallestItem _calculatedIntrinsicHeight];
    v8 = v13;
  }

  return v8;
}

- (int64_t)_precedingLocationAttributeForGuideConstraint
{
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  if ([_orderedPropertySource distribution] == 3)
  {
    v4 = _UILAFacingAttributeOfAttribute([(_UIOrderedLayoutArrangement *)self _minAttributeForGapConstraint]);
  }

  else if ([_orderedPropertySource distribution] == 4)
  {
    if ([(_UILayoutArrangement *)self axis])
    {
      v4 = 10;
    }

    else
    {
      v4 = 9;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_itemCountChanged
{
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  _newlyHiddenItems = [_orderedPropertySource _newlyHiddenItems];
  if ([_newlyHiddenItems count])
  {
    v5 = 1;
  }

  else
  {
    _newlyUnhiddenItems = [_orderedPropertySource _newlyUnhiddenItems];
    if ([_newlyUnhiddenItems count])
    {
      v5 = 1;
    }

    else
    {
      _incomingItems = [(_UILayoutArrangement *)self _incomingItems];
      if ([_incomingItems count])
      {
        v5 = 1;
      }

      else
      {
        _outgoingItems = [(_UILayoutArrangement *)self _outgoingItems];
        v5 = [_outgoingItems count] != 0;
      }
    }
  }

  return v5;
}

- (void)_trackChangesAffectingExternalBaselineConstraints:(id)constraints
{
  constraintsCopy = constraints;
  if ([(_UILayoutArrangement *)self axis]== 1)
  {
    _firstVisibleItem = [(_UIOrderedLayoutArrangement *)self _firstVisibleItem];
    _lastVisibleItem = [(_UIOrderedLayoutArrangement *)self _lastVisibleItem];
    constraintsCopy[2]();
    _firstVisibleItem2 = [(_UIOrderedLayoutArrangement *)self _firstVisibleItem];

    if (_firstVisibleItem != _firstVisibleItem2)
    {
      canvas = [(_UILayoutArrangement *)self canvas];
      [canvas _vendedBaselineViewDidMoveForFirst:1];
    }

    _lastVisibleItem2 = [(_UIOrderedLayoutArrangement *)self _lastVisibleItem];

    if (_lastVisibleItem != _lastVisibleItem2)
    {
      canvas2 = [(_UILayoutArrangement *)self canvas];
      [canvas2 _vendedBaselineViewDidMoveForFirst:0];
    }
  }

  else
  {
    constraintsCopy[2]();
    _firstVisibleItem = 0;
    _lastVisibleItem = 0;
  }
}

- (void)insertItem:(id)item atIndex:(unint64_t)index
{
  itemCopy = item;
  _mutableItems = [(_UILayoutArrangement *)self _mutableItems];
  v8 = [_mutableItems indexOfObject:itemCopy];
  if (v8 != index)
  {
    if (index != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL || (-[_UILayoutArrangement _outgoingItems](self, "_outgoingItems"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 containsObject:itemCopy], v9, v10))
    {
      [(_UIOrderedLayoutArrangement *)self _setItemOrderingChanged:1];
      [(_UILayoutArrangement *)self _createUnanimatedConfigurationTargetIfNecessary];
      canvas = [(_UILayoutArrangement *)self canvas];
      v12 = _UILAIsAnimatingOnCanvas(canvas);

      if (v12)
      {
        [(_UILayoutArrangement *)self _registerAnimationRequest];
      }

      else
      {
        _unanimatedConfigurationTarget = [(_UILayoutArrangement *)self _unanimatedConfigurationTarget];
        [_unanimatedConfigurationTarget _setItemOrderingChanged:1];
      }

      canvas2 = [(_UILayoutArrangement *)self canvas];
      [canvas2 setNeedsUpdateConstraints];
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50___UIOrderedLayoutArrangement_insertItem_atIndex___block_invoke;
  v16[3] = &unk_1E70F36D0;
  selfCopy = self;
  indexCopy = index;
  v17 = itemCopy;
  v15 = itemCopy;
  [(_UIOrderedLayoutArrangement *)self _trackChangesAffectingExternalBaselineConstraints:v16];
}

- (void)removeItem:(id)item
{
  itemCopy = item;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42___UIOrderedLayoutArrangement_removeItem___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = itemCopy;
  v5 = itemCopy;
  [(_UIOrderedLayoutArrangement *)self _trackChangesAffectingExternalBaselineConstraints:v6];
}

- (unint64_t)_indexOfItemForLocationAttribute:(int64_t)attribute
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64___UIOrderedLayoutArrangement__indexOfItemForLocationAttribute___block_invoke;
  aBlock[3] = &unk_1E7109EE0;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(_UILayoutArrangement *)self axis])
  {
    if (attribute > 0x10)
    {
      goto LABEL_13;
    }

    if (((1 << attribute) & 0x9008) != 0)
    {
      v11.receiver = self;
      v11.super_class = _UIOrderedLayoutArrangement;
      v9 = [(_UILayoutArrangement *)&v11 _indexOfItemForLocationAttribute:attribute];
      goto LABEL_12;
    }

    v7 = 1 << attribute;
    v8 = 67600;
  }

  else
  {
    if (attribute > 0x12)
    {
      goto LABEL_13;
    }

    if (((1 << attribute) & 0x22022) != 0)
    {
      v12.receiver = self;
      v12.super_class = _UIOrderedLayoutArrangement;
      v9 = [(_UILayoutArrangement *)&v12 _indexOfItemForLocationAttribute:attribute];
      goto LABEL_12;
    }

    v7 = 1 << attribute;
    v8 = 278596;
  }

  if ((v7 & v8) != 0)
  {
    v9 = v5[2](v5);
LABEL_12:
    v6 = v9;
  }

LABEL_13:

  return v6;
}

- (void)_intrinsicContentSizeInvalidatedForItem:(id)item
{
  v4.receiver = self;
  v4.super_class = _UIOrderedLayoutArrangement;
  itemCopy = item;
  [(_UILayoutArrangement *)&v4 _intrinsicContentSizeInvalidatedForItem:itemCopy];
  _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(itemCopy);
}

- (BOOL)_monitorsSystemLayoutFittingSizeForItem:(id)item
{
  if (self->_distribution != 2)
  {
    return 0;
  }

  itemCopy = item;
  _mutableItems = [(_UILayoutArrangement *)self _mutableItems];
  v6 = [_mutableItems containsObject:itemCopy];

  return v6;
}

- (void)_systemLayoutFittingSizeDidChangeForItem:(id)item
{
  itemCopy = item;
  [(_UILayoutArrangement *)self _createUnanimatedConfigurationTargetIfNecessary];
  [(_UIOrderedLayoutArrangement *)self _setItemFittingSizeChanged:1];
  canvas = [(_UILayoutArrangement *)self canvas];
  v6 = _UILAIsAnimatingOnCanvas(canvas);

  if (v6)
  {
    [(_UILayoutArrangement *)self _registerAnimationRequest];
  }

  else
  {
    _unanimatedConfigurationTarget = [(_UILayoutArrangement *)self _unanimatedConfigurationTarget];
    [_unanimatedConfigurationTarget _setItemFittingSizeChanged:1];
  }

  canvas2 = [(_UILayoutArrangement *)self canvas];
  v8 = itemCopy[12];

  [canvas2 _setNeedsUpdateConstraintsNeedingLayout:(v8 & 0x60) == 0];
}

- (void)_visibilityParameterChangedForItem:(id)item
{
  itemCopy = item;
  _mutableItems = [(_UILayoutArrangement *)self _mutableItems];
  v6 = [_mutableItems indexOfObject:itemCopy];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    if ([(_UILayoutArrangement *)self axis]!= 1)
    {
LABEL_15:
      v19.receiver = self;
      v19.super_class = _UIOrderedLayoutArrangement;
      [(_UILayoutArrangement *)&v19 _visibilityParameterChangedForItem:itemCopy];
      goto LABEL_16;
    }

    _firstVisibleItem = [(_UIOrderedLayoutArrangement *)self _firstVisibleItem];
    _lastVisibleItem = [(_UIOrderedLayoutArrangement *)self _lastVisibleItem];
    if ([itemCopy _la_isVisible])
    {
      _firstVisibleItem2 = [(_UIOrderedLayoutArrangement *)self _firstVisibleItem];

      if (_firstVisibleItem2 == itemCopy)
      {
        canvas = [(_UILayoutArrangement *)self canvas];
        [canvas _vendedBaselineViewDidMoveForFirst:1];
      }

      _lastVisibleItem2 = [(_UIOrderedLayoutArrangement *)self _lastVisibleItem];

      if (_lastVisibleItem2 != itemCopy)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!_firstVisibleItem || (-[_UILayoutArrangement _mutableItems](self, "_mutableItems"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 indexOfObject:_firstVisibleItem], v13, v7 < v14))
      {
        canvas2 = [(_UILayoutArrangement *)self canvas];
        [canvas2 _vendedBaselineViewDidMoveForFirst:1];
      }

      if (_lastVisibleItem)
      {
        _mutableItems2 = [(_UILayoutArrangement *)self _mutableItems];
        v17 = [_mutableItems2 indexOfObject:_lastVisibleItem];

        if (v7 <= v17)
        {
          goto LABEL_14;
        }
      }
    }

    canvas3 = [(_UILayoutArrangement *)self canvas];
    [canvas3 _vendedBaselineViewDidMoveForFirst:0];

LABEL_14:
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_didEvaluateMultilineHeightForView:(id)view
{
  viewCopy = view;
  if (![(_UILayoutArrangement *)self axis])
  {
    canvas = [(_UILayoutArrangement *)self canvas];
    if (canvas == viewCopy)
    {
    }

    else
    {
      _mutableItems = [(_UILayoutArrangement *)self _mutableItems];
      v6 = [_mutableItems containsObject:viewCopy];

      if (!v6)
      {
        goto LABEL_7;
      }
    }

    [(_UIOrderedLayoutArrangement *)self _notifyCanvasesBaselineParametersDidChange];
  }

LABEL_7:
}

- (void)setSpacing:(double)spacing
{
  if (self->_spacing != spacing)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_spacing = spacing;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42___UIOrderedLayoutArrangement_setSpacing___block_invoke;
    v7[3] = &__block_descriptor_40_e36_v16__0___UIOLAConfigurationHistory_8l;
    *&v7[4] = spacing;
    [(_UILayoutArrangement *)self _trackChangesWithConfigBlock:v7];
    canvas = [(_UILayoutArrangement *)self canvas];
    _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(canvas);
  }
}

- (void)setCustomSpacing:(double)spacing afterItem:(id)item
{
  itemCopy = item;
  items = [(_UILayoutArrangement *)self items];
  v8 = [items containsObject:itemCopy];

  if (v8)
  {
    [(_UIOrderedLayoutArrangement *)self customSpacingAfterItem:itemCopy];
    if (v9 != spacing)
    {
      customSpacings = self->_customSpacings;
      if (!customSpacings)
      {
        v11 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:0];
        v12 = self->_customSpacings;
        self->_customSpacings = v11;

        customSpacings = self->_customSpacings;
      }

      v13 = [MEMORY[0x1E696AD98] numberWithDouble:spacing];
      [(NSMapTable *)customSpacings setObject:v13 forKey:itemCopy];

      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __58___UIOrderedLayoutArrangement_setCustomSpacing_afterItem___block_invoke;
      v18 = &unk_1E7129380;
      spacingCopy = spacing;
      v19 = itemCopy;
      [(_UILayoutArrangement *)self _trackChangesWithConfigBlock:&v15];
      v14 = [(_UILayoutArrangement *)self canvas:v15];
      _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(v14);
    }
  }
}

- (double)customSpacingAfterItem:(id)item
{
  v3 = [(NSMapTable *)self->_customSpacings objectForKey:item];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 3.40282347e38;
  }

  return v6;
}

- (void)setDistribution:(int64_t)distribution
{
  if (self->_distribution != distribution)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_distribution = distribution;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47___UIOrderedLayoutArrangement_setDistribution___block_invoke;
    v7[3] = &__block_descriptor_40_e36_v16__0___UIOLAConfigurationHistory_8l;
    v7[4] = distribution;
    [(_UILayoutArrangement *)self _trackChangesWithConfigBlock:v7];
    canvas = [(_UILayoutArrangement *)self canvas];
    _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(canvas);
  }
}

- (void)setBaselineRelativeArrangement:(BOOL)arrangement
{
  if (self->_baselineRelativeArrangement != arrangement)
  {
    v9 = v3;
    v10 = v4;
    self->_baselineRelativeArrangement = arrangement;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62___UIOrderedLayoutArrangement_setBaselineRelativeArrangement___block_invoke;
    v7[3] = &__block_descriptor_33_e36_v16__0___UIOLAConfigurationHistory_8l;
    arrangementCopy = arrangement;
    [(_UILayoutArrangement *)self _trackChangesWithConfigBlock:v7];
    canvas = [(_UILayoutArrangement *)self canvas];
    _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(canvas);
  }
}

- (id)_dimensionRefItemFromConstraint:(id)constraint
{
  _ola_dimensionRefItem = [constraint _ola_dimensionRefItem];
  if (constraint && !_ola_dimensionRefItem)
  {
    if ([(_UIOrderedLayoutArrangement *)self _wantsProportionalDistribution])
    {
      _ola_dimensionRefItem = [(_UILayoutArrangement *)self canvas];
    }

    else
    {
      _ola_dimensionRefItem = 0;
    }
  }

  return _ola_dimensionRefItem;
}

- (void)_cleanUpGuideAtGapFollowingItem:(id)item
{
  itemCopy = item;
  v4 = [(NSMapTable *)self->_spacingOrCenteringGuides objectForKey:?];
  if (v4)
  {
    objectEnumerator = [(NSMapTable *)self->_relatedDimensionConstraints objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    v7 = [(_UIOrderedLayoutArrangement *)self _dimensionRefItemFromConstraint:nextObject];

    if (v4 == v7)
    {
      _UILACleanUpConstraintsMapTable(self->_relatedDimensionConstraints);
      [(_UIOrderedLayoutArrangement *)self _cleanUpGuides];
    }

    else
    {
      [v4 _setLockedToOwningView:0];
      owningView = [v4 owningView];
      [owningView removeLayoutGuide:v4];

      [(NSMapTable *)self->_spacingOrCenteringGuides removeObjectForKey:itemCopy];
    }
  }
}

- (void)_cleanUpEdgeToEdgeConstraintsForHiddenItemsForItem:(id)item atIndex:(unint64_t)index processAdjacentHiddenItems:(BOOL)items
{
  itemsCopy = items;
  itemCopy = item;
  _UILACleanUpConstraintForItemInCollection(itemCopy, self->_edgeToEdgeConstraintsForHiddenItems);
  if (itemsCopy)
  {
    items = [(_UILayoutArrangement *)self items];
    v9 = items;
    if (index == 0x7FFFFFFFFFFFFFFFLL && (index = [items indexOfObject:itemCopy], index == 0x7FFFFFFFFFFFFFFFLL))
    {
      _removeEntriesFromCollectionIfConstraintContainsItem(itemCopy, self->_edgeToEdgeConstraintsForHiddenItems);
    }

    else
    {
      v10 = itemCopy;
      if (index)
      {
        v11 = index - 1;
        while (1)
        {
          v12 = v10;
          v19 = [v9 objectAtIndexedSubscript:v11];

          if ([(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v19])
          {
            break;
          }

          _UILACleanUpConstraintForItemInCollection(v19, self->_edgeToEdgeConstraintsForHiddenItems);
          --v11;
          v10 = v19;
          if (v11 == -1)
          {
            goto LABEL_11;
          }
        }

        v10 = v19;
      }

LABEL_11:
      itemCopy = v10;
      v13 = [v9 count];
      if (v13 >= 3)
      {
        v14 = v13;
        if (index < v13 - 2)
        {
          v15 = index + 1;
          v16 = itemCopy;
          while (1)
          {
            v17 = v16;
            itemCopy = [v9 objectAtIndexedSubscript:v15];

            if ([(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:itemCopy])
            {
              break;
            }

            _UILACleanUpConstraintForItemInCollection(itemCopy, self->_edgeToEdgeConstraintsForHiddenItems);
            ++v15;
            v16 = itemCopy;
            if (v15 >= v14)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v16 = itemCopy;
LABEL_18:
    itemCopy = v16;
  }
}

- (void)_cleanUpEdgeToEdgeConstraintsForVisibleItemsForItem:(id)item atIndex:(unint64_t)index processPrecedingVisibleItem:(BOOL)visibleItem
{
  visibleItemCopy = visibleItem;
  itemCopy = item;
  _UILACleanUpConstraintForItemInCollection(itemCopy, self->_edgeToEdgeConstraintsForVisibleItems);
  if (visibleItemCopy)
  {
    items = [(_UILayoutArrangement *)self items];
    v9 = items;
    if (index == 0x7FFFFFFFFFFFFFFFLL && (index = [items indexOfObject:itemCopy], index == 0x7FFFFFFFFFFFFFFFLL))
    {
      _removeEntriesFromCollectionIfConstraintContainsItem(itemCopy, self->_edgeToEdgeConstraintsForVisibleItems);
    }

    else if (index)
    {
      v10 = index - 1;
      while (1)
      {
        v11 = itemCopy;
        itemCopy = [v9 objectAtIndexedSubscript:v10];

        if ([(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:itemCopy])
        {
          break;
        }

        if (--v10 == -1)
        {
          goto LABEL_13;
        }
      }

      v12 = itemCopy;
      if (v12)
      {
        itemCopy = v12;
        _UILACleanUpConstraintForItemInCollection(v12, self->_edgeToEdgeConstraintsForVisibleItems);
      }

      else
      {
        itemCopy = 0;
      }
    }

LABEL_13:
  }
}

- (int64_t)_minAttributeForGapConstraintRespectingBaselineRelative:(BOOL)relative
{
  relativeCopy = relative;
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  axis = [_orderedPropertySource axis];
  if (axis)
  {
    v6 = 3;
  }

  else
  {
    v6 = 5;
  }

  if (axis && relativeCopy)
  {
    if ([_orderedPropertySource isBaselineRelativeArrangement])
    {
      v6 = 12;
    }

    else
    {
      v6 = 3;
    }
  }

  return v6;
}

- (int64_t)_maxAttributeForGapConstraintRespectingBaselineRelative:(BOOL)relative
{
  relativeCopy = relative;
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  axis = [_orderedPropertySource axis];
  if (axis)
  {
    v6 = 4;
  }

  else
  {
    v6 = 6;
  }

  if (axis && relativeCopy)
  {
    if ([_orderedPropertySource isBaselineRelativeArrangement])
    {
      v6 = 11;
    }

    else
    {
      v6 = 4;
    }
  }

  return v6;
}

- (double)_expectedEdgeToEdgeSpacingForPrecedingItem:(id)item followingItem:(id)followingItem isPrecededByVisibleItem:(BOOL)visibleItem isFollowedByVisibleItem:(BOOL)byVisibleItem
{
  byVisibleItemCopy = byVisibleItem;
  visibleItemCopy = visibleItem;
  itemCopy = item;
  followingItemCopy = followingItem;
  v12 = [(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:itemCopy];
  v13 = [(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:followingItemCopy];

  v14 = 0.0;
  if ((v12 || visibleItemCopy) && (v13 || byVisibleItemCopy))
  {
    _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
    [_orderedPropertySource customSpacingAfterItem:itemCopy];
    if (v16 == 3.40282347e38)
    {
      [_orderedPropertySource spacing];
    }

    canvas = [(_UILayoutArrangement *)self canvas];
    UIRoundToViewScale(canvas);
    v14 = v18;

    if (!v12 || !v13)
    {
      v14 = v14 * 0.5;
    }
  }

  return v14;
}

- (id)_edgeToEdgeConstraintForGapBetweenPrecedingItem:(id)item followingItem:(id)followingItem isPrecededByVisibleItem:(BOOL)visibleItem isFollowedByVisibleItem:(BOOL)byVisibleItem
{
  byVisibleItemCopy = byVisibleItem;
  visibleItemCopy = visibleItem;
  itemCopy = item;
  followingItemCopy = followingItem;
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v13 = [_orderedPropertySource distribution] - 3;
  v14 = [(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:itemCopy];
  v15 = [(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:followingItemCopy];
  v16 = _orderedPropertySource;
  [v16 customSpacingAfterItem:itemCopy];
  if (v17 == 3.40282347e38)
  {
    [v16 spacing];
    if (v17 == 3.40282347e38)
    {

LABEL_11:
      v23 = v13 < 2;
      v24 = [(_UIOrderedLayoutArrangement *)self _minAttributeForGapConstraintRespectingBaselineRelative:[(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:followingItemCopy]];
      v25 = [(_UIOrderedLayoutArrangement *)self _maxAttributeForGapConstraintRespectingBaselineRelative:[(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:itemCopy]];
      [(_UIOrderedLayoutArrangement *)self _expectedEdgeToEdgeSpacingForPrecedingItem:itemCopy followingItem:followingItemCopy isPrecededByVisibleItem:visibleItemCopy isFollowedByVisibleItem:byVisibleItemCopy];
      v26 = [MEMORY[0x1E69977A0] constraintWithItem:followingItemCopy attribute:v24 relatedBy:v23 toItem:itemCopy attribute:v25 constant:?];
      goto LABEL_25;
    }
  }

  v18 = v17;

  if (v14 && v15)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.5;
  }

  if (v18 != 1.17549435e-38)
  {
    goto LABEL_11;
  }

  axis = [v16 axis];
  v21 = itemCopy;
  if (axis)
  {
    leadingAnchor = followingItemCopy;
    if ([v16 isBaselineRelativeArrangement])
    {
      [v21 lastBaselineAnchor];
    }

    else
    {
      [v21 bottomAnchor];
    }
    trailingAnchor = ;
    if ([v16 isBaselineRelativeArrangement])
    {
      [leadingAnchor firstBaselineAnchor];
    }

    else
    {
      [leadingAnchor topAnchor];
    }
    v29 = ;
    v30 = v29;
    v31 = v19;
    if (v13 > 1)
    {
      [v29 constraintEqualToSystemSpacingBelowAnchor:trailingAnchor multiplier:v31];
    }

    else
    {
      [v29 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:trailingAnchor multiplier:v31];
    }
    v26 = ;
  }

  else
  {
    leadingAnchor = [followingItemCopy leadingAnchor];
    trailingAnchor = [v21 trailingAnchor];
    v28 = v19;
    if (v13 > 1)
    {
      [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:v28];
    }

    else
    {
      [leadingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:v28];
    }
    v26 = ;
  }

LABEL_25:
  [v26 setIdentifier:@"UISV-spacing"];

  return v26;
}

- (void)_activateAndInsertEdgeToEdgeConstraintForGapBetweenPrecedingItem:(id)item followingItem:(id)followingItem isPrecededByVisibleItem:(BOOL)visibleItem isFollowedByVisibleItem:(BOOL)byVisibleItem isHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  byVisibleItemCopy = byVisibleItem;
  visibleItemCopy = visibleItem;
  itemCopy = item;
  followingItemCopy = followingItem;
  v13 = [(_UIOrderedLayoutArrangement *)self _edgeToEdgeConstraintForGapBetweenPrecedingItem:itemCopy followingItem:followingItemCopy isPrecededByVisibleItem:visibleItemCopy isFollowedByVisibleItem:byVisibleItemCopy];
  v14 = v13;
  LODWORD(v15) = 1148846080;
  if (hiddenCopy)
  {
    *&v15 = 50.0;
  }

  [v13 setPriority:v15];
  if (hiddenCopy)
  {
    if (visibleItemCopy)
    {
      v16 = followingItemCopy;
    }

    else
    {
      v16 = itemCopy;
    }

    [(NSMapTable *)self->_edgeToEdgeConstraintsForHiddenItems setObject:v14 forKey:v16];
    [v14 setIdentifier:@"UISV-spacing-hidden"];
  }

  else
  {
    [(NSMapTable *)self->_edgeToEdgeConstraintsForVisibleItems setObject:v14 forKey:itemCopy];
  }

  [v14 setActive:1];
}

- (void)_activateAndInsertEdgeToEdgeConstraintForGapBetweenSpanningLayoutGuide:(id)guide hiddenItem:(id)item
{
  itemCopy = item;
  guideCopy = guide;
  v8 = [(_UIOrderedLayoutArrangement *)self _minAttributeForGapConstraintRespectingBaselineRelative:0];
  v9 = [(_UIOrderedLayoutArrangement *)self _maxAttributeForGapConstraintRespectingBaselineRelative:0];
  v11 = [MEMORY[0x1E69977A0] constraintWithItem:itemCopy attribute:v8 relatedBy:0 toItem:guideCopy attribute:v9 constant:0.0];

  [v11 setIdentifier:@"UISV-spacing-hidden"];
  LODWORD(v10) = 1112014848;
  [v11 setPriority:v10];
  [v11 setActive:1];
  [(NSMapTable *)self->_edgeToEdgeConstraintsForHiddenItems setObject:v11 forKey:itemCopy];
}

- (id)_setUpSpacingOrCenteringGuideForGapIndex:(unint64_t)index
{
  v19[2] = *MEMORY[0x1E69E9840];
  _mutableItems = [(_UILayoutArrangement *)self _mutableItems];
  v6 = [_mutableItems objectAtIndexedSubscript:index];
  for (i = index + 1; ; ++i)
  {
    if (i >= [_mutableItems count])
    {
      v8 = 0;
LABEL_6:
      v9 = 0;
      goto LABEL_7;
    }

    v8 = [_mutableItems objectAtIndexedSubscript:i];
    if ([(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v8])
    {
      break;
    }
  }

  if (i == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  canvas = [(_UILayoutArrangement *)self canvas];
  v9 = objc_alloc_init(_UIOLAGapGuide);
  [canvas addLayoutGuide:v9];
  [(UILayoutGuide *)v9 setIdentifier:@"UISV-distributing"];
  [(UILayoutGuide *)v9 _setLockedToOwningView:1];
  [(_UIOLAGapGuide *)v9 setFollowingItemIndex:i];
  [(_UIOLAGapGuide *)v9 setFollowingItem:v8];
  _minAttributeForGapConstraint = [(_UIOrderedLayoutArrangement *)self _minAttributeForGapConstraint];
  _precedingLocationAttributeForGuideConstraint = [(_UIOrderedLayoutArrangement *)self _precedingLocationAttributeForGuideConstraint];
  v13 = [MEMORY[0x1E69977A0] constraintWithItem:v9 attribute:_minAttributeForGapConstraint relatedBy:0 toItem:v6 attribute:_precedingLocationAttributeForGuideConstraint];
  v19[0] = v13;
  v14 = MEMORY[0x1E69977A0];
  v15 = _UILAFacingAttributeOfAttribute(_minAttributeForGapConstraint);
  v16 = [v14 constraintWithItem:v9 attribute:v15 relatedBy:0 toItem:v8 attribute:_UILAFacingAttributeOfAttribute(_precedingLocationAttributeForGuideConstraint)];
  v19[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];

  [v17 makeObjectsPerformSelector:sel_setIdentifier_ withObject:@"UISV-distributing-edge"];
  [MEMORY[0x1E69977A0] activateConstraints:v17];
  [(UILayoutGuide *)v9 _setSystemConstraints:v17];
  [(NSMapTable *)self->_spacingOrCenteringGuides setObject:v9 forKey:v6];

LABEL_7:

  return v9;
}

- (void)_setUpDimensionConstraintForItem:(id)item referenceItem:(id)referenceItem atIndex:(unint64_t)index
{
  v39 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  referenceItemCopy = referenceItem;
  if (!referenceItemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIOrderedLayoutArrangement.m" lineNumber:1169 description:@"Can't set up dimension constraint"];
  }

  _mutableItems = [(_UILayoutArrangement *)self _mutableItems];
  v12 = [_mutableItems objectAtIndexedSubscript:index];

  _wantsProportionalDistribution = [(_UIOrderedLayoutArrangement *)self _wantsProportionalDistribution];
  _dimensionAttributeForCurrentAxis = [(_UILayoutArrangement *)self _dimensionAttributeForCurrentAxis];
  if (_wantsProportionalDistribution)
  {
    _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
    [itemCopy _proportionalFillLengthForOrderedArrangement:self relevantParentAxis:{objc_msgSend(_orderedPropertySource, "axis")}];
    v17 = v16;

    v18 = fmax(v17, 0.0) / self->_proportionalFillDenominator;
    if (v18 <= 0.0)
    {
      v25 = [MEMORY[0x1E69977A0] constraintWithItem:itemCopy attribute:_dimensionAttributeForCurrentAxis relatedBy:0 constant:0.0];
LABEL_13:
      v26 = v25;
      if (self->_distribution != 4)
      {
        [v25 multiplier];
        if (v29 == 1.0)
        {
          LODWORD(v29) = 1148846080;
          goto LABEL_18;
        }

        v27 = 999.0 - index;
        v28 = 751.0;
LABEL_17:
        v29 = fmax(v27, v28);
        *&v29 = v29;
LABEL_18:
        [v26 setPriority:v29];
        goto LABEL_19;
      }

LABEL_14:
      v27 = 150.0 - index;
      v28 = 50.0;
      goto LABEL_17;
    }

    _propertySource = [(_UILayoutArrangement *)self _propertySource];
    layoutUsesCanvasMarginsWhenFilling = [_propertySource layoutUsesCanvasMarginsWhenFilling];

    if (!layoutUsesCanvasMarginsWhenFilling)
    {
LABEL_9:
      v25 = [MEMORY[0x1E69977A0] constraintWithItem:itemCopy attribute:_dimensionAttributeForCurrentAxis relatedBy:0 toItem:referenceItemCopy attribute:_dimensionAttributeForCurrentAxis multiplier:v18];
      goto LABEL_13;
    }

    canvas = [(_UILayoutArrangement *)self canvas];

    if (canvas == referenceItemCopy)
    {
LABEL_7:
      canvas2 = [(_UILayoutArrangement *)self canvas];

      if (canvas2 == referenceItemCopy)
      {
        canvas3 = [(_UILayoutArrangement *)self canvas];
        layoutMarginsGuide = [canvas3 layoutMarginsGuide];

        referenceItemCopy = layoutMarginsGuide;
      }

      goto LABEL_9;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v33 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_28;
      }

      canvas4 = [(_UILayoutArrangement *)self canvas];
      v35 = 138412546;
      v36 = canvas4;
      v37 = 2112;
      v38 = referenceItemCopy;
      _os_log_fault_impl(&dword_188A29000, v33, OS_LOG_TYPE_FAULT, "Unexpected referenceItem for proportional fill constraint for stack view. UIStackView = %@, referenceItem = %@", &v35, 0x16u);
    }

    else
    {
      v32 = *(__UILogGetCategoryCachedImpl("Assert", &_setUpDimensionConstraintForItem_referenceItem_atIndex____s_category) + 8);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v33 = v32;
      canvas4 = [(_UILayoutArrangement *)self canvas];
      v35 = 138412546;
      v36 = canvas4;
      v37 = 2112;
      v38 = referenceItemCopy;
      _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "Unexpected referenceItem for proportional fill constraint for stack view. UIStackView = %@, referenceItem = %@", &v35, 0x16u);
    }

LABEL_28:
    goto LABEL_7;
  }

  v26 = [MEMORY[0x1E69977A0] constraintWithItem:itemCopy attribute:_dimensionAttributeForCurrentAxis relatedBy:0 toItem:referenceItemCopy attribute:_dimensionAttributeForCurrentAxis];
  if (self->_distribution == 4)
  {
    goto LABEL_14;
  }

LABEL_19:
  if (_wantsProportionalDistribution)
  {
    v30 = @"UISV-fill-proportionally";
  }

  else
  {
    v30 = @"UISV-fill-equally";
  }

  [v26 setIdentifier:v30];
  [v26 setActive:1];
  [(NSMapTable *)self->_relatedDimensionConstraints setObject:v26 forKey:v12];
}

- (void)_setUpHidingDimensionConstraintForItem:(id)item
{
  v4 = MEMORY[0x1E69977A0];
  itemCopy = item;
  v7 = [v4 constraintWithItem:itemCopy attribute:-[_UILayoutArrangement _dimensionAttributeForCurrentAxis](self relatedBy:"_dimensionAttributeForCurrentAxis") constant:{0, 0.0}];
  [v7 setIdentifier:@"UISV-hiding"];
  LODWORD(v6) = 1148846064;
  [v7 setPriority:v6];
  [v7 setActive:1];
  [(NSMapTable *)self->_hidingDimensionConstraints setObject:v7 forKey:itemCopy];
}

- (double)_constantForMultilineTextWidthDisambiguationConstraintWithNumberOfRelevantItems:(unint64_t)items
{
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v5 = _orderedPropertySource;
  if (items)
  {
    [_orderedPropertySource spacing];
    v7 = -(v6 * (items + -1.0)) / items;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (id)_preparedFaultyCompatibleMultilineTextWidthDisambiguationConstraintForItem:(id)item
{
  itemCopy = item;
  canvas = [(_UILayoutArrangement *)self canvas];
  _ola_shouldUseImprovedMultilineTextDisambiguation = [canvas _ola_shouldUseImprovedMultilineTextDisambiguation];

  if (_ola_shouldUseImprovedMultilineTextDisambiguation)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIOrderedLayoutArrangement.m" lineNumber:1229 description:@"Incorrect use of faulty logic. Internal UIKit bug."];
  }

  v8 = itemCopy;
  _mutableItems = [(_UILayoutArrangement *)self _mutableItems];
  v10 = [_mutableItems count];
  _hiddenItems = [(_UILayoutArrangement *)self _hiddenItems];
  v12 = [_hiddenItems count];
  v13 = v10 - v12;

  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  LOBYTE(_mutableItems) = [_orderedPropertySource layoutUsesCanvasMarginsWhenFilling];
  canvas2 = [(_UILayoutArrangement *)self canvas];
  v16 = canvas2;
  if (_mutableItems)
  {
    layoutMarginsGuide = [canvas2 layoutMarginsGuide];
    widthAnchor = [layoutMarginsGuide widthAnchor];
  }

  else
  {
    widthAnchor = [canvas2 widthAnchor];
  }

  widthAnchor2 = [v8 widthAnchor];
  v20 = 0.0;
  if (v10 != v12)
  {
    v20 = 1.0 / v13;
  }

  [(_UIOrderedLayoutArrangement *)self _constantForMultilineTextWidthDisambiguationConstraintWithNumberOfRelevantItems:v13];
  v22 = [widthAnchor2 constraintEqualToAnchor:widthAnchor multiplier:v20 constant:v21];

  [v8 contentCompressionResistancePriorityForAxis:0];
  v24 = v23;
  [v8 contentHuggingPriorityForAxis:0];
  if (v24 >= v25)
  {
    v25 = v24;
  }

  v26 = v25 + 10.0;
  if (v26 > 999.0)
  {
    v26 = 999.0;
  }

  *&v26 = v26;
  [v22 setPriority:v26];

  return v22;
}

- (id)_preparedImprovedMultilineTextWidthDisambiguationConstraintForItem:(id)item numberOfVisibleMultilineItems:(unint64_t)items
{
  itemCopy = item;
  [itemCopy _ola_willApplyMultilineTextWidthDisambiguationConstraint];
  _orderedPropertySource = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  layoutUsesCanvasMarginsWhenFilling = [_orderedPropertySource layoutUsesCanvasMarginsWhenFilling];
  canvas = [(_UILayoutArrangement *)self canvas];
  v10 = canvas;
  if (layoutUsesCanvasMarginsWhenFilling)
  {
    layoutMarginsGuide = [canvas layoutMarginsGuide];
    widthAnchor = [layoutMarginsGuide widthAnchor];
  }

  else
  {
    widthAnchor = [canvas widthAnchor];
  }

  widthAnchor2 = [itemCopy widthAnchor];

  if (items)
  {
    v14 = 1.0 / items;
  }

  else
  {
    v14 = 1.0;
  }

  [(_UIOrderedLayoutArrangement *)self _constantForMultilineTextWidthDisambiguationConstraintWithNumberOfRelevantItems:items];
  v16 = [widthAnchor2 constraintLessThanOrEqualToAnchor:widthAnchor multiplier:v14 constant:v15];

  LODWORD(v17) = 1148026880;
  [v16 setPriority:v17];

  return v16;
}

- (void)_setUpMultilineTextWidthDisambiguationConstraintForItem:(id)item numberOfVisibleMultilineItems:(unint64_t)items
{
  itemCopy = item;
  v6 = [(NSMapTable *)self->_multilineTextWidthDisambiguationConstraints objectForKey:?];
  if (v6)
  {
    v7 = v6;
    if (items == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 setActive:1];
    }
  }

  else
  {
    v8 = self->_multilineTextWidthDisambiguationConstraints;
    if (!v8)
    {
      if (items != 0x7FFFFFFFFFFFFFFFLL && items != 0)
      {
        v9 = items - 1;
      }

      else
      {
        v9 = 0;
      }

      v8 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:v9];
    }

    multilineTextWidthDisambiguationConstraints = self->_multilineTextWidthDisambiguationConstraints;
    self->_multilineTextWidthDisambiguationConstraints = v8;

    if (items == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(_UIOrderedLayoutArrangement *)self _preparedFaultyCompatibleMultilineTextWidthDisambiguationConstraintForItem:itemCopy];
      [v7 setActive:1];
    }

    else
    {
      v7 = [(_UIOrderedLayoutArrangement *)self _preparedImprovedMultilineTextWidthDisambiguationConstraintForItem:itemCopy numberOfVisibleMultilineItems:items];
    }

    [v7 setIdentifier:@"UISV-text-width-disambiguation"];
    [(NSMapTable *)self->_multilineTextWidthDisambiguationConstraints setObject:v7 forKey:itemCopy];
  }
}

- (id)_visibleItemAtEndWithEnumerationOptions:(unint64_t)options
{
  _mutableItems = [(_UILayoutArrangement *)self _mutableItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71___UIOrderedLayoutArrangement__visibleItemAtEndWithEnumerationOptions___block_invoke;
  v9[3] = &unk_1E71055A0;
  v9[4] = self;
  v6 = [_mutableItems indexOfObjectWithOptions:options passingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [_mutableItems objectAtIndex:v6];
  }

  return v7;
}

- (id)_baselineViewVendTallest:(BOOL)tallest forFirstBaseline:(BOOL)baseline
{
  if (tallest)
  {
    v4 = [(_UIOrderedLayoutArrangement *)self _tallestItem:tallest];
  }

  else
  {
    if (baseline)
    {
      [(_UIOrderedLayoutArrangement *)self _firstVisibleItem];
    }

    else
    {
      [(_UIOrderedLayoutArrangement *)self _lastVisibleItem];
    }
    v4 = ;
  }

  return v4;
}

- (NSString)description
{
  v13.receiver = self;
  v13.super_class = _UIOrderedLayoutArrangement;
  v3 = [(_UILayoutArrangement *)&v13 description];
  if (os_variant_has_internal_diagnostics())
  {
    if ([(NSMapTable *)self->_edgeToEdgeConstraintsForVisibleItems count])
    {
      v5 = [v3 stringByAppendingFormat:@" edgeToEdgeConstraintsForVisibleItems=%p", self->_edgeToEdgeConstraintsForVisibleItems];

      v3 = v5;
    }

    if ([(NSMapTable *)self->_edgeToEdgeConstraintsForHiddenItems count])
    {
      v6 = [v3 stringByAppendingFormat:@" edgeToEdgeConstraintsForHiddenItems=%p", self->_edgeToEdgeConstraintsForHiddenItems];

      v3 = v6;
    }

    if ([(NSMapTable *)self->_hidingDimensionConstraints count])
    {
      v7 = [v3 stringByAppendingFormat:@" hidingDimensionConstraints=%p", self->_hidingDimensionConstraints];

      v3 = v7;
    }

    if ([(NSMapTable *)self->_multilineTextWidthDisambiguationConstraints count])
    {
      v8 = [v3 stringByAppendingFormat:@" multilineTextWidthDisambiguationConstraints=%p", self->_multilineTextWidthDisambiguationConstraints];

      v3 = v8;
    }

    if ([(NSMapTable *)self->_spacingOrCenteringGuides count])
    {
      v9 = [v3 stringByAppendingFormat:@" spacingOrCenteringGuides=%p", self->_spacingOrCenteringGuides];

      v3 = v9;
    }

    if ([(NSMapTable *)self->_relatedDimensionConstraints count])
    {
      v10 = [v3 stringByAppendingFormat:@" relatedDimensionConstraints=%p", self->_relatedDimensionConstraints];

      v3 = v10;
    }

    if (self->_distribution == 2)
    {
      v11 = [v3 stringByAppendingFormat:@" proportionalFillDenominator=%f", *&self->_proportionalFillDenominator];

      v3 = v11;
    }

    if (self->_spacing == 1.17549435e-38)
    {
      [v3 stringByAppendingString:@" spacing=system"];
    }

    else
    {
      [v3 stringByAppendingFormat:@" spacing=%g", *&self->_spacing];
    }
    v12 = ;

    if ([(NSMapTable *)self->_customSpacings count])
    {
      v3 = [v12 stringByAppendingFormat:@" customSpacings=%p", self->_customSpacings];
    }

    else
    {
      v3 = v12;
    }
  }

  return v3;
}

@end