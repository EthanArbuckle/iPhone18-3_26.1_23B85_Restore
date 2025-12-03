@interface UIInterfaceActionConcreteVisualStyleFactory_iOS
+ (id)styleForTraitCollection:(id)collection presentationStyle:(int64_t)style;
@end

@implementation UIInterfaceActionConcreteVisualStyleFactory_iOS

+ (id)styleForTraitCollection:(id)collection presentationStyle:(int64_t)style
{
  collectionCopy = collection;
  if (style == 1)
  {
    v7 = UIInterfaceActionConcreteVisualStyle_iOSSheet;
  }

  else
  {
    if (style == 2)
    {
      v6 = objc_alloc_init(UIInterfaceActionConcreteVisualStyle_iOSInlineActionSheet);
      goto LABEL_7;
    }

    v7 = UIInterfaceActionConcreteVisualStyle_iOSAlert;
  }

  v6 = [[v7 alloc] initWithTraitCollection:collectionCopy];
LABEL_7:
  v8 = v6;

  return v8;
}

@end