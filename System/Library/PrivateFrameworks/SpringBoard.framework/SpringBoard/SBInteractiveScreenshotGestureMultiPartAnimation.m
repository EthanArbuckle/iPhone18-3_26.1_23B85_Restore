@interface SBInteractiveScreenshotGestureMultiPartAnimation
- (SBInteractiveScreenshotGestureMultiPartAnimation)initWithCompletionHandler:(id)a3;
- (void)beginAnimationWithIdentifier:(id)a3;
- (void)completeAnimationWithIdentifier:(id)a3 finished:(BOOL)a4 retargeted:(BOOL)a5;
@end

@implementation SBInteractiveScreenshotGestureMultiPartAnimation

- (SBInteractiveScreenshotGestureMultiPartAnimation)initWithCompletionHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBInteractiveScreenshotGestureMultiPartAnimation;
  v5 = [(SBInteractiveScreenshotGestureMultiPartAnimation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    completionHandler = v5->_completionHandler;
    v5->_completionHandler = v6;
  }

  return v5;
}

- (void)beginAnimationWithIdentifier:(id)a3
{
  v4 = a3;
  pendingAnimationIdentifiers = self->_pendingAnimationIdentifiers;
  v8 = v4;
  if (!pendingAnimationIdentifiers)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    v7 = self->_pendingAnimationIdentifiers;
    self->_pendingAnimationIdentifiers = v6;

    v4 = v8;
    pendingAnimationIdentifiers = self->_pendingAnimationIdentifiers;
  }

  [(NSMutableArray *)pendingAnimationIdentifiers addObject:v4];
}

- (void)completeAnimationWithIdentifier:(id)a3 finished:(BOOL)a4 retargeted:(BOOL)a5
{
  v5 = a5;
  v12 = a3;
  pendingAnimationIdentifiers = self->_pendingAnimationIdentifiers;
  if (v5)
  {
    self->_pendingAnimationIdentifiers = 0;

    v8 = MEMORY[0x223D6F7F0](self->_completionHandler);
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    if (v8)
    {
      (v8)[2](v8, self, 0, 1);
    }

LABEL_4:

    goto LABEL_7;
  }

  if ([(NSMutableArray *)pendingAnimationIdentifiers count])
  {
    [(NSMutableArray *)self->_pendingAnimationIdentifiers removeObject:v12];
    if (![(NSMutableArray *)self->_pendingAnimationIdentifiers count])
    {
      v10 = self->_pendingAnimationIdentifiers;
      self->_pendingAnimationIdentifiers = 0;

      v8 = MEMORY[0x223D6F7F0](self->_completionHandler);
      v11 = self->_completionHandler;
      self->_completionHandler = 0;

      if (v8)
      {
        (v8)[2](v8, self, 1, 0);
      }

      goto LABEL_4;
    }
  }

LABEL_7:
}

@end