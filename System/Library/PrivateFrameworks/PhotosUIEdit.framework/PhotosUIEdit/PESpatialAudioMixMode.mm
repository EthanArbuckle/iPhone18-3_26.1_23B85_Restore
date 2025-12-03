@interface PESpatialAudioMixMode
+ (id)audioMixModeForRenderingStyle:(id)style;
+ (id)audioMixModes;
- (NSString)localizedTitle;
- (NSString)renderingStyle;
- (PESpatialAudioMixMode)initWithType:(unint64_t)type;
@end

@implementation PESpatialAudioMixMode

- (NSString)renderingStyle
{
  type = [(PESpatialAudioMixMode *)self type];
  if (type <= 3)
  {
    v3 = **(&unk_279A300E0 + type);
  }

  return v3;
}

- (NSString)localizedTitle
{
  type = [(PESpatialAudioMixMode *)self type];
  if (type > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279A300C0[type];
  }

  return PELocalizedString(v3);
}

- (PESpatialAudioMixMode)initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PESpatialAudioMixMode;
  result = [(PESpatialAudioMixMode *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

+ (id)audioMixModeForRenderingStyle:(id)style
{
  styleCopy = style;
  v4 = +[PESpatialAudioMixMode audioMixModes];
  v8 = styleCopy;
  v5 = styleCopy;
  v6 = PFFind();

  return v6;
}

uint64_t __55__PESpatialAudioMixMode_audioMixModeForRenderingStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 renderingStyle];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (id)audioMixModes
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = [[PESpatialAudioMixMode alloc] initWithType:0];
  v8[0] = v2;
  v3 = [[PESpatialAudioMixMode alloc] initWithType:3];
  v8[1] = v3;
  v4 = [[PESpatialAudioMixMode alloc] initWithType:2];
  v8[2] = v4;
  v5 = [[PESpatialAudioMixMode alloc] initWithType:1];
  v8[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];

  return v6;
}

@end