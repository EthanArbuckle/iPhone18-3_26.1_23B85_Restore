@interface SBPIPContentViewLayoutSizePreferences
- (SBPIPContentViewLayoutSizePreferences)initWithLongSideMinimumSize:(double)size longSideDefaultSize:(double)defaultSize longSideMaximumSize:(double)maximumSize shortSideMinimumSize:(double)minimumSize;
@end

@implementation SBPIPContentViewLayoutSizePreferences

- (SBPIPContentViewLayoutSizePreferences)initWithLongSideMinimumSize:(double)size longSideDefaultSize:(double)defaultSize longSideMaximumSize:(double)maximumSize shortSideMinimumSize:(double)minimumSize
{
  v11.receiver = self;
  v11.super_class = SBPIPContentViewLayoutSizePreferences;
  result = [(SBPIPContentViewLayoutSizePreferences *)&v11 init];
  if (result)
  {
    result->_longSideMinimumSize = size;
    result->_longSideDefaultSize = defaultSize;
    result->_longSideMaximumSize = maximumSize;
    result->_shortSideMinimumSize = minimumSize;
  }

  return result;
}

@end