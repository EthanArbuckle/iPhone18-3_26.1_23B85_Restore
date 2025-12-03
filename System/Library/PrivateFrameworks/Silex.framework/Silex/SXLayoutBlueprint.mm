@interface SXLayoutBlueprint
- (CGSize)blueprintSize;
- (SXLayoutBlueprint)initWithLayoutOptions:(id)options componentBlueprintFactory:(id)factory unitConverterFactory:(id)converterFactory;
- (SXLayoutBlueprint)parentLayoutBlueprint;
- (SXLayoutBlueprint)rootLayoutBlueprint;
- (id)componentBlueprintForComponentIdentifier:(id)identifier includeChildren:(BOOL)children;
- (id)componentsInRect:(CGRect)rect;
- (id)containerComponentIdentifierContainingComponentWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)layoutDescriptionForBlueprint:(id)blueprint depth:(unint64_t)depth;
- (id)snapLinesIncludingChildren:(BOOL)children;
- (void)endUpdates;
- (void)invalidateDependentsOfComponentNode:(id)node forDependencyResolver:(id)resolver;
- (void)invalidateDependentsOfInvalidatedComponents;
- (void)invalidatePositionForComponentWithIdentifier:(id)identifier;
- (void)invalidateSizeForComponentWithIdentifier:(id)identifier;
- (void)invalidateSizeForComponentWithIdentifier:(id)identifier suggestedSize:(CGSize)size;
- (void)invalidateState:(id)state forComponentWithIdentifier:(id)identifier;
- (void)registerLayout:(id)layout sizer:(id)sizer forComponent:(id)component atIndex:(unint64_t)index;
- (void)startUpdatesForWidth:(double)width;
- (void)storeComponentsFromBlueprint:(id)blueprint inDictionary:(id)dictionary;
- (void)unregisterLayout:(id)layout;
- (void)updatePosition:(CGPoint)position forComponentWithIdentifier:(id)identifier;
- (void)updateSize:(CGSize)size forComponentWithIdentifier:(id)identifier;
@end

@implementation SXLayoutBlueprint

- (SXLayoutBlueprint)initWithLayoutOptions:(id)options componentBlueprintFactory:(id)factory unitConverterFactory:(id)converterFactory
{
  optionsCopy = options;
  factoryCopy = factory;
  converterFactoryCopy = converterFactory;
  v21.receiver = self;
  v21.super_class = SXLayoutBlueprint;
  v12 = [(SXLayoutBlueprint *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_layoutOptions, options);
    objc_storeStrong(&v13->_componentBlueprintFactory, factory);
    objc_storeStrong(&v13->_unitConverterFactory, converterFactory);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    blueprint = v13->_blueprint;
    v13->_blueprint = dictionary;

    array = [MEMORY[0x1E695DF70] array];
    orderedComponentIdentifiers = v13->_orderedComponentIdentifiers;
    v13->_orderedComponentIdentifiers = array;

    v18 = [MEMORY[0x1E695DFA8] set];
    invalidatedComponents = v13->_invalidatedComponents;
    v13->_invalidatedComponents = v18;
  }

  return v13;
}

- (void)registerLayout:(id)layout sizer:(id)sizer forComponent:(id)component atIndex:(unint64_t)index
{
  componentBlueprintFactory = self->_componentBlueprintFactory;
  componentCopy = component;
  v17 = [(SXComponentBlueprintFactory *)componentBlueprintFactory componentBlueprintForComponent:componentCopy layout:layout sizer:sizer];
  [v17 setParentLayoutBlueprint:self];
  blueprint = self->_blueprint;
  identifier = [componentCopy identifier];
  [(NSMutableDictionary *)blueprint setObject:v17 forKey:identifier];

  v14 = [(NSMutableArray *)self->_orderedComponentIdentifiers count];
  orderedComponentIdentifiers = self->_orderedComponentIdentifiers;
  identifier2 = [componentCopy identifier];

  if (v14 <= index)
  {
    [(NSMutableArray *)orderedComponentIdentifiers addObject:identifier2];
  }

  else
  {
    [(NSMutableArray *)orderedComponentIdentifiers insertObject:identifier2 atIndex:index];
  }
}

- (void)unregisterLayout:(id)layout
{
  blueprint = self->_blueprint;
  layoutCopy = layout;
  component = [layoutCopy component];
  identifier = [component identifier];
  [(NSMutableDictionary *)blueprint removeObjectForKey:identifier];

  orderedComponentIdentifiers = self->_orderedComponentIdentifiers;
  component2 = [layoutCopy component];

  identifier2 = [component2 identifier];
  [(NSMutableArray *)orderedComponentIdentifiers removeObject:identifier2];
}

- (void)invalidatePositionForComponentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [SXLayoutBlueprint componentBlueprintForComponentIdentifier:"componentBlueprintForComponentIdentifier:includeChildren:" includeChildren:?];
  v5 = v4;
  if (v4)
  {
    self->_isComplete = 0;
    [v4 invalidatePosition];
    [(NSMutableSet *)self->_invalidatedComponents addObject:identifierCopy];
  }
}

- (void)invalidateSizeForComponentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = [(SXLayoutBlueprint *)self componentBlueprintForComponentIdentifier:identifierCopy includeChildren:1];
  componentState = [v9 componentState];
  v6 = componentState;
  if (componentState)
  {
    v7 = componentState;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  [(SXLayoutBlueprint *)self invalidateSizeForComponentWithIdentifier:identifierCopy suggestedSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
}

- (void)invalidateState:(id)state forComponentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stateCopy = state;
  v7 = [(SXLayoutBlueprint *)self componentBlueprintForComponentIdentifier:identifierCopy includeChildren:1];
  componentState = [v7 componentState];
  [v7 setComponentState:stateCopy];
  componentSizer = [v7 componentSizer];
  v10 = [componentSizer requiresSizeChangeForStateChange:stateCopy fromState:componentState];

  if (v10)
  {
    [(SXLayoutBlueprint *)self invalidateSizeForComponentWithIdentifier:identifierCopy suggestedSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  }
}

- (void)invalidateSizeForComponentWithIdentifier:(id)identifier suggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  v7 = [SXLayoutBlueprint componentBlueprintForComponentIdentifier:"componentBlueprintForComponentIdentifier:includeChildren:" includeChildren:?];
  v8 = v7;
  if (v7)
  {
    self->_isComplete = 0;
    [v7 setSuggestedSizeAfterInvalidation:{width, height}];
    [v8 invalidateSize];
    parentLayoutBlueprint = [v8 parentLayoutBlueprint];
    v9ParentLayoutBlueprint = [parentLayoutBlueprint parentLayoutBlueprint];

    if (v9ParentLayoutBlueprint)
    {
      component = [v8 component];
      identifier = [component identifier];
      v13 = [v9ParentLayoutBlueprint containerComponentIdentifierContainingComponentWithIdentifier:identifier];

      [v9ParentLayoutBlueprint invalidateSizeForComponentWithIdentifier:v13];
    }

    [(NSMutableSet *)self->_invalidatedComponents addObject:identifierCopy];
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
        parentLayoutBlueprint = [v10 parentLayoutBlueprint];
        dependencySolver = [parentLayoutBlueprint dependencySolver];

        if (([v10 hasValidSize] & 1) == 0)
        {
          v13 = [(SXComponentDependencyResolver *)dependencySolver componentNodeForComponentIdentifier:v9 andAttribute:2];
          [(SXLayoutBlueprint *)self invalidateDependentsOfComponentNode:v13 forDependencyResolver:dependencySolver];
        }

        if (([v10 hasValidPosition] & 1) == 0)
        {
          v14 = [(SXComponentDependencyResolver *)dependencySolver componentNodeForComponentIdentifier:v9 andAttribute:1];
          [(SXLayoutBlueprint *)self invalidateDependentsOfComponentNode:v14 forDependencyResolver:dependencySolver];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          layoutBlueprint = [v10 layoutBlueprint];
          [layoutBlueprint invalidateDependentsOfInvalidatedComponents];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)invalidateDependentsOfComponentNode:(id)node forDependencyResolver:(id)resolver
{
  v50 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  resolverCopy = resolver;
  v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
  v8 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = [(SXComponentDependencyResolver *)resolverCopy componentNodesDependentOnComponentNode:nodeCopy, v9, v10, v11, v12, v13, v14, nodeCopy, self, v40];
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

  anyObject = [v8 anyObject];
  if (anyObject)
  {
    v21 = anyObject;
    do
    {
      text = [(SXFullscreenCaption *)v21 text];
      v23 = [v39 componentBlueprintForComponentIdentifier:text];

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
      v30 = [(SXComponentDependencyResolver *)resolverCopy componentNodesDependentOnComponentNode:v21, v24, v25, v26, v27, v28, v29, v37, v39, 0];
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

      anyObject2 = [v8 anyObject];

      v21 = anyObject2;
    }

    while (anyObject2);
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

- (void)updateSize:(CGSize)size forComponentWithIdentifier:(id)identifier
{
  height = size.height;
  width = size.width;
  v6 = [(SXLayoutBlueprint *)self componentBlueprintForComponentIdentifier:identifier];
  [v6 updateSize:{round(width), round(height)}];
}

- (void)updatePosition:(CGPoint)position forComponentWithIdentifier:(id)identifier
{
  y = position.y;
  x = position.x;
  v6 = [(SXLayoutBlueprint *)self componentBlueprintForComponentIdentifier:identifier];
  [v6 updatePosition:{round(x), round(y)}];
}

- (id)componentBlueprintForComponentIdentifier:(id)identifier includeChildren:(BOOL)children
{
  childrenCopy = children;
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([(NSMutableDictionary *)self->_flattenedBlueprint count])
  {
    v7 = [(NSMutableDictionary *)self->_flattenedBlueprint objectForKey:identifierCopy];
  }

  else if (identifierCopy)
  {
    v7 = [(NSMutableDictionary *)self->_blueprint objectForKey:identifierCopy];
    if (!v7 && childrenCopy)
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
              layoutBlueprint = [v14 layoutBlueprint];
              v7 = [layoutBlueprint componentBlueprintForComponentIdentifier:identifierCopy includeChildren:1];

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

- (id)containerComponentIdentifierContainingComponentWithIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
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

        identifierCopy = [(SXLayoutBlueprint *)self componentBlueprintForComponentIdentifier:*(*(&v18 + 1) + 8 * i), identifierCopy];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = identifierCopy;
          layoutBlueprint = [v9 layoutBlueprint];
          componentIdentifiers = [layoutBlueprint componentIdentifiers];
          v12 = [componentIdentifiers containsObject:identifierCopy];

          if (v12)
          {
            component = [v9 component];
            identifier = [component identifier];

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

  identifier = 0;
LABEL_13:

  return identifier;
}

- (id)componentsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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
        layoutBlueprint = [v31 layoutBlueprint];
        v45 = [layoutBlueprint componentsInRect:{rect.origin.y, v41, v42, v43}];
        [v8 unionSet:v45];

        component = [v31 component];
        v47 = objc_opt_class();
        if (v47 == objc_opt_class())
        {
        }

        else
        {
          component2 = [v31 component];
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

- (void)startUpdatesForWidth:(double)width
{
  self->_updating = 1;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  flattenedBlueprint = self->_flattenedBlueprint;
  self->_flattenedBlueprint = dictionary;

  self->_blueprintSize.width = width;
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

- (void)storeComponentsFromBlueprint:(id)blueprint inDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  blueprint = self->_blueprint;
  blueprintCopy = blueprint;
  [dictionaryCopy addEntriesFromDictionary:blueprint];
  blueprint = [blueprintCopy blueprint];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__SXLayoutBlueprint_storeComponentsFromBlueprint_inDictionary___block_invoke;
  v11[3] = &unk_1E8500958;
  v12 = dictionaryCopy;
  selfCopy = self;
  v10 = dictionaryCopy;
  [blueprint enumerateKeysAndObjectsUsingBlock:v11];
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

- (id)snapLinesIncludingChildren:(BOOL)children
{
  childrenCopy = children;
  selfCopy = self;
  v28 = *MEMORY[0x1E69E9840];
  v21 = [(NSOrderedSet *)self->_snapLines mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = selfCopy->_orderedComponentIdentifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    v9 = 0x1E84FC000uLL;
    v22 = selfCopy;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [(SXLayoutBlueprint *)selfCopy componentBlueprintForComponentIdentifier:*(*(&v23 + 1) + 8 * i), v21];
        if (childrenCopy)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = childrenCopy;
            v13 = v5;
            v14 = v9;
            v15 = v11;
            layoutBlueprint = [v15 layoutBlueprint];
            snapLines = [layoutBlueprint snapLines];

            if (snapLines)
            {
              layoutBlueprint2 = [v15 layoutBlueprint];
              v19 = [layoutBlueprint2 snapLinesIncludingChildren:1];
              [v21 unionOrderedSet:v19];
            }

            v9 = v14;
            v5 = v13;
            childrenCopy = v12;
            selfCopy = v22;
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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
    selfCopy = [v4 rootLayoutBlueprint];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; isComplete: %d", -[SXLayoutBlueprint isComplete](self, "isComplete")];
  componentIdentifiers = [(SXLayoutBlueprint *)self componentIdentifiers];
  [v3 appendFormat:@"; number of components: %lu", objc_msgSend(componentIdentifiers, "count")];

  layoutOptions = [(SXLayoutBlueprint *)self layoutOptions];
  [v3 appendFormat:@"; options: %@", layoutOptions];

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

- (id)layoutDescriptionForBlueprint:(id)blueprint depth:(unint64_t)depth
{
  v31 = *MEMORY[0x1E69E9840];
  blueprintCopy = blueprint;
  string = [MEMORY[0x1E696AD60] string];
  depthCopy = depth;
  for (i = 2 * depth; i; --i)
  {
    [string appendString:@" "];
  }

  string2 = [MEMORY[0x1E696AD60] string];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [blueprintCopy blueprint];
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

        v14 = [blueprintCopy componentBlueprintForComponentIdentifier:*(*(&v26 + 1) + 8 * j)];
        [string2 appendFormat:v11, string, v14];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          layoutBlueprint = [v14 layoutBlueprint];
          [(SXLayoutBlueprint *)self layoutDescriptionForBlueprint:layoutBlueprint depth:depthCopy + 1];
          v16 = string;
          v17 = blueprintCopy;
          v18 = v11;
          v20 = v19 = v12;
          [string2 appendString:v20];

          v12 = v19;
          v11 = v18;
          blueprintCopy = v17;
          string = v16;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  return string2;
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