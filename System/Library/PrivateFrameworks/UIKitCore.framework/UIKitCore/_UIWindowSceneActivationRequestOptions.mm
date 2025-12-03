@interface _UIWindowSceneActivationRequestOptions
- (unint64_t)preferredPresentationStyle;
- (void)setPreferredPresentationStyle:(unint64_t)style;
@end

@implementation _UIWindowSceneActivationRequestOptions

- (unint64_t)preferredPresentationStyle
{
  v3.receiver = self;
  v3.super_class = _UIWindowSceneActivationRequestOptions;
  return [(UIWindowSceneActivationRequestOptions *)&v3 preferredPresentationStyle];
}

- (void)setPreferredPresentationStyle:(unint64_t)style
{
  v3.receiver = self;
  v3.super_class = _UIWindowSceneActivationRequestOptions;
  [(UIWindowSceneActivationRequestOptions *)&v3 setPreferredPresentationStyle:style];
}

@end