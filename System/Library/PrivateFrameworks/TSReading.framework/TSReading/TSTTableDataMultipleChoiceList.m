@interface TSTTableDataMultipleChoiceList
- (BOOL)isEqual:(id)a3;
- (id)initObjectWithPopUpMenuModel:(id)a3;
- (void)dealloc;
@end

@implementation TSTTableDataMultipleChoiceList

- (id)initObjectWithPopUpMenuModel:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSTTableDataMultipleChoiceList;
  v4 = [(TSTTableDataMultipleChoiceList *)&v6 init];
  if (v4)
  {
    v4->mPopUpMenuModel = a3;
    v4->super.mRefCount = 1;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mPopUpMenuModel = self->mPopUpMenuModel;
  v6 = *(a3 + 2);

  return [(TSTPopUpMenuModel *)mPopUpMenuModel isEqual:v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableDataMultipleChoiceList;
  [(TSTTableDataMultipleChoiceList *)&v3 dealloc];
}

@end