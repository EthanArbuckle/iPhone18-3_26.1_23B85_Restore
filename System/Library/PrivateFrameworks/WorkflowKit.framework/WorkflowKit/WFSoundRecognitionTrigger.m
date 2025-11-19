@interface WFSoundRecognitionTrigger
+ (id)displayGlyph;
+ (id)localizedDisplayExplanation;
+ (id)localizedDisplayNameWithContext:(id)a3;
- (BOOL)hasValidConfiguration;
- (WFSoundRecognitionTrigger)init;
- (WFSoundRecognitionTrigger)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSoundRecognitionTrigger

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = WFSoundRecognitionTrigger;
  v4 = [(WFTrigger *)&v8 copyWithZone:a3];
  v5 = [(WFSoundRecognitionTrigger *)self soundDetectionTypes];
  v6 = [v5 copy];
  [v4 setSoundDetectionTypes:v6];

  return v4;
}

- (WFSoundRecognitionTrigger)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFSoundRecognitionTrigger;
  v5 = [(WFTrigger *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"soundDetectionTypes"];
    soundDetectionTypes = v5->_soundDetectionTypes;
    v5->_soundDetectionTypes = v9;

    v11 = v5;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFSoundRecognitionTrigger;
  v4 = a3;
  [(WFTrigger *)&v6 encodeWithCoder:v4];
  v5 = [(WFSoundRecognitionTrigger *)self soundDetectionTypes:v6.receiver];
  [v4 encodeObject:v5 forKey:@"soundDetectionTypes"];
}

- (WFSoundRecognitionTrigger)init
{
  v7.receiver = self;
  v7.super_class = WFSoundRecognitionTrigger;
  v2 = [(WFTrigger *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    soundDetectionTypes = v2->_soundDetectionTypes;
    v2->_soundDetectionTypes = v3;

    v5 = v2;
  }

  return v2;
}

- (BOOL)hasValidConfiguration
{
  v2 = [(WFSoundRecognitionTrigger *)self soundDetectionTypes];
  v3 = [v2 count] != 0;

  return v3;
}

+ (id)displayGlyph
{
  v2 = MEMORY[0x1E69E0B58];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  v4 = [v2 imageNamed:@"SoundRecognitionTriggerIcon" inBundle:v3];

  return v4;
}

+ (id)localizedDisplayExplanation
{
  v2 = [MEMORY[0x1E69E0A90] currentDevice];
  v3 = [v2 localizedModel];

  v4 = MEMORY[0x1E696AEC0];
  v5 = WFLocalizedString(@"“When my %@ recognizes a doorbell sound”");
  v6 = [v4 localizedStringWithFormat:v5, v3];

  return v6;
}

+ (id)localizedDisplayNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Sound Recognition", @"Sound Recognition");
  v5 = [v3 localize:v4];

  return v5;
}

@end