@interface _UISpringLoadedBlinkingEffect
- (CALayer)blinkLayer;
- (id)blinkAnimation;
- (void)_prepareLayer:(id)layer forView:(id)view;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
@end

@implementation _UISpringLoadedBlinkingEffect

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  contextCopy = context;
  blinkLayer = [(_UISpringLoadedBlinkingEffect *)self blinkLayer];
  targetView = [contextCopy targetView];
  if (targetView)
  {
    state = [contextCopy state];
    if (state > 1)
    {
      if (state == 2)
      {
        superlayer = [blinkLayer superlayer];

        if (!superlayer)
        {
          [(_UISpringLoadedBlinkingEffect *)self _prepareLayer:blinkLayer forView:targetView];
          layer = [targetView layer];
          [layer addSublayer:blinkLayer];
        }

        blinkLayer = [(_UISpringLoadedBlinkingEffect *)self blinkAnimation];
        [blinkLayer addAnimation:blinkLayer forKey:@"blinkingAnimation"];
        goto LABEL_9;
      }

      if (state != 3)
      {
        goto LABEL_10;
      }
    }

    else if (state)
    {
      if (state != 1)
      {
        goto LABEL_10;
      }

      [(_UISpringLoadedBlinkingEffect *)self _prepareLayer:blinkLayer forView:targetView];
      blinkLayer = [targetView layer];
      [blinkLayer addSublayer:blinkLayer];
      goto LABEL_9;
    }
  }

  [blinkLayer removeFromSuperlayer];
  blinkLayer = self->_blinkLayer;
  self->_blinkLayer = 0;
LABEL_9:

LABEL_10:
}

- (void)_prepareLayer:(id)layer forView:(id)view
{
  viewCopy = view;
  layerCopy = layer;
  layer = [viewCopy layer];
  [viewCopy bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [layerCopy setFrame:{v8, v10, v12, v14}];
  cornerCurve = [layer cornerCurve];
  [layerCopy setCornerCurve:cornerCurve];

  [layer cornerRadius];
  [layerCopy setCornerRadius:?];
}

- (CALayer)blinkLayer
{
  blinkLayer = self->_blinkLayer;
  if (!blinkLayer)
  {
    v4 = objc_opt_new();
    v5 = self->_blinkLayer;
    self->_blinkLayer = v4;

    v6 = +[UIColor blackColor];
    -[CALayer setBackgroundColor:](self->_blinkLayer, "setBackgroundColor:", [v6 CGColor]);

    LODWORD(v7) = 1045220557;
    [(CALayer *)self->_blinkLayer setOpacity:v7];
    blinkLayer = self->_blinkLayer;
  }

  return blinkLayer;
}

- (id)blinkAnimation
{
  v2 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v2 setToValue:&unk_1EFE2E348];
  [v2 setDuration:0.1];
  [v2 setAutoreverses:1];
  LODWORD(v3) = 2.0;
  [v2 setRepeatCount:v3];

  return v2;
}

@end