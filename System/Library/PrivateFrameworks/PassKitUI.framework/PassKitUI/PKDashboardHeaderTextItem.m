@interface PKDashboardHeaderTextItem
+ (id)itemWithHeaderText:(id)a3 style:(unint64_t)a4;
@end

@implementation PKDashboardHeaderTextItem

+ (id)itemWithHeaderText:(id)a3 style:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(PKDashboardHeaderTextItem);
  [(PKDashboardHeaderTextItem *)v6 setTitle:v5];

  [(PKDashboardHeaderTextItem *)v6 setStyle:a4];

  return v6;
}

@end