@interface PXSidebarItemChildInfo
- (PXSidebarItemChildInfo)initWithListItem:(id)a3 dataSection:(id)a4 childIndex:(int64_t)a5;
@end

@implementation PXSidebarItemChildInfo

- (PXSidebarItemChildInfo)initWithListItem:(id)a3 dataSection:(id)a4 childIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v32.receiver = self;
  v32.super_class = PXSidebarItemChildInfo;
  v10 = [(PXSidebarItemChildInfo *)&v32 init];
  if (v10)
  {
    v11 = [v9 content];
    v12 = [v8 collection];
    v13 = [v12 px_collectionListRepresentation];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v8 collection];
    }

    collection = v10->_collection;
    v10->_collection = v15;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v11;
    }

    else
    {
      v17 = 0;
    }

    objc_storeStrong(&v10->_fetchResult, v17);
    v18 = [v9 count];
    if (a5 == -1 || (v19 = v18, v18 < 1))
    {
      v10->_childIndexInFetchResult = -1;
    }

    else
    {
      if (v18 != a5)
      {
        v20 = [v9 objectAtIndex:a5];
        v21 = [v20 representedObject];
        if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        childObject = v10->_childObject;
        v10->_childObject = v22;
      }

      v24 = [v9 objectAtIndex:a5 - (v19 == a5)];
      fetchResult = v10->_fetchResult;
      v26 = [v24 collection];
      v27 = [(PHFetchResult *)fetchResult indexOfObject:v26];
      v28 = v27;
      if (v19 == a5)
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