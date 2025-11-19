@interface PXGItemPlacementContext
- (CGRect)_convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4 toLayout:(id)a5;
- (CGRect)_convertRect:(CGRect)a3 fromLayout:(id)a4 toCoordinateSpace:(id)a5;
- (NSString)diagnosticDescription;
- (PXGItemPlacementContext)init;
- (PXGItemPlacementContext)initWithOriginOfLayout:(id)a3 atPoint:(CGPoint)a4 inCoordinateSpace:(id)a5;
- (id)_adjustedPreferredPlacementForPlacement:(id)a3;
- (void)_adjustPreferredPlacementInSourceWithIdentifier:(id)a3 configuration:(id)a4;
- (void)_registerOriginalPlacement:(id)a3 forSourceIdentifiers:(id)a4;
@end

@implementation PXGItemPlacementContext

- (id)_adjustedPreferredPlacementForPlacement:(id)a3
{
  adjustedPreferredPlacementsByPlacementUUID = self->_adjustedPreferredPlacementsByPlacementUUID;
  v4 = [a3 uuid];
  v5 = [(NSMutableDictionary *)adjustedPreferredPlacementsByPlacementUUID objectForKeyedSubscript:v4];

  return v5;
}

- (void)_adjustPreferredPlacementInSourceWithIdentifier:(id)a3 configuration:(id)a4
{
  v11 = a4;
  v7 = [(NSMutableDictionary *)self->_placementUUIDsBySourceIdentifier objectForKeyedSubscript:a3];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_adjustedPreferredPlacementsByPlacementUUID objectForKeyedSubscript:v7];
    if (!v8)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXGItemPlacement.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"placement != nil"}];
    }

    v9 = [v8 copyWithConfiguration:v11];
    [(NSMutableDictionary *)self->_adjustedPreferredPlacementsByPlacementUUID setObject:v9 forKeyedSubscript:v7];
  }
}

- (void)_registerOriginalPlacement:(id)a3 forSourceIdentifiers:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [v6 uuid];
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
    v11 = v7;
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

          [(NSMutableDictionary *)self->_placementUUIDsBySourceIdentifier setObject:v8 forKeyedSubscript:*(*(&v20 + 1) + 8 * v15++), v20];
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

    v19 = [(NSMutableDictionary *)adjustedPreferredPlacementsByPlacementUUID objectForKeyedSubscript:v8, v20];

    if (!v19)
    {
      [(NSMutableDictionary *)self->_adjustedPreferredPlacementsByPlacementUUID setObject:v6 forKeyedSubscript:v8];
    }
  }
}

- (CGRect)_convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4 toLayout:(id)a5
{
  v7 = a4;
  v8 = a5;
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
  v18 = self->_referenceLayout;
  v19 = [(PXGLayout *)self->_referenceLayout rootLayout];
  v20 = [v19 coordinateSpace];
  v21 = [v8 rootLayout];
  v22 = [v21 coordinateSpace];

  if (v20 != v22)
  {
    v23 = [(PXGLayout *)v18 rootLayout];
    [v23 convertRect:v18 fromLayout:{v15, v17, v11, v13}];

    v24 = [(PXGLayout *)v18 rootLayout];

    v25 = [v24 coordinateSpace];
    v26 = [v8 rootLayout];
    v27 = [v26 coordinateSpace];
    PXRectConvertFromCoordinateSpaceToCoordinateSpace();
    v15 = v28;
    v17 = v29;
    v11 = v30;
    v13 = v31;

    v18 = [v8 rootLayout];
  }

  [v8 convertRect:v18 fromLayout:{v15, v17, v11, v13}];
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

- (CGRect)_convertRect:(CGRect)a3 fromLayout:(id)a4 toCoordinateSpace:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v13 = v11;
  v14 = [v13 rootLayout];
  v15 = [v14 coordinateSpace];
  v16 = [(PXGLayout *)self->_referenceLayout rootLayout];
  v17 = [v16 coordinateSpace];

  if (v15 == v17)
  {
    v27 = v13;
  }

  else
  {
    v18 = [v13 rootLayout];
    [v18 convertRect:v13 fromLayout:{x, y, width, height}];

    v19 = [v13 rootLayout];

    v20 = [v19 coordinateSpace];
    v21 = [(PXGLayout *)self->_referenceLayout rootLayout];
    v22 = [v21 coordinateSpace];
    PXRectConvertFromCoordinateSpaceToCoordinateSpace();
    x = v23;
    y = v24;
    width = v25;
    height = v26;

    v27 = [(PXGLayout *)self->_referenceLayout rootLayout];
  }

  [(PXGLayout *)self->_referenceLayout convertRect:v27 fromLayout:x, y, width, height];
  PXPointAdd();
  WeakRetained = objc_loadWeakRetained(&self->_referenceCoordinateSpace);
  v29 = WeakRetained;
  if (v12 && WeakRetained)
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
  v9 = [v3 initWithFormat:@"<%@: %p, layout=%@, origin=%@, coordinateSpace=%@>", v5, self, referenceLayout, v7, WeakRetained];

  return v9;
}

- (PXGItemPlacementContext)initWithOriginOfLayout:(id)a3 atPoint:(CGPoint)a4 inCoordinateSpace:(id)a5
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PXGItemPlacementContext;
  v12 = [(PXGItemPlacementContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_referenceLayout, a3);
    v13->_referenceOrigin.x = x;
    v13->_referenceOrigin.y = y;
    objc_storeWeak(&v13->_referenceCoordinateSpace, v11);
  }

  return v13;
}

- (PXGItemPlacementContext)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGItemPlacement.m" lineNumber:271 description:{@"%s is not available as initializer", "-[PXGItemPlacementContext init]"}];

  abort();
}

@end