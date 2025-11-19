@interface _UIOrderedLayoutArrangement
- (BOOL)_canvasConnectionConstraintsNeedUpdatePass;
- (BOOL)_configurationRequiresCanvasConnectionFittingConstraint;
- (BOOL)_customSpacingChanged;
- (BOOL)_hasStaleConfiguration;
- (BOOL)_hasStaleSpacing;
- (BOOL)_itemCountChanged;
- (BOOL)_monitorsSystemLayoutFittingSizeForItem:(id)a3;
- (BOOL)_wantsProportionalDistribution;
- (NSString)description;
- (double)_calculatedIntrinsicHeight;
- (double)_constantForMultilineTextWidthDisambiguationConstraintWithNumberOfRelevantItems:(unint64_t)a3;
- (double)_expectedEdgeToEdgeSpacingForPrecedingItem:(id)a3 followingItem:(id)a4 isPrecededByVisibleItem:(BOOL)a5 isFollowedByVisibleItem:(BOOL)a6;
- (double)customSpacingAfterItem:(id)a3;
- (id)_baselineViewVendTallest:(BOOL)a3 forFirstBaseline:(BOOL)a4;
- (id)_dimensionRefItemFromConstraint:(id)a3;
- (id)_edgeToEdgeConstraintForGapBetweenPrecedingItem:(id)a3 followingItem:(id)a4 isPrecededByVisibleItem:(BOOL)a5 isFollowedByVisibleItem:(BOOL)a6;
- (id)_preparedFaultyCompatibleMultilineTextWidthDisambiguationConstraintForItem:(id)a3;
- (id)_preparedImprovedMultilineTextWidthDisambiguationConstraintForItem:(id)a3 numberOfVisibleMultilineItems:(unint64_t)a4;
- (id)_setUpSpacingOrCenteringGuideForGapIndex:(unint64_t)a3;
- (id)_tallestItem;
- (id)_visibleItemAtEndWithEnumerationOptions:(unint64_t)a3;
- (int64_t)_maxAttributeForGapConstraintRespectingBaselineRelative:(BOOL)a3;
- (int64_t)_minAttributeForGapConstraintRespectingBaselineRelative:(BOOL)a3;
- (int64_t)_precedingLocationAttributeForGuideConstraint;
- (unint64_t)_indexOfItemForLocationAttribute:(int64_t)a3;
- (void)_activateAndInsertEdgeToEdgeConstraintForGapBetweenPrecedingItem:(id)a3 followingItem:(id)a4 isPrecededByVisibleItem:(BOOL)a5 isFollowedByVisibleItem:(BOOL)a6 isHidden:(BOOL)a7;
- (void)_activateAndInsertEdgeToEdgeConstraintForGapBetweenSpanningLayoutGuide:(id)a3 hiddenItem:(id)a4;
- (void)_adjustConstraintConstantsIfPossible;
- (void)_cleanUpEdgeToEdgeConstraintsForHiddenItemsForItem:(id)a3 atIndex:(unint64_t)a4 processAdjacentHiddenItems:(BOOL)a5;
- (void)_cleanUpEdgeToEdgeConstraintsForVisibleItemsForItem:(id)a3 atIndex:(unint64_t)a4 processPrecedingVisibleItem:(BOOL)a5;
- (void)_cleanUpGuideAtGapFollowingItem:(id)a3;
- (void)_cleanUpGuides;
- (void)_cleanUpWithoutResettingKeepAliveWorkaround;
- (void)_clearAllConstraintsArrays;
- (void)_didEvaluateMultilineHeightForView:(id)a3;
- (void)_insertIndividualGuidesAndConstraintsAsNecessary;
- (void)_intrinsicContentSizeInvalidatedForItem:(id)a3;
- (void)_notifyCanvasesBaselineParametersDidChange;
- (void)_removeGuideAndConstraintGroupsAsNecessary;
- (void)_removeIndividualGuidesAndConstraintsAsNecessary;
- (void)_setUpDimensionConstraintForItem:(id)a3 referenceItem:(id)a4 atIndex:(unint64_t)a5;
- (void)_setUpHidingDimensionConstraintForItem:(id)a3;
- (void)_setUpMultilineTextWidthDisambiguationConstraintForItem:(id)a3 numberOfVisibleMultilineItems:(unint64_t)a4;
- (void)_systemLayoutFittingSizeDidChangeForItem:(id)a3;
- (void)_trackChangesAffectingExternalBaselineConstraints:(id)a3;
- (void)_updateArrangementConstraints;
- (void)_updateConfigurationHistory;
- (void)_visibilityParameterChangedForItem:(id)a3;
- (void)dealloc;
- (void)insertItem:(id)a3 atIndex:(unint64_t)a4;
- (void)removeItem:(id)a3;
- (void)setBaselineRelativeArrangement:(BOOL)a3;
- (void)setCustomSpacing:(double)a3 afterItem:(id)a4;
- (void)setDistribution:(int64_t)a3;
- (void)setSpacing:(double)a3;
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
    v7 = [(NSMapTable *)self->_spacingOrCenteringGuides objectEnumerator];
    v3 = [v7 nextObject];
    if (v3)
    {
      v4 = v3;
      do
      {
        [v4 _setLockedToOwningView:0];
        v5 = [v4 owningView];
        [v5 removeLayoutGuide:v4];

        v6 = [v7 nextObject];

        v4 = v6;
      }

      while (v6);
    }

    [(NSMapTable *)self->_spacingOrCenteringGuides removeAllObjects];
  }
}

- (BOOL)_configurationRequiresCanvasConnectionFittingConstraint
{
  v2 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v3 = ([v2 distribution] - 3) < 2;

  return v3;
}

- (void)_insertIndividualGuidesAndConstraintsAsNecessary
{
  v134 = *MEMORY[0x1E69E9840];
  v3 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v4 = [(_UILayoutArrangement *)self _mutableItems];
  v5 = [v4 count];
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

  v8 = [(_UILayoutArrangement *)self _hiddenItems];
  v9 = [v8 count];
  v10 = [(_UILayoutArrangement *)self _newlyHiddenItems];
  v11 = [v10 count];
  v112 = v3;
  v12 = [v3 _newlyHiddenItems];
  v13 = [v12 count] - v11 + v9;

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
  v123 = self;
  if (!v26 && v6 != v13)
  {
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v19 = [(NSMapTable *)edgeToEdgeConstraintsForVisibleItems objectEnumerator];
    v20 = [v19 countByEnumeratingWithState:&v129 objects:v133 count:16];
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
            objc_enumerationMutation(v19);
          }

          v22 += [*(*(&v129 + 1) + 8 * i) isActive];
        }

        v21 = [v19 countByEnumeratingWithState:&v129 objects:v133 count:16];
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
    v30 = [(NSMapTable *)edgeToEdgeConstraintsForHiddenItems objectEnumerator];
    v31 = [v30 countByEnumeratingWithState:&v129 objects:v133 count:16];
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
            objc_enumerationMutation(v30);
          }

          v33 += [*(*(&v129 + 1) + 8 * j) isActive];
        }

        v32 = [v30 countByEnumeratingWithState:&v129 objects:v133 count:16];
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
      v45 = [(NSMapTable *)self->_relatedDimensionConstraints objectEnumerator];
      v46 = [v45 nextObject];
      v113 = [(_UIOrderedLayoutArrangement *)self _dimensionRefItemFromConstraint:v46];

      if (v110 > 1)
      {
        v48 = [(_UIOrderedLayoutArrangement *)self _wantsProportionalDistribution];
        v47 = v120;
        if (!v48)
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
  v50 = [(NSMapTable *)relatedDimensionConstraints objectEnumerator];
  v51 = [v50 countByEnumeratingWithState:&v129 objects:v133 count:16];
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
          objc_enumerationMutation(v50);
        }

        v53 += [*(*(&v129 + 1) + 8 * k) isActive];
      }

      v52 = [v50 countByEnumeratingWithState:&v129 objects:v133 count:16];
    }

    while (v52);
  }

  else
  {
    v53 = 0;
  }

  v56 = self;
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
    v63 = [(_UIOrderedLayoutArrangement *)self _firstVisibleItem];
    v64 = [(_UIOrderedLayoutArrangement *)self _lastVisibleItem];
    v111 = [v4 indexOfObject:v63];
    v121 = [v4 indexOfObject:v64];
    v107 = v63;
    v103 = v64;
    if (v63)
    {
      v65 = v64 == 0;
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
      v124 = v4;
      while (1)
      {
        v69 = [v4 objectAtIndexedSubscript:{v68, v103}];
        v70 = [(_UILayoutArrangement *)v56 _itemWantsLayoutAsIfVisible:?];
        if (v119 && v70 && v67 != 0)
        {
          v72 = [(NSMapTable *)v56->_edgeToEdgeConstraintsForVisibleItems objectForKey:v67];
          v73 = v56;
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

          v56 = v123;
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
          v85 = [(NSMapTable *)v56->_edgeToEdgeConstraintsForHiddenItems objectForKey:v69];
          if (!v85)
          {
            [(_UIOrderedLayoutArrangement *)v56 _activateAndInsertEdgeToEdgeConstraintForGapBetweenPrecedingItem:v122 followingItem:v69 isPrecededByVisibleItem:1 isFollowedByVisibleItem:v121 > v68 isHidden:1];
            goto LABEL_144;
          }

          goto LABEL_134;
        }

        if ((v105 & 1) == 0)
        {
          v85 = [(NSMapTable *)v56->_edgeToEdgeConstraintsForHiddenItems objectForKey:v69];
          if (v85)
          {
            goto LABEL_134;
          }

          v91 = [(_UILayoutArrangement *)v56 _spanningLayoutGuideCreateIfNecessary];
          [(_UIOrderedLayoutArrangement *)v56 _activateAndInsertEdgeToEdgeConstraintForGapBetweenSpanningLayoutGuide:v91 hiddenItem:v69];

LABEL_144:
LABEL_145:
          v67 = v122;
        }

        v4 = v124;
        if (v118 && [v69 _ola_isCandidateForMultilineTextWidthDisambiguationWhenArranged])
        {
          v92 = [(_UILayoutArrangement *)v56 canvas];
          v93 = [v92 _ola_shouldUseImprovedMultilineTextDisambiguation];

          if (v93)
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
            [(_UIOrderedLayoutArrangement *)v56 _setUpMultilineTextWidthDisambiguationConstraintForItem:v69 numberOfVisibleMultilineItems:0x7FFFFFFFFFFFFFFFLL];
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
          v96 = [(NSMapTable *)v56->_hidingDimensionConstraints objectForKey:v69];

          if (v96)
          {
            goto LABEL_157;
          }

          v97 = [(NSMapTable *)v56->_hidingDimensionConstraints objectForKey:v69];
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
            [(_UIOrderedLayoutArrangement *)v56 _setUpHidingDimensionConstraintForItem:v69];
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
          v76 = v56;
          v77 = v56->_edgeToEdgeConstraintsForHiddenItems;
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

          v56 = v123;
        }
      }

LABEL_114:
      v81 = v70;
      if (v115 && v70)
      {
        v82 = [(NSMapTable *)v56->_spacingOrCenteringGuides objectForKey:v69];

        if (!v82)
        {
          v83 = [(_UIOrderedLayoutArrangement *)v56 _setUpSpacingOrCenteringGuideForGapIndex:v68];
        }
      }

      if (v53 >= v116 || !v70)
      {
        goto LABEL_145;
      }

      v84 = [(NSMapTable *)v56->_relatedDimensionConstraints objectForKey:v69];
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

      v86 = v113;
      if (!v113)
      {
        if (v110 > 1)
        {
          if (![(_UIOrderedLayoutArrangement *)v56 _wantsProportionalDistribution])
          {
            v113 = v69;
            goto LABEL_143;
          }

          v86 = [(_UILayoutArrangement *)v56 canvas];
LABEL_138:
          v85 = 0;
          v113 = v86;
          if (v110 < 2 || v86 == v69)
          {
            goto LABEL_144;
          }

          [(_UIOrderedLayoutArrangement *)v56 _setUpDimensionConstraintForItem:v69 referenceItem:v86 atIndex:v68];
LABEL_143:
          v85 = 0;
          goto LABEL_144;
        }

        v87 = [(NSMapTable *)v56->_spacingOrCenteringGuides objectEnumerator];
        v88 = [v87 nextObject];

        v86 = v88;
        v56 = v123;
      }

      if (v110 <= 1 && v68 < v106)
      {
        v113 = v86;
        v89 = [(NSMapTable *)v56->_spacingOrCenteringGuides objectForKey:v69];
        v90 = v89;
        if (v89 && v113 != v89)
        {
          [(_UIOrderedLayoutArrangement *)v123 _setUpDimensionConstraintForItem:v89 referenceItem:v113 atIndex:v68];
        }

        v85 = 0;
        v56 = v123;
        goto LABEL_144;
      }

      goto LABEL_138;
    }

    v108 = 0;
    v109 = 0;
    v67 = 0;
LABEL_164:
    v98 = [(_UILayoutArrangement *)v56 canvas];
    if ([v98 _ola_shouldUseImprovedMultilineTextDisambiguation])
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
      v126 = v4;
      v127 = v56;
      v128 = v108;
      [v109 enumerateIndexesUsingBlock:v125];
      v98 = v126;
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
  v3 = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
  v4 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v5 = [v4 customSpacings];
  v6 = [v3 customSpacings];
  v7 = v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5 != 0;
  }

  if ((v5 != 0) != v8 && v6 != 0)
  {
    v10 = [v4 customSpacings];
    v11 = [v3 customSpacings];
    v8 = [v10 isEqual:v11] ^ 1;
  }

  return v8;
}

- (void)_updateArrangementConstraints
{
  v64 = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = _UIOrderedLayoutArrangement;
  [(_UILayoutArrangement *)&v57 _updateArrangementConstraints];
  v3 = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
  [v3 setInOrderedArrangementUpdateSection:1];
  v4 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  if ([(NSMapTable *)self->_edgeToEdgeConstraintsForHiddenItems count]&& ![(NSMapTable *)self->_edgeToEdgeConstraintsForVisibleItems count])
  {
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForHiddenItems);
  }

  if ([v4 _itemOrderingChanged])
  {
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForVisibleItems);
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForHiddenItems);
  }

  v5 = [v4 _newlyUnhiddenItems];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(_UILayoutArrangement *)self _hiddenItems];
    v8 = [v7 count];

    if (v8)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v9 = [v4 _newlyUnhiddenItems];
      v10 = [v9 countByEnumeratingWithState:&v53 objects:v59 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v53 + 1) + 8 * i);
            _UILACleanUpConstraintForItemInCollection(v14, self->_hidingDimensionConstraints);
            [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForHiddenItemsForItem:v14 atIndex:0x7FFFFFFFFFFFFFFFLL processAdjacentHiddenItems:1];
          }

          v11 = [v9 countByEnumeratingWithState:&v53 objects:v59 count:16];
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

  if ([v4 distribution] != 2)
  {
    self->_proportionalFillDenominator = 0.0;
  }

  if ([v4 distribution] == 2)
  {
    if (([v4 _itemFittingSizeChanged] & 1) != 0 || -[_UIOrderedLayoutArrangement _itemCountChanged](self, "_itemCountChanged") || objc_msgSend(v3, "distribution") != 2 || (v15 = objc_msgSend(v4, "axis"), v15 != objc_msgSend(v3, "axis")))
    {
      self->_proportionalFillDenominator = 0.0;
      v16 = [(_UILayoutArrangement *)self _mutableItems];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v49 objects:v58 count:16];
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
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v49 + 1) + 8 * j);
            if ([(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v21])
            {
              [v21 _proportionalFillLengthForOrderedArrangement:self relevantParentAxis:{-[_UILayoutArrangement axis](self, "axis")}];
              if (v22 > 0.0)
              {
                self->_proportionalFillDenominator = v22 + self->_proportionalFillDenominator;
              }

              [v4 spacing];
              self->_proportionalFillDenominator = v23 + self->_proportionalFillDenominator;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v49 objects:v58 count:16];
        }

        while (v18);
      }

      [v4 spacing];
      self->_proportionalFillDenominator = self->_proportionalFillDenominator - v24;
    }
  }

  if ([(_UIOrderedLayoutArrangement *)self _hasStaleConfiguration])
  {
    v25 = [v3 axis];
    if (v25 == [(_UILayoutArrangement *)self axis])
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
    v26 = [(_UILayoutArrangement *)self canvas];
    v27 = [v26 _ola_shouldUseImprovedMultilineTextDisambiguation];

    if (!v27)
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
          v34 = [(_UILayoutArrangement *)self canvas];
          *buf = 134218242;
          v61 = v29;
          v62 = 2112;
          v63 = v34;
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
    v36 = [(_UILayoutArrangement *)self _mutableItems];
    if ([v36 count])
    {
      v37 = 0;
      do
      {
        multilineTextWidthDisambiguationConstraints = self->_multilineTextWidthDisambiguationConstraints;
        v39 = [v36 objectAtIndexedSubscript:v37];
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

      while (v37 < [v36 count]);
    }

LABEL_61:
    v44 = [(_UILayoutArrangement *)self _incomingItems];
    if (![v44 count])
    {
      v45 = [(_UILayoutArrangement *)self _outgoingItems];
      if (![v45 count] && (objc_msgSend(v4, "_itemOrderingChanged") & 1) == 0)
      {
        v46 = [v4 _newlyHiddenItems];
        if (![v46 count])
        {
          v47 = [v4 _newlyUnhiddenItems];
          v48 = [v47 count];

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
  [v3 setInOrderedArrangementUpdateSection:0];
}

- (BOOL)_canvasConnectionConstraintsNeedUpdatePass
{
  v6.receiver = self;
  v6.super_class = _UIOrderedLayoutArrangement;
  if ([(_UILayoutArrangement *)&v6 _canvasConnectionConstraintsNeedUpdatePass])
  {
    return 1;
  }

  v4 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v3 = [v4 _itemOrderingChanged];

  return v3;
}

- (void)_updateConfigurationHistory
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
  if ([v3 isInOrderedArrangementUpdateSection])
  {
    v4 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
    [v4 spacing];
    [v3 setSpacing:?];
    [v3 setDistribution:{objc_msgSend(v4, "distribution")}];
    [v3 setProportionalFillDenominator:self->_proportionalFillDenominator];
    [v3 setHasEstablishedOrderingValues:1];
    [v3 setBaselineRelativeArrangement:{objc_msgSend(v4, "isBaselineRelativeArrangement")}];
    if (v3 != v4)
    {
      v5 = [v3 customSpacings];
      [v5 removeAllObjects];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = [v4 customSpacings];
      v7 = [v6 keyEnumerator];

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * v11);
            v13 = [v4 customSpacings];
            v14 = [v13 objectForKey:v12];
            [v14 doubleValue];
            [v3 setCustomSpacing:v12 afterItem:?];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }
    }

    [v4 _setItemOrderingChanged:0];
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

  v4 = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
  v5 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  if (![v4 hasEstablishedOrderingValues] || -[_UIOrderedLayoutArrangement _hasStaleSpacing](self, "_hasStaleSpacing") || (objc_msgSend(v5, "_itemOrderingChanged") & 1) != 0 || (v6 = objc_msgSend(v4, "distribution"), v6 != objc_msgSend(v5, "distribution")))
  {
    v3 = 1;
  }

  else
  {
    [v4 proportionalFillDenominator];
    v3 = v7 != self->_proportionalFillDenominator;
  }

  return v3;
}

- (void)_adjustConstraintConstantsIfPossible
{
  v117 = *MEMORY[0x1E69E9840];
  v3 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v4 = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
  [v4 spacing];
  v6 = v5;
  [v3 spacing];
  v8 = v7;

  v9 = [(_UIOrderedLayoutArrangement *)self _customSpacingChanged];
  v10 = [v3 _newlyHiddenItems];
  v11 = [v3 _newlyUnhiddenItems];
  v12 = [v10 setByAddingObjectsFromSet:v11];

  [v3 spacing];
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

  if (v6 != v8 || v9 || (v22 & 1) != 0 || v14 != 0.0 && v14 != 1.17549435e-38 && [v12 count])
  {
    v84 = v12;
    v85 = v3;
    v23 = [(_UILayoutArrangement *)self items];
    v24 = [(_UIOrderedLayoutArrangement *)self _firstVisibleItem];
    v25 = [(_UIOrderedLayoutArrangement *)self _lastVisibleItem];
    v83 = v24;
    v89 = [v23 indexOfObject:v24];
    v90 = v23;
    v82 = v25;
    v88 = [v23 indexOfObject:v25];
    v91 = self;
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
          v33 = [v30 secondItem];
          v34 = [v30 firstItem];
          v35 = [v90 indexOfObject:v33];
          v36 = [v90 indexOfObject:v34];
          v37 = [v30 secondItem];
          v38 = [v30 firstItem];
          [(_UIOrderedLayoutArrangement *)v91 _expectedEdgeToEdgeSpacingForPrecedingItem:v37 followingItem:v38 isPrecededByVisibleItem:v89 < v35 isFollowedByVisibleItem:v88 > v36];
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

    v41 = [(NSMapTable *)v91->_edgeToEdgeConstraintsForHiddenItems objectEnumerator];

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    obja = v41;
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
          v49 = [v46 secondItem];
          v50 = [v46 firstItem];
          v51 = [v90 indexOfObject:v49];
          v52 = [v90 indexOfObject:v50];
          v53 = [v46 secondItem];
          v54 = [v46 firstItem];
          [(_UIOrderedLayoutArrangement *)v91 _expectedEdgeToEdgeSpacingForPrecedingItem:v53 followingItem:v54 isPrecededByVisibleItem:v89 < v51 isFollowedByVisibleItem:v88 > v52];
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

    if ([(NSMapTable *)v91->_multilineTextWidthDisambiguationConstraints count])
    {
      v57 = [(_UILayoutArrangement *)v91 _mutableItems];
      v58 = [v57 count];
      v59 = [(_UILayoutArrangement *)v91 _hiddenItems];
      v60 = [v59 count];

      if ([(NSMapTable *)v91->_multilineTextWidthDisambiguationConstraints count])
      {
        v61 = [(_UILayoutArrangement *)v91 canvas];
        v62 = [v61 _ola_shouldUseImprovedMultilineTextDisambiguation];

        if (v62)
        {
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v63 = [(_UILayoutArrangement *)v91 _mutableItems];
          v64 = [v63 countByEnumeratingWithState:&v96 objects:v113 count:16];
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
                  objc_enumerationMutation(v63);
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

              v65 = [v63 countByEnumeratingWithState:&v96 objects:v113 count:16];
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
        v71 = [(NSMapTable *)v91->_multilineTextWidthDisambiguationConstraints objectEnumerator];
        v72 = [v71 countByEnumeratingWithState:&v92 objects:v112 count:16];
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
                objc_enumerationMutation(v71);
              }

              v76 = *(*(&v92 + 1) + 8 * n);
              v77 = [v76 firstItem];
              v78 = [(_UILayoutArrangement *)v91 _itemWantsLayoutAsIfVisible:v77];

              if (v78)
              {
                [v76 constant];
                v80 = v79;
                [(_UIOrderedLayoutArrangement *)v91 _constantForMultilineTextWidthDisambiguationConstraintWithNumberOfRelevantItems:v66];
                if (v80 != v81)
                {
                  [v76 setConstant:?];
                }
              }
            }

            v73 = [v71 countByEnumeratingWithState:&v92 objects:v112 count:16];
          }

          while (v73);
        }
      }
    }

    v12 = v84;
    v3 = v85;
  }
}

- (void)_notifyCanvasesBaselineParametersDidChange
{
  v4 = [(_UILayoutArrangement *)self canvas];
  v2 = v4;
  if ([v4 _hasLayoutArrangements])
  {
    v3 = v4;
    do
    {
      [v3 _vendedBaselineViewParametersDidChange];
      v2 = [v3 superview];

      v3 = v2;
    }

    while (([v2 _hasLayoutArrangements] & 1) != 0);
  }
}

- (BOOL)_hasStaleSpacing
{
  v3 = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
  v4 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  [v3 spacing];
  v6 = v5;
  [v4 spacing];
  if (v6 == v7)
  {
    v8 = [v4 _newlyHiddenItems];
    if ([v8 count])
    {
    }

    else
    {
      v9 = [v4 _newlyUnhiddenItems];
      v10 = [v9 count];

      if (!v10)
      {
        v11 = [(_UIOrderedLayoutArrangement *)self _customSpacingChanged];
        goto LABEL_6;
      }
    }
  }

  v11 = 1;
LABEL_6:

  return v11;
}

- (void)_removeGuideAndConstraintGroupsAsNecessary
{
  v23 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v3 = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
  v4 = [v3 distribution];
  if ([v3 hasEstablishedOrderingValues])
  {
    v5 = [v23 distribution];
    v6 = v4 != v5;
    v7 = (v4 - 3) < 2;
    if ((v4 - 3) <= 1 && v4 != v5)
    {
      [(_UIOrderedLayoutArrangement *)self _cleanUpGuides];
      v7 = 1;
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
    v7 = (v4 - 3) < 2;
  }

  v8 = [v23 distribution] - 3;
  if (v7 != v8 < 2)
  {
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForVisibleItems);
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForHiddenItems);
  }

  if ([v23 _itemOrderingChanged])
  {
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForVisibleItems);
    _UILACleanUpConstraintsMapTable(self->_edgeToEdgeConstraintsForHiddenItems);
  }

  v9 = [v3 layoutUsesCanvasMarginsWhenFilling];
  v10 = v9 ^ [v23 layoutUsesCanvasMarginsWhenFilling];
  if ([(NSMapTable *)self->_relatedDimensionConstraints count])
  {
    if (v6 || ([v3 proportionalFillDenominator], (v11 != self->_proportionalFillDenominator) | v10 & 1))
    {
      _UILACleanUpConstraintsMapTable(self->_relatedDimensionConstraints);
    }
  }

  v12 = [(NSMapTable *)self->_relatedDimensionConstraints count];
  if (v8 >= 2 && v12 && [v23 distribution] != 2)
  {
    v13 = [(NSMapTable *)self->_relatedDimensionConstraints objectEnumerator];
    v14 = [v13 nextObject];
    v15 = [(_UIOrderedLayoutArrangement *)self _dimensionRefItemFromConstraint:v14];

    if (!-[_UILayoutArrangement _itemWantsLayoutAsIfVisible:](self, "_itemWantsLayoutAsIfVisible:", v15) || (-[_UILayoutArrangement _outgoingItems](self, "_outgoingItems"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 containsObject:v15], v16, v17))
    {
      _UILACleanUpConstraintsMapTable(self->_relatedDimensionConstraints);
    }
  }

  if (![(_UILayoutArrangement *)self axis])
  {
    if ((v10 & 1) != 0 || v6 && ([v23 distribution] - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_31;
    }

    v18 = [(_UILayoutArrangement *)self _newlyHiddenItems];
    if ([v18 count])
    {
      goto LABEL_30;
    }

    v19 = [(_UILayoutArrangement *)self _newlyUnhiddenItems];
    if ([v19 count])
    {
LABEL_29:

LABEL_30:
LABEL_31:
      _UILACleanUpConstraintsMapTable(self->_multilineTextWidthDisambiguationConstraints);
      goto LABEL_32;
    }

    v20 = [(_UILayoutArrangement *)self _incomingItems];
    if ([v20 count])
    {

      goto LABEL_29;
    }

    v21 = [(_UILayoutArrangement *)self _outgoingItems];
    v22 = [v21 count];

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
  v3 = [(_UILayoutArrangement *)self _outgoingItems];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v84 objects:v91 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v84 + 1) + 8 * i);
        [(_UIOrderedLayoutArrangement *)self _cleanUpGuideAtGapFollowingItem:v8];
        [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForVisibleItemsForItem:v8 atIndex:0x7FFFFFFFFFFFFFFFLL processPrecedingVisibleItem:1];
        [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForHiddenItemsForItem:v8 atIndex:0x7FFFFFFFFFFFFFFFLL processAdjacentHiddenItems:1];
        _UILACleanUpConstraintForItemInCollection(v8, self->_hidingDimensionConstraints);
        _UILACleanUpConstraintForItemInCollection(v8, self->_relatedDimensionConstraints);
        _UILACleanUpConstraintForItemInCollection(v8, self->_multilineTextWidthDisambiguationConstraints);
      }

      v5 = [v3 countByEnumeratingWithState:&v84 objects:v91 count:16];
    }

    while (v5);
  }

  v9 = [(_UILayoutArrangement *)self _mutableItems];
  v10 = [v9 count];
  v69 = [(_UILayoutArrangement *)self _incomingItems];
  if (v10)
  {
    v11 = [v9 objectAtIndexedSubscript:v10 - 1];
    [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForVisibleItemsForItem:v11 atIndex:v10 - 1 processPrecedingVisibleItem:1];

    v12 = [v9 objectAtIndexedSubscript:v10 - 1];
    [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForHiddenItemsForItem:v12 atIndex:v10 - 1 processAdjacentHiddenItems:0];
  }

  v70 = v3;
  if (([(NSMapTable *)self->_edgeToEdgeConstraintsForVisibleItems count]|| [(NSMapTable *)self->_edgeToEdgeConstraintsForHiddenItems count]|| [(NSMapTable *)self->_spacingOrCenteringGuides count]|| [(NSMapTable *)self->_multilineTextWidthDisambiguationConstraints count]) && v10)
  {
    v13 = 0;
    while (1)
    {
      v14 = [v9 objectAtIndexedSubscript:v13];
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
      v15 = [v9 objectAtIndexedSubscript:v13 + 1];
      v16 = [v69 containsObject:v15];

      if (v16)
      {
        [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForVisibleItemsForItem:v14 atIndex:v13 processPrecedingVisibleItem:0];
        [(_UIOrderedLayoutArrangement *)self _cleanUpEdgeToEdgeConstraintsForHiddenItemsForItem:v14 atIndex:v13 processAdjacentHiddenItems:1];
      }
    }

    v17 = [(_UILayoutArrangement *)self _newlyHiddenItems];
    if ([v17 containsObject:v14])
    {
    }

    else
    {
      v18 = [(_UILayoutArrangement *)self _newlyUnhiddenItems];
      v19 = [v18 containsObject:v14];

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
                v23 = [v9 objectAtIndexedSubscript:v22];
                goto LABEL_39;
              }
            }

            v23 = 0;
LABEL_39:
            v24 = [v21 followingItem];

            if (v24 != v23)
            {
              [(_UIOrderedLayoutArrangement *)self _cleanUpGuideAtGapFollowingItem:v14];
              _UILACleanUpConstraintForItemInCollection(v14, self->_relatedDimensionConstraints);
            }
          }
        }

        v3 = v70;
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
    v25 = v9;
    v26 = [(NSMapTable *)self->_relatedDimensionConstraints copy];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v27 = [v26 allKeys];
    v28 = [v27 countByEnumeratingWithState:&v80 objects:v90 count:16];
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
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v80 + 1) + 8 * j);
          if (![(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v32])
          {
            _UILACleanUpConstraintForItemInCollection(v32, self->_relatedDimensionConstraints);
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v80 objects:v90 count:16];
      }

      while (v29);
    }

    v9 = v25;
  }

  if ([(_UIOrderedLayoutArrangement *)self _hasStaleSpacing])
  {
    v68 = v9;
    v33 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
    v34 = [(_UIOrderedLayoutArrangement *)self _orderedConfigurationHistory];
    v35 = [(NSMapTable *)self->_edgeToEdgeConstraintsForVisibleItems copy];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v67 = v35;
    v36 = [v35 keyEnumerator];
    v37 = [v36 countByEnumeratingWithState:&v76 objects:v89 count:16];
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
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v76 + 1) + 8 * k);
          v42 = v34;
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

          v46 = v33;
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

        v38 = [v36 countByEnumeratingWithState:&v76 objects:v89 count:16];
      }

      while (v38);
    }

    v51 = [(NSMapTable *)self->_edgeToEdgeConstraintsForHiddenItems copy];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = v51;
    v52 = [v51 keyEnumerator];
    v53 = [v52 countByEnumeratingWithState:&v72 objects:v88 count:16];
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
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v72 + 1) + 8 * m);
          v58 = v34;
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

          v62 = v33;
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

        v54 = [v52 countByEnumeratingWithState:&v72 objects:v88 count:16];
      }

      while (v54);
    }

    v3 = v70;
    v9 = v68;
  }
}

- (id)_tallestItem
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(_UILayoutArrangement *)self _mutableItems];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v2);
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

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v4 = [(_UILayoutArrangement *)self _mutableItems];
  v5 = [v4 count];

  v6 = 0;
  if ([v3 distribution] == 2 && v5)
  {
    proportionalFillDenominator = self->_proportionalFillDenominator;
    [v3 spacing];
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
    v3 = [(_UILayoutArrangement *)self _mutableItems];
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v3);
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

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v12 = [(_UIOrderedLayoutArrangement *)self _tallestItem];
    [v12 _calculatedIntrinsicHeight];
    v8 = v13;
  }

  return v8;
}

- (int64_t)_precedingLocationAttributeForGuideConstraint
{
  v3 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  if ([v3 distribution] == 3)
  {
    v4 = _UILAFacingAttributeOfAttribute([(_UIOrderedLayoutArrangement *)self _minAttributeForGapConstraint]);
  }

  else if ([v3 distribution] == 4)
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
  v3 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v4 = [v3 _newlyHiddenItems];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 _newlyUnhiddenItems];
    if ([v6 count])
    {
      v5 = 1;
    }

    else
    {
      v7 = [(_UILayoutArrangement *)self _incomingItems];
      if ([v7 count])
      {
        v5 = 1;
      }

      else
      {
        v8 = [(_UILayoutArrangement *)self _outgoingItems];
        v5 = [v8 count] != 0;
      }
    }
  }

  return v5;
}

- (void)_trackChangesAffectingExternalBaselineConstraints:(id)a3
{
  v10 = a3;
  if ([(_UILayoutArrangement *)self axis]== 1)
  {
    v4 = [(_UIOrderedLayoutArrangement *)self _firstVisibleItem];
    v5 = [(_UIOrderedLayoutArrangement *)self _lastVisibleItem];
    v10[2]();
    v6 = [(_UIOrderedLayoutArrangement *)self _firstVisibleItem];

    if (v4 != v6)
    {
      v7 = [(_UILayoutArrangement *)self canvas];
      [v7 _vendedBaselineViewDidMoveForFirst:1];
    }

    v8 = [(_UIOrderedLayoutArrangement *)self _lastVisibleItem];

    if (v5 != v8)
    {
      v9 = [(_UILayoutArrangement *)self canvas];
      [v9 _vendedBaselineViewDidMoveForFirst:0];
    }
  }

  else
  {
    v10[2]();
    v4 = 0;
    v5 = 0;
  }
}

- (void)insertItem:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_UILayoutArrangement *)self _mutableItems];
  v8 = [v7 indexOfObject:v6];
  if (v8 != a4)
  {
    if (a4 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL || (-[_UILayoutArrangement _outgoingItems](self, "_outgoingItems"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 containsObject:v6], v9, v10))
    {
      [(_UIOrderedLayoutArrangement *)self _setItemOrderingChanged:1];
      [(_UILayoutArrangement *)self _createUnanimatedConfigurationTargetIfNecessary];
      v11 = [(_UILayoutArrangement *)self canvas];
      v12 = _UILAIsAnimatingOnCanvas(v11);

      if (v12)
      {
        [(_UILayoutArrangement *)self _registerAnimationRequest];
      }

      else
      {
        v13 = [(_UILayoutArrangement *)self _unanimatedConfigurationTarget];
        [v13 _setItemOrderingChanged:1];
      }

      v14 = [(_UILayoutArrangement *)self canvas];
      [v14 setNeedsUpdateConstraints];
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50___UIOrderedLayoutArrangement_insertItem_atIndex___block_invoke;
  v16[3] = &unk_1E70F36D0;
  v18 = self;
  v19 = a4;
  v17 = v6;
  v15 = v6;
  [(_UIOrderedLayoutArrangement *)self _trackChangesAffectingExternalBaselineConstraints:v16];
}

- (void)removeItem:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42___UIOrderedLayoutArrangement_removeItem___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(_UIOrderedLayoutArrangement *)self _trackChangesAffectingExternalBaselineConstraints:v6];
}

- (unint64_t)_indexOfItemForLocationAttribute:(int64_t)a3
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
    if (a3 > 0x10)
    {
      goto LABEL_13;
    }

    if (((1 << a3) & 0x9008) != 0)
    {
      v11.receiver = self;
      v11.super_class = _UIOrderedLayoutArrangement;
      v9 = [(_UILayoutArrangement *)&v11 _indexOfItemForLocationAttribute:a3];
      goto LABEL_12;
    }

    v7 = 1 << a3;
    v8 = 67600;
  }

  else
  {
    if (a3 > 0x12)
    {
      goto LABEL_13;
    }

    if (((1 << a3) & 0x22022) != 0)
    {
      v12.receiver = self;
      v12.super_class = _UIOrderedLayoutArrangement;
      v9 = [(_UILayoutArrangement *)&v12 _indexOfItemForLocationAttribute:a3];
      goto LABEL_12;
    }

    v7 = 1 << a3;
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

- (void)_intrinsicContentSizeInvalidatedForItem:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIOrderedLayoutArrangement;
  v3 = a3;
  [(_UILayoutArrangement *)&v4 _intrinsicContentSizeInvalidatedForItem:v3];
  _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(v3);
}

- (BOOL)_monitorsSystemLayoutFittingSizeForItem:(id)a3
{
  if (self->_distribution != 2)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(_UILayoutArrangement *)self _mutableItems];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)_systemLayoutFittingSizeDidChangeForItem:(id)a3
{
  v4 = a3;
  [(_UILayoutArrangement *)self _createUnanimatedConfigurationTargetIfNecessary];
  [(_UIOrderedLayoutArrangement *)self _setItemFittingSizeChanged:1];
  v5 = [(_UILayoutArrangement *)self canvas];
  v6 = _UILAIsAnimatingOnCanvas(v5);

  if (v6)
  {
    [(_UILayoutArrangement *)self _registerAnimationRequest];
  }

  else
  {
    v7 = [(_UILayoutArrangement *)self _unanimatedConfigurationTarget];
    [v7 _setItemFittingSizeChanged:1];
  }

  v9 = [(_UILayoutArrangement *)self canvas];
  v8 = v4[12];

  [v9 _setNeedsUpdateConstraintsNeedingLayout:(v8 & 0x60) == 0];
}

- (void)_visibilityParameterChangedForItem:(id)a3
{
  v4 = a3;
  v5 = [(_UILayoutArrangement *)self _mutableItems];
  v6 = [v5 indexOfObject:v4];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    if ([(_UILayoutArrangement *)self axis]!= 1)
    {
LABEL_15:
      v19.receiver = self;
      v19.super_class = _UIOrderedLayoutArrangement;
      [(_UILayoutArrangement *)&v19 _visibilityParameterChangedForItem:v4];
      goto LABEL_16;
    }

    v8 = [(_UIOrderedLayoutArrangement *)self _firstVisibleItem];
    v9 = [(_UIOrderedLayoutArrangement *)self _lastVisibleItem];
    if ([v4 _la_isVisible])
    {
      v10 = [(_UIOrderedLayoutArrangement *)self _firstVisibleItem];

      if (v10 == v4)
      {
        v11 = [(_UILayoutArrangement *)self canvas];
        [v11 _vendedBaselineViewDidMoveForFirst:1];
      }

      v12 = [(_UIOrderedLayoutArrangement *)self _lastVisibleItem];

      if (v12 != v4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!v8 || (-[_UILayoutArrangement _mutableItems](self, "_mutableItems"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 indexOfObject:v8], v13, v7 < v14))
      {
        v15 = [(_UILayoutArrangement *)self canvas];
        [v15 _vendedBaselineViewDidMoveForFirst:1];
      }

      if (v9)
      {
        v16 = [(_UILayoutArrangement *)self _mutableItems];
        v17 = [v16 indexOfObject:v9];

        if (v7 <= v17)
        {
          goto LABEL_14;
        }
      }
    }

    v18 = [(_UILayoutArrangement *)self canvas];
    [v18 _vendedBaselineViewDidMoveForFirst:0];

LABEL_14:
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_didEvaluateMultilineHeightForView:(id)a3
{
  v7 = a3;
  if (![(_UILayoutArrangement *)self axis])
  {
    v4 = [(_UILayoutArrangement *)self canvas];
    if (v4 == v7)
    {
    }

    else
    {
      v5 = [(_UILayoutArrangement *)self _mutableItems];
      v6 = [v5 containsObject:v7];

      if (!v6)
      {
        goto LABEL_7;
      }
    }

    [(_UIOrderedLayoutArrangement *)self _notifyCanvasesBaselineParametersDidChange];
  }

LABEL_7:
}

- (void)setSpacing:(double)a3
{
  if (self->_spacing != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_spacing = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42___UIOrderedLayoutArrangement_setSpacing___block_invoke;
    v7[3] = &__block_descriptor_40_e36_v16__0___UIOLAConfigurationHistory_8l;
    *&v7[4] = a3;
    [(_UILayoutArrangement *)self _trackChangesWithConfigBlock:v7];
    v6 = [(_UILayoutArrangement *)self canvas];
    _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(v6);
  }
}

- (void)setCustomSpacing:(double)a3 afterItem:(id)a4
{
  v6 = a4;
  v7 = [(_UILayoutArrangement *)self items];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    [(_UIOrderedLayoutArrangement *)self customSpacingAfterItem:v6];
    if (v9 != a3)
    {
      customSpacings = self->_customSpacings;
      if (!customSpacings)
      {
        v11 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:0];
        v12 = self->_customSpacings;
        self->_customSpacings = v11;

        customSpacings = self->_customSpacings;
      }

      v13 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
      [(NSMapTable *)customSpacings setObject:v13 forKey:v6];

      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __58___UIOrderedLayoutArrangement_setCustomSpacing_afterItem___block_invoke;
      v18 = &unk_1E7129380;
      v20 = a3;
      v19 = v6;
      [(_UILayoutArrangement *)self _trackChangesWithConfigBlock:&v15];
      v14 = [(_UILayoutArrangement *)self canvas:v15];
      _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(v14);
    }
  }
}

- (double)customSpacingAfterItem:(id)a3
{
  v3 = [(NSMapTable *)self->_customSpacings objectForKey:a3];
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

- (void)setDistribution:(int64_t)a3
{
  if (self->_distribution != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_distribution = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47___UIOrderedLayoutArrangement_setDistribution___block_invoke;
    v7[3] = &__block_descriptor_40_e36_v16__0___UIOLAConfigurationHistory_8l;
    v7[4] = a3;
    [(_UILayoutArrangement *)self _trackChangesWithConfigBlock:v7];
    v6 = [(_UILayoutArrangement *)self canvas];
    _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(v6);
  }
}

- (void)setBaselineRelativeArrangement:(BOOL)a3
{
  if (self->_baselineRelativeArrangement != a3)
  {
    v9 = v3;
    v10 = v4;
    self->_baselineRelativeArrangement = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62___UIOrderedLayoutArrangement_setBaselineRelativeArrangement___block_invoke;
    v7[3] = &__block_descriptor_33_e36_v16__0___UIOLAConfigurationHistory_8l;
    v8 = a3;
    [(_UILayoutArrangement *)self _trackChangesWithConfigBlock:v7];
    v6 = [(_UILayoutArrangement *)self canvas];
    _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(v6);
  }
}

- (id)_dimensionRefItemFromConstraint:(id)a3
{
  v5 = [a3 _ola_dimensionRefItem];
  if (a3 && !v5)
  {
    if ([(_UIOrderedLayoutArrangement *)self _wantsProportionalDistribution])
    {
      v5 = [(_UILayoutArrangement *)self canvas];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_cleanUpGuideAtGapFollowingItem:(id)a3
{
  v9 = a3;
  v4 = [(NSMapTable *)self->_spacingOrCenteringGuides objectForKey:?];
  if (v4)
  {
    v5 = [(NSMapTable *)self->_relatedDimensionConstraints objectEnumerator];
    v6 = [v5 nextObject];
    v7 = [(_UIOrderedLayoutArrangement *)self _dimensionRefItemFromConstraint:v6];

    if (v4 == v7)
    {
      _UILACleanUpConstraintsMapTable(self->_relatedDimensionConstraints);
      [(_UIOrderedLayoutArrangement *)self _cleanUpGuides];
    }

    else
    {
      [v4 _setLockedToOwningView:0];
      v8 = [v4 owningView];
      [v8 removeLayoutGuide:v4];

      [(NSMapTable *)self->_spacingOrCenteringGuides removeObjectForKey:v9];
    }
  }
}

- (void)_cleanUpEdgeToEdgeConstraintsForHiddenItemsForItem:(id)a3 atIndex:(unint64_t)a4 processAdjacentHiddenItems:(BOOL)a5
{
  v5 = a5;
  v18 = a3;
  _UILACleanUpConstraintForItemInCollection(v18, self->_edgeToEdgeConstraintsForHiddenItems);
  if (v5)
  {
    v8 = [(_UILayoutArrangement *)self items];
    v9 = v8;
    if (a4 == 0x7FFFFFFFFFFFFFFFLL && (a4 = [v8 indexOfObject:v18], a4 == 0x7FFFFFFFFFFFFFFFLL))
    {
      _removeEntriesFromCollectionIfConstraintContainsItem(v18, self->_edgeToEdgeConstraintsForHiddenItems);
    }

    else
    {
      v10 = v18;
      if (a4)
      {
        v11 = a4 - 1;
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
      v18 = v10;
      v13 = [v9 count];
      if (v13 >= 3)
      {
        v14 = v13;
        if (a4 < v13 - 2)
        {
          v15 = a4 + 1;
          v16 = v18;
          while (1)
          {
            v17 = v16;
            v18 = [v9 objectAtIndexedSubscript:v15];

            if ([(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v18])
            {
              break;
            }

            _UILACleanUpConstraintForItemInCollection(v18, self->_edgeToEdgeConstraintsForHiddenItems);
            ++v15;
            v16 = v18;
            if (v15 >= v14)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v16 = v18;
LABEL_18:
    v18 = v16;
  }
}

- (void)_cleanUpEdgeToEdgeConstraintsForVisibleItemsForItem:(id)a3 atIndex:(unint64_t)a4 processPrecedingVisibleItem:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  _UILACleanUpConstraintForItemInCollection(v13, self->_edgeToEdgeConstraintsForVisibleItems);
  if (v5)
  {
    v8 = [(_UILayoutArrangement *)self items];
    v9 = v8;
    if (a4 == 0x7FFFFFFFFFFFFFFFLL && (a4 = [v8 indexOfObject:v13], a4 == 0x7FFFFFFFFFFFFFFFLL))
    {
      _removeEntriesFromCollectionIfConstraintContainsItem(v13, self->_edgeToEdgeConstraintsForVisibleItems);
    }

    else if (a4)
    {
      v10 = a4 - 1;
      while (1)
      {
        v11 = v13;
        v13 = [v9 objectAtIndexedSubscript:v10];

        if ([(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v13])
        {
          break;
        }

        if (--v10 == -1)
        {
          goto LABEL_13;
        }
      }

      v12 = v13;
      if (v12)
      {
        v13 = v12;
        _UILACleanUpConstraintForItemInCollection(v12, self->_edgeToEdgeConstraintsForVisibleItems);
      }

      else
      {
        v13 = 0;
      }
    }

LABEL_13:
  }
}

- (int64_t)_minAttributeForGapConstraintRespectingBaselineRelative:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v5 = [v4 axis];
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 5;
  }

  if (v5 && v3)
  {
    if ([v4 isBaselineRelativeArrangement])
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

- (int64_t)_maxAttributeForGapConstraintRespectingBaselineRelative:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v5 = [v4 axis];
  if (v5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 6;
  }

  if (v5 && v3)
  {
    if ([v4 isBaselineRelativeArrangement])
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

- (double)_expectedEdgeToEdgeSpacingForPrecedingItem:(id)a3 followingItem:(id)a4 isPrecededByVisibleItem:(BOOL)a5 isFollowedByVisibleItem:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v10];
  v13 = [(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v11];

  v14 = 0.0;
  if ((v12 || v7) && (v13 || v6))
  {
    v15 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
    [v15 customSpacingAfterItem:v10];
    if (v16 == 3.40282347e38)
    {
      [v15 spacing];
    }

    v17 = [(_UILayoutArrangement *)self canvas];
    UIRoundToViewScale(v17);
    v14 = v18;

    if (!v12 || !v13)
    {
      v14 = v14 * 0.5;
    }
  }

  return v14;
}

- (id)_edgeToEdgeConstraintForGapBetweenPrecedingItem:(id)a3 followingItem:(id)a4 isPrecededByVisibleItem:(BOOL)a5 isFollowedByVisibleItem:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v13 = [v12 distribution] - 3;
  v14 = [(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v10];
  v15 = [(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v11];
  v16 = v12;
  [v16 customSpacingAfterItem:v10];
  if (v17 == 3.40282347e38)
  {
    [v16 spacing];
    if (v17 == 3.40282347e38)
    {

LABEL_11:
      v23 = v13 < 2;
      v24 = [(_UIOrderedLayoutArrangement *)self _minAttributeForGapConstraintRespectingBaselineRelative:[(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v11]];
      v25 = [(_UIOrderedLayoutArrangement *)self _maxAttributeForGapConstraintRespectingBaselineRelative:[(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v10]];
      [(_UIOrderedLayoutArrangement *)self _expectedEdgeToEdgeSpacingForPrecedingItem:v10 followingItem:v11 isPrecededByVisibleItem:v7 isFollowedByVisibleItem:v6];
      v26 = [MEMORY[0x1E69977A0] constraintWithItem:v11 attribute:v24 relatedBy:v23 toItem:v10 attribute:v25 constant:?];
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

  v20 = [v16 axis];
  v21 = v10;
  if (v20)
  {
    v22 = v11;
    if ([v16 isBaselineRelativeArrangement])
    {
      [v21 lastBaselineAnchor];
    }

    else
    {
      [v21 bottomAnchor];
    }
    v27 = ;
    if ([v16 isBaselineRelativeArrangement])
    {
      [v22 firstBaselineAnchor];
    }

    else
    {
      [v22 topAnchor];
    }
    v29 = ;
    v30 = v29;
    v31 = v19;
    if (v13 > 1)
    {
      [v29 constraintEqualToSystemSpacingBelowAnchor:v27 multiplier:v31];
    }

    else
    {
      [v29 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v27 multiplier:v31];
    }
    v26 = ;
  }

  else
  {
    v22 = [v11 leadingAnchor];
    v27 = [v21 trailingAnchor];
    v28 = v19;
    if (v13 > 1)
    {
      [v22 constraintEqualToSystemSpacingAfterAnchor:v27 multiplier:v28];
    }

    else
    {
      [v22 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v27 multiplier:v28];
    }
    v26 = ;
  }

LABEL_25:
  [v26 setIdentifier:@"UISV-spacing"];

  return v26;
}

- (void)_activateAndInsertEdgeToEdgeConstraintForGapBetweenPrecedingItem:(id)a3 followingItem:(id)a4 isPrecededByVisibleItem:(BOOL)a5 isFollowedByVisibleItem:(BOOL)a6 isHidden:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v17 = a3;
  v12 = a4;
  v13 = [(_UIOrderedLayoutArrangement *)self _edgeToEdgeConstraintForGapBetweenPrecedingItem:v17 followingItem:v12 isPrecededByVisibleItem:v9 isFollowedByVisibleItem:v8];
  v14 = v13;
  LODWORD(v15) = 1148846080;
  if (v7)
  {
    *&v15 = 50.0;
  }

  [v13 setPriority:v15];
  if (v7)
  {
    if (v9)
    {
      v16 = v12;
    }

    else
    {
      v16 = v17;
    }

    [(NSMapTable *)self->_edgeToEdgeConstraintsForHiddenItems setObject:v14 forKey:v16];
    [v14 setIdentifier:@"UISV-spacing-hidden"];
  }

  else
  {
    [(NSMapTable *)self->_edgeToEdgeConstraintsForVisibleItems setObject:v14 forKey:v17];
  }

  [v14 setActive:1];
}

- (void)_activateAndInsertEdgeToEdgeConstraintForGapBetweenSpanningLayoutGuide:(id)a3 hiddenItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIOrderedLayoutArrangement *)self _minAttributeForGapConstraintRespectingBaselineRelative:0];
  v9 = [(_UIOrderedLayoutArrangement *)self _maxAttributeForGapConstraintRespectingBaselineRelative:0];
  v11 = [MEMORY[0x1E69977A0] constraintWithItem:v6 attribute:v8 relatedBy:0 toItem:v7 attribute:v9 constant:0.0];

  [v11 setIdentifier:@"UISV-spacing-hidden"];
  LODWORD(v10) = 1112014848;
  [v11 setPriority:v10];
  [v11 setActive:1];
  [(NSMapTable *)self->_edgeToEdgeConstraintsForHiddenItems setObject:v11 forKey:v6];
}

- (id)_setUpSpacingOrCenteringGuideForGapIndex:(unint64_t)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = [(_UILayoutArrangement *)self _mutableItems];
  v6 = [v5 objectAtIndexedSubscript:a3];
  for (i = a3 + 1; ; ++i)
  {
    if (i >= [v5 count])
    {
      v8 = 0;
LABEL_6:
      v9 = 0;
      goto LABEL_7;
    }

    v8 = [v5 objectAtIndexedSubscript:i];
    if ([(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v8])
    {
      break;
    }
  }

  if (i == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_6;
  }

  v18 = [(_UILayoutArrangement *)self canvas];
  v9 = objc_alloc_init(_UIOLAGapGuide);
  [v18 addLayoutGuide:v9];
  [(UILayoutGuide *)v9 setIdentifier:@"UISV-distributing"];
  [(UILayoutGuide *)v9 _setLockedToOwningView:1];
  [(_UIOLAGapGuide *)v9 setFollowingItemIndex:i];
  [(_UIOLAGapGuide *)v9 setFollowingItem:v8];
  v11 = [(_UIOrderedLayoutArrangement *)self _minAttributeForGapConstraint];
  v12 = [(_UIOrderedLayoutArrangement *)self _precedingLocationAttributeForGuideConstraint];
  v13 = [MEMORY[0x1E69977A0] constraintWithItem:v9 attribute:v11 relatedBy:0 toItem:v6 attribute:v12];
  v19[0] = v13;
  v14 = MEMORY[0x1E69977A0];
  v15 = _UILAFacingAttributeOfAttribute(v11);
  v16 = [v14 constraintWithItem:v9 attribute:v15 relatedBy:0 toItem:v8 attribute:_UILAFacingAttributeOfAttribute(v12)];
  v19[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];

  [v17 makeObjectsPerformSelector:sel_setIdentifier_ withObject:@"UISV-distributing-edge"];
  [MEMORY[0x1E69977A0] activateConstraints:v17];
  [(UILayoutGuide *)v9 _setSystemConstraints:v17];
  [(NSMapTable *)self->_spacingOrCenteringGuides setObject:v9 forKey:v6];

LABEL_7:

  return v9;
}

- (void)_setUpDimensionConstraintForItem:(id)a3 referenceItem:(id)a4 atIndex:(unint64_t)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"_UIOrderedLayoutArrangement.m" lineNumber:1169 description:@"Can't set up dimension constraint"];
  }

  v11 = [(_UILayoutArrangement *)self _mutableItems];
  v12 = [v11 objectAtIndexedSubscript:a5];

  v13 = [(_UIOrderedLayoutArrangement *)self _wantsProportionalDistribution];
  v14 = [(_UILayoutArrangement *)self _dimensionAttributeForCurrentAxis];
  if (v13)
  {
    v15 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
    [v9 _proportionalFillLengthForOrderedArrangement:self relevantParentAxis:{objc_msgSend(v15, "axis")}];
    v17 = v16;

    v18 = fmax(v17, 0.0) / self->_proportionalFillDenominator;
    if (v18 <= 0.0)
    {
      v25 = [MEMORY[0x1E69977A0] constraintWithItem:v9 attribute:v14 relatedBy:0 constant:0.0];
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

        v27 = 999.0 - a5;
        v28 = 751.0;
LABEL_17:
        v29 = fmax(v27, v28);
        *&v29 = v29;
LABEL_18:
        [v26 setPriority:v29];
        goto LABEL_19;
      }

LABEL_14:
      v27 = 150.0 - a5;
      v28 = 50.0;
      goto LABEL_17;
    }

    v19 = [(_UILayoutArrangement *)self _propertySource];
    v20 = [v19 layoutUsesCanvasMarginsWhenFilling];

    if (!v20)
    {
LABEL_9:
      v25 = [MEMORY[0x1E69977A0] constraintWithItem:v9 attribute:v14 relatedBy:0 toItem:v10 attribute:v14 multiplier:v18];
      goto LABEL_13;
    }

    v21 = [(_UILayoutArrangement *)self canvas];

    if (v21 == v10)
    {
LABEL_7:
      v22 = [(_UILayoutArrangement *)self canvas];

      if (v22 == v10)
      {
        v23 = [(_UILayoutArrangement *)self canvas];
        v24 = [v23 layoutMarginsGuide];

        v10 = v24;
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

      v34 = [(_UILayoutArrangement *)self canvas];
      v35 = 138412546;
      v36 = v34;
      v37 = 2112;
      v38 = v10;
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
      v34 = [(_UILayoutArrangement *)self canvas];
      v35 = 138412546;
      v36 = v34;
      v37 = 2112;
      v38 = v10;
      _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "Unexpected referenceItem for proportional fill constraint for stack view. UIStackView = %@, referenceItem = %@", &v35, 0x16u);
    }

LABEL_28:
    goto LABEL_7;
  }

  v26 = [MEMORY[0x1E69977A0] constraintWithItem:v9 attribute:v14 relatedBy:0 toItem:v10 attribute:v14];
  if (self->_distribution == 4)
  {
    goto LABEL_14;
  }

LABEL_19:
  if (v13)
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

- (void)_setUpHidingDimensionConstraintForItem:(id)a3
{
  v4 = MEMORY[0x1E69977A0];
  v5 = a3;
  v7 = [v4 constraintWithItem:v5 attribute:-[_UILayoutArrangement _dimensionAttributeForCurrentAxis](self relatedBy:"_dimensionAttributeForCurrentAxis") constant:{0, 0.0}];
  [v7 setIdentifier:@"UISV-hiding"];
  LODWORD(v6) = 1148846064;
  [v7 setPriority:v6];
  [v7 setActive:1];
  [(NSMapTable *)self->_hidingDimensionConstraints setObject:v7 forKey:v5];
}

- (double)_constantForMultilineTextWidthDisambiguationConstraintWithNumberOfRelevantItems:(unint64_t)a3
{
  v4 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v5 = v4;
  if (a3)
  {
    [v4 spacing];
    v7 = -(v6 * (a3 + -1.0)) / a3;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (id)_preparedFaultyCompatibleMultilineTextWidthDisambiguationConstraintForItem:(id)a3
{
  v5 = a3;
  v6 = [(_UILayoutArrangement *)self canvas];
  v7 = [v6 _ola_shouldUseImprovedMultilineTextDisambiguation];

  if (v7)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"_UIOrderedLayoutArrangement.m" lineNumber:1229 description:@"Incorrect use of faulty logic. Internal UIKit bug."];
  }

  v8 = v5;
  v9 = [(_UILayoutArrangement *)self _mutableItems];
  v10 = [v9 count];
  v11 = [(_UILayoutArrangement *)self _hiddenItems];
  v12 = [v11 count];
  v13 = v10 - v12;

  v14 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  LOBYTE(v9) = [v14 layoutUsesCanvasMarginsWhenFilling];
  v15 = [(_UILayoutArrangement *)self canvas];
  v16 = v15;
  if (v9)
  {
    v17 = [v15 layoutMarginsGuide];
    v18 = [v17 widthAnchor];
  }

  else
  {
    v18 = [v15 widthAnchor];
  }

  v19 = [v8 widthAnchor];
  v20 = 0.0;
  if (v10 != v12)
  {
    v20 = 1.0 / v13;
  }

  [(_UIOrderedLayoutArrangement *)self _constantForMultilineTextWidthDisambiguationConstraintWithNumberOfRelevantItems:v13];
  v22 = [v19 constraintEqualToAnchor:v18 multiplier:v20 constant:v21];

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

- (id)_preparedImprovedMultilineTextWidthDisambiguationConstraintForItem:(id)a3 numberOfVisibleMultilineItems:(unint64_t)a4
{
  v6 = a3;
  [v6 _ola_willApplyMultilineTextWidthDisambiguationConstraint];
  v7 = [(_UIOrderedLayoutArrangement *)self _orderedPropertySource];
  v8 = [v7 layoutUsesCanvasMarginsWhenFilling];
  v9 = [(_UILayoutArrangement *)self canvas];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 layoutMarginsGuide];
    v12 = [v11 widthAnchor];
  }

  else
  {
    v12 = [v9 widthAnchor];
  }

  v13 = [v6 widthAnchor];

  if (a4)
  {
    v14 = 1.0 / a4;
  }

  else
  {
    v14 = 1.0;
  }

  [(_UIOrderedLayoutArrangement *)self _constantForMultilineTextWidthDisambiguationConstraintWithNumberOfRelevantItems:a4];
  v16 = [v13 constraintLessThanOrEqualToAnchor:v12 multiplier:v14 constant:v15];

  LODWORD(v17) = 1148026880;
  [v16 setPriority:v17];

  return v16;
}

- (void)_setUpMultilineTextWidthDisambiguationConstraintForItem:(id)a3 numberOfVisibleMultilineItems:(unint64_t)a4
{
  v11 = a3;
  v6 = [(NSMapTable *)self->_multilineTextWidthDisambiguationConstraints objectForKey:?];
  if (v6)
  {
    v7 = v6;
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 setActive:1];
    }
  }

  else
  {
    v8 = self->_multilineTextWidthDisambiguationConstraints;
    if (!v8)
    {
      if (a4 != 0x7FFFFFFFFFFFFFFFLL && a4 != 0)
      {
        v9 = a4 - 1;
      }

      else
      {
        v9 = 0;
      }

      v8 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:v9];
    }

    multilineTextWidthDisambiguationConstraints = self->_multilineTextWidthDisambiguationConstraints;
    self->_multilineTextWidthDisambiguationConstraints = v8;

    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(_UIOrderedLayoutArrangement *)self _preparedFaultyCompatibleMultilineTextWidthDisambiguationConstraintForItem:v11];
      [v7 setActive:1];
    }

    else
    {
      v7 = [(_UIOrderedLayoutArrangement *)self _preparedImprovedMultilineTextWidthDisambiguationConstraintForItem:v11 numberOfVisibleMultilineItems:a4];
    }

    [v7 setIdentifier:@"UISV-text-width-disambiguation"];
    [(NSMapTable *)self->_multilineTextWidthDisambiguationConstraints setObject:v7 forKey:v11];
  }
}

- (id)_visibleItemAtEndWithEnumerationOptions:(unint64_t)a3
{
  v5 = [(_UILayoutArrangement *)self _mutableItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71___UIOrderedLayoutArrangement__visibleItemAtEndWithEnumerationOptions___block_invoke;
  v9[3] = &unk_1E71055A0;
  v9[4] = self;
  v6 = [v5 indexOfObjectWithOptions:a3 passingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndex:v6];
  }

  return v7;
}

- (id)_baselineViewVendTallest:(BOOL)a3 forFirstBaseline:(BOOL)a4
{
  if (a3)
  {
    v4 = [(_UIOrderedLayoutArrangement *)self _tallestItem:a3];
  }

  else
  {
    if (a4)
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