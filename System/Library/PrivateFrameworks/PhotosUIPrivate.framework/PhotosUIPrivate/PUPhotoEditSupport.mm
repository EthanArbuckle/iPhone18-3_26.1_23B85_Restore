@interface PUPhotoEditSupport
+ (BOOL)currentDeviceShouldAllowRawDecode;
+ (double)changeValueOfSlider:(id)slider reverse:(BOOL)reverse coarse:(BOOL)coarse;
+ (id)createEditSlider;
+ (id)createPlayPauseButton;
@end

@implementation PUPhotoEditSupport

+ (id)createPlayPauseButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:0];
  [v2 setAlpha:0.0];
  [v2 _setTouchInsets:{-15.0, -15.0, -15.0, -15.0}];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  cGColor = [blackColor CGColor];
  layer = [v2 layer];
  [layer setShadowColor:cGColor];

  layer2 = [v2 layer];
  LODWORD(v7) = 1050253722;
  [layer2 setShadowOpacity:v7];

  layer3 = [v2 layer];
  [layer3 setShadowRadius:5.0];

  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"play.fill"];
  [v2 setImage:v9 forState:0];

  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pause.fill"];
  [v2 setImage:v10 forState:4];

  return v2;
}

+ (id)createEditSlider
{
  v2 = MEMORY[0x1B8C6D660](self, a2);
  v3 = objc_alloc(MEMORY[0x1E6993888]);
  if (v2)
  {
    v4 = [v3 initWithTickMarkStyle:1];
    [v4 setTickMarkSize:{2.0, 28.0}];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v6 = [secondaryLabelColor colorWithAlphaComponent:0.3];
    tickMarksConfiguration = [v4 tickMarksConfiguration];
    [tickMarksConfiguration setSecondaryTickMarkColor:v6];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    tickMarksConfiguration2 = [v4 tickMarksConfiguration];
    [tickMarksConfiguration2 setMainTickMarkColor:labelColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v4 setBackgroundColor:clearColor];

    [v4 setUseTickMarkLegibilityShadows:1];
    subviews = [v4 subviews];
    firstObject = [subviews firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [firstObject _setHiddenPocketEdges:15];
    }
  }

  else
  {
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v14 = [secondaryLabelColor2 colorWithAlphaComponent:0.5];
    tickMarksConfiguration3 = [v4 tickMarksConfiguration];
    [tickMarksConfiguration3 setSecondaryTickMarkColor:v14];

    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    tickMarksConfiguration4 = [v4 tickMarksConfiguration];
    [tickMarksConfiguration4 setMainTickMarkColor:labelColor2];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [v4 setBackgroundColor:clearColor2];

    [v4 setUseTickMarkLegibilityShadows:1];
  }

  return v4;
}

+ (double)changeValueOfSlider:(id)slider reverse:(BOOL)reverse coarse:(BOOL)coarse
{
  coarseCopy = coarse;
  reverseCopy = reverse;
  sliderCopy = slider;
  [sliderCopy maximumValue];
  v9 = v8;
  [sliderCopy minimumValue];
  v11 = (v9 - v10) / fmax(([sliderCopy tickMarkCount] - 1), 1.0);
  if (reverseCopy)
  {
    v11 = -v11;
  }

  if (coarseCopy)
  {
    v12 = v11 * 5.0;
  }

  else
  {
    v12 = v11;
  }

  [sliderCopy value];
  [sliderCopy setValue:v13 + v12];

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