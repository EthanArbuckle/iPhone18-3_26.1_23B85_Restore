@interface PUPosterAnimatedHintLabel
- (void)didMoveToWindow;
- (void)setHintLabelKind:(int64_t)kind;
- (void)setIsCallServicesEnvironment:(BOOL)environment;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed;
@end

@implementation PUPosterAnimatedHintLabel

- (void)setHintLabelKind:(int64_t)kind
{
  selfCopy = self;
  sub_1B3754C48(kind);
}

- (void)setIsCallServicesEnvironment:(BOOL)environment
{
  selfCopy = self;
  sub_1B3754D1C(environment);
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  selfCopy = self;
  sub_1B3754D48(visible, animated, selfCopy, v8);
  _Block_release(v8);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1B3754FBC();
}

- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed
{
  controllerCopy = controller;
  stopCopy = stop;
  selfCopy = self;
  sub_1B3756584(selfCopy, v10, completed);
}

@end