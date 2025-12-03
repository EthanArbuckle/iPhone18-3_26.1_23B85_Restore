@interface _UITextInsertionRanges
- (_NSRange)rangeToBeReplaced;
- (_UITextInsertionRanges)initWithSelectedRanges:(id)ranges;
@end

@implementation _UITextInsertionRanges

- (_UITextInsertionRanges)initWithSelectedRanges:(id)ranges
{
  rangesCopy = ranges;
  v12.receiver = self;
  v12.super_class = _UITextInsertionRanges;
  v5 = [(_UITextInsertionRanges *)&v12 init];
  if (v5)
  {
    bs_reverse = [rangesCopy bs_reverse];
    v7 = [bs_reverse mutableCopy];

    lastObject = [(NSArray *)v7 lastObject];
    v5->_rangeToBeReplaced.location = [lastObject rangeValue];
    v5->_rangeToBeReplaced.length = v9;

    [(NSArray *)v7 removeLastObject];
    rangesToBeDeleted = v5->_rangesToBeDeleted;
    v5->_rangesToBeDeleted = v7;
  }

  return v5;
}

- (_NSRange)rangeToBeReplaced
{
  length = self->_rangeToBeReplaced.length;
  location = self->_rangeToBeReplaced.location;
  result.length = length;
  result.location = location;
  return result;
}

@end