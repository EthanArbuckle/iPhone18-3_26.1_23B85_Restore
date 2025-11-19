@interface _UILayoutArrangement
- (BOOL)_allItemsHidden;
- (BOOL)_canvasConnectionConstraintsNeedUpdatePass;
- (BOOL)_hasStaleConfiguration;
- (BOOL)_itemWantsLayoutAsIfVisible:(id)a3;
- (BOOL)_spanningGuideConstraintsNeedUpdate;
- (NSArray)items;
- (NSString)description;
- (UIView)canvas;
- (_UILAConfigurationHistory)_configurationHistory;
- (_UILAPropertySource)_propertySource;
- (_UILayoutArrangement)init;
- (_UILayoutArrangement)initWithItems:(id)a3;
- (_UILayoutArrangement)initWithItems:(id)a3 onAxis:(int64_t)a4;
- (float)_spanningLayoutGuideFittingPriority;
- (id)_spanningLayoutGuideCreateIfNecessary;
- (id)_viewOrGuideForLocationAttribute:(int64_t)a3;
- (int64_t)_axisForSpanningLayoutGuide;
- (int64_t)_centerAttributeForCanvasConnections;
- (int64_t)_dimensionAttributeForCurrentAxis;
- (int64_t)_minAttributeForCanvasConnections;
- (unint64_t)_indexOfItemForLocationAttribute:(int64_t)a3;
- (void)_clearAllConstraintsArrays;
- (void)_clearCanvasConnectionConstraints;
- (void)_createSpanningLayoutGuide;
- (void)_createUnanimatedConfigurationTargetIfNecessary;
- (void)_hasBaselineChangedNotification:(id)a3;
- (void)_hasBaselineChangedNotificationRequirementDidChange;
- (void)_invalidateBaselineConstraint:(id)a3;
- (void)_registerAnimationRequest;
- (void)_removeSpanningLayoutGuide;
- (void)_respondToChangesWithIncomingItem:(id)a3 outgoingItem:(id)a4 newlyHiddenItem:(id)a5 newlyUnhiddenItem:(id)a6;
- (void)_setAxis:(int64_t)a3 notify:(BOOL)a4;
- (void)_setLayoutFillsCanvas:(BOOL)a3 notify:(BOOL)a4;
- (void)_setLayoutUsesCanvasMarginsWhenFilling:(BOOL)a3 notify:(BOOL)a4;
- (void)_trackChangesWithConfigBlock:(id)a3;
- (void)_updateArrangementConstraints;
- (void)_updateCanvasConnectionConstraintsIfNecessary;
- (void)_updateConfigurationHistory;
- (void)_updateSpanningLayoutGuideConstraintsIfNecessary;
- (void)_visibilityParameterChangedForItem:(id)a3;
- (void)addItem:(id)a3;
- (void)insertItem:(id)a3 atIndex:(unint64_t)a4;
- (void)removeItem:(id)a3;
- (void)setCanvas:(id)a3;
@end

@implementation _UILayoutArrangement

- (UIView)canvas
{
  WeakRetained = objc_loadWeakRetained(&self->_canvas);

  return WeakRetained;
}

- (_UILAPropertySource)_propertySource
{
  WeakRetained = objc_loadWeakRetained(&self->_canvas);
  if (WeakRetained && (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->_canvas), v6 = [v5 _isInAnimatedLayout], v5, v4, (v6 & 1) != 0))
  {
    unanimatedConfigurationTarget = self;
  }

  else
  {
    unanimatedConfigurationTarget = self->_unanimatedConfigurationTarget;
    if (!unanimatedConfigurationTarget)
    {
      unanimatedConfigurationTarget = self->_configurationHistory;
    }
  }

  return unanimatedConfigurationTarget;
}

- (void)_createUnanimatedConfigurationTargetIfNecessary
{
  if (!self->_unanimatedConfigurationTarget)
  {
    v6 = [(_UILayoutArrangement *)self _configurationHistory];
    v4 = [v6 copy];
    unanimatedConfigurationTarget = self->_unanimatedConfigurationTarget;
    self->_unanimatedConfigurationTarget = v4;
  }
}

- (_UILAConfigurationHistory)_configurationHistory
{
  configurationHistory = self->_configurationHistory;
  if (!configurationHistory)
  {
    v4 = objc_alloc_init([objc_opt_class() _configurationHistoryClass]);
    v5 = self->_configurationHistory;
    self->_configurationHistory = v4;

    v6 = [(_UILAConfigurationHistory *)self->_configurationHistory _newlyHiddenItems];
    [v6 unionSet:self->_newlyHiddenItems];

    v7 = [(_UILAConfigurationHistory *)self->_configurationHistory _newlyUnhiddenItems];
    [v7 unionSet:self->_newlyUnhiddenItems];

    configurationHistory = self->_configurationHistory;
  }

  return configurationHistory;
}

- (void)_clearAllConstraintsArrays
{
  [(_UILayoutArrangement *)self _removeSpanningLayoutGuide];

  [(_UILayoutArrangement *)self _clearCanvasConnectionConstraints];
}

- (void)_removeSpanningLayoutGuide
{
  spanningLayoutGuide = self->_spanningLayoutGuide;
  if (spanningLayoutGuide)
  {
    [(UILayoutGuide *)spanningLayoutGuide _setLockedToOwningView:0];
    WeakRetained = objc_loadWeakRetained(&self->_canvas);
    [WeakRetained removeLayoutGuide:self->_spanningLayoutGuide];

    v5 = self->_spanningLayoutGuide;
    self->_spanningLayoutGuide = 0;
  }
}

- (void)_clearCanvasConnectionConstraints
{
  if (self->_canvasConnectionConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
    canvasConnectionConstraints = self->_canvasConnectionConstraints;
    self->_canvasConnectionConstraints = 0;
  }
}

- (NSArray)items
{
  v2 = [(NSMutableArray *)self->_mutableItems copy];

  return v2;
}

- (int64_t)_centerAttributeForCanvasConnections
{
  if ([(_UILayoutArrangement *)self _axisForSpanningLayoutGuide])
  {
    return 10;
  }

  else
  {
    return 9;
  }
}

- (void)_updateArrangementConstraints
{
  v3 = [(_UILayoutArrangement *)self _configurationHistory];
  [v3 setInLayoutArrangementUpdateSection:1];
  [(_UILayoutArrangement *)self _updateSpanningLayoutGuideConstraintsIfNecessary];
  [(_UILayoutArrangement *)self _updateCanvasConnectionConstraintsIfNecessary];
  [(_UILayoutArrangement *)self _updateConfigurationHistory];
  [v3 setInLayoutArrangementUpdateSection:0];
}

- (BOOL)_canvasConnectionConstraintsNeedUpdatePass
{
  v3 = [(_UILayoutArrangement *)self _propertySource];
  if (!-[_UILAConfigurationHistory hasEstablishedBaseValues](self->_configurationHistory, "hasEstablishedBaseValues") && [v3 layoutFillsCanvas] && -[NSMutableArray count](self->_mutableItems, "count"))
  {
    goto LABEL_10;
  }

  if (![(_UILAConfigurationHistory *)self->_configurationHistory hasEstablishedBaseValues])
  {
    v7 = 0;
    goto LABEL_12;
  }

  v4 = [(_UILAConfigurationHistory *)self->_configurationHistory layoutFillsCanvas];
  if (v4 == [v3 layoutFillsCanvas] && (v5 = -[_UILAConfigurationHistory layoutUsesCanvasMarginsWhenFilling](self->_configurationHistory, "layoutUsesCanvasMarginsWhenFilling"), v5 == objc_msgSend(v3, "layoutUsesCanvasMarginsWhenFilling")) && (v6 = -[_UILAConfigurationHistory axis](self->_configurationHistory, "axis"), v6 == objc_msgSend(v3, "axis")) && !-[NSMutableSet count](self->_incomingItems, "count") && !-[NSMutableSet count](self->_outgoingItems, "count"))
  {
    v9 = [v3 _newlyUnhiddenItems];
    if ([v9 count])
    {
      v7 = 1;
    }

    else
    {
      v10 = [v3 _newlyHiddenItems];
      v7 = [v10 count] != 0;
    }
  }

  else
  {
LABEL_10:
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (void)_updateCanvasConnectionConstraintsIfNecessary
{
  if (![(_UILayoutArrangement *)self _canvasConnectionConstraintsNeedUpdatePass])
  {
    return;
  }

  v3 = [(_UILayoutArrangement *)self _propertySource];
  v4 = [v3 layoutUsesCanvasMarginsWhenFilling];
  v5 = [(_UILayoutArrangement *)self canvas];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 layoutMarginsGuide];

    v6 = v7;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69___UILayoutArrangement__updateCanvasConnectionConstraintsIfNecessary__block_invoke;
  aBlock[3] = &unk_1E7129338;
  aBlock[4] = self;
  v45 = v6;
  v53 = v45;
  v51 = _Block_copy(aBlock);
  v8 = [(_UILayoutArrangement *)self _usesCenteringConnectionConstraint];
  v9 = [(_UILayoutArrangement *)self _minAttributeForCanvasConnections];
  v48 = _UILAFacingAttributeOfAttribute(v9);
  v10 = [v3 layoutFillsCanvas];
  v11 = v10;
  v49 = v8;
  v12 = 2;
  if (v8)
  {
    v12 = 3;
  }

  v47 = v12;
  if (v10)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(NSMutableArray *)self->_canvasConnectionConstraints count];
  v15 = v14;
  if (v14 && v14 < v13)
  {
    [(_UILayoutArrangement *)self _clearCanvasConnectionConstraints];
    v15 = 0;
  }

  if (((self->_canvasConnectionConstraints == 0) & v11) == 1)
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v13];
    canvasConnectionConstraints = self->_canvasConnectionConstraints;
    self->_canvasConnectionConstraints = v16;
  }

  v18 = [(_UILayoutArrangement *)self _viewOrGuideForLocationAttribute:v9];
  v19 = v18;
  if (v18)
  {
    v50 = v18 == self->_spanningLayoutGuide;
  }

  else
  {
    v50 = 0;
  }

  v44 = v13;
  v46 = v3;
  v20 = [(_UILayoutArrangement *)self _configurationRequiresCanvasConnectionFittingConstraint];
  if (v11)
  {
    v21 = 0;
    while (1)
    {
      v22 = v15;
      if (v21 >= v15)
      {
        v23 = 0;
      }

      else
      {
        v23 = [(NSMutableArray *)self->_canvasConnectionConstraints objectAtIndex:v21];
      }

      v24 = v51[2](v51, v23, v9, v19);
      v25 = v24;
      if (v23)
      {
        if (v24 != v23)
        {
          [(NSMutableArray *)self->_canvasConnectionConstraints replaceObjectAtIndex:v21 withObject:v24];
        }

        if (!v20)
        {
LABEL_28:
          v20 = [v25 relation] != 0;
          goto LABEL_29;
        }
      }

      else
      {
        [(NSMutableArray *)self->_canvasConnectionConstraints addObject:v24];
        if (!v20)
        {
          goto LABEL_28;
        }
      }

      v20 = 1;
LABEL_29:
      if (v21)
      {
        v9 = 0;
      }

      else
      {
        v9 = v48;
      }

      if (v21 != 0 && v49)
      {
        v9 = [(_UILayoutArrangement *)self _centerAttributeForCanvasConnections];
      }

      if (v9)
      {
        v26 = [(_UILayoutArrangement *)self _viewOrGuideForLocationAttribute:v9];

        if (!v50 && v26 != 0)
        {
          v50 = v26 == self->_spanningLayoutGuide;
        }
      }

      else
      {

        v26 = 0;
      }

      ++v21;
      v19 = v26;
      v15 = v22;
      if (v47 == v21)
      {
        goto LABEL_41;
      }
    }
  }

  v26 = v19;
LABEL_41:
  v27 = v44;
  if (v20)
  {
    v27 = v44 + 1;
    v28 = v15;
    if (v15 == v44 + 1)
    {
      v29 = [(NSMutableArray *)self->_canvasConnectionConstraints lastObject];
      v30 = [(_UILayoutArrangement *)self _dimensionAttributeForCurrentAxis];
      if (v29)
      {
        v31 = [v29 firstItem];
        v32 = [(_UILayoutArrangement *)self canvas];
        v33 = v32;
        if (v31 == v32)
        {
          v35 = [v29 firstAttribute];

          if (v35 == v30)
          {
LABEL_54:

            goto LABEL_55;
          }
        }

        else
        {
        }

        v34 = 0;
LABEL_50:
        [v29 setActive:0];
        v36 = MEMORY[0x1E69977A0];
        v37 = [(_UILayoutArrangement *)self canvas];
        v38 = [v36 constraintWithItem:v37 attribute:v30 relatedBy:0 constant:0.0];

        LODWORD(v39) = 1111752704;
        [v38 setPriority:v39];
        [v38 setIdentifier:@"UISV-canvas-fit"];
        [v38 setActive:1];
        v40 = self->_canvasConnectionConstraints;
        if (v34)
        {
          [(NSMutableArray *)v40 addObject:v38];
        }

        else
        {
          [(NSMutableArray *)v40 replaceObjectAtIndex:v28 - 1 withObject:v38];
        }

        goto LABEL_54;
      }
    }

    else
    {
      v30 = [(_UILayoutArrangement *)self _dimensionAttributeForCurrentAxis];
      v29 = 0;
    }

    v34 = 1;
    goto LABEL_50;
  }

LABEL_55:
  v41 = [(NSMutableArray *)self->_canvasConnectionConstraints count];
  if (v41 > v27)
  {
    v42 = v41;
    do
    {
      v43 = [(NSMutableArray *)self->_canvasConnectionConstraints lastObject];
      [v43 setActive:0];
      [(NSMutableArray *)self->_canvasConnectionConstraints removeObjectAtIndex:--v42];
    }

    while (v42 > v27);
  }

  if (!v50)
  {
    [(_UILayoutArrangement *)self _removeSpanningLayoutGuide];
  }
}

- (BOOL)_hasStaleConfiguration
{
  v3 = [(_UILayoutArrangement *)self _configurationHistory];
  v4 = [(_UILayoutArrangement *)self _propertySource];
  if (!-[NSMutableSet count](self->_incomingItems, "count") && !-[NSMutableSet count](self->_outgoingItems, "count") && [v3 hasEstablishedBaseValues] && (v5 = objc_msgSend(v3, "axis"), v5 == objc_msgSend(v4, "axis")) && (v6 = objc_msgSend(v3, "layoutFillsCanvas"), v6 == objc_msgSend(v4, "layoutFillsCanvas")) && (!objc_msgSend(v4, "layoutFillsCanvas") || (v9 = objc_msgSend(v3, "layoutUsesCanvasMarginsWhenFilling"), v9 == objc_msgSend(v4, "layoutUsesCanvasMarginsWhenFilling"))))
  {
    v10 = [v4 _newlyHiddenItems];
    if ([v10 count])
    {
      v7 = 1;
    }

    else
    {
      v11 = [v4 _newlyUnhiddenItems];
      if ([v11 count])
      {
        v7 = 1;
      }

      else
      {
        v12 = [v4 invalidBaselineConstraints];
        v7 = [v12 count] != 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (int64_t)_minAttributeForCanvasConnections
{
  if ([(_UILayoutArrangement *)self _axisForSpanningLayoutGuide])
  {
    return 3;
  }

  else
  {
    return 5;
  }
}

- (int64_t)_axisForSpanningLayoutGuide
{
  v2 = [(_UILayoutArrangement *)self _propertySource];
  v3 = [v2 axis];

  return v3;
}

- (void)_updateSpanningLayoutGuideConstraintsIfNecessary
{
  v76 = *MEMORY[0x1E69E9840];
  if (!self->_spanningLayoutGuide || ![(_UILayoutArrangement *)self _spanningGuideConstraintsNeedUpdate])
  {
    return;
  }

  v3 = [(_UILayoutSpacer *)self->_spanningLayoutGuide _isHorizontal];
  if ([(_UILayoutArrangement *)self _axisForSpanningLayoutGuide]== v3)
  {
    [(_UILayoutArrangement *)self _removeSpanningLayoutGuide];
    [(_UILayoutArrangement *)self _createSpanningLayoutGuide];
  }

  v4 = [(UILayoutGuide *)self->_spanningLayoutGuide _systemConstraints];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72___UILayoutArrangement__updateSpanningLayoutGuideConstraintsIfNecessary__block_invoke_2;
  aBlock[3] = &unk_1E7129310;
  aBlock[4] = self;
  v72 = &__block_literal_global_677;
  v6 = v5;
  v71 = v6;
  v7 = _Block_copy(aBlock);
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __72___UILayoutArrangement__updateSpanningLayoutGuideConstraintsIfNecessary__block_invoke_3;
  v68[3] = &unk_1E70F35B8;
  v68[4] = self;
  v51 = v6;
  v69 = v51;
  v49 = _Block_copy(v68);
  v48 = [(_UILayoutArrangement *)self _propertySource];
  v8 = [v48 axis];
  v9 = [v4 count];
  if (v8)
  {
    v10 = 5;
  }

  else
  {
    v10 = 3;
  }

  v11 = _UILAFacingAttributeOfAttribute(v10);
  v12 = [(_UILayoutArrangement *)self _usesInequalitySpanningConstraintForAttribute:v10];
  v13 = [(_UILayoutArrangement *)self _usesInequalitySpanningConstraintForAttribute:v11];
  v14 = v13;
  v15 = 1;
  if (!v12 && !v13)
  {
    v15 = [(_UILayoutArrangement *)self _spanningLayoutGuideAlwaysUsesFittingConstraint];
  }

  v53 = v4;
  if ([(_UILAConfigurationHistory *)self->_configurationHistory axis]== v8 && v9)
  {
    v52 = [(NSMutableSet *)self->_incomingItems mutableCopy];
    if ([v4 count])
    {
      v16 = 0;
      v17 = 0;
      v47 = v49 + 2;
      v50 = v15;
      while (1)
      {
        v18 = [v4 objectAtIndex:{v17, v47}];
        v19 = v18;
        if (v17)
        {
          goto LABEL_16;
        }

        v26 = [v18 secondItem];

        if (v26)
        {
          break;
        }

        if (v15)
        {
          [v51 addObject:v19];
        }

        else
        {
          [v19 setActive:0];
        }

        v17 = 1;
        v16 = 1;
LABEL_34:

        if (v17 >= [v4 count])
        {
          goto LABEL_52;
        }
      }

      if (v15)
      {
        v49[2]();
      }

LABEL_16:
      v55 = v16;
      v20 = [v19 secondItem];
      if ([(NSMutableSet *)self->_outgoingItems containsObject:v20])
      {
        [v4 objectAtIndex:++v17];
        v22 = v21 = v4;
        [v19 setActive:0];
        [v22 setActive:0];

        v4 = v21;
      }

      else
      {
        if ((v17 & 1) == v16)
        {
          v23 = v12;
        }

        else
        {
          v23 = v14;
        }

        v24 = -1;
        if ((v17 & 1) != v16)
        {
          v24 = 1;
        }

        v54 = v15 && v23;
        if (v15 && v23)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        if ([v19 relation] == v25)
        {
          [v51 addObject:v19];
        }

        else
        {
          [v19 setActive:0];
          (v7)[2](v7, v20, (v17 & 1) == v16, v54);
        }

        [v52 removeObject:v20];
        v4 = v53;
        v15 = v50;
      }

      v16 = v55;

      ++v17;
      goto LABEL_34;
    }

LABEL_52:
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v27 = v52;
    v33 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v60 objects:v74 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v61;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v61 != v35)
          {
            objc_enumerationMutation(v27);
          }

          v37 = *(*(&v60 + 1) + 8 * i);
          v7[2](v7, v37, 1, v12);
          v7[2](v7, v37, 0, v14);
        }

        v34 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v60 objects:v74 count:16];
      }

      while (v34);
    }
  }

  else
  {
    if ([v4 count])
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:v4];
    }

    if (v15)
    {
      v49[2]();
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v27 = self->_mutableItems;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v64 objects:v75 count:16];
    if (!v28)
    {
      v38 = v4;
      goto LABEL_61;
    }

    v29 = v28;
    v30 = *v65;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v65 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v64 + 1) + 8 * j);
        v7[2](v7, v32, 1, v12);
        v7[2](v7, v32, 0, v14);
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v64 objects:v75 count:16];
    }

    while (v29);
  }

  v38 = v53;
LABEL_61:

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v39 = v51;
  v40 = [v39 countByEnumeratingWithState:&v56 objects:v73 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v57;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v57 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v56 + 1) + 8 * k);
        v45 = [v44 secondItem];
        objc_opt_class();
        v46 = (objc_opt_isKindOfClass() & 1) == 0 || [(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v45];
        [v44 setActive:v46];
      }

      v41 = [v39 countByEnumeratingWithState:&v56 objects:v73 count:16];
    }

    while (v41);
  }

  [(UILayoutGuide *)self->_spanningLayoutGuide _setSystemConstraints:v39];
}

- (void)_updateConfigurationHistory
{
  v14 = [(_UILayoutArrangement *)self _configurationHistory];
  v3 = [(_UILayoutArrangement *)self _propertySource];
  if ([v14 isInLayoutArrangementUpdateSection])
  {
    [v14 setHasEstablishedBaseValues:1];
    [v14 setLayoutFillsCanvas:{objc_msgSend(v3, "layoutFillsCanvas")}];
  }

  else
  {
    [(NSMutableSet *)self->_incomingItems removeAllObjects];
    [(NSMutableSet *)self->_outgoingItems removeAllObjects];
    v4 = [v14 _newlyUnhiddenItems];
    [v4 removeAllObjects];

    v5 = [v14 _newlyHiddenItems];
    [v5 removeAllObjects];

    v6 = [v14 invalidBaselineConstraints];
    [v6 removeAllObjects];

    [v14 setAxis:{objc_msgSend(v3, "axis")}];
    [v14 setLayoutUsesCanvasMarginsWhenFilling:{objc_msgSend(v3, "layoutUsesCanvasMarginsWhenFilling")}];
    if (self->_unanimatedConfigurationTarget || (v7 = objc_loadWeakRetained(&self->_canvas), v8 = [v7 _isInAnimatedLayout], v7, (v8 & 1) == 0))
    {
      [(_UILayoutArrangement *)self _setUnanimatedConfigurationTarget:0];
      if (self->_awaitingAnimationLayoutPass)
      {
        v13 = [(_UILayoutArrangement *)self canvas];
        [v13 setNeedsLayout];
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_canvas);
      if (WeakRetained)
      {
        v10 = WeakRetained;
        v11 = objc_loadWeakRetained(&self->_canvas);
        v12 = [v11 _isInAnimatedLayout];

        if (v12)
        {
          self->_awaitingAnimationLayoutPass = 0;
        }
      }
    }

    if (!self->_awaitingAnimationLayoutPass)
    {
      [(NSMutableSet *)self->_newlyHiddenItems removeAllObjects];
      [(NSMutableSet *)self->_newlyUnhiddenItems removeAllObjects];
      [(NSMutableSet *)self->_invalidBaselineConstraints removeAllObjects];
    }
  }
}

- (int64_t)_dimensionAttributeForCurrentAxis
{
  if ([(_UILayoutArrangement *)self _axisForSpanningLayoutGuide])
  {
    return 8;
  }

  else
  {
    return 7;
  }
}

- (id)_spanningLayoutGuideCreateIfNecessary
{
  spanningLayoutGuide = self->_spanningLayoutGuide;
  if (!spanningLayoutGuide)
  {
    [(_UILayoutArrangement *)self _createSpanningLayoutGuide];
    [(_UILayoutArrangement *)self _updateSpanningLayoutGuideConstraintsIfNecessary];
    spanningLayoutGuide = self->_spanningLayoutGuide;
  }

  return spanningLayoutGuide;
}

- (void)_createSpanningLayoutGuide
{
  if ([(_UILayoutArrangement *)self _axisForSpanningLayoutGuide])
  {
    +[_UILayoutSpacer _verticalLayoutSpacer];
  }

  else
  {
    +[_UILayoutSpacer _horizontalLayoutSpacer];
  }
  v3 = ;
  spanningLayoutGuide = self->_spanningLayoutGuide;
  self->_spanningLayoutGuide = v3;

  v5 = [(_UILayoutArrangement *)self _identifierForSpanningLayoutGuide];
  [(UILayoutGuide *)self->_spanningLayoutGuide setIdentifier:v5];

  WeakRetained = objc_loadWeakRetained(&self->_canvas);
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_canvas);
    [v7 addLayoutGuide:self->_spanningLayoutGuide];

    v8 = self->_spanningLayoutGuide;

    [(UILayoutGuide *)v8 _setLockedToOwningView:1];
  }
}

- (BOOL)_spanningGuideConstraintsNeedUpdate
{
  v3 = [(_UILayoutArrangement *)self _propertySource];
  if ([(NSMutableSet *)self->_incomingItems count]|| [(NSMutableSet *)self->_outgoingItems count])
  {
    v4 = 1;
  }

  else
  {
    v6 = [v3 _newlyUnhiddenItems];
    if ([v6 count])
    {
      v4 = 1;
    }

    else
    {
      v7 = [v3 _newlyHiddenItems];
      if ([v7 count])
      {
        v4 = 1;
      }

      else
      {
        v8 = [(UILayoutGuide *)self->_spanningLayoutGuide _systemConstraints];
        if ([v8 count])
        {
          v9 = [(_UILAConfigurationHistory *)self->_configurationHistory axis];
          v4 = v9 != [v3 axis];
        }

        else
        {
          v4 = 1;
        }
      }
    }
  }

  return v4;
}

- (float)_spanningLayoutGuideFittingPriority
{
  v2 = [(_UILayoutArrangement *)self _allItemsHidden];
  result = 51.0;
  if (v2)
  {
    return 0.001;
  }

  return result;
}

- (BOOL)_allItemsHidden
{
  v3 = [(_UILayoutArrangement *)self items];
  if ([v3 count])
  {
    v4 = [(_UILayoutArrangement *)self items];
    v5 = [v4 count];
    v6 = [(_UILayoutArrangement *)self _hiddenItems];
    v7 = v5 == [v6 count];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_hasBaselineChangedNotificationRequirementDidChange
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(_UILayoutArrangement *)self _requiresNotificationForHasBaselinePropertyChanges])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [(_UILayoutArrangement *)self items];
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          v9 = [v8 _viewForLoweringBaselineLayoutAttribute:11];
          if ([v9 _isHasBaselinePropertyChangeable])
          {
            v10 = [MEMORY[0x1E696AD88] defaultCenter];
            [v10 addObserver:self selector:sel__hasBaselineChangedNotification_ name:@"_UIViewHasBaselinePropertyChanged" object:v9];
          }

          v11 = [v8 _viewForLoweringBaselineLayoutAttribute:12];
          v12 = v11;
          if (v11 != v9)
          {
            if ([v11 _isHasBaselinePropertyChangeable])
            {
              v13 = [MEMORY[0x1E696AD88] defaultCenter];
              [v13 addObserver:self selector:sel__hasBaselineChangedNotification_ name:@"_UIViewHasBaselinePropertyChanged" object:v12];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 removeObserver:self name:@"_UIViewHasBaselinePropertyChanged" object:0];
  }
}

- (void)setCanvas:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_canvas);

  if (WeakRetained != v4)
  {
    v6 = self;
    v7 = objc_loadWeakRetained(&self->_canvas);
    [(UIView *)v7 _removeLayoutArrangement:v6];

    [(UIView *)v4 _addLayoutArrangement:v6];
    objc_storeWeak(&self->_canvas, v4);
    [(_UILayoutArrangement *)v6 _clearAllConstraintsArrays];
    v8 = objc_loadWeakRetained(&self->_canvas);

    if (v8)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = v6->_mutableItems;
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          v13 = 0;
          do
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * v13);
            v15 = objc_loadWeakRetained(&self->_canvas);
            v16 = [v14 isDescendantOfView:{v15, v18}];

            if ((v16 & 1) == 0)
            {
              v17 = objc_loadWeakRetained(&self->_canvas);
              [v17 addSubview:v14];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v11);
      }
    }

    [(_UILayoutArrangement *)v6 _respondToChangesWithIncomingItem:0 outgoingItem:0 newlyHiddenItem:0 newlyUnhiddenItem:0, v18];
  }
}

- (void)_registerAnimationRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_canvas);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_canvas);
    [UIViewAnimationState _addViewForConstraintBasedAnimation:v4];

    self->_awaitingAnimationLayoutPass = 1;
  }
}

- (void)_trackChangesWithConfigBlock:(id)a3
{
  v6 = a3;
  [(_UILayoutArrangement *)self _createUnanimatedConfigurationTargetIfNecessary];
  WeakRetained = objc_loadWeakRetained(&self->_canvas);
  v5 = _UILAIsAnimatingOnCanvas(WeakRetained);

  if (v5)
  {
    [(_UILayoutArrangement *)self _registerAnimationRequest];
  }

  else
  {
    v6[2](v6, self->_unanimatedConfigurationTarget);
  }

  [(_UILayoutArrangement *)self _respondToChangesWithIncomingItem:0 outgoingItem:0 newlyHiddenItem:0 newlyUnhiddenItem:0];
}

- (void)_setAxis:(int64_t)a3 notify:(BOOL)a4
{
  if (self->_axis != a3)
  {
    v10[7] = v4;
    v10[8] = v5;
    v6 = a4;
    self->_axis = a3;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40___UILayoutArrangement__setAxis_notify___block_invoke;
    v10[3] = &__block_descriptor_40_e35_v16__0___UILAConfigurationHistory_8l;
    v10[4] = a3;
    [(_UILayoutArrangement *)self _trackChangesWithConfigBlock:v10];
    if (v6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_canvas);
      _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(WeakRetained);
    }

    v9 = objc_loadWeakRetained(&self->_canvas);
    [v9 _vendedBaselineViewParametersDidChange];
  }
}

- (void)_setLayoutFillsCanvas:(BOOL)a3 notify:(BOOL)a4
{
  if (self->_layoutFillsCanvas != a3)
  {
    v11 = v4;
    v12 = v5;
    v6 = a4;
    self->_layoutFillsCanvas = a3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53___UILayoutArrangement__setLayoutFillsCanvas_notify___block_invoke;
    v9[3] = &__block_descriptor_33_e35_v16__0___UILAConfigurationHistory_8l;
    v10 = a3;
    [(_UILayoutArrangement *)self _trackChangesWithConfigBlock:v9];
    if (v6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_canvas);
      _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(WeakRetained);
    }
  }
}

- (void)_setLayoutUsesCanvasMarginsWhenFilling:(BOOL)a3 notify:(BOOL)a4
{
  if (self->_layoutUsesCanvasMarginsWhenFilling != a3)
  {
    v11 = v4;
    v12 = v5;
    v6 = a4;
    self->_layoutUsesCanvasMarginsWhenFilling = a3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70___UILayoutArrangement__setLayoutUsesCanvasMarginsWhenFilling_notify___block_invoke;
    v9[3] = &__block_descriptor_33_e35_v16__0___UILAConfigurationHistory_8l;
    v10 = a3;
    [(_UILayoutArrangement *)self _trackChangesWithConfigBlock:v9];
    if (v6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_canvas);
      _UILANotifyCanvasesOfSizeInvalidationForItemIfNecessary(WeakRetained);
    }
  }
}

- (_UILayoutArrangement)initWithItems:(id)a3 onAxis:(int64_t)a4
{
  result = [(_UILayoutArrangement *)self initWithItems:a3];
  if (result)
  {
    result->_axis = a4;
  }

  return result;
}

- (_UILayoutArrangement)initWithItems:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = _UILayoutArrangement;
  v5 = [(_UILayoutArrangement *)&v31 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    mutableItems = v5->_mutableItems;
    v5->_mutableItems = v6;

    v8 = [(NSMutableArray *)v5->_mutableItems mutableCopy];
    incomingItems = v5->_incomingItems;
    v5->_incomingItems = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    outgoingItems = v5->_outgoingItems;
    v5->_outgoingItems = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    hiddenItems = v5->_hiddenItems;
    v5->_hiddenItems = v12;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v4;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        v18 = 0;
        do
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * v18);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }

          v21 = v20;
          [v21 setTranslatesAutoresizingMaskIntoConstraints:{0, v27}];
          if (([v21 _la_isVisible] & 1) == 0)
          {
            [(NSMutableSet *)v5->_hiddenItems addObject:v19];
          }

          [v21 _incrementHiddenManagedByLayoutArrangementCount];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v16);
    }

    v22 = [(NSMutableSet *)v5->_hiddenItems mutableCopy];
    newlyHiddenItems = v5->_newlyHiddenItems;
    v5->_newlyHiddenItems = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    newlyUnhiddenItems = v5->_newlyUnhiddenItems;
    v5->_newlyUnhiddenItems = v24;
  }

  return v5;
}

- (_UILayoutArrangement)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UILayoutArrangement init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (void)addItem:(id)a3
{
  v8 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v8;
  if (v8 && (isKindOfClass & 1) != 0)
  {
    mutableItems = self->_mutableItems;
    v7 = v8;
    [(_UILayoutArrangement *)self insertItem:v7 atIndex:[(NSMutableArray *)mutableItems count]];

    v5 = v8;
  }
}

- (void)insertItem:(id)a3 atIndex:(unint64_t)a4
{
  v24 = a3;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL || [(NSMutableArray *)self->_mutableItems count]< a4)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"_UILayoutArrangement.m" lineNumber:462 description:@"index for item in layout arrangement is out of bounds"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v24;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_canvas);
    if (WeakRetained)
    {
      v10 = WeakRetained;
      v11 = objc_loadWeakRetained(&self->_canvas);
      v12 = [v8 isDescendantOfView:v11];

      if ((v12 & 1) == 0)
      {
        p_mutableItems = &self->_mutableItems;
        [(NSMutableArray *)self->_mutableItems insertObject:v8 atIndex:a4];
        v19 = v8;
        v18 = v24;
        if (a4 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_18;
        }

        v20 = [(NSMutableArray *)*p_mutableItems indexOfObject:v19];
        v18 = v24;
        if (v20 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_18;
        }

        v15 = v20;
        v17 = 1;
        v18 = v24;
        goto LABEL_16;
      }
    }

    p_mutableItems = &self->_mutableItems;
    v14 = [(NSMutableArray *)self->_mutableItems indexOfObject:v8];
    if (v14 != a4)
    {
      v15 = v14;
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = v8;
        v17 = 0;
        v18 = v24;
        goto LABEL_17;
      }

      v18 = 0;
      v17 = 0;
LABEL_16:
      [(NSMutableArray *)*p_mutableItems removeObjectAtIndex:v15];
LABEL_17:
      [(NSMutableArray *)*p_mutableItems insertObject:v8 atIndex:((__PAIR128__(a4, [(NSMutableArray *)*p_mutableItems count]) - a4) >> 64)];
      if (!v17)
      {
LABEL_19:
        if ([v18 _la_isVisible])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

        [(_UILayoutArrangement *)self _respondToChangesWithIncomingItem:v18 outgoingItem:0 newlyHiddenItem:v22 newlyUnhiddenItem:0];

        goto LABEL_23;
      }

LABEL_18:
      v21 = objc_loadWeakRetained(&self->_canvas);
      [v21 addSubview:v8];

      goto LABEL_19;
    }
  }

LABEL_23:
}

- (void)removeItem:(id)a3
{
  v8 = a3;
  v4 = [(NSMutableArray *)self->_mutableItems indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 ? v8 : 0;
    v7 = v6;
    [(NSMutableArray *)self->_mutableItems removeObjectAtIndex:v5];
    if (v7)
    {
      [(_UILayoutArrangement *)self _respondToChangesWithIncomingItem:0 outgoingItem:v7 newlyHiddenItem:0 newlyUnhiddenItem:0];
    }
  }
}

- (void)_visibilityParameterChangedForItem:(id)a3
{
  v9 = a3;
  v4 = [(NSMutableArray *)self->_mutableItems indexOfObject:v9];
  v5 = v9;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v9 _la_isVisible];
    v7 = [(NSMutableSet *)self->_hiddenItems containsObject:v9];
    v8 = v7;
    if (v6 && v7)
    {
      [(NSMutableSet *)self->_hiddenItems removeObject:v9];
      [(_UILayoutArrangement *)self _respondToChangesWithIncomingItem:0 outgoingItem:0 newlyHiddenItem:0 newlyUnhiddenItem:v9];
    }

    v5 = v9;
    if (((v6 | v8) & 1) == 0)
    {
      [(NSMutableSet *)self->_hiddenItems addObject:v9];
      [(_UILayoutArrangement *)self _respondToChangesWithIncomingItem:0 outgoingItem:0 newlyHiddenItem:v9 newlyUnhiddenItem:0];
      v5 = v9;
    }
  }
}

- (BOOL)_itemWantsLayoutAsIfVisible:(id)a3
{
  v4 = a3;
  v5 = [(_UILayoutArrangement *)self _propertySource];
  v6 = [v4 _la_isVisible];
  v7 = 0;
  v8 = v6 ^ 1;
  if (((v6 ^ 1) & 1) == 0 && v5 != self)
  {
    v9 = [(_UILayoutArrangement *)v5 _newlyUnhiddenItems];
    if ([v9 containsObject:v4])
    {
      v7 = 0;
    }

    else
    {
      v10 = [(_UILayoutArrangement *)self _newlyUnhiddenItems];
      v7 = [v10 containsObject:v4];
    }
  }

  if (v5 == self)
  {
    v11 = 1;
  }

  else
  {
    v11 = v6;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = [(_UILayoutArrangement *)v5 _newlyHiddenItems];
    if ([v13 containsObject:v4])
    {
      v12 = 0;
    }

    else
    {
      v14 = [(_UILayoutArrangement *)self _newlyHiddenItems];
      v12 = [v14 containsObject:v4];
    }
  }

  if ((v8 | v7))
  {
    v15 = v8 & v12;
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)_invalidateBaselineConstraint:(id)a3
{
  v4 = a3;
  invalidBaselineConstraints = self->_invalidBaselineConstraints;
  v8 = v4;
  if (!invalidBaselineConstraints)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_invalidBaselineConstraints;
    self->_invalidBaselineConstraints = v6;

    v4 = v8;
    invalidBaselineConstraints = self->_invalidBaselineConstraints;
  }

  [(NSMutableSet *)invalidBaselineConstraints addObject:v4];
}

- (void)_hasBaselineChangedNotification:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(_UILayoutArrangement *)self _requiresNotificationForHasBaselinePropertyChanges])
  {
    if (os_variant_has_internal_diagnostics())
    {
      v15 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_19;
      }

      v16 = [(_UILayoutArrangement *)self canvas];
      v17 = [(_UILayoutArrangement *)self canvas];
      v18 = [v17 constraints];
      *buf = 138412546;
      v30 = v16;
      v31 = 2112;
      v32 = v18;
      _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Layout arrangement received undesired -_hasBaselineChangedNotification for stackView. This is a UIStackView bug.\n UIStackView = %@,\n cosntraints = %@", buf, 0x16u);
    }

    else
    {
      v14 = *(__UILogGetCategoryCachedImpl("Assert", &_hasBaselineChangedNotification____s_category) + 8);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_20:
        v6 = [MEMORY[0x1E696AD88] defaultCenter];
        [v6 removeObserver:self name:@"_UIViewHasBaselinePropertyChanged" object:0];
        goto LABEL_14;
      }

      v15 = v14;
      v16 = [(_UILayoutArrangement *)self canvas];
      v17 = [(_UILayoutArrangement *)self canvas];
      v18 = [v17 constraints];
      *buf = 138412546;
      v30 = v16;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Layout arrangement received undesired -_hasBaselineChangedNotification for stackView. This is a UIStackView bug.\n UIStackView = %@,\n cosntraints = %@", buf, 0x16u);
    }

LABEL_19:
    goto LABEL_20;
  }

  v5 = [v4 object];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = __56___UILayoutArrangement__hasBaselineChangedNotification___block_invoke;
  v25 = &unk_1E71292C8;
  v6 = v5;
  v26 = v6;
  v27 = self;
  v7 = [(_UILayoutArrangement *)self _baselineDependentConstraints];
  if ([v7 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v11 |= v24(v23, *(*(&v19 + 1) + 8 * i));
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v28 count:16];
      }

      while (v10);

      if ((v11 & 1) == 0)
      {
        goto LABEL_13;
      }

      v8 = [(_UILayoutArrangement *)self canvas];
      [v8 setNeedsUpdateConstraints];
    }
  }

LABEL_13:

LABEL_14:
}

- (void)_respondToChangesWithIncomingItem:(id)a3 outgoingItem:(id)a4 newlyHiddenItem:(id)a5 newlyUnhiddenItem:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(_UILayoutArrangement *)self _createUnanimatedConfigurationTargetIfNecessary];
  WeakRetained = objc_loadWeakRetained(&self->_canvas);
  v15 = _UILAIsAnimatingOnCanvas(WeakRetained);

  if (v11)
  {
    [v11 _decrementHiddenManagedByLayoutArrangementCount];
    [(NSMutableSet *)self->_outgoingItems addObject:v11];
    [(NSMutableSet *)self->_incomingItems removeObject:v11];
    [(NSMutableSet *)self->_hiddenItems removeObject:v11];
    v16 = [(_UILAConfigurationHistory *)self->_unanimatedConfigurationTarget _newlyHiddenItems];
    [v16 removeObject:v11];

    [(NSMutableSet *)self->_newlyHiddenItems removeObject:v11];
    if ([(_UILayoutArrangement *)self _requiresNotificationForHasBaselinePropertyChanges])
    {
      v17 = [v11 _viewForLoweringBaselineLayoutAttribute:11];
      if (v17)
      {
        v18 = [MEMORY[0x1E696AD88] defaultCenter];
        [v18 removeObserver:self name:@"_UIViewHasBaselinePropertyChanged" object:v17];
      }
    }
  }

  if (v10)
  {
    [v10 _incrementHiddenManagedByLayoutArrangementCount];
    [(NSMutableSet *)self->_incomingItems addObject:v10];
    [(NSMutableSet *)self->_outgoingItems removeObject:v10];
    if (([v10 _la_isVisible] & 1) == 0)
    {
      [(NSMutableSet *)self->_hiddenItems addObject:v10];
      v19 = [(_UILAConfigurationHistory *)self->_unanimatedConfigurationTarget _newlyHiddenItems];
      [v19 addObject:v10];

      [(NSMutableSet *)self->_newlyHiddenItems addObject:v10];
    }

    if ([(_UILayoutArrangement *)self _requiresNotificationForHasBaselinePropertyChanges])
    {
      v20 = [v10 _viewForLoweringBaselineLayoutAttribute:11];
      if ([v20 _isHasBaselinePropertyChangeable])
      {
        v21 = [MEMORY[0x1E696AD88] defaultCenter];
        [v21 addObserver:self selector:sel__hasBaselineChangedNotification_ name:@"_UIViewHasBaselinePropertyChanged" object:v20];
      }

      v22 = [v10 _viewForLoweringBaselineLayoutAttribute:12];
      v23 = v22;
      if (v22 != v20 && [v22 _isHasBaselinePropertyChangeable])
      {
        v24 = [MEMORY[0x1E696AD88] defaultCenter];
        [v24 addObserver:self selector:sel__hasBaselineChangedNotification_ name:@"_UIViewHasBaselinePropertyChanged" object:v23];
      }
    }
  }

  if (v12 | v13)
  {
    if (v15)
    {
      [(_UILayoutArrangement *)self _registerAnimationRequest];
    }

    if (v12)
    {
      [(NSMutableSet *)self->_newlyHiddenItems addObject:v12];
      [(NSMutableSet *)self->_newlyUnhiddenItems removeObject:v12];
      if (v15)
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __105___UILayoutArrangement__respondToChangesWithIncomingItem_outgoingItem_newlyHiddenItem_newlyUnhiddenItem___block_invoke;
        v31[3] = &unk_1E70F3590;
        v32 = v12;
        [UIViewAnimationState _addSystemPostAnimationAction:v31];

        goto LABEL_26;
      }

      v29 = [(_UILAConfigurationHistory *)self->_unanimatedConfigurationTarget _newlyHiddenItems];
      [v29 addObject:v12];

      v26 = [(_UILAConfigurationHistory *)self->_unanimatedConfigurationTarget _newlyUnhiddenItems];
      v27 = v26;
      v28 = v12;
    }

    else
    {
      [(NSMutableSet *)self->_newlyUnhiddenItems addObject:v13];
      [(NSMutableSet *)self->_newlyHiddenItems removeObject:v13];
      if (v15)
      {
        goto LABEL_26;
      }

      v25 = [(_UILAConfigurationHistory *)self->_unanimatedConfigurationTarget _newlyUnhiddenItems];
      [v25 addObject:v13];

      v26 = [(_UILAConfigurationHistory *)self->_unanimatedConfigurationTarget _newlyHiddenItems];
      v27 = v26;
      v28 = v13;
    }

    [v26 removeObject:v28];
  }

LABEL_26:
  v30 = objc_loadWeakRetained(&self->_canvas);
  [v30 setNeedsUpdateConstraints];
}

- (unint64_t)_indexOfItemForLocationAttribute:(int64_t)a3
{
  v4 = [(_UILayoutArrangement *)self _mutableItems];
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [v4 objectAtIndexedSubscript:v7];
      v9 = [(_UILayoutArrangement *)self _itemWantsLayoutAsIfVisible:v8];

      if (v9)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)_viewOrGuideForLocationAttribute:(int64_t)a3
{
  v5 = [(_UILayoutArrangement *)self _indexOfItemForLocationAttribute:?];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || ((-[NSMutableArray objectAtIndexedSubscript:](self->_mutableItems, "objectAtIndexedSubscript:", v5), v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? ([v6 _viewOrGuideForLocationAttribute:a3], v7 = objc_claimAutoreleasedReturnValue()) : (v7 = v6), v8 = v7, v6, !v8))
  {
    v8 = [(_UILayoutArrangement *)self _spanningLayoutGuideCreateIfNecessary];
  }

  return v8;
}

- (NSString)description
{
  v13.receiver = self;
  v13.super_class = _UILayoutArrangement;
  v3 = [(_UILayoutArrangement *)&v13 description];
  if (os_variant_has_internal_diagnostics())
  {
    WeakRetained = objc_loadWeakRetained(&self->_canvas);
    v6 = [v3 stringByAppendingFormat:@" stackView=%p", WeakRetained];

    if ([(NSMutableSet *)self->_incomingItems count])
    {
      v7 = [v6 stringByAppendingFormat:@" incomingItems=%p", self->_incomingItems];

      v6 = v7;
    }

    if ([(NSMutableSet *)self->_outgoingItems count])
    {
      v8 = [v6 stringByAppendingFormat:@" outgoingItems=%p", self->_outgoingItems];

      v6 = v8;
    }

    if ([(NSMutableSet *)self->_hiddenItems count])
    {
      v9 = [v6 stringByAppendingFormat:@" hiddenItems=%p", self->_hiddenItems];

      v6 = v9;
    }

    if ([(NSMutableSet *)self->_newlyHiddenItems count])
    {
      v10 = [v6 stringByAppendingFormat:@" newlyHiddenItems=%p", self->_newlyHiddenItems];

      v6 = v10;
    }

    if ([(NSMutableSet *)self->_newlyUnhiddenItems count])
    {
      v11 = [v6 stringByAppendingFormat:@" newlyUnhiddenItems=%p", self->_newlyUnhiddenItems];

      v6 = v11;
    }

    if ([(NSMutableSet *)self->_invalidBaselineConstraints count])
    {
      v12 = [v6 stringByAppendingFormat:@" invalidBaselineConstraints=%p", self->_invalidBaselineConstraints];

      v6 = v12;
    }

    if ([(NSMutableArray *)self->_canvasConnectionConstraints count])
    {
      v3 = [v6 stringByAppendingFormat:@" canvasConnectionConstraints=%p", self->_canvasConnectionConstraints];
    }

    else
    {
      v3 = v6;
    }
  }

  return v3;
}

@end