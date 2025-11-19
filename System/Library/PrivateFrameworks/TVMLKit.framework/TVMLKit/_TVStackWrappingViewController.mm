@interface _TVStackWrappingViewController
- (void)setShowcaseConfig:(TVShowcaseConfig *)a3;
@end

@implementation _TVStackWrappingViewController

- (void)setShowcaseConfig:(TVShowcaseConfig *)a3
{
  inset = a3->inset;
  *&self->_showcaseConfig.flavor = *&a3->flavor;
  self->_showcaseConfig.inset = inset;
}

@end