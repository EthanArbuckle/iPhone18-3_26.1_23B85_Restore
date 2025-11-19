@interface _UIGravityWellAdaptorEffect
+ (id)effectWithAdaptedClickEffect:(id)a3;
- (id)previewForContinuingToEffectWithPreview:(id)a3;
- (void)addCompletion:(id)a3;
- (void)begin;
- (void)end;
- (void)endForHandOff;
- (void)updateWithProgress:(double)a3;
@end

@implementation _UIGravityWellAdaptorEffect

+ (id)effectWithAdaptedClickEffect:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setAdaptedEffect:v3];

  v5 = objc_opt_new();
  [v4 setAdaptorInteraction:v5];

  [v4 setMaxProgress:1.0];

  return v4;
}

- (void)begin
{
  v5 = objc_opt_new();
  v3 = [(_UIGravityWellAdaptorEffect *)self adaptedEffect];
  v4 = [(_UIGravityWellAdaptorEffect *)self adaptorInteraction];
  [v3 interaction:v4 didChangeWithContext:v5];
}

- (void)updateWithProgress:(double)a3
{
  v7 = objc_opt_new();
  [v7 setProgress:a3];
  [(_UIGravityWellAdaptorEffect *)self maxProgress];
  [v7 setMaximumProgress:?];
  v5 = [(_UIGravityWellAdaptorEffect *)self adaptedEffect];
  v6 = [(_UIGravityWellAdaptorEffect *)self adaptorInteraction];
  [v5 interaction:v6 didChangeWithContext:v7];
}

- (void)end
{
  v5 = objc_opt_new();
  [v5 setProgress:0.0];
  [v5 setEnded:1];
  v3 = [(_UIGravityWellAdaptorEffect *)self adaptedEffect];
  v4 = [(_UIGravityWellAdaptorEffect *)self adaptorInteraction];
  [v3 interaction:v4 didChangeWithContext:v5];
}

- (void)endForHandOff
{
  v3 = objc_opt_new();
  [v3 setProgress:0.0];
  [v3 setEnded:1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44___UIGravityWellAdaptorEffect_endForHandOff__block_invoke;
  v5[3] = &unk_1E70F35B8;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [UIView performWithoutAnimation:v5];
}

- (id)previewForContinuingToEffectWithPreview:(id)a3
{
  v3 = [(_UIGravityWellAdaptorEffect *)self adaptedEffect];
  v4 = [v3 targetedPreviewForEffectContinuation];

  return v4;
}

- (void)addCompletion:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UIGravityWellAdaptorEffect;
  [(_UIGravityWellEffect *)&v11 addCompletion:v4];
  v5 = [(_UIGravityWellAdaptorEffect *)self adaptedEffect];
  v6 = [v5 completionBlock];

  if (!v6)
  {
    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v9, &location);
    v7 = [(_UIGravityWellAdaptorEffect *)self adaptedEffect:v8];
    [v7 setCompletionBlock:&v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

@end