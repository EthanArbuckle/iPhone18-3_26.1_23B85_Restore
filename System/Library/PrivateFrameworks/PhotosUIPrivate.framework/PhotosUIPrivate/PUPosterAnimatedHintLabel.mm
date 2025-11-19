@interface PUPosterAnimatedHintLabel
- (void)didMoveToWindow;
- (void)setHintLabelKind:(int64_t)a3;
- (void)setIsCallServicesEnvironment:(BOOL)a3;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)stateController:(id)a3 transitionDidStop:(id)a4 completed:(BOOL)a5;
@end

@implementation PUPosterAnimatedHintLabel

- (void)setHintLabelKind:(int64_t)a3
{
  v4 = self;
  sub_1B3754C48(a3);
}

- (void)setIsCallServicesEnvironment:(BOOL)a3
{
  v4 = self;
  sub_1B3754D1C(a3);
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = self;
  sub_1B3754D48(a3, a4, v9, v8);
  _Block_release(v8);
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_1B3754FBC();
}

- (void)stateController:(id)a3 transitionDidStop:(id)a4 completed:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  sub_1B3756584(v11, v10, a5);
}

@end