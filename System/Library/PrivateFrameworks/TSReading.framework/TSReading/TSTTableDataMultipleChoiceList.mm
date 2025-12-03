@interface TSTTableDataMultipleChoiceList
- (BOOL)isEqual:(id)equal;
- (id)initObjectWithPopUpMenuModel:(id)model;
- (void)dealloc;
@end

@implementation TSTTableDataMultipleChoiceList

- (id)initObjectWithPopUpMenuModel:(id)model
{
  v6.receiver = self;
  v6.super_class = TSTTableDataMultipleChoiceList;
  v4 = [(TSTTableDataMultipleChoiceList *)&v6 init];
  if (v4)
  {
    v4->mPopUpMenuModel = model;
    v4->super.mRefCount = 1;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mPopUpMenuModel = self->mPopUpMenuModel;
  v6 = *(equal + 2);

  return [(TSTPopUpMenuModel *)mPopUpMenuModel isEqual:v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableDataMultipleChoiceList;
  [(TSTTableDataMultipleChoiceList *)&v3 dealloc];
}

@end