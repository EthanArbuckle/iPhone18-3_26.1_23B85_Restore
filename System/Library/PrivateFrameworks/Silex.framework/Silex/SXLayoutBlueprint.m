@interface SXLayoutBlueprint
- (CGSize)blueprintSize;
- (SXLayoutBlueprint)initWithLayoutOptions:(id)a3 componentBlueprintFactory:(id)a4 unitConverterFactory:(id)a5;
- (SXLayoutBlueprint)parentLayoutBlueprint;
- (SXLayoutBlueprint)rootLayoutBlueprint;
- (id)componentBlueprintForComponentIdentifier:(id)a3 includeChildren:(BOOL)a4;
- (id)componentsInRect:(CGRect)a3;
- (id)containerComponentIdentifierContainingComponentWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)layoutDescriptionForBlueprint:(id)a3 depth:(unint64_t)a4;
- (id)snapLinesIncludingChildren:(BOOL)a3;
- (void)endUpdates;
- (void)invalidateDependentsOfComponentNode:(id)a3 forDependencyResolver:(id)a4;
- (void)invalidateDependentsOfInvalidatedComponents;
- (void)invalidatePositionForComponentWithIdentifier:(id)a3;
- (void)invalidateSizeForComponentWithIdentifier:(id)a3;
- (void)invalidateSizeForComponentWithIdentifier:(id)a3 suggestedSize:(CGSize)a4;
- (void)invalidateState:(id)a3 forComponentWithIdentifier:(id)a4;
- (void)registerLayout:(id)a3 sizer:(id)a4 forComponent:(id)a5 atIndex:(unint64_t)a6;
- (void)startUpdatesForWidth:(double)a3;
- (void)storeComponentsFromBlueprint:(id)a3 inDictionary:(id)a4;
- (void)unregisterLayout:(id)a3;
- (void)updatePosition:(CGPoint)a3 forComponentWithIdentifier:(id)a4;
- (void)updateSize:(CGSize)a3 forComponentWithIdentifier:(id)a4;
@end

@implementation SXLayoutBlueprint

- (SXLayoutBlueprint)initWithLayoutOptions:(id)a3 componentBlueprintFactory:(id)a4 unitConverterFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = SXLayoutBlueprint;
  v12 = [(SXLayoutBlueprint *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_layoutOptions, a3);
    objc_storeStrong(&v13->_componentBlueprintFactory, a4);
    objc_storeStrong(&v13->_unitConverterFactory, a5);
    v14 = [MEMORY[0x1E695DF90] dictionary];
    blueprint = v13->_blueprint;
    v13->_blueprint = v14;

    v16 = [MEMORY[0x1E695DF70] array];
    orderedComponentIdentifiers = v13->_orderedComponentIdentifiers;
    v13->_orderedComponentIdentifiers = v16;

    v18 = [MEMORY[0x1E695DFA8] set];
    invalidatedComponents = v13->_invalidatedComponents;
    v13->_invalidatedComponents = v18;
  }

  return v13;
}

- (void)registerLayout:(id)a3 sizer:(id)a4 forComponent:(id)a5 atIndex:(unint64_t)a6
{
  componentBlueprintFactory = self->_componentBlueprintFactory;
  v11 = a5;
  v17 = [(SXComponentBlueprintFactory *)componentBlueprintFactory componentBlueprintForComponent:v11 layout:a3 sizer:a4];
  [v17 setParentLayoutBlueprint:self];
  blueprint = self->_blueprint;
  v13 = [v11 identifier];
  [(NSMutableDictionary *)blueprint setObject:v17 forKey:v13];

  v14 = [(NSMutableArray *)self->_orderedComponentIdentifiers count];
  orderedComponentIdentifiers = self->_orderedComponentIdentifiers;
  v16 = [v11 identifier];

  if (v14 <= a6)
  {
    [(NSMutableArray *)orderedComponentIdentifiers addObject:v16];
  }

  else
  {
    [(NSMutableArray *)orderedComponentIdentifiers insertObject:v16 atIndex:a6];
  }
}

- (void)unregisterLayout:(id)a3
{
  blueprint = self->_blueprint;
  v5 = a3;
  v6 = [v5 component];
  v7 = [v6 identifier];
  [(NSMutableDictionary *)blueprint removeObjectForKey:v7];

  orderedComponentIdentifiers = self->_orderedComponentIdentifiers;
  v10 = [v5 component];

  v9 = [v10 identifier];
  [(NSMutableArray *)orderedComponentIdentifiers removeObject:v9];
}

- (void)invalidatePositionForComponentWithIdentifier:(id)a3
{
  v6 = a3;
  v4 = [SXLayoutBlueprint componentBlueprintForComponentIdentifier:"componentBlueprintForComponentIdentifier:includeChildren:" includeChildren:?];
  v5 = v4;
  if (v4)
  {
    self->_isComplete = 0;
    [v4 invalidatePosition];
    [(NSMutableSet *)self->_invalidatedComponents addObject:v6];
  }
}

- (void)invalidateSizeForComponentWithIdentifier:(id)a3
{
  v4 = a3;
  v9 = [(SXLayoutBlueprint *)self componentBlueprintForComponentIdentifier:v4 includeChildren:1];
  v5 = [v9 componentState];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  [(SXLayoutBlueprint *)self invalidateSizeForComponentWithIdentifier:v4 suggestedSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
}

- (void)invalidateState:(id)a3 forComponentWithIdentifier:(id)a4
{
  v11 = a4;
  v6 = a3;
  v7 = [(SXLayoutBlueprint *)self componentBlueprintForComponentIdentifier:v11 includeChildren:1];
  v8 = [v7 componentState];
  [v7 setComponentState:v6];
  v9 = [v7 componentSizer];
  v10 = [v9 requiresSizeChangeForStateChange:v6 fromState:v8];

  if (v10)
  {
    [(SXLayoutBlueprint *)self invalidateSizeForComponentWithIdentifier:v11 suggestedSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  }
}

- (void)invalidateSizeForComponentWithIdentifier:(id)a3 suggestedSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v14 = a3;
  v7 = [SXLayoutBlueprint componentBlueprintForComponentIdentifier:"componentBlueprintForComponentIdentifier:includeChildren:" includeChildren:?];
  v8 = v7;
  if (v7)
  {
    self->_isComplete = 0;
    [v7 setSuggestedSizeAfterInvalidation:{width, height}];
    [v8 invalidateSize];
    v9 = [v8 parentLayoutBlueprint];
    v10 = [v9 parentLayoutBlueprint];

    if (v10)
    {
      v11 = [v8 component];
      v12 = [v11 identifier];
      v13 = [v10 containerComponentIdentifierContainingComponentWithIdentifier:v12];

      [v10 invalidateSizeForComponentWithIdentifier:v13];
    }

    [(NSMutableSet *)self->_invalidatedComponents addObject:v14];
  }
}

- (void)invalidateDependentsOfInvalidatedComponents
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableSet *)self->_invalidatedComponents copy];
  [(NSMutableSet *)self->_invalidatedComponents removeAllObjects];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(SXLayoutBlueprint *)self componentBlueprintForComponentIdentifier:v9, v16];
        v11 = [v10 parentLayoutBlueprint];
        v12 = [v11 dependencySolver];

        if (([v10 hasValidSize] & 1) == 0)
        {
          v13 = [(SXComponentDependencyResolver *)v12 componentNodeForComponentIdentifier:v9 andAttribute:2];
          [(SXLayoutBlueprint *)self invalidateDependentsOfComponentNode:v13 forDependencyResolver:v12];
        }

        if (([v10 hasValidPosition] & 1) == 0)
        {
          v14 = [(SXComponentDependencyResolver *)v12 componentNodeForComponentIdentifier:v9 andAttribute:1];
          [(SXLayoutBlueprint *)self invalidateDependentsOfComponentNode:v14 forDependencyResolver:v12];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v10 layoutBlueprint];
          [v15 invalidateDependentsOfInvalidatedComponents];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)invalidateDependentsOfComponentNode:(id)a3 forDependencyResolver:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
  v8 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = [(SXComponentDependencyResolver *)v6 componentNodesDependentOnComponentNode:v5, v9, v10, v11, v12, v13, v14, v5, self, v40];
  v16 = [v15 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v45;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v8 addObject:*(*(&v44 + 1) + 8 * i)];
      }

      v17 = [v15 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v17);
  }

  v20 = [v8 anyObject];
  if (v20)
  {
    v21 = v20;
    do
    {
      v22 = [(SXFullscreenCaption *)v21 text];
      v23 = [v39 componentBlueprintForComponentIdentifier:v22];

      if ([(SXFullscreenCaption *)v21 caption]== 1)
      {
        [v23 invalidatePosition];
      }

      else if ([(SXFullscreenCaption *)v21 caption]== 2)
      {
        [v23 invalidateSize];
      }

      [v7 addObject:v21];
      [v8 removeObject:v21];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v30 = [(SXComponentDependencyResolver *)v6 componentNodesDependentOnComponentNode:v21, v24, v25, v26, v27, v28, v29, v37, v39, 0];
      v31 = [v30 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v41;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v41 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v40 + 1) + 8 * j);
            if (([v7 containsObject:v35] & 1) == 0)
            {
              [v8 addObject:v35];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v32);
      }

      v36 = [v8 anyObject];

      v21 = v36;
    }

    while (v36);
  }
}

void __40__SXLayoutBlueprint_invalidateBlueprint__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 invalidateLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v4 layoutBlueprint];
    [v3 invalidateBlueprint];
  }
}

- (void)updateSize:(CGSize)a3 forComponentWithIdentifier:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = [(SXLayoutBlueprint *)self componentBlueprintForComponentIdentifier:a4];
  [v6 updateSize:{round(width), round(height)}];
}

- (void)updatePosition:(CGPoint)a3 forComponentWithIdentifier:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = [(SXLayoutBlueprint *)self componentBlueprintForComponentIdentifier:a4];
  [v6 updatePosition:{round(x), round(y)}];
}

- (id)componentBlueprintForComponentIdentifier:(id)a3 includeChildren:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(NSMutableDictionary *)self->_flattenedBlueprint count])
  {
    v7 = [(NSMutableDictionary *)self->_flattenedBlueprint objectForKey:v6];
  }

  else if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_blueprint objectForKey:v6];
    if (!v7 && v4)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = self->_orderedComponentIdentifiers;
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [(SXLayoutBlueprint *)self componentBlueprintForComponentIdentifier:*(*(&v16 + 1) + 8 * i) includeChildren:0, v16];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v14 layoutBlueprint];
              v7 = [v15 componentBlueprintForComponentIdentifier:v6 includeChildren:1];

              if (v7)
              {

                goto LABEL_21;
              }
            }
          }

          v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v7 = 0;
LABEL_21:
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)containerComponentIdentifierContainingComponentWithIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_orderedComponentIdentifiers;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(SXLayoutBlueprint *)self componentBlueprintForComponentIdentifier:*(*(&v18 + 1) + 8 * i), v16];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [v9 layoutBlueprint];
          v11 = [v10 componentIdentifiers];
          v12 = [v11 containsObject:v16];

          if (v12)
          {
            v14 = [v9 component];
            v13 = [v14 identifier];

            goto LABEL_13;
          }
        }
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (id)componentsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v72 = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E695DFA8] set];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v9 = self->_orderedComponentIdentifiers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v67;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v67 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(SXLayoutBlueprint *)self componentBlueprintForComponentIdentifier:*(*(&v66 + 1) + 8 * i)];
        [v8 addObject:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E695DFA8] set];
  rect.size = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v16 = [v8 copy];
  v17 = [v16 countByEnumeratingWithState:&rect.size objects:v70 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v63;
    v20 = 0x1E84FC000uLL;
    v59 = x;
    v60 = y;
    v57 = v15;
    v58 = v8;
    do
    {
      v21 = 0;
      do
      {
        if (*v63 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*&rect.size.height + 8 * v21);
        [v22 frame];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v74.origin.x = x;
        v74.origin.y = y;
        v74.size.width = width;
        v74.size.height = height;
        if (CGRectGetWidth(v74) <= 0.0 || (v75.origin.x = v24, v75.origin.y = v26, v75.size.width = v28, v75.size.height = v30, v82.origin.x = x, v82.origin.y = y, v82.size.width = width, v82.size.height = height, !CGRectIntersectsRect(v75, v82)))
        {
          [v15 addObject:v22];
          goto LABEL_21;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_21;
        }

        v31 = v22;
        [v31 frame];
        v33 = v32;
        v61 = v34;
        rect.origin.x = v32;
        v36 = v35;
        v38 = v37;
        v76.origin.x = x;
        v76.origin.y = y;
        v76.size.width = width;
        v76.size.height = height;
        MinX = CGRectGetMinX(v76);
        v77.origin.x = v33;
        v77.origin.y = v36;
        v77.size.width = v38;
        v77.size.height = v61;
        rect.origin.y = MinX - CGRectGetMinX(v77);
        v78.origin.x = x;
        v78.origin.y = y;
        v78.size.width = width;
        v78.size.height = height;
        MinY = CGRectGetMinY(v78);
        v79.origin.x = rect.origin.x;
        v79.origin.y = v36;
        v79.size.width = v38;
        v79.size.height = v61;
        v41 = MinY - CGRectGetMinY(v79);
        v80.origin.x = x;
        v80.origin.y = y;
        v80.size.width = width;
        v80.size.height = height;
        v42 = CGRectGetWidth(v80);
        v81.origin.x = x;
        v81.origin.y = y;
        v81.size.width = width;
        v81.size.height = height;
        v43 = CGRectGetHeight(v81);
        v44 = [v31 layoutBlueprint];
        v45 = [v44 componentsInRect:{rect.origin.y, v41, v42, v43}];
        [v8 unionSet:v45];

        v46 = [v31 component];
        v47 = objc_opt_class();
        if (v47 == objc_opt_class())
        {
        }

        else
        {
          v48 = [v31 component];
          v49 = v16;
          v50 = objc_opt_class();
          v51 = v20;
          v52 = v19;
          v53 = objc_opt_class();

          v54 = v50 == v53;
          v19 = v52;
          v20 = v51;
          v16 = v49;
          v15 = v57;
          v8 = v58;
          if (!v54)
          {
            goto LABEL_25;
          }
        }

        [v15 addObject:v31];
LABEL_25:

        x = v59;
        y = v60;
LABEL_21:
        ++v21;
      }

      while (v18 != v21);
      v55 = [v16 countByEnumeratingWithState:&rect.size objects:v70 count:16];
      v18 = v55;
    }

    while (v55);
  }

  [v8 minusSet:v15];

  return v8;
}

- (void)startUpdatesForWidth:(double)a3
{
  self->_updating = 1;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  flattenedBlueprint = self->_flattenedBlueprint;
  self->_flattenedBlueprint = v5;

  self->_blueprintSize.width = a3;
}

- (void)endUpdates
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  blueprint = self->_blueprint;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__SXLayoutBlueprint_endUpdates__block_invoke;
  v4[3] = &unk_1E8500930;
  v4[4] = self;
  v4[5] = &v5;
  v4[6] = &v9;
  [(NSMutableDictionary *)blueprint enumerateKeysAndObjectsUsingBlock:v4];
  self->_isComplete = *(v6 + 24);
  *&self->_blueprintSize.height = v10[3];
  [(SXLayoutBlueprint *)self storeComponentsFromBlueprint:self inDictionary:self->_flattenedBlueprint];
  self->_updating = 0;
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
}

void __31__SXLayoutBlueprint_endUpdates__block_invoke(void *a1, uint64_t a2, void *a3)
{
  v20 = a3;
  if ([v20 hasValidLayout])
  {
    [v20 frame];
    MaxY = CGRectGetMaxY(v22);
    v5 = [v20 component];
    v6 = [v5 anchor];

    if ([v6 originAnchorPosition])
    {
      v7 = [v6 originAnchorPosition];
    }

    else
    {
      v7 = [v6 targetAnchorPosition];
    }

    v8 = v7;
    [v20 frame];
    if (CGRectGetHeight(v23) > 0.0 && (v8 != 2 || !v6))
    {
      v9 = *(a1[4] + 40);
      [v20 frame];
      v10 = [v9 createUnitConverterWithComponentWidth:*(a1[4] + 24) parentWidth:CGRectGetWidth(v24) layoutOptions:*(a1[4] + 96)];
      v11 = [v20 componentLayout];
      v12 = [v11 margin];
      v13 = [v12 bottom];
      [v10 convertValueToPoints:{v13, v14}];
      MaxY = MaxY + v15;
    }

    v16 = *(a1[6] + 8);
    v17 = *(v16 + 24);
    if (v17 < MaxY)
    {
      v17 = MaxY;
    }

    *(v16 + 24) = v17;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v20 layoutBlueprint];
    v19 = [v18 isComplete];

    if ((v19 & 1) == 0)
    {
      *(*(a1[5] + 8) + 24) = 0;
    }
  }
}

- (void)storeComponentsFromBlueprint:(id)a3 inDictionary:(id)a4
{
  v6 = a4;
  blueprint = self->_blueprint;
  v8 = a3;
  [v6 addEntriesFromDictionary:blueprint];
  v9 = [v8 blueprint];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__SXLayoutBlueprint_storeComponentsFromBlueprint_inDictionary___block_invoke;
  v11[3] = &unk_1E8500958;
  v12 = v6;
  v13 = self;
  v10 = v6;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
}

void __63__SXLayoutBlueprint_storeComponentsFromBlueprint_inDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  [*(a1 + 32) setObject:v7 forKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 40);
    v6 = [v7 layoutBlueprint];
    [v5 storeComponentsFromBlueprint:v6 inDictionary:*(a1 + 32)];
  }
}

- (id)snapLinesIncludingChildren:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v28 = *MEMORY[0x1E69E9840];
  v21 = [(NSOrderedSet *)self->_snapLines mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v4->_orderedComponentIdentifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    v9 = 0x1E84FC000uLL;
    v22 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [(SXLayoutBlueprint *)v4 componentBlueprintForComponentIdentifier:*(*(&v23 + 1) + 8 * i), v21];
        if (v3)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v3;
            v13 = v5;
            v14 = v9;
            v15 = v11;
            v16 = [v15 layoutBlueprint];
            v17 = [v16 snapLines];

            if (v17)
            {
              v18 = [v15 layoutBlueprint];
              v19 = [v18 snapLinesIncludingChildren:1];
              [v21 unionOrderedSet:v19];
            }

            v9 = v14;
            v5 = v13;
            v3 = v12;
            v4 = v22;
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  *(v4 + 8) = self->_isComplete;
  objc_storeStrong((v4 + 24), self->_layoutOptions);
  WeakRetained = objc_loadWeakRetained(&self->_parentLayoutBlueprint);
  objc_storeWeak((v4 + 16), WeakRetained);

  v6 = [(NSMutableArray *)self->_orderedComponentIdentifiers mutableCopy];
  v7 = *(v4 + 64);
  *(v4 + 64) = v6;

  *(v4 + 9) = self->_updating;
  *(v4 + 96) = self->_blueprintSize;
  v8 = [(NSMutableSet *)self->_invalidatedComponents mutableCopy];
  v9 = *(v4 + 72);
  *(v4 + 72) = v8;

  objc_storeStrong((v4 + 80), self->_dependencySolver);
  objc_storeStrong((v4 + 88), self->_snapLines);
  objc_storeStrong((v4 + 32), self->_componentBlueprintFactory);
  objc_storeStrong((v4 + 40), self->_unitConverterFactory);
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_blueprint, "count")}];
  blueprint = self->_blueprint;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __34__SXLayoutBlueprint_copyWithZone___block_invoke;
  v19[3] = &unk_1E8500980;
  v12 = v4;
  v20 = v12;
  v13 = v10;
  v21 = v13;
  [(NSMutableDictionary *)blueprint enumerateKeysAndObjectsUsingBlock:v19];
  v14 = v12[6];
  v12[6] = v13;
  v15 = v13;

  v16 = v21;
  v17 = v12;

  return v17;
}

void __34__SXLayoutBlueprint_copyWithZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  [v6 setParentLayoutBlueprint:*(a1 + 32)];
  [*(a1 + 40) setObject:v6 forKey:v5];
}

- (SXLayoutBlueprint)rootLayoutBlueprint
{
  WeakRetained = objc_loadWeakRetained(&self->_parentLayoutBlueprint);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_parentLayoutBlueprint);
    v5 = [v4 rootLayoutBlueprint];
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; isComplete: %d", -[SXLayoutBlueprint isComplete](self, "isComplete")];
  v4 = [(SXLayoutBlueprint *)self componentIdentifiers];
  [v3 appendFormat:@"; number of components: %lu", objc_msgSend(v4, "count")];

  v5 = [(SXLayoutBlueprint *)self layoutOptions];
  [v3 appendFormat:@"; options: %@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = [(SXLayoutBlueprint *)self description];
  v5 = [(SXLayoutBlueprint *)self layoutDescriptionForBlueprint:self depth:0];
  v6 = [v3 initWithFormat:@"%@\n%@", v4, v5];

  return v6;
}

- (id)layoutDescriptionForBlueprint:(id)a3 depth:(unint64_t)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AD60] string];
  v23 = a4;
  for (i = 2 * a4; i; --i)
  {
    [v6 appendString:@" "];
  }

  v25 = [MEMORY[0x1E696AD60] string];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [v5 blueprint];
  v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    v11 = @"%@%@\n";
    v12 = 0x1E84FC000uLL;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [v5 componentBlueprintForComponentIdentifier:*(*(&v26 + 1) + 8 * j)];
        [v25 appendFormat:v11, v6, v14];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 layoutBlueprint];
          [(SXLayoutBlueprint *)self layoutDescriptionForBlueprint:v15 depth:v23 + 1];
          v16 = v6;
          v17 = v5;
          v18 = v11;
          v20 = v19 = v12;
          [v25 appendString:v20];

          v12 = v19;
          v11 = v18;
          v5 = v17;
          v6 = v16;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  return v25;
}

- (SXLayoutBlueprint)parentLayoutBlueprint
{
  WeakRetained = objc_loadWeakRetained(&self->_parentLayoutBlueprint);

  return WeakRetained;
}

- (CGSize)blueprintSize
{
  width = self->_blueprintSize.width;
  height = self->_blueprintSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end