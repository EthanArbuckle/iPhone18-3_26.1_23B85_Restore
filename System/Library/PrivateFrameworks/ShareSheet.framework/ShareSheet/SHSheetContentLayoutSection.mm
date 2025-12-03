@interface SHSheetContentLayoutSection
- (SHSheetContentLayoutSection)initWithLayoutSection:(id)section;
@end

@implementation SHSheetContentLayoutSection

- (SHSheetContentLayoutSection)initWithLayoutSection:(id)section
{
  sectionCopy = section;
  v9.receiver = self;
  v9.super_class = SHSheetContentLayoutSection;
  v6 = [(SHSheetContentLayoutSection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layoutSection, section);
  }

  return v7;
}

@end