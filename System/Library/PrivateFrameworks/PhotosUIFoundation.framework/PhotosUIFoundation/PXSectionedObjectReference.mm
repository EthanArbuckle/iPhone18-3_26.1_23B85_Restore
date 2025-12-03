@interface PXSectionedObjectReference
- (BOOL)isEqual:(id)equal;
- (PXSectionedObjectReference)init;
- (PXSectionedObjectReference)initWithSectionObject:(id)object itemObject:(id)itemObject subitemObject:(id)subitemObject indexPath:(PXSimpleIndexPath *)path;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*&self->_indexPath.dataSourceIdentifier, *(equalCopy + 40)), vceqq_s64(*&self->_indexPath.item, *(equalCopy + 56))))) & 1) != 0 && ((sectionObject = self->_sectionObject, sectionObject == *(equalCopy + 1)) || [sectionObject isEqual:?]) && ((itemObject = self->_itemObject, itemObject == *(equalCopy + 2)) || [itemObject isEqual:?]))
  {
    subitemObject = self->_subitemObject;
    if (subitemObject == *(equalCopy + 3))
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

- (PXSectionedObjectReference)initWithSectionObject:(id)object itemObject:(id)itemObject subitemObject:(id)subitemObject indexPath:(PXSimpleIndexPath *)path
{
  objectCopy = object;
  itemObjectCopy = itemObject;
  subitemObjectCopy = subitemObject;
  v27.receiver = self;
  v27.super_class = PXSectionedObjectReference;
  v14 = [(PXSectionedObjectReference *)&v27 init];
  if (v14)
  {
    if (!objectCopy && !itemObjectCopy && !subitemObjectCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v14 file:@"PXSectionedObjectReference.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"!(sectionObject == nil && itemObject == nil && subitemObject == nil)"}];
    }

    v15 = [objectCopy copyWithZone:0];
    v16 = *(v14 + 1);
    *(v14 + 1) = v15;

    v17 = [itemObjectCopy copyWithZone:0];
    v18 = *(v14 + 2);
    *(v14 + 2) = v17;

    v19 = [subitemObjectCopy copyWithZone:0];
    v20 = *(v14 + 3);
    *(v14 + 3) = v19;

    v21 = *&path->dataSourceIdentifier;
    *(v14 + 56) = *&path->item;
    *(v14 + 40) = v21;
    v22 = *(v14 + 3);
    if (v22 || (v22 = *(v14 + 2)) != 0 || (v22 = *(v14 + 1)) != 0)
    {
      null = v22;
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v24 = *(v14 + 4);
    *(v14 + 4) = null;
  }

  return v14;
}

- (PXSectionedObjectReference)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedObjectReference.m" lineNumber:14 description:{@"%@ not supported", v5}];

  abort();
}

@end