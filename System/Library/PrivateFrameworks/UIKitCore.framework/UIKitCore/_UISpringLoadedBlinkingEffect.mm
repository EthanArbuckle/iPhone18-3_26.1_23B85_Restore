@interface _UISpringLoadedBlinkingEffect
- (CALayer)blinkLayer;
- (id)blinkAnimation;
- (void)_prepareLayer:(id)a3 forView:(id)a4;
- (void)interaction:(id)a3 didChangeWithContext:(id)a4;
@end

@implementation _UISpringLoadedBlinkingEffect

- (void)interaction:(id)a3 didChangeWithContext:(id)a4
{
  v11 = a4;
  v5 = [(_UISpringLoadedBlinkingEffect *)self blinkLayer];
  v6 = [v11 targetView];
  if (v6)
  {
    v7 = [v11 state];
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v9 = [v5 superlayer];

        if (!v9)
        {
          [(_UISpringLoadedBlinkingEffect *)self _prepareLayer:v5 forView:v6];
          v10 = [v6 layer];
          [v10 addSublayer:v5];
        }

        blinkLayer = [(_UISpringLoadedBlinkingEffect *)self blinkAnimation];
        [v5 addAnimation:blinkLayer forKey:@"blinkingAnimation"];
        goto LABEL_9;
      }

      if (v7 != 3)
      {
        goto LABEL_10;
      }
    }

    else if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_10;
      }

      [(_UISpringLoadedBlinkingEffect *)self _prepareLayer:v5 forView:v6];
      blinkLayer = [v6 layer];
      [blinkLayer addSublayer:v5];
      goto LABEL_9;
    }
  }

  [v5 removeFromSuperlayer];
  blinkLayer = self->_blinkLayer;
  self->_blinkLayer = 0;
LABEL_9:

LABEL_10:
}

- (void)_prepareLayer:(id)a3 forView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v16 = [v5 layer];
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v6 setFrame:{v8, v10, v12, v14}];
  v15 = [v16 cornerCurve];
  [v6 setCornerCurve:v15];

  [v16 cornerRadius];
  [v6 setCornerRadius:?];
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