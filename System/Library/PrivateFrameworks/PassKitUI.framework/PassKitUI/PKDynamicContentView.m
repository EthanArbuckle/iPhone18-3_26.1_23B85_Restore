@interface PKDynamicContentView
- (PKDynamicContentView)initWithImage:(id)a3 emitterImage:(id)a4 dynamicLayerEmitterConfiguration:(id)a5;
- (void)_configureEmitterLayerWithImage:(id)a3;
- (void)_pauseEmitters;
- (void)_startEmitters;
- (void)dealloc;
- (void)invalidate;
- (void)layoutSubviews;
- (void)setPaused:(BOOL)a3;
@end

@implementation PKDynamicContentView

- (void)dealloc
{
  [(PKDynamicContentView *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKDynamicContentView;
  [(PKDynamicContentView *)&v3 dealloc];
}

- (void)invalidate
{
  [(UIImageView *)self->_imageView removeFromSuperview];
  [(CAEmitterLayer *)self->_emitterLayer removeAllAnimations];
  [(CAEmitterLayer *)self->_emitterLayer removeFromSuperlayer];
  imageView = self->_imageView;
  self->_imageView = 0;

  emitterLayer = self->_emitterLayer;
  self->_emitterLayer = 0;
}

- (void)_pauseEmitters
{
  if (*&self->_dynamicLayerEmitterConfiguration != 0)
  {
    [(CAEmitterLayer *)self->_emitterLayer convertTime:0 fromLayer:CACurrentMediaTime()];
    v4 = v3;
    [(CAEmitterLayer *)self->_emitterLayer setSpeed:0.0];
    emitterLayer = self->_emitterLayer;

    [(CAEmitterLayer *)emitterLayer setTimeOffset:v4];
  }
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PKDynamicContentView;
  [(PKDynamicContentView *)&v14 layoutSubviews];
  [(PKDynamicContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UIImageView *)self->_imageView image];
  [v11 size];

  PKSizeAspectFit();
  imageView = self->_imageView;
  PKSizeAlignedInRect();
  [(UIImageView *)imageView setFrame:?];
  emitterLayer = self->_emitterLayer;
  if (emitterLayer)
  {
    [(CAEmitterLayer *)emitterLayer setBounds:v4, v6, v8, v10];
    [(CAEmitterLayer *)self->_emitterLayer setPosition:v8 * 0.5, v10 * 0.5];
    [(PKDynamicLayerEmitterConfiguration *)self->_dynamicLayerEmitterConfiguration configureEmitterLayer:self->_emitterLayer withBounds:v4, v6, v8, v10];
  }
}

- (PKDynamicContentView)initWithImage:(id)a3 emitterImage:(id)a4 dynamicLayerEmitterConfiguration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 | v9)
  {
    v17.receiver = self;
    v17.super_class = PKDynamicContentView;
    v11 = [(PKDynamicContentView *)&v17 init];
    p_isa = &v11->super.super.super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_dynamicLayerEmitterConfiguration, a5);
      if (v8)
      {
        v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
        v14 = p_isa[51];
        p_isa[51] = v13;

        [p_isa[51] setContentMode:1];
        [p_isa addSubview:p_isa[51]];
      }

      [p_isa _configureEmitterLayerWithImage:v9];
    }

    self = p_isa;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_configureEmitterLayerWithImage:(id)a3
{
  if (a3 && self->_dynamicLayerEmitterConfiguration)
  {
    v4 = MEMORY[0x1E6979368];
    v5 = a3;
    v6 = [v4 layer];
    emitterLayer = self->_emitterLayer;
    self->_emitterLayer = v6;

    dynamicLayerEmitterConfiguration = self->_dynamicLayerEmitterConfiguration;
    v9 = self->_emitterLayer;
    v10 = [v5 CGImage];

    [(PKDynamicLayerEmitterConfiguration *)dynamicLayerEmitterConfiguration configureEmitterLayer:v9 withImage:v10];
    v12 = [(PKDynamicContentView *)self layer];
    v11 = [(UIImageView *)self->_imageView layer];
    [v12 insertSublayer:self->_emitterLayer below:v11];
  }
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused == !a3)
  {
    self->_paused = a3;
    if (a3)
    {
      [(PKDynamicContentView *)self _pauseEmitters];
    }

    else
    {
      [(PKDynamicContentView *)self _startEmitters];
    }
  }
}

- (void)_startEmitters
{
  dynamicLayerEmitterConfiguration = self->_dynamicLayerEmitterConfiguration;
  emitterLayer = self->_emitterLayer;
  if (dynamicLayerEmitterConfiguration | emitterLayer)
  {
    [(CAEmitterLayer *)emitterLayer timeOffset];
    v6 = v5;
    LODWORD(v5) = 1.0;
    [(CAEmitterLayer *)self->_emitterLayer setSpeed:v5];
    [(CAEmitterLayer *)self->_emitterLayer setTimeOffset:0.0];
    [(CAEmitterLayer *)self->_emitterLayer setBeginTime:0.0];
    [(CAEmitterLayer *)self->_emitterLayer convertTime:0 fromLayer:CACurrentMediaTime()];
    v8 = v7 - v6;
    v9 = self->_emitterLayer;

    [(CAEmitterLayer *)v9 setBeginTime:v8];
  }
}

@end