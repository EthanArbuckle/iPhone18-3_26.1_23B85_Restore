@interface PNPAnimatedHardwareView
- (id)layerForHardwareType:(unint64_t)type deviceType:(int64_t)deviceType;
- (void)configureForCurrentHardwareAndDevice;
- (void)layoutSubviews;
- (void)setHardwareType:(unint64_t)type deviceType:(int64_t)deviceType;
- (void)setPencilLayer:(id)layer;
@end

@implementation PNPAnimatedHardwareView

- (void)setPencilLayer:(id)layer
{
  layerCopy = layer;
  [(CALayer *)self->_pencilLayer removeFromSuperlayer];
  pencilLayer = self->_pencilLayer;
  self->_pencilLayer = layerCopy;
  v6 = layerCopy;

  [(CALayer *)self->_pencilLayer setAnchorPoint:0.0, 0.5];
  [(CALayer *)self->_pencilLayer setPosition:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [(CALayer *)self->_pencilLayer setGeometryFlipped:1];
  layer = [(PNPAnimatedHardwareView *)self layer];
  [layer addSublayer:self->_pencilLayer];
}

- (void)setHardwareType:(unint64_t)type deviceType:(int64_t)deviceType
{
  [(PNPAnimatedHardwareView *)self setHardwareType:type];
  [(PNPAnimatedHardwareView *)self setDeviceType:deviceType];

  [(PNPAnimatedHardwareView *)self configureForCurrentHardwareAndDevice];
}

- (void)configureForCurrentHardwareAndDevice
{
  v3 = [(PNPAnimatedHardwareView *)self layerForHardwareType:[(PNPAnimatedHardwareView *)self hardwareType] deviceType:[(PNPAnimatedHardwareView *)self deviceType]];
  [(PNPAnimatedHardwareView *)self setPencilLayer:v3];

  if ([(PNPAnimatedHardwareView *)self hardwareType]- 1 <= 1)
  {
    pencilLayer = [(PNPAnimatedHardwareView *)self pencilLayer];
    [pencilLayer setAnchorPoint:{0.0, 0.5}];
  }
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PNPAnimatedHardwareView;
  [(PNPAnimatedHardwareView *)&v15 layoutSubviews];
  [(PNPAnimatedHardwareView *)self bounds];
  v4 = v3;
  pencilLayer = [(PNPAnimatedHardwareView *)self pencilLayer];
  [pencilLayer size];
  v7 = v6;

  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeScale(&v14, v4 / v7, v4 / v7);
  v13 = v14;
  pencilLayer2 = [(PNPAnimatedHardwareView *)self pencilLayer];
  v12 = v13;
  [pencilLayer2 setAffineTransform:&v12];

  [(PNPAnimatedHardwareView *)self bounds];
  v10 = v9 * 0.5 + 8.0;
  pencilLayer3 = [(PNPAnimatedHardwareView *)self pencilLayer];
  [pencilLayer3 setPosition:{0.0, v10}];
}

- (id)layerForHardwareType:(unint64_t)type deviceType:(int64_t)deviceType
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = @"DoubleTap";
  if (type != 1)
  {
    v4 = 0;
  }

  if (type == 2)
  {
    v5 = @"Squeeze";
  }

  else
  {
    v5 = v4;
  }

  if (deviceType == 2)
  {
    v6 = @"-B332";
  }

  else
  {
    if (deviceType != 4)
    {
      goto LABEL_11;
    }

    v6 = @"-B532";
  }

  v5 = [(__CFString *)v5 stringByAppendingString:v6];
LABEL_11:
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 URLForResource:v5 withExtension:@"caar"];

  v9 = *MEMORY[0x277CDA7E8];
  v15 = 0;
  v10 = [MEMORY[0x277CD9F28] packageWithContentsOfURL:v8 type:v9 options:0 error:&v15];
  v11 = v15;
  if (v11)
  {
    v12 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_25E1BC000, v12, OS_LOG_TYPE_DEFAULT, "Error getting animation package: %@", buf, 0xCu);
    }
  }

  rootLayer = [v10 rootLayer];

  return rootLayer;
}

@end