@interface _UITypeSelectItemResult
- (_UITypeSelectItemResult)initWithTypeSelectItem:(id)a3 matchingRanges:(id)a4 unmatchingRanges:(id)a5;
@end

@implementation _UITypeSelectItemResult

- (_UITypeSelectItemResult)initWithTypeSelectItem:(id)a3 matchingRanges:(id)a4 unmatchingRanges:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _UITypeSelectItemResult;
  v11 = [(_UITypeSelectItemResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(_UITypeSelectItemResult *)v11 setItem:v8];
    [(_UITypeSelectItemResult *)v12 setMatchingRanges:v9];
    [(_UITypeSelectItemResult *)v12 setUnmatchingRanges:v10];
  }

  return v12;
}

@end