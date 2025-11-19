@interface UIActivityItemMapping
@end

@implementation UIActivityItemMapping

void __62___UIActivityItemMapping__addToActiveActivityViewControllers___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:1];
  v1 = _activeActivityViewControllers;
  _activeActivityViewControllers = v0;
}

void __97___UIActivityItemMapping__itemProviderForActivityItem_typeIdentifier_thumbnailSize_activityType___block_invoke(void *a1, void *a2)
{
  v3 = a1[7];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2;
  v7 = [v3 _activityViewControllerForActivityItem:v5];
  v8 = [v4 activityViewController:v7 itemForActivityType:a1[6]];

  v6[2](v6, v8, 0);
}

void __97___UIActivityItemMapping__itemProviderForActivityItem_typeIdentifier_thumbnailSize_activityType___block_invoke_3(double *a1, void *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = a1[6];
  v5 = a1[7];
  v6 = a2;
  v7 = [_UIActivityItemMapping _thumbnailImageForActivityItem:v2 thumbnailSize:v3 activityType:v4, v5];
  v6[2](v6, v7, 0);
}

@end