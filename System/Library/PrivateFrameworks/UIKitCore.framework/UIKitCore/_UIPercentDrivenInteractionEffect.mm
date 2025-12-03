@interface _UIPercentDrivenInteractionEffect
- (_UIPercentDrivenInteractionEffect)initWithProgressBlock:(id)block;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
@end

@implementation _UIPercentDrivenInteractionEffect

- (_UIPercentDrivenInteractionEffect)initWithProgressBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = _UIPercentDrivenInteractionEffect;
  v5 = [(_UIPercentDrivenInteractionEffect *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIPercentDrivenInteractionEffect *)v5 setProgressBlock:blockCopy];
  }

  return v6;
}

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  contextCopy = context;
  progressBlock = [(_UIPercentDrivenInteractionEffect *)self progressBlock];
  progressBlock[2](progressBlock, contextCopy);
}

@end