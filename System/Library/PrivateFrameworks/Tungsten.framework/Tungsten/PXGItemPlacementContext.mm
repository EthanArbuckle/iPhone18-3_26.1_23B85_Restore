@interface PXGItemPlacementContext
- (CGRect)_convertRect:(CGRect)rect fromCoordinateSpace:(id)space toLayout:(id)layout;
- (CGRect)_convertRect:(CGRect)rect fromLayout:(id)layout toCoordinateSpace:(id)space;
- (NSString)diagnosticDescription;
- (PXGItemPlacementContext)init;
- (PXGItemPlacementContext)initWithOriginOfLayout:(id)layout atPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (id)_adjustedPreferredPlacementForPlacement:(id)placement;
- (void)_adjustPreferredPlacementInSourceWithIdentifier:(id)identifier configuration:(id)configuration;
- (void)_registerOriginalPlacement:(id)placement forSourceIdentifiers:(id)identifiers;
@end

@implementation PXGItemPlacementContext

- (id)_adjustedPreferredPlacementForPlacement:(id)placement
{
  adjustedPreferredPlacementsByPlacementUUID = self->_adjustedPreferredPlacementsByPlacementUUID;
  uuid = [placement uuid];
  v5 = [(NSMutableDictionary *)adjustedPreferredPlacementsByPlacementUUID objectForKeyedSubscript:uuid];

  return v5;
}

- (void)_adjustPreferredPlacementInSourceWithIdentifier:(id)identifier configuration:(id)configuration
{
  configurationCopy = configuration;
  v7 = [(NSMutableDictionary *)self->_placementUUIDsBySourceIdentifier objectForKeyedSubscript:identifier];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_adjustedPreferredPlacementsByPlacementUUID objectForKeyedSubscript:v7];
    if (!v8)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGItemPlacement.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"placement != nil"}];
    }

    v9 = [v8 copyWithConfiguration:configurationCopy];
    [(NSMutableDictionary *)self->_adjustedPreferredPlacementsByPlacementUUID setObject:v9 forKeyedSubscript:v7];
  }
}

- (void)_registerOriginalPlacement:(id)placement forSourceIdentifiers:(id)identifiers
{
  v25 = *MEMORY[0x277D85DE8];
  placementCopy = placement;
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    uuid = [placementCopy uuid];
    if (!self->_placementUUIDsBySourceIdentifier)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      placementUUIDsBySourceIdentifier = self->_placementUUIDsBySourceIdentifier;
      self->_placementUUIDsBySourceIdentifier = v9;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = identifiersCopy;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(NSMutableDictionary *)self->_placementUUIDsBySourceIdentifier setObject:uuid forKeyedSubscript:*(*(&v20 + 1) + 8 * v15++), v20];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    adjustedPreferredPlacementsByPlacementUUID = self->_adjustedPreferredPlacementsByPlacementUUID;
    if (!adjustedPreferredPlacementsByPlacementUUID)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v18 = self->_adjustedPreferredPlacementsByPlacementUUID;
      self->_adjustedPreferredPlacementsByPlacementUUID = v17;

      adjustedPreferredPlacementsByPlacementUUID = self->_adjustedPreferredPlacementsByPlacementUUID;
    }

    v19 = [(NSMutableDictionary *)adjustedPreferredPlacementsByPlacementUUID objectForKeyedSubscript:uuid, v20];

    if (!v19)
    {
      [(NSMutableDictionary *)self->_adjustedPreferredPlacementsByPlacementUUID setObject:placementCopy forKeyedSubscript:uuid];
    }
  }
}

- (CGRect)_convertRect:(CGRect)rect fromCoordinateSpace:(id)space toLayout:(id)layout
{
  spaceCopy = space;
  layoutCopy = layout;
  WeakRetained = objc_loadWeakRetained(&self->_referenceCoordinateSpace);
  if (WeakRetained)
  {
    PXRectConvertFromCoordinateSpaceToCoordinateSpace();
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = *(MEMORY[0x277CBF398] + 16);
    v13 = *(MEMORY[0x277CBF398] + 24);
  }

  PXPointSubtract();
  v15 = v14;
  v17 = v16;
  rootLayout6 = self->_referenceLayout;
  rootLayout = [(PXGLayout *)self->_referenceLayout rootLayout];
  coordinateSpace = [rootLayout coordinateSpace];
  rootLayout2 = [layoutCopy rootLayout];
  coordinateSpace2 = [rootLayout2 coordinateSpace];

  if (coordinateSpace != coordinateSpace2)
  {
    rootLayout3 = [(PXGLayout *)rootLayout6 rootLayout];
    [rootLayout3 convertRect:rootLayout6 fromLayout:{v15, v17, v11, v13}];

    rootLayout4 = [(PXGLayout *)rootLayout6 rootLayout];

    coordinateSpace3 = [rootLayout4 coordinateSpace];
    rootLayout5 = [layoutCopy rootLayout];
    coordinateSpace4 = [rootLayout5 coordinateSpace];
    PXRectConvertFromCoordinateSpaceToCoordinateSpace();
    v15 = v28;
    v17 = v29;
    v11 = v30;
    v13 = v31;

    rootLayout6 = [layoutCopy rootLayout];
  }

  [layoutCopy convertRect:rootLayout6 fromLayout:{v15, v17, v11, v13}];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = v33;
  v41 = v35;
  v42 = v37;
  v43 = v39;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (CGRect)_convertRect:(CGRect)rect fromLayout:(id)layout toCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layoutCopy = layout;
  spaceCopy = space;
  v13 = layoutCopy;
  rootLayout = [v13 rootLayout];
  coordinateSpace = [rootLayout coordinateSpace];
  rootLayout2 = [(PXGLayout *)self->_referenceLayout rootLayout];
  coordinateSpace2 = [rootLayout2 coordinateSpace];

  if (coordinateSpace == coordinateSpace2)
  {
    rootLayout6 = v13;
  }

  else
  {
    rootLayout3 = [v13 rootLayout];
    [rootLayout3 convertRect:v13 fromLayout:{x, y, width, height}];

    rootLayout4 = [v13 rootLayout];

    coordinateSpace3 = [rootLayout4 coordinateSpace];
    rootLayout5 = [(PXGLayout *)self->_referenceLayout rootLayout];
    coordinateSpace4 = [rootLayout5 coordinateSpace];
    PXRectConvertFromCoordinateSpaceToCoordinateSpace();
    x = v23;
    y = v24;
    width = v25;
    height = v26;

    rootLayout6 = [(PXGLayout *)self->_referenceLayout rootLayout];
  }

  [(PXGLayout *)self->_referenceLayout convertRect:rootLayout6 fromLayout:x, y, width, height];
  PXPointAdd();
  WeakRetained = objc_loadWeakRetained(&self->_referenceCoordinateSpace);
  v29 = WeakRetained;
  if (spaceCopy && WeakRetained)
  {
    PXRectConvertFromCoordinateSpaceToCoordinateSpace();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
  }

  else
  {
    v31 = *MEMORY[0x277CBF398];
    v33 = *(MEMORY[0x277CBF398] + 8);
    v35 = *(MEMORY[0x277CBF398] + 16);
    v37 = *(MEMORY[0x277CBF398] + 24);
  }

  v38 = v31;
  v39 = v33;
  v40 = v35;
  v41 = v37;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  referenceLayout = self->_referenceLayout;
  v7 = PXPointDescription();
  WeakRetained = objc_loadWeakRetained(&self->_referenceCoordinateSpace);
  weakRetained = [v3 initWithFormat:@"<%@: %p, layout=%@, origin=%@, coordinateSpace=%@>", v5, self, referenceLayout, v7, WeakRetained];

  return weakRetained;
}

- (PXGItemPlacementContext)initWithOriginOfLayout:(id)layout atPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  layoutCopy = layout;
  spaceCopy = space;
  v15.receiver = self;
  v15.super_class = PXGItemPlacementContext;
  v12 = [(PXGItemPlacementContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_referenceLayout, layout);
    v13->_referenceOrigin.x = x;
    v13->_referenceOrigin.y = y;
    objc_storeWeak(&v13->_referenceCoordinateSpace, spaceCopy);
  }

  return v13;
}

- (PXGItemPlacementContext)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGItemPlacement.m" lineNumber:271 description:{@"%s is not available as initializer", "-[PXGItemPlacementContext init]"}];

  abort();
}

@end