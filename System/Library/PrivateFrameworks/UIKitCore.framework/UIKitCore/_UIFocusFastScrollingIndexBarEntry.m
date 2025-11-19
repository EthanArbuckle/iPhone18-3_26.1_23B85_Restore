@interface _UIFocusFastScrollingIndexBarEntry
+ (_UIFocusFastScrollingIndexBarEntry)entryWithTitle:(id)a3 contentOffset:(CGPoint)a4;
+ (_UIFocusFastScrollingIndexBarEntry)entryWithTitle:(id)a3 generator:(id)a4;
+ (id)placeholderEntryWithEntryBefore:(id)a3 after:(id)a4;
- (CGPoint)contentOffset;
- (_UIFocusFastScrollingIndexBarEntry)initWithTitle:(id)a3 contentOffset:(CGPoint)a4;
- (_UIFocusFastScrollingIndexBarEntry)initWithTitle:(id)a3 generator:(id)a4;
- (id)description;
@end

@implementation _UIFocusFastScrollingIndexBarEntry

+ (_UIFocusFastScrollingIndexBarEntry)entryWithTitle:(id)a3 contentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [[a1 alloc] initWithTitle:v7 contentOffset:{x, y}];

  return v8;
}

- (_UIFocusFastScrollingIndexBarEntry)initWithTitle:(id)a3 contentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = _UIFocusFastScrollingIndexBarEntry;
  v8 = [(_UIFocusFastScrollingIndexBarEntry *)&v12 init];
  if (v8)
  {
    v9 = [v7 copy];
    title = v8->_title;
    v8->_title = v9;

    v8->_hasCachedContentOffset = 1;
    v8->_cachedContentOffset.x = x;
    v8->_cachedContentOffset.y = y;
  }

  return v8;
}

+ (_UIFocusFastScrollingIndexBarEntry)entryWithTitle:(id)a3 generator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTitle:v7 generator:v6];

  return v8;
}

- (_UIFocusFastScrollingIndexBarEntry)initWithTitle:(id)a3 generator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _UIFocusFastScrollingIndexBarEntry;
  v8 = [(_UIFocusFastScrollingIndexBarEntry *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    contentOffsetGenerator = v8->_contentOffsetGenerator;
    v8->_contentOffsetGenerator = v11;

    v8->_cachedContentOffset = _UIFocusFastScrollingIndexBarEntryContentOffsetNone;
  }

  return v8;
}

+ (id)placeholderEntryWithEntryBefore:(id)a3 after:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  v8[8] = 1;
  v9 = *(v8 + 5);
  *(v8 + 5) = @"•";

  *(v8 + 1) = _UIFocusFastScrollingIndexBarEntryContentOffsetNone;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76___UIFocusFastScrollingIndexBarEntry_placeholderEntryWithEntryBefore_after___block_invoke;
  v15[3] = &unk_1E7109020;
  v16 = v6;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  v12 = _Block_copy(v15);
  v13 = *(v8 + 4);
  *(v8 + 4) = v12;

  return v8;
}

- (CGPoint)contentOffset
{
  if (self->_hasCachedContentOffset)
  {
    goto LABEL_2;
  }

  contentOffsetGenerator = self->_contentOffsetGenerator;
  if (contentOffsetGenerator)
  {
    x = contentOffsetGenerator[2](contentOffsetGenerator, a2);
    self->_cachedContentOffset.x = x;
    self->_cachedContentOffset.y = y;
  }

  else
  {
    x = self->_cachedContentOffset.x;
    y = self->_cachedContentOffset.y;
  }

  v8 = x != INFINITY;
  if (y != INFINITY)
  {
    v8 = 1;
  }

  self->_hasCachedContentOffset = v8;
  p_cachedContentOffset = MEMORY[0x1E695EFF8];
  p_y = (MEMORY[0x1E695EFF8] + 8);
  if (v8)
  {
    v9 = self->_contentOffsetGenerator;
    self->_contentOffsetGenerator = 0;

    if (self->_hasCachedContentOffset)
    {
LABEL_2:
      p_cachedContentOffset = &self->_cachedContentOffset;
      p_y = &self->_cachedContentOffset.y;
    }
  }

  v10 = *p_y;
  v11 = p_cachedContentOffset->x;
  result.y = v10;
  result.x = v11;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p title = %@", v5, self, self->_title];;

  if (self->_hasCachedContentOffset)
  {
    v7 = NSStringFromCGPoint(self->_cachedContentOffset);
  }

  else
  {
    v7 = @"unresolved";
  }

  [v6 appendFormat:@"; contentOffset = %@", v7];
  if (self->_targetFocusedIndexPath)
  {
    [v6 appendFormat:@"; indexPath = %@", self->_targetFocusedIndexPath];
  }

  if (self->_isPlaceholder)
  {
    [v6 appendString:@"; isPlaceholder = YES"];
  }

  [v6 appendString:@">"];
  v8 = [v6 copy];

  return v8;
}

@end