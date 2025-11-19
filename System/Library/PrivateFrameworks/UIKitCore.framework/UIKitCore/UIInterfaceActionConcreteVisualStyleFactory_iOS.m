@interface UIInterfaceActionConcreteVisualStyleFactory_iOS
+ (id)styleForTraitCollection:(id)a3 presentationStyle:(int64_t)a4;
@end

@implementation UIInterfaceActionConcreteVisualStyleFactory_iOS

+ (id)styleForTraitCollection:(id)a3 presentationStyle:(int64_t)a4
{
  v5 = a3;
  if (a4 == 1)
  {
    v7 = UIInterfaceActionConcreteVisualStyle_iOSSheet;
  }

  else
  {
    if (a4 == 2)
    {
      v6 = objc_alloc_init(UIInterfaceActionConcreteVisualStyle_iOSInlineActionSheet);
      goto LABEL_7;
    }

    v7 = UIInterfaceActionConcreteVisualStyle_iOSAlert;
  }

  v6 = [[v7 alloc] initWithTraitCollection:v5];
LABEL_7:
  v8 = v6;

  return v8;
}

@end