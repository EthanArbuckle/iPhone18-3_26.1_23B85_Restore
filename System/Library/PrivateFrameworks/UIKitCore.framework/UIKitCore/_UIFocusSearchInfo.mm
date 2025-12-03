@interface _UIFocusSearchInfo
+ (id)defaultInfo;
- (BOOL)shouldIncludeFocusItem:(id)item;
- (_UIFocusSearchInfo)initWithFocusEvaluator:(id)evaluator;
@end

@implementation _UIFocusSearchInfo

+ (id)defaultInfo
{
  v2 = [[_UIFocusSearchInfo alloc] initWithFocusEvaluator:0];

  return v2;
}

- (_UIFocusSearchInfo)initWithFocusEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  v8.receiver = self;
  v8.super_class = _UIFocusSearchInfo;
  v5 = [(_UIFocusSearchInfo *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_treatFocusableItemAsLeaf = 1;
    [(_UIFocusSearchInfo *)v5 setEvaluator:evaluatorCopy];
  }

  return v6;
}

- (BOOL)shouldIncludeFocusItem:(id)item
{
  itemCopy = item;
  evaluator = [(_UIFocusSearchInfo *)self evaluator];
  if (evaluator)
  {
    evaluator2 = [(_UIFocusSearchInfo *)self evaluator];
    v7 = (evaluator2)[2](evaluator2, itemCopy);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end