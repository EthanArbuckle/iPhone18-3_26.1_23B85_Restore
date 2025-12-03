@interface _UITypeSelectItemResult
- (_UITypeSelectItemResult)initWithTypeSelectItem:(id)item matchingRanges:(id)ranges unmatchingRanges:(id)unmatchingRanges;
@end

@implementation _UITypeSelectItemResult

- (_UITypeSelectItemResult)initWithTypeSelectItem:(id)item matchingRanges:(id)ranges unmatchingRanges:(id)unmatchingRanges
{
  itemCopy = item;
  rangesCopy = ranges;
  unmatchingRangesCopy = unmatchingRanges;
  v14.receiver = self;
  v14.super_class = _UITypeSelectItemResult;
  v11 = [(_UITypeSelectItemResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(_UITypeSelectItemResult *)v11 setItem:itemCopy];
    [(_UITypeSelectItemResult *)v12 setMatchingRanges:rangesCopy];
    [(_UITypeSelectItemResult *)v12 setUnmatchingRanges:unmatchingRangesCopy];
  }

  return v12;
}

@end