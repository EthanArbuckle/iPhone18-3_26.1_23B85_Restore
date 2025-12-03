@interface SMVignetteView
- (SMVignetteView)initWithCoder:(id)coder;
- (SMVignetteView)initWithFrame:(CGRect)frame;
- (void)updateWithActiveAppearance:(int64_t)appearance;
@end

@implementation SMVignetteView

- (SMVignetteView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)updateWithActiveAppearance:(int64_t)appearance
{
  selfCopy = self;
  VignetteView.update(with:)(appearance);
}

- (SMVignetteView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end