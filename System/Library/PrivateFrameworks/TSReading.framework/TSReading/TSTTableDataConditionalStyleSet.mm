@interface TSTTableDataConditionalStyleSet
- (BOOL)isEqual:(id)a3;
- (id)initObjectWithConditionalStyleSet:(id)a3;
- (void)dealloc;
@end

@implementation TSTTableDataConditionalStyleSet

- (id)initObjectWithConditionalStyleSet:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSTTableDataConditionalStyleSet;
  v4 = [(TSTTableDataConditionalStyleSet *)&v6 init];
  if (v4)
  {
    v4->mConditionalStyleSet = a3;
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

  mConditionalStyleSet = self->mConditionalStyleSet;
  v6 = *(a3 + 2);

  return [(TSTConditionalStyleSet *)mConditionalStyleSet isEqual:v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableDataConditionalStyleSet;
  [(TSTTableDataConditionalStyleSet *)&v3 dealloc];
}

@end