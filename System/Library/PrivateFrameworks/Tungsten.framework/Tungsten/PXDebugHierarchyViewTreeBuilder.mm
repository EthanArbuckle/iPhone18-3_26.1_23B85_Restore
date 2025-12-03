@interface PXDebugHierarchyViewTreeBuilder
+ (id)createObjectForElement:(id)element parentObject:(id)object options:(unint64_t)options;
@end

@implementation PXDebugHierarchyViewTreeBuilder

+ (id)createObjectForElement:(id)element parentObject:(id)object options:(unint64_t)options
{
  objectCopy = object;
  elementCopy = element;
  [elementCopy frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = objectCopy;
  v17 = objc_alloc_init(PXDebug);
  [(PXDebug *)v17 setFrame:v9, v11, v13, v15];
  [elementCopy alpha];
  [(PXDebug *)v17 setAlpha:?];
  -[PXDebug setPreviewImage:](v17, "setPreviewImage:", [elementCopy previewImage]);
  -[PXDebug setBackgroundColor:](v17, "setBackgroundColor:", [elementCopy backgroundColor]);
  name = [elementCopy name];

  [(PXDebug *)v17 setName:name];
  [v16 addSubview:v17];

  return v17;
}

@end