@interface SXImageComponent
- (BOOL)shouldBeExposedToAssistiveTechnology;
- (NSAttributedString)captionWithLocalizedRoleForSpeaking;
@end

@implementation SXImageComponent

- (BOOL)shouldBeExposedToAssistiveTechnology
{
  v2 = [(SXImageComponent *)self captionWithLocalizedRoleForSpeaking];
  v3 = [v2 length] != 0;

  return v3;
}

- (NSAttributedString)captionWithLocalizedRoleForSpeaking
{
  v3 = [(SXComponent *)self classification];
  v4 = [v3 accessibilityContextualLabel];

  if ([v4 length])
  {
    v5 = [(SXImageComponent *)self caption];
    if ([v5 length])
    {
      v6 = [(SXImageComponent *)self caption];
      v7 = [v6 sxaxAttributedStringWithLowPitchPrefix:v4];

LABEL_11:
      goto LABEL_12;
    }

    v12 = [v4 sxaxLowPitchAttributedString];
LABEL_10:
    v7 = v12;
    goto LABEL_11;
  }

  v8 = [(SXImageComponent *)self accessibilityCaption];
  v9 = [v8 length];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v11 = [(SXImageComponent *)self accessibilityCaption];
LABEL_9:
    v5 = v11;
    v12 = [v10 initWithString:v11];
    goto LABEL_10;
  }

  v13 = [(SXImageComponent *)self caption];
  v14 = [v13 length];

  if (v14)
  {
    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v11 = [(SXImageComponent *)self caption];
    goto LABEL_9;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

@end