@interface PXSectionedObjectReference
- (BOOL)isEqual:(id)a3;
- (PXSectionedObjectReference)init;
- (PXSectionedObjectReference)initWithSectionObject:(id)a3 itemObject:(id)a4 subitemObject:(id)a5 indexPath:(PXSimpleIndexPath *)a6;
- (PXSimpleIndexPath)indexPath;
- (id)description;
@end

@implementation PXSectionedObjectReference

- (PXSimpleIndexPath)indexPath
{
  v3 = *&self[1].subitem;
  *&retstr->dataSourceIdentifier = *&self[1].section;
  *&retstr->item = v3;
  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = PXSectionedObjectReference;
  v4 = [(PXSectionedObjectReference *)&v10 description];
  v5 = *&self->_indexPath.item;
  v9[0] = *&self->_indexPath.dataSourceIdentifier;
  v9[1] = v5;
  v6 = PXSimpleIndexPathDescription(v9);
  v7 = [v3 stringWithFormat:@"<%@ indexPath:%@ section:%@ item:%@ subitem:%@>", v4, v6, self->_sectionObject, self->_itemObject, self->_subitemObject];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*&self->_indexPath.dataSourceIdentifier, *(v4 + 40)), vceqq_s64(*&self->_indexPath.item, *(v4 + 56))))) & 1) != 0 && ((sectionObject = self->_sectionObject, sectionObject == *(v4 + 1)) || [sectionObject isEqual:?]) && ((itemObject = self->_itemObject, itemObject == *(v4 + 2)) || [itemObject isEqual:?]))
  {
    subitemObject = self->_subitemObject;
    if (subitemObject == *(v4 + 3))
    {
      v5 = 1;
    }

    else
    {
      v5 = [subitemObject isEqual:?];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PXSectionedObjectReference)initWithSectionObject:(id)a3 itemObject:(id)a4 subitemObject:(id)a5 indexPath:(PXSimpleIndexPath *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v27.receiver = self;
  v27.super_class = PXSectionedObjectReference;
  v14 = [(PXSectionedObjectReference *)&v27 init];
  if (v14)
  {
    if (!v11 && !v12 && !v13)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:a2 object:v14 file:@"PXSectionedObjectReference.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"!(sectionObject == nil && itemObject == nil && subitemObject == nil)"}];
    }

    v15 = [v11 copyWithZone:0];
    v16 = *(v14 + 1);
    *(v14 + 1) = v15;

    v17 = [v12 copyWithZone:0];
    v18 = *(v14 + 2);
    *(v14 + 2) = v17;

    v19 = [v13 copyWithZone:0];
    v20 = *(v14 + 3);
    *(v14 + 3) = v19;

    v21 = *&a6->dataSourceIdentifier;
    *(v14 + 56) = *&a6->item;
    *(v14 + 40) = v21;
    v22 = *(v14 + 3);
    if (v22 || (v22 = *(v14 + 2)) != 0 || (v22 = *(v14 + 1)) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
    }

    v24 = *(v14 + 4);
    *(v14 + 4) = v23;
  }

  return v14;
}

- (PXSectionedObjectReference)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"PXSectionedObjectReference.m" lineNumber:14 description:{@"%@ not supported", v5}];

  abort();
}

@end