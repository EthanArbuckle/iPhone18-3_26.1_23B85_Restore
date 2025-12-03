@interface _TVStackWrappingViewController
- (void)setShowcaseConfig:(TVShowcaseConfig *)config;
@end

@implementation _TVStackWrappingViewController

- (void)setShowcaseConfig:(TVShowcaseConfig *)config
{
  inset = config->inset;
  *&self->_showcaseConfig.flavor = *&config->flavor;
  self->_showcaseConfig.inset = inset;
}

@end