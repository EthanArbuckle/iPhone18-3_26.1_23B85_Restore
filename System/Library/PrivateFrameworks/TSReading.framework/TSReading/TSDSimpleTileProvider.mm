@interface TSDSimpleTileProvider
- (SEL)action;
- (void)drawTargetInLayer:(id)layer context:(CGContext *)context;
- (void)setAction:(SEL)action;
@end

@implementation TSDSimpleTileProvider

- (void)drawTargetInLayer:(id)layer context:(CGContext *)context
{
  mTarget = self->super.mTarget;
  action = [(TSDSimpleTileProvider *)self action];

  [mTarget action];
}

- (SEL)action
{
  if (self->mAction)
  {
    return self->mAction;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->mAction = actionCopy;
}

@end