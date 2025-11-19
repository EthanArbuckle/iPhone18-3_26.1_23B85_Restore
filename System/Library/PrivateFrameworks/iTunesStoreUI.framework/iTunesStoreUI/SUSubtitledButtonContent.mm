@interface SUSubtitledButtonContent
- (void)dealloc;
@end

@implementation SUSubtitledButtonContent

- (void)dealloc
{
  self->_subtitle = 0;

  self->_subtitleColor = 0;
  self->_subtitleShadowColor = 0;
  v3.receiver = self;
  v3.super_class = SUSubtitledButtonContent;
  [(SUSubtitledButtonContent *)&v3 dealloc];
}

@end