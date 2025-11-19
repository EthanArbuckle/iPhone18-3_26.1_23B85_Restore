@interface SBPIPContentViewLayoutSizePreferences
- (SBPIPContentViewLayoutSizePreferences)initWithLongSideMinimumSize:(double)a3 longSideDefaultSize:(double)a4 longSideMaximumSize:(double)a5 shortSideMinimumSize:(double)a6;
@end

@implementation SBPIPContentViewLayoutSizePreferences

- (SBPIPContentViewLayoutSizePreferences)initWithLongSideMinimumSize:(double)a3 longSideDefaultSize:(double)a4 longSideMaximumSize:(double)a5 shortSideMinimumSize:(double)a6
{
  v11.receiver = self;
  v11.super_class = SBPIPContentViewLayoutSizePreferences;
  result = [(SBPIPContentViewLayoutSizePreferences *)&v11 init];
  if (result)
  {
    result->_longSideMinimumSize = a3;
    result->_longSideDefaultSize = a4;
    result->_longSideMaximumSize = a5;
    result->_shortSideMinimumSize = a6;
  }

  return result;
}

@end