@interface PKDashboardHeaderTextItem
+ (id)itemWithHeaderText:(id)text style:(unint64_t)style;
@end

@implementation PKDashboardHeaderTextItem

+ (id)itemWithHeaderText:(id)text style:(unint64_t)style
{
  textCopy = text;
  v6 = objc_alloc_init(PKDashboardHeaderTextItem);
  [(PKDashboardHeaderTextItem *)v6 setTitle:textCopy];

  [(PKDashboardHeaderTextItem *)v6 setStyle:style];

  return v6;
}

@end