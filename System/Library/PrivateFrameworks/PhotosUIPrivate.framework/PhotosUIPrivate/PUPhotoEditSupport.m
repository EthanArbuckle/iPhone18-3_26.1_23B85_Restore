@interface PUPhotoEditSupport
+ (BOOL)currentDeviceShouldAllowRawDecode;
+ (double)changeValueOfSlider:(id)a3 reverse:(BOOL)a4 coarse:(BOOL)a5;
+ (id)createEditSlider;
+ (id)createPlayPauseButton;
@end

@implementation PUPhotoEditSupport

+ (id)createPlayPauseButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [v2 setAlpha:0.0];
  [v2 _setTouchInsets:{-15.0, -15.0, -15.0, -15.0}];
  v3 = [MEMORY[0x1E69DC888] blackColor];
  v4 = [v3 CGColor];
  v5 = [v2 layer];
  [v5 setShadowColor:v4];

  v6 = [v2 layer];
  LODWORD(v7) = 1050253722;
  [v6 setShadowOpacity:v7];

  v8 = [v2 layer];
  [v8 setShadowRadius:5.0];

  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"play.fill"];
  [v2 setImage:v9 forState:0];

  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pause.fill"];
  [v2 setImage:v10 forState:4];

  return v2;
}

+ (id)createEditSlider
{
  v2 = MEMORY[0x1B8C6D660](a1, a2);
  v3 = objc_alloc(MEMORY[0x1E6993888]);
  if (v2)
  {
    v4 = [v3 initWithTickMarkStyle:1];
    [v4 setTickMarkSize:{2.0, 28.0}];
    v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v6 = [v5 colorWithAlphaComponent:0.3];
    v7 = [v4 tickMarksConfiguration];
    [v7 setSecondaryTickMarkColor:v6];

    v8 = [MEMORY[0x1E69DC888] labelColor];
    v9 = [v4 tickMarksConfiguration];
    [v9 setMainTickMarkColor:v8];

    v10 = [MEMORY[0x1E69DC888] clearColor];
    [v4 setBackgroundColor:v10];

    [v4 setUseTickMarkLegibilityShadows:1];
    v11 = [v4 subviews];
    v12 = [v11 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 _setHiddenPocketEdges:15];
    }
  }

  else
  {
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v14 = [v13 colorWithAlphaComponent:0.5];
    v15 = [v4 tickMarksConfiguration];
    [v15 setSecondaryTickMarkColor:v14];

    v16 = [MEMORY[0x1E69DC888] labelColor];
    v17 = [v4 tickMarksConfiguration];
    [v17 setMainTickMarkColor:v16];

    v18 = [MEMORY[0x1E69DC888] clearColor];
    [v4 setBackgroundColor:v18];

    [v4 setUseTickMarkLegibilityShadows:1];
  }

  return v4;
}

+ (double)changeValueOfSlider:(id)a3 reverse:(BOOL)a4 coarse:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  [v7 maximumValue];
  v9 = v8;
  [v7 minimumValue];
  v11 = (v9 - v10) / fmax(([v7 tickMarkCount] - 1), 1.0);
  if (v6)
  {
    v11 = -v11;
  }

  if (v5)
  {
    v12 = v11 * 5.0;
  }

  else
  {
    v12 = v11;
  }

  [v7 value];
  [v7 setValue:v13 + v12];

  return v12;
}

+ (BOOL)currentDeviceShouldAllowRawDecode
{
  if (currentDeviceShouldAllowRawDecode_onceToken != -1)
  {
    dispatch_once(&currentDeviceShouldAllowRawDecode_onceToken, &__block_literal_global_56666);
  }

  return currentDeviceShouldAllowRawDecode_supportsRawDecode;
}

void __55__PUPhotoEditSupport_currentDeviceShouldAllowRawDecode__block_invoke()
{
  v0 = MTLCreateSystemDefaultDevice();
  v2 = 8;
  v3 = 0;
  if (sysctlbyname("hw.memsize", &v3, &v2, 0, 0) || v3 >= 0x60000001)
  {
    v1 = [v0 supportsFeatureSet:1];
  }

  else
  {
    v1 = 0;
  }

  currentDeviceShouldAllowRawDecode_supportsRawDecode = v1;
}

@end