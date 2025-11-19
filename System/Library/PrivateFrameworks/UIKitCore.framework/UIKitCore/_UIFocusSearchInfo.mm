@interface _UIFocusSearchInfo
+ (id)defaultInfo;
- (BOOL)shouldIncludeFocusItem:(id)a3;
- (_UIFocusSearchInfo)initWithFocusEvaluator:(id)a3;
@end

@implementation _UIFocusSearchInfo

+ (id)defaultInfo
{
  v2 = [[_UIFocusSearchInfo alloc] initWithFocusEvaluator:0];

  return v2;
}

- (_UIFocusSearchInfo)initWithFocusEvaluator:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIFocusSearchInfo;
  v5 = [(_UIFocusSearchInfo *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_treatFocusableItemAsLeaf = 1;
    [(_UIFocusSearchInfo *)v5 setEvaluator:v4];
  }

  return v6;
}

- (BOOL)shouldIncludeFocusItem:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusSearchInfo *)self evaluator];
  if (v5)
  {
    v6 = [(_UIFocusSearchInfo *)self evaluator];
    v7 = (v6)[2](v6, v4);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end