@interface _UITransitionState
- (_UITransitionState)initWithTransitionDirection:(int64_t)a3 completion:(id)a4;
- (id)description;
- (void)cleanupWithFinishedState:(BOOL)a3 completedState:(BOOL)a4;
- (void)markBeginDate;
@end

@implementation _UITransitionState

- (_UITransitionState)initWithTransitionDirection:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = _UITransitionState;
  v7 = [(_UITransitionState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_transitionDirection = a3;
    v9 = [v6 copy];
    completion = v8->_completion;
    v8->_completion = v9;
  }

  return v8;
}

- (void)markBeginDate
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
  beginDate = self->_beginDate;
  self->_beginDate = v3;
}

- (void)cleanupWithFinishedState:(BOOL)a3 completedState:(BOOL)a4
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, a3, a4);
    v6 = self->_completion;
    self->_completion = 0;
  }
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UITransitionState;
  v3 = [(_UITransitionState *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
  [v4 appendFormat:@"; transitionDirection: %ld>", -[_UITransitionState transitionDirection](self, "transitionDirection")];

  return v4;
}

@end