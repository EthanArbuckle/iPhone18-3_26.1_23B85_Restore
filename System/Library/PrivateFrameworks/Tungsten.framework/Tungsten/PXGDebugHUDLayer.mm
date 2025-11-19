@interface PXGDebugHUDLayer
- (PXGDebugHUDLayer)init;
- (void)dealloc;
- (void)setFrame:(CGRect)a3;
- (void)updateDebugHUDWithStats:(id *)a3;
- (void)updateLayerAtIndex:(int64_t)a3 time:(double)a4 redZone:(double)a5 yellowZone:(double)a6;
@end

@implementation PXGDebugHUDLayer

- (void)dealloc
{
  CGColorRelease(self->_green);
  CGColorRelease(self->_yellow);
  CGColorRelease(self->_red);
  v3.receiver = self;
  v3.super_class = PXGDebugHUDLayer;
  [(PXGDebugHUDLayer *)&v3 dealloc];
}

- (void)setFrame:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = PXGDebugHUDLayer;
  [(PXGDebugHUDLayer *)&v3 setFrame:a3.origin.x, a3.origin.y, 100.0, 90.0];
}

- (void)updateLayerAtIndex:(int64_t)a3 time:(double)a4 redZone:(double)a5 yellowZone:(double)a6
{
  v11 = [(PXGDebugHUDLayer *)self graphLayers];
  v14 = [v11 objectAtIndexedSubscript:a3];

  if (a4 <= a5)
  {
    if (a4 <= a6)
    {
      v12 = &OBJC_IVAR___PXGDebugHUDLayer__green;
      v13 = 40.0;
    }

    else
    {
      v12 = &OBJC_IVAR___PXGDebugHUDLayer__yellow;
      v13 = 26.6666667;
    }
  }

  else
  {
    v12 = &OBJC_IVAR___PXGDebugHUDLayer__red;
    v13 = 13.3333333;
  }

  [v14 setBackgroundColor:*(&self->super.super.isa + *v12)];
  [v14 setFrame:{55.0, a3 * 12.0 + 4.0, v13, 5.0}];
}

- (void)updateDebugHUDWithStats:(id *)a3
{
  v5 = +[PXTungstenSettings sharedInstance];
  -[PXGDebugHUDLayer setHidden:](self, "setHidden:", [v5 wantsStatsDebugHUD] ^ 1);

  v6 = [MEMORY[0x277D759A0] px_mainScreen];
  v7 = [v6 maximumFramesPerSecond];

  for (i = 0; i != 6; ++i)
  {
    [(PXGDebugHUDLayer *)self updateLayerAtIndex:i time:a3->var0[i] redZone:0.8 / v7 / 6.0 yellowZone:0.5 / v7 / 6.0];
  }

  v9 = 0;
  v10 = 0.0;
  do
  {
    v10 = v10 + a3->var0[v9] + a3->var0[v9 + 1];
    v9 += 2;
  }

  while (v9 != 6);

  [(PXGDebugHUDLayer *)self updateLayerAtIndex:6 time:v10 redZone:0.8 / v7 yellowZone:0.5 / v7];
}

- (PXGDebugHUDLayer)init
{
  v27 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = PXGDebugHUDLayer;
  v2 = [(PXGDebugHUDLayer *)&v18 init];
  if (v2)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *components = xmmword_21AE2D978;
    v26 = unk_21AE2D988;
    v2->_green = CGColorCreate(DeviceRGB, components);
    *v23 = xmmword_21AE2D998;
    v24 = unk_21AE2D9A8;
    v2->_yellow = CGColorCreate(DeviceRGB, v23);
    *v21 = xmmword_21AE2D9B8;
    v22 = unk_21AE2D9C8;
    v2->_red = CGColorCreate(DeviceRGB, v21);
    [(PXGDebugHUDLayer *)v2 setFrame:0.0, 0.0, 100.0, 90.0];
    [(PXGDebugHUDLayer *)v2 setZPosition:10000.0];
    [(PXGDebugHUDLayer *)v2 setShouldRasterize:1];
    v4 = [MEMORY[0x277D759A0] px_mainScreen];
    [v4 scale];
    v6 = v5;

    [(PXGDebugHUDLayer *)v2 setRasterizationScale:v6];
    *v19 = xmmword_21AE2D9D8;
    v20 = unk_21AE2D9E8;
    v7 = CGColorCreate(DeviceRGB, v19);
    [(PXGDebugHUDLayer *)v2 setBackgroundColor:v7];
    CGColorRelease(v7);
    CGColorSpaceRelease(DeviceRGB);
    v8 = [MEMORY[0x277CD9FC8] layer];
    [v8 setContentsScale:v6];
    [v8 setFrame:{0.0, 0.0, 50.0, 90.0}];
    [v8 setFontSize:10.0];
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
    for (i = 0; i != 6; ++i)
    {
      [v9 addObject:off_2782A9368[i]];
    }

    [v9 addObject:@"Total"];
    v11 = [v9 componentsJoinedByString:@"\n"];
    [v8 setString:v11];

    [(PXGDebugHUDLayer *)v2 addSublayer:v8];
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:7];
    for (j = 0; j != 7; ++j)
    {
      v14 = [MEMORY[0x277CD9ED0] layer];
      [v14 setFrame:{55.0, j * 12.0 + 4.0, 40.0, 5.0}];
      [v14 setBackgroundColor:v2->_green];
      [(PXGDebugHUDLayer *)v2 addSublayer:v14];
      [v12 addObject:v14];
    }

    v15 = [v12 copy];
    graphLayers = v2->_graphLayers;
    v2->_graphLayers = v15;
  }

  return v2;
}

@end