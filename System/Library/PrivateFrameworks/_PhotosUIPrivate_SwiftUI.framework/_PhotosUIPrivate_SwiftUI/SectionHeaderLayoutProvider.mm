@interface SectionHeaderLayoutProvider
- (id)createSectionHeaderLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outAlignment:(unint64_t *)alignment;
@end

@implementation SectionHeaderLayoutProvider

- (id)createSectionHeaderLayoutForSectionedLayout:(id)layout dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path spec:(id)spec outAlignment:(unint64_t *)alignment
{
  var0 = path->var0;
  var1 = path->var1;
  var2 = path->var2;
  var3 = path->var3;
  layoutCopy = layout;
  sourceCopy = source;
  specCopy = spec;
  selfCopy = self;
  v18 = sub_29EC7219C(layoutCopy, sourceCopy, var0, var1, var2, var3, specCopy);

  return v18;
}

@end