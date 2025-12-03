@interface SXImageComponent
- (BOOL)shouldBeExposedToAssistiveTechnology;
- (NSAttributedString)captionWithLocalizedRoleForSpeaking;
@end

@implementation SXImageComponent

- (BOOL)shouldBeExposedToAssistiveTechnology
{
  captionWithLocalizedRoleForSpeaking = [(SXImageComponent *)self captionWithLocalizedRoleForSpeaking];
  v3 = [captionWithLocalizedRoleForSpeaking length] != 0;

  return v3;
}

- (NSAttributedString)captionWithLocalizedRoleForSpeaking
{
  classification = [(SXComponent *)self classification];
  accessibilityContextualLabel = [classification accessibilityContextualLabel];

  if ([accessibilityContextualLabel length])
  {
    caption = [(SXImageComponent *)self caption];
    if ([caption length])
    {
      caption2 = [(SXImageComponent *)self caption];
      v7 = [caption2 sxaxAttributedStringWithLowPitchPrefix:accessibilityContextualLabel];

LABEL_11:
      goto LABEL_12;
    }

    sxaxLowPitchAttributedString = [accessibilityContextualLabel sxaxLowPitchAttributedString];
LABEL_10:
    v7 = sxaxLowPitchAttributedString;
    goto LABEL_11;
  }

  accessibilityCaption = [(SXImageComponent *)self accessibilityCaption];
  v9 = [accessibilityCaption length];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    accessibilityCaption2 = [(SXImageComponent *)self accessibilityCaption];
LABEL_9:
    caption = accessibilityCaption2;
    sxaxLowPitchAttributedString = [v10 initWithString:accessibilityCaption2];
    goto LABEL_10;
  }

  caption3 = [(SXImageComponent *)self caption];
  v14 = [caption3 length];

  if (v14)
  {
    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    accessibilityCaption2 = [(SXImageComponent *)self caption];
    goto LABEL_9;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

@end