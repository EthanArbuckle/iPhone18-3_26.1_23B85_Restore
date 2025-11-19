@interface SectionHeaderLayoutProvider
- (id)createSectionHeaderLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outAlignment:(unint64_t *)a7;
@end

@implementation SectionHeaderLayoutProvider

- (id)createSectionHeaderLayoutForSectionedLayout:(id)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5 spec:(id)a6 outAlignment:(unint64_t *)a7
{
  var0 = a5->var0;
  var1 = a5->var1;
  var2 = a5->var2;
  var3 = a5->var3;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = self;
  v18 = sub_29EC7219C(v14, v15, var0, var1, var2, var3, v16);

  return v18;
}

@end