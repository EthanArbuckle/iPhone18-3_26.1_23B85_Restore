@interface _UIAlignedLayoutArrangement
- (BOOL)_canvasConnectionConstraintsNeedUpdatePass;
- (BOOL)_hasStaleConfiguration;
- (BOOL)_requiresNotificationForHasBaselinePropertyChanges;
- (BOOL)_spanningGuideConstraintsNeedUpdate;
- (BOOL)_usesCenteringConnectionConstraint;
- (BOOL)_usesInequalitySpanningConstraintForAttribute:(int64_t)a3;
- (BOOL)_wantsAmbiguitySuppressionConstraints;
- (BOOL)_wantsConstraintsForAttribute:(int64_t)a3;
- (BOOL)_wantsConstraintsUsingAttributesForAxis:(int64_t)a3;
- (NSString)description;
- (_UIAlignedLayoutArrangement)initWithItems:(id)a3;
- (id)_baselineDependentConstraints;
- (int64_t)_attributeForConstraintGroupName:(id)a3;
- (int64_t)_axisForSpanningLayoutGuide;
- (int64_t)_layoutRelationForCanvasConnectionForAttribute:(int64_t)a3;
- (unint64_t)_indexOfItemForLocationAttribute:(int64_t)a3;
- (void)_addConstraintGroupsAsNecessary;
- (void)_addIndividualConstraintsIfPossible;
- (void)_clearAllConstraintsArrays;
- (void)_removeConstraintGroupsAsNecessary;
- (void)_removeIndividualConstraintsAsNecessary;
- (void)_setUpConstraintForItem:(id)a3 referenceItem:(id)a4 attribute:(int64_t)a5 inConstraintsTable:(id)a6;
- (void)_updateArrangementConstraints;
- (void)_updateConfigurationHistory;
- (void)dealloc;
- (void)setAlignment:(unint64_t)a3;
@end

@implementation _UIAlignedLayoutArrangement

- (BOOL)_requiresNotificationForHasBaselinePropertyChanges
{
  if (qword_1ED499F30 != -1)
  {
    dispatch_once(&qword_1ED499F30, &__block_literal_global_676);
  }

  if (_MergedGlobals_17_5 == 1)
  {
    alignment = self->_alignment;
    if ((alignment & 0x1000) != 0)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      return (alignment >> 11) & 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_clearAllConstraintsArrays
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _UIAlignedLayoutArrangement;
  [(_UILayoutArrangement *)&v12 _clearAllConstraintsArrays];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(NSMutableDictionary *)self->_alignmentConstraints allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        _UILACleanUpConstraintsMapTable(*(*(&v8 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (BOOL)_hasStaleConfiguration
{
  v8.receiver = self;
  v8.super_class = _UIAlignedLayoutArrangement;
  if ([(_UILayoutArrangement *)&v8 _hasStaleConfiguration])
  {
    return 1;
  }

  v4 = [(_UIAlignedLayoutArrangement *)self _alignmentConfigurationHistory];
  v5 = [(_UIAlignedLayoutArrangement *)self _alignmentPropertySource];
  if ([v4 hasEstablishedAlignmentValues])
  {
    v6 = [v4 alignment];
    v3 = v6 != [v5 alignment];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)_addIndividualConstraintsIfPossible
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [(_UIAlignedLayoutArrangement *)self _alignmentConfigurationHistory];
  v4 = [(_UILayoutArrangement *)self _incomingItems];
  if ([v3 hasEstablishedAlignmentValues])
  {
    v5 = &OBJC_IVAR____UICollectionViewOrthogonalScrollView__section;
    if ([v4 count])
    {
      alignmentConstraints = self->_alignmentConstraints;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __66___UIAlignedLayoutArrangement__addIndividualConstraintsIfPossible__block_invoke;
      v42[3] = &unk_1E7129210;
      v42[4] = self;
      v43 = v4;
      [(NSMutableDictionary *)alignmentConstraints enumerateKeysAndObjectsUsingBlock:v42];
    }

    if ([(_UIAlignedLayoutArrangement *)self _wantsConstraintsForAttribute:12]|| [(_UIAlignedLayoutArrangement *)self _wantsConstraintsForAttribute:11])
    {
      v27 = v4;
      v28 = v3;
      [(_UIAlignedLayoutArrangement *)self _alignmentPropertySource];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v26 = v41 = 0u;
      v7 = _constraintGroupNamesForAlignmentOptions([v26 alignment], objc_msgSend(v26, "axis"));
      v8 = [v7 countByEnumeratingWithState:&v38 objects:v45 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v39;
        v29 = *v39;
        v30 = v7;
        do
        {
          v11 = 0;
          v31 = v9;
          do
          {
            if (*v39 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v38 + 1) + 8 * v11);
            v13 = [*(&self->super.super.isa + v5[675]) objectForKey:v12];
            v14 = [(_UILayoutArrangement *)self items];
            v15 = [v14 count];
            if (v15 && [v13 count] < (v15 - 1))
            {
              v32 = v11;
              v33 = v14;
              v16 = [v13 objectEnumerator];
              v17 = [v16 nextObject];
              v18 = [v17 firstItem];

              if (v18)
              {
                v36 = 0u;
                v37 = 0u;
                v34 = 0u;
                v35 = 0u;
                v19 = v33;
                v20 = [v19 countByEnumeratingWithState:&v34 objects:v44 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v35;
                  do
                  {
                    for (i = 0; i != v21; ++i)
                    {
                      if (*v35 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v24 = *(*(&v34 + 1) + 8 * i);
                      if (v24 != v18)
                      {
                        v25 = [v13 objectForKey:*(*(&v34 + 1) + 8 * i)];

                        if (!v25)
                        {
                          [(_UIAlignedLayoutArrangement *)self _setUpConstraintForItem:v24 referenceItem:v18 attribute:[(_UIAlignedLayoutArrangement *)self _attributeForConstraintGroupName:v12] inConstraintsTable:v13];
                        }
                      }
                    }

                    v21 = [v19 countByEnumeratingWithState:&v34 objects:v44 count:16];
                  }

                  while (v21);
                }

                v5 = &OBJC_IVAR____UICollectionViewOrthogonalScrollView__section;
                v10 = v29;
                v7 = v30;
                v9 = v31;
              }

              v11 = v32;
              v14 = v33;
            }

            ++v11;
          }

          while (v11 != v9);
          v9 = [v7 countByEnumeratingWithState:&v38 objects:v45 count:16];
        }

        while (v9);
      }

      v4 = v27;
      v3 = v28;
    }
  }
}

- (void)_updateArrangementConstraints
{
  v4.receiver = self;
  v4.super_class = _UIAlignedLayoutArrangement;
  [(_UILayoutArrangement *)&v4 _updateArrangementConstraints];
  v3 = [(_UIAlignedLayoutArrangement *)self _alignmentConfigurationHistory];
  [v3 setInAlignmentLayoutUpdateSection:1];
  if ([(_UIAlignedLayoutArrangement *)self _hasStaleConfiguration])
  {
    [(_UIAlignedLayoutArrangement *)self _removeConstraintGroupsAsNecessary];
    [(_UIAlignedLayoutArrangement *)self _removeIndividualConstraintsAsNecessary];
    [(_UIAlignedLayoutArrangement *)self _addIndividualConstraintsIfPossible];
    [(_UIAlignedLayoutArrangement *)self _addConstraintGroupsAsNecessary];
  }

  [(_UIAlignedLayoutArrangement *)self _updateConfigurationHistory];
  [v3 setInAlignmentLayoutUpdateSection:0];
}

- (void)_updateConfigurationHistory
{
  v3 = [(_UIAlignedLayoutArrangement *)self _alignmentConfigurationHistory];
  if ([v3 isInAlignmentLayoutUpdateSection])
  {
    [v3 setHasEstablishedAlignmentValues:1];
    v4 = [(_UIAlignedLayoutArrangement *)self _alignmentPropertySource];
    [v3 setAlignment:{objc_msgSend(v4, "alignment")}];
  }

  v5.receiver = self;
  v5.super_class = _UIAlignedLayoutArrangement;
  [(_UILayoutArrangement *)&v5 _updateConfigurationHistory];
}

- (void)_removeIndividualConstraintsAsNecessary
{
  v2 = self;
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(_UIAlignedLayoutArrangement *)self _alignmentConfigurationHistory];
  if ([v3 hasEstablishedAlignmentValues])
  {
    v4 = [(_UILayoutArrangement *)v2 _outgoingItems];
    if ([v4 count])
    {
      v19 = v2;
      v20 = v3;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v5 = [(NSMutableDictionary *)v2->_alignmentConstraints allValues];
      v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v28;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v28 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v27 + 1) + 8 * i);
            if ([v10 count])
            {
              v25 = 0u;
              v26 = 0u;
              v23 = 0u;
              v24 = 0u;
              v11 = v4;
              v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v24;
                do
                {
                  for (j = 0; j != v13; ++j)
                  {
                    if (*v24 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    _UILACleanUpConstraintForItemInCollection(*(*(&v23 + 1) + 8 * j), v10);
                  }

                  v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
                }

                while (v13);
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v7);
      }

      v2 = v19;
      v3 = v20;
    }

    v16 = [(_UIAlignedLayoutArrangement *)v2 _alignmentPropertySource];
    v17 = [v16 invalidBaselineConstraints];
    if ([v17 count])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __70___UIAlignedLayoutArrangement__removeIndividualConstraintsAsNecessary__block_invoke;
      aBlock[3] = &unk_1E711F8C8;
      aBlock[4] = v2;
      v22 = v17;
      v18 = _Block_copy(aBlock);
      v18[2](v18, @"Top");
      v18[2](v18, @"Bottom");
    }
  }
}

- (BOOL)_usesCenteringConnectionConstraint
{
  v2 = [(_UIAlignedLayoutArrangement *)self _alignmentPropertySource];
  v3 = [v2 alignment];

  return (v3 & 0x600) != 0;
}

- (BOOL)_canvasConnectionConstraintsNeedUpdatePass
{
  v10.receiver = self;
  v10.super_class = _UIAlignedLayoutArrangement;
  if ([(_UILayoutArrangement *)&v10 _canvasConnectionConstraintsNeedUpdatePass])
  {
    return 1;
  }

  v4 = [(_UILayoutArrangement *)self _mutableItems];
  v5 = [v4 count];

  if (!v5)
  {
    return 0;
  }

  v6 = [(_UIAlignedLayoutArrangement *)self _alignmentConfigurationHistory];
  v7 = [v6 alignment];
  v8 = [(_UIAlignedLayoutArrangement *)self _alignmentPropertySource];
  v3 = v7 != [v8 alignment];

  return v3;
}

- (void)_removeConstraintGroupsAsNecessary
{
  v81 = *MEMORY[0x1E69E9840];
  v3 = [(_UIAlignedLayoutArrangement *)self _alignmentConfigurationHistory];
  if ([v3 hasEstablishedAlignmentValues])
  {
    v46 = [(_UIAlignedLayoutArrangement *)self _alignmentPropertySource];
    v4 = [v46 alignment];
    v5 = [v3 alignment];
    v44 = [(_UILayoutArrangement *)self _outgoingItems];
    v6 = [v3 axis];
    v71 = 0;
    v72 = &v71;
    v73 = 0x3032000000;
    v74 = __Block_byref_object_copy__236;
    v75 = __Block_byref_object_dispose__236;
    v76 = 0;
    if (v6 == [(_UILayoutArrangement *)self axis])
    {
      if ([v44 count])
      {
        v7 = _constraintGroupNamesForAlignmentOptions(v5, [(_UILayoutArrangement *)self axis]);
        alignmentConstraints = self->_alignmentConstraints;
        v9 = [v7 anyObject];
        v10 = [(NSMutableDictionary *)alignmentConstraints objectForKey:v9];

        v11 = [v10 objectEnumerator];
        v12 = [v11 nextObject];

        if (v12)
        {
          v13 = [v12 firstItem];
          if ([v44 containsObject:v13])
          {
            v14 = 1;
          }

          else
          {
            v14 = ![(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v13];
          }

          v45 = v14;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        v45 = 0;
      }
    }

    else
    {
      v45 = 1;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65___UIAlignedLayoutArrangement__removeConstraintGroupsAsNecessary__block_invoke;
    aBlock[3] = &unk_1E71291C0;
    aBlock[4] = &v71;
    v15 = _Block_copy(aBlock);
    v16 = v15;
    if (!(v45 & 1 | (v5 == v4)))
    {
      if ((v5 & 8) != 0 && (v4 & 8) == 0)
      {
        (*(v15 + 2))(v15, @"Top");
      }

      if ((v5 & 0x20) != 0 && (v4 & 0x20) == 0)
      {
        (v16)[2](v16, @"Leading");
      }

      if ((v5 & 0x10) != 0 && (v4 & 0x10) == 0)
      {
        (v16)[2](v16, @"Bottom");
      }

      if ((v5 & 0x40) != 0 && (v4 & 0x40) == 0)
      {
        (v16)[2](v16, @"Trailing");
      }

      if ((v5 & 0x200) != 0 && (v4 & 0x200) == 0)
      {
        (v16)[2](v16, @"CenterX");
      }

      if ((v5 & 0x400) != 0 && (v4 & 0x400) == 0)
      {
        (v16)[2](v16, @"CenterY");
      }

      if ((v5 & 0x1000) != 0 && (v4 & 0x1000) == 0)
      {
        (v16)[2](v16, @"Top");
      }

      if ((v5 & 0x800) != 0 && (v4 & 0x800) == 0)
      {
        (v16)[2](v16, @"Bottom");
      }

      if ((~v5 & 0x18) != 0 && (v5 & 0x60) != 0x60 && ((~v4 & 0x18) == 0 || (v4 & 0x60) == 0x60))
      {
        (v16)[2](v16, @"Ambiguity Suppression");
      }
    }

    v17 = [(_UIAlignedLayoutArrangement *)self _wantsConstraintsForAttribute:12]|| [(_UIAlignedLayoutArrangement *)self _wantsConstraintsForAttribute:11];
    v18 = [v46 _newlyHiddenItems];
    v19 = [v18 count];
    v20 = [v46 _newlyUnhiddenItems];
    v21 = [v20 count];
    v42 = v18;
    v43 = v20;
    [(_UILayoutArrangement *)self _incomingItems];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v22 = v67 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v66 objects:v80 count:16];
    v41 = v21 != 0;
    if (v23)
    {
      v24 = *v67;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v67 != v24)
          {
            objc_enumerationMutation(v22);
          }

          if ([(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:*(*(&v66 + 1) + 8 * i)])
          {
            LOBYTE(v23) = 1;
            goto LABEL_56;
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v66 objects:v80 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v26 = v21 != 0;

    if (((v45 ^ 1) & v17) == 1 && (v19 != 0 || v26) | v23 & 1)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v27 = [(_UILayoutArrangement *)self items];
      v28 = [v27 countByEnumeratingWithState:&v62 objects:v79 count:16];
      if (v28)
      {
        v29 = *v63;
        while (2)
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v63 != v29)
            {
              objc_enumerationMutation(v27);
            }

            if (([*(*(&v62 + 1) + 8 * j) _hasBaseline] & 1) == 0)
            {

              v55[0] = MEMORY[0x1E69E9820];
              v55[1] = 3221225472;
              v55[2] = __65___UIAlignedLayoutArrangement__removeConstraintGroupsAsNecessary__block_invoke_2;
              v55[3] = &unk_1E71291E8;
              v55[4] = self;
              v56 = v42;
              v59 = v16;
              v60 = v41;
              v61 = v23;
              v57 = v43;
              v58 = v22;
              v31 = _Block_copy(v55);
              v31[2](v31, @"Top");
              v31[2](v31, @"Bottom");

              goto LABEL_69;
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v62 objects:v79 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_69:
    if (v45)
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v32 = [(NSMutableDictionary *)self->_alignmentConstraints allValues];
      v33 = [v32 countByEnumeratingWithState:&v51 objects:v78 count:16];
      if (v33)
      {
        v34 = *v52;
        do
        {
          for (k = 0; k != v33; ++k)
          {
            if (*v52 != v34)
            {
              objc_enumerationMutation(v32);
            }

            _UILACleanUpConstraintsMapTable(*(*(&v51 + 1) + 8 * k));
          }

          v33 = [v32 countByEnumeratingWithState:&v51 objects:v78 count:16];
        }

        while (v33);
      }
    }

    else
    {
      v36 = v72[5];
      if (!v36)
      {
LABEL_87:

        _Block_object_dispose(&v71, 8);
        goto LABEL_88;
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v32 = v36;
      v37 = [v32 countByEnumeratingWithState:&v47 objects:v77 count:16];
      if (v37)
      {
        v38 = *v48;
        do
        {
          for (m = 0; m != v37; ++m)
          {
            if (*v48 != v38)
            {
              objc_enumerationMutation(v32);
            }

            v40 = [(NSMutableDictionary *)self->_alignmentConstraints objectForKeyedSubscript:*(*(&v47 + 1) + 8 * m)];
            _UILACleanUpConstraintsMapTable(v40);
          }

          v37 = [v32 countByEnumeratingWithState:&v47 objects:v77 count:16];
        }

        while (v37);
      }
    }

    goto LABEL_87;
  }

LABEL_88:
}

- (void)_addConstraintGroupsAsNecessary
{
  v3 = [(_UILayoutArrangement *)self _mutableItems];
  if ([v3 count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62___UIAlignedLayoutArrangement__addConstraintGroupsAsNecessary__block_invoke;
    aBlock[3] = &unk_1E70F7140;
    aBlock[4] = self;
    v4 = _Block_copy(aBlock);
    v4[2](v4, @"Top");
    v4[2](v4, @"Leading");
    v4[2](v4, @"Bottom");
    v4[2](v4, @"Trailing");
    v4[2](v4, @"CenterX");
    v4[2](v4, @"CenterY");
    v4[2](v4, @"Ambiguity Suppression");
    alignmentConstraints = self->_alignmentConstraints;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62___UIAlignedLayoutArrangement__addConstraintGroupsAsNecessary__block_invoke_2;
    v6[3] = &unk_1E7129210;
    v6[4] = self;
    v7 = v3;
    [(NSMutableDictionary *)alignmentConstraints enumerateKeysAndObjectsUsingBlock:v6];
  }
}

- (int64_t)_axisForSpanningLayoutGuide
{
  v2 = [(_UIAlignedLayoutArrangement *)self _alignmentPropertySource];
  v3 = [v2 axis] == 0;

  return v3;
}

- (BOOL)_spanningGuideConstraintsNeedUpdate
{
  v8.receiver = self;
  v8.super_class = _UIAlignedLayoutArrangement;
  if ([(_UILayoutArrangement *)&v8 _spanningGuideConstraintsNeedUpdate])
  {
    return 1;
  }

  v4 = [(_UIAlignedLayoutArrangement *)self _alignmentConfigurationHistory];
  v5 = [v4 alignment];
  v6 = [(_UIAlignedLayoutArrangement *)self _alignmentPropertySource];
  v3 = v5 != [v6 alignment];

  return v3;
}

- (BOOL)_wantsAmbiguitySuppressionConstraints
{
  v2 = [(_UIAlignedLayoutArrangement *)self _alignmentPropertySource];
  v3 = ~[v2 alignment];
  v4 = (v3 & 0x60) != 0 && (v3 & 0x18) != 0;

  return v4;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(NSMutableDictionary *)self->_alignmentConstraints allValues];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          _UILACleanUpConstraintsMapTable(*(*(&v9 + 1) + 8 * v7++));
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8.receiver = self;
  v8.super_class = _UIAlignedLayoutArrangement;
  [(_UIAlignedLayoutArrangement *)&v8 dealloc];
}

- (_UIAlignedLayoutArrangement)initWithItems:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIAlignedLayoutArrangement;
  v3 = [(_UILayoutArrangement *)&v7 initWithItems:a3];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
    alignmentConstraints = v3->_alignmentConstraints;
    v3->_alignmentConstraints = v4;
  }

  return v3;
}

- (unint64_t)_indexOfItemForLocationAttribute:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = _UIAlignedLayoutArrangement;
  v5 = [(_UILayoutArrangement *)&v10 _indexOfItemForLocationAttribute:?];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return result;
  }

  v7 = [(_UILayoutArrangement *)self _mutableItems];
  v8 = [v7 count];

  result = v5;
  if (v8 < 2)
  {
    return result;
  }

  if (![(_UILayoutArrangement *)self axis])
  {
    result = 0x7FFFFFFFFFFFFFFFLL;
    if (a3 > 0x25 || ((1 << a3) & 0x2A00119D19) == 0)
    {
      return result;
    }

    if (a3 <= 9)
    {
      if (a3 != 3)
      {
        goto LABEL_25;
      }
    }

    else if (a3 != 12)
    {
      if (a3 != 11)
      {
        if (a3 != 10)
        {
          return result;
        }

        alignment = self->_alignment;
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    alignment = self->_alignment;
    if ((alignment & 0x1008) != 0)
    {
      return 0;
    }

    if (a3 == 11)
    {
LABEL_26:
      alignment = self->_alignment;
      if ((alignment & 0x810) == 0)
      {
        if (a3 != 10)
        {
          return result;
        }

        goto LABEL_29;
      }

      return 0;
    }

    if (a3 == 10)
    {
LABEL_29:
      if ((alignment & 0x400) != 0)
      {
        return 0;
      }

      else
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

LABEL_25:
    if (a3 != 4)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (a3 > 0x25)
  {
    goto LABEL_33;
  }

  if (((1 << a3) & 0x2A00119D19) != 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (((1 << a3) & 0x14000C42C4) == 0)
  {
LABEL_33:
    if ((self->_alignment & 0x22) != 0)
    {
      return 0;
    }
  }

  if ((a3 > 0x23 || ((1 << a3) & 0xF001ABFABLL) == 0) && (self->_alignment & 0x44) != 0)
  {
    return 0;
  }

  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 == 9 && (self->_alignment & 0x200) != 0)
  {
    return 0;
  }

  return result;
}

- (BOOL)_usesInequalitySpanningConstraintForAttribute:(int64_t)a3
{
  v5 = [(_UIAlignedLayoutArrangement *)self _alignmentPropertySource];
  v6 = [v5 alignment];

  if (a3 > 4)
  {
    if (a3 == 5)
    {
      return (v6 & 0x20) == 0;
    }

    else
    {
      if (a3 != 6)
      {
        goto LABEL_8;
      }

      return (v6 & 0x40) == 0;
    }
  }

  else
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        return (v6 & 0x10) == 0;
      }

LABEL_8:
      v9.receiver = self;
      v9.super_class = _UIAlignedLayoutArrangement;
      return [(_UILayoutArrangement *)&v9 _usesInequalitySpanningConstraintForAttribute:a3];
    }

    return (v6 & 8) == 0;
  }
}

- (int64_t)_layoutRelationForCanvasConnectionForAttribute:(int64_t)a3
{
  v5 = [(_UILayoutArrangement *)self _viewOrGuideForLocationAttribute:?];
  v6 = [(_UILayoutArrangement *)self _spanningLayoutGuide];

  result = 0;
  if ((a3 - 11) <= 0xFFFFFFFFFFFFFFFDLL && v5 != v6)
  {
    if ([(_UIAlignedLayoutArrangement *)self _usesInequalitySpanningConstraintForAttribute:a3])
    {
      if (a3 > 0x25)
      {
        return -1;
      }

      else
      {
        return qword_18A683388[a3 & 0x3F];
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setAlignment:(unint64_t)a3
{
  if ((~a3 & 0x1008) == 0 || (a3 & 0x810) == 0x810)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIAlignedLayoutArrangement.m" lineNumber:231 description:@" Can't align Top and FirstBaseline or Bottom and LastBaseline at the same time."];
  }

  if (self->_alignment != a3)
  {
    v6 = [(_UIAlignedLayoutArrangement *)self _requiresNotificationForHasBaselinePropertyChanges];
    self->_alignment = a3;
    if (v6 != [(_UIAlignedLayoutArrangement *)self _requiresNotificationForHasBaselinePropertyChanges])
    {
      [(_UILayoutArrangement *)self _hasBaselineChangedNotificationRequirementDidChange];
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44___UIAlignedLayoutArrangement_setAlignment___block_invoke;
    v10[3] = &__block_descriptor_40_e36_v16__0___UIALAConfigurationHistory_8l;
    v10[4] = a3;
    [(_UILayoutArrangement *)self _trackChangesWithConfigBlock:v10];
    v7 = [(_UILayoutArrangement *)self canvas];
    _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(v7);

    v8 = [(_UILayoutArrangement *)self canvas];
    [v8 _vendedBaselineViewParametersDidChange];
  }
}

- (id)_baselineDependentConstraints
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_alignmentConstraints objectForKeyedSubscript:@"Top"];
  if ([v3 count])
  {
  }

  else
  {
    v4 = [(NSMutableDictionary *)self->_alignmentConstraints objectForKeyedSubscript:@"Bottom"];
    v5 = [v4 count];

    if (!v5)
    {
      v6 = 0;
      goto LABEL_19;
    }
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [(NSMutableDictionary *)self->_alignmentConstraints objectForKeyedSubscript:@"Top"];
  v8 = [v7 objectEnumerator];

  v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v6 addObject:*(*(&v24 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [(NSMutableDictionary *)self->_alignmentConstraints objectForKeyedSubscript:@"Bottom", 0];
  v14 = [v13 objectEnumerator];

  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v6 addObject:*(*(&v20 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

LABEL_19:

  return v6;
}

- (BOOL)_wantsConstraintsUsingAttributesForAxis:(int64_t)a3
{
  v4 = [(_UIAlignedLayoutArrangement *)self _alignmentPropertySource];
  LOBYTE(a3) = [v4 axis] != a3;

  return a3;
}

- (BOOL)_wantsConstraintsForAttribute:(int64_t)a3
{
  v5 = a3 <= 0x25 && ((1 << a3) & 0x2A00119D19) != 0;
  LODWORD(v6) = [(_UIAlignedLayoutArrangement *)self _wantsConstraintsUsingAttributesForAxis:v5];
  if (v6)
  {
    if ((a3 - 7) > 1)
    {
      v7 = [(_UIAlignedLayoutArrangement *)self _alignmentPropertySource];
      v8 = [v7 alignment];

      if (a3 > 8)
      {
        if (a3 > 10)
        {
          if (a3 == 11)
          {
            return (v8 >> 11) & 1;
          }

          else
          {
            LOBYTE(v6) = 0;
            if (a3 == 12)
            {
              return (v8 >> 12) & 1;
            }
          }
        }

        else
        {
          v9 = (v8 >> 10) & 1;
          if (a3 != 10)
          {
            LOBYTE(v9) = 0;
          }

          if (a3 == 9)
          {
            LOBYTE(v6) = (v8 & 0x200) != 0;
          }

          else
          {
            LOBYTE(v6) = v9;
          }
        }
      }

      else if (a3 > 4)
      {
        if (a3 == 5)
        {
          return (v8 >> 5) & 1;
        }

        else
        {
          LOBYTE(v6) = 0;
          if (a3 == 6)
          {
            return (v8 >> 6) & 1;
          }
        }
      }

      else if (a3 == 3)
      {
        return (v8 >> 3) & 1;
      }

      else
      {
        LOBYTE(v6) = 0;
        if (a3 == 4)
        {
          return (v8 >> 4) & 1;
        }
      }
    }

    else
    {

      LOBYTE(v6) = [(_UIAlignedLayoutArrangement *)self _wantsAmbiguitySuppressionConstraints];
    }
  }

  return v6;
}

- (int64_t)_attributeForConstraintGroupName:(id)a3
{
  v5 = a3;
  v6 = [(_UIAlignedLayoutArrangement *)self _alignmentPropertySource];
  v7 = [v6 alignment];

  if ([v5 isEqualToString:@"Top"])
  {
    v8 = (v7 & 8) == 0;
    v9 = 3;
    v10 = 12;
    goto LABEL_3;
  }

  if ([v5 isEqualToString:@"Leading"])
  {
    v11 = 5;
    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"Bottom"])
  {
    v8 = (v7 & 0x10) == 0;
    v9 = 4;
    v10 = 11;
LABEL_3:
    if (v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"Trailing"])
  {
    v11 = 6;
  }

  else if ([v5 isEqualToString:@"CenterX"])
  {
    v11 = 9;
  }

  else if ([v5 isEqualToString:@"CenterY"])
  {
    v11 = 10;
  }

  else if (![v5 isEqualToString:@"Ambiguity Suppression"] || (v11 = -[_UILayoutArrangement _dimensionAttributeForCurrentAxis](self, "_dimensionAttributeForCurrentAxis")) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIAlignedLayoutArrangement.m" lineNumber:521 description:{@"Couldn't find attribute for constraint group %@", v5}];

    v11 = 0;
  }

LABEL_8:

  return v11;
}

- (void)_setUpConstraintForItem:(id)a3 referenceItem:(id)a4 attribute:(int64_t)a5 inConstraintsTable:(id)a6
{
  v18 = a3;
  v9 = a4;
  v10 = a6;
  if ((a5 - 7) > 1)
  {
    if (qword_1ED499F30 != -1)
    {
      dispatch_once(&qword_1ED499F30, &__block_literal_global_676);
    }

    v15 = v18;
    if (a5 - 11) <= 1 && (_MergedGlobals_17_5)
    {
      v16 = [v18 _hasBaseline];
      v15 = v18;
      v17 = 3;
      if (a5 != 12)
      {
        v17 = 4;
      }

      if ((v16 & 1) == 0)
      {
        a5 = v17;
      }
    }

    v14 = [MEMORY[0x1E69977A0] constraintWithItem:v9 attribute:a5 relatedBy:0 toItem:v15 attribute:a5];
    v11 = v14;
    v13 = @"UISV-alignment";
  }

  else
  {
    v11 = [MEMORY[0x1E69977A0] constraintWithItem:v18 attribute:a5 relatedBy:0 constant:0.0];
    LODWORD(v12) = 25.0;
    [v11 setPriority:v12];
    v13 = @"UISV-ambiguity-suppression";
    v14 = v11;
  }

  [v14 setIdentifier:v13];
  [v11 setActive:1];
  [v10 setObject:v11 forKey:v18];
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = _UIAlignedLayoutArrangement;
  v3 = [(_UILayoutArrangement *)&v6 description];
  if (os_variant_has_internal_diagnostics())
  {
    v5 = [v3 stringByAppendingFormat:@" alignmentConstraints=%p", self->_alignmentConstraints];

    v3 = v5;
  }

  return v3;
}

@end