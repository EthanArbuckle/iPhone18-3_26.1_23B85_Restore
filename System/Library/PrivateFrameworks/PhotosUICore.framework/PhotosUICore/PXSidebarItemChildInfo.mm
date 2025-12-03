@interface PXSidebarItemChildInfo
- (PXSidebarItemChildInfo)initWithListItem:(id)item dataSection:(id)section childIndex:(int64_t)index;
@end

@implementation PXSidebarItemChildInfo

- (PXSidebarItemChildInfo)initWithListItem:(id)item dataSection:(id)section childIndex:(int64_t)index
{
  itemCopy = item;
  sectionCopy = section;
  v32.receiver = self;
  v32.super_class = PXSidebarItemChildInfo;
  v10 = [(PXSidebarItemChildInfo *)&v32 init];
  if (v10)
  {
    content = [sectionCopy content];
    collection = [itemCopy collection];
    px_collectionListRepresentation = [collection px_collectionListRepresentation];
    v14 = px_collectionListRepresentation;
    if (px_collectionListRepresentation)
    {
      collection2 = px_collectionListRepresentation;
    }

    else
    {
      collection2 = [itemCopy collection];
    }

    collection = v10->_collection;
    v10->_collection = collection2;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = content;
    }

    else
    {
      v17 = 0;
    }

    objc_storeStrong(&v10->_fetchResult, v17);
    v18 = [sectionCopy count];
    if (index == -1 || (v19 = v18, v18 < 1))
    {
      v10->_childIndexInFetchResult = -1;
    }

    else
    {
      if (v18 != index)
      {
        v20 = [sectionCopy objectAtIndex:index];
        representedObject = [v20 representedObject];
        if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v22 = representedObject;
        }

        else
        {
          v22 = 0;
        }

        childObject = v10->_childObject;
        v10->_childObject = v22;
      }

      v24 = [sectionCopy objectAtIndex:index - (v19 == index)];
      fetchResult = v10->_fetchResult;
      collection3 = [v24 collection];
      v27 = [(PHFetchResult *)fetchResult indexOfObject:collection3];
      v28 = v27;
      if (v19 == index)
      {
        v29 = v27 + 1;
      }

      else
      {
        v29 = v27;
      }

      if (v28 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v30 = -1;
      }

      else
      {
        v30 = v29;
      }

      v10->_childIndexInFetchResult = v30;
    }
  }

  return v10;
}

@end