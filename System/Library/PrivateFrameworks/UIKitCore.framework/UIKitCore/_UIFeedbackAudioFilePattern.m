@interface _UIFeedbackAudioFilePattern
+ (id)feedbackPatternFromFile:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_UIFeedbackAudioFilePattern)initWithDictionaryRepresentation:(id)a3;
- (_UIFeedbackAudioFilePattern)initWithFileURL:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation _UIFeedbackAudioFilePattern

+ (id)feedbackPatternFromFile:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFileURL:v4];

  return v5;
}

- (_UIFeedbackAudioFilePattern)initWithFileURL:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _UIFeedbackAudioFilePattern;
  v6 = [(_UIFeedback *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileURL, a3);
    v8 = v7;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIFeedbackAudioFilePattern;
  if ([(_UIFeedback *)&v10 isEqual:v4])
  {
    v5 = v4;
    if (-[NSURL isEqual:](self->_fileURL, "isEqual:", v5[17]) && (canReuseCoreHapticsPlayer = self->_canReuseCoreHapticsPlayer, canReuseCoreHapticsPlayer == [v5 canReuseCoreHapticsPlayer]))
    {
      disableEventUseVolumeEnvelope = self->_disableEventUseVolumeEnvelope;
      v8 = disableEventUseVolumeEnvelope == [v5 disableEventUseVolumeEnvelope];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_UIFeedbackAudioFilePattern)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _UIFeedbackAudioFilePattern;
  v5 = [(_UIFeedback *)&v14 initWithDictionaryRepresentation:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFF8];
    v7 = [v4 objectForKeyedSubscript:@"fileURL"];
    v8 = [v6 URLWithString:v7 encodingInvalidCharacters:0];
    fileURL = v5->_fileURL;
    v5->_fileURL = v8;

    v10 = [v4 objectForKeyedSubscript:@"canReuseCoreHapticsPlayer"];
    v5->_canReuseCoreHapticsPlayer = [v10 BOOLValue];

    v11 = [v4 objectForKeyedSubscript:@"disableEventUseVolumeEnvelope"];
    v5->_disableEventUseVolumeEnvelope = [v11 BOOLValue];

    v12 = v5;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v9.receiver = self;
  v9.super_class = _UIFeedbackAudioFilePattern;
  v3 = [(_UIFeedback *)&v9 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(NSURL *)self->_fileURL absoluteString];
  [v4 setObject:v5 forKeyedSubscript:@"fileURL"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_canReuseCoreHapticsPlayer];
  [v4 setObject:v6 forKeyedSubscript:@"canReuseCoreHapticsPlayer"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_disableEventUseVolumeEnvelope];
  [v4 setObject:v7 forKeyedSubscript:@"disableEventUseVolumeEnvelope"];

  return v4;
}

@end