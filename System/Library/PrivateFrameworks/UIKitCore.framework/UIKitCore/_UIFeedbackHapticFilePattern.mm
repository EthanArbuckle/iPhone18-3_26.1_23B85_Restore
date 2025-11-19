@interface _UIFeedbackHapticFilePattern
+ (id)feedbackPatternFromFile:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_UIFeedbackHapticFilePattern)initWithDictionaryRepresentation:(id)a3;
- (_UIFeedbackHapticFilePattern)initWithFileURL:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)_effectivePlayableFeedbackTypes;
@end

@implementation _UIFeedbackHapticFilePattern

+ (id)feedbackPatternFromFile:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFileURL:v4];

  return v5;
}

- (_UIFeedbackHapticFilePattern)initWithFileURL:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _UIFeedbackHapticFilePattern;
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
  v7.receiver = self;
  v7.super_class = _UIFeedbackHapticFilePattern;
  if ([(_UIFeedback *)&v7 isEqual:v4])
  {
    v5 = [(NSURL *)self->_fileURL isEqual:v4[17]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UIFeedbackHapticFilePattern)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UIFeedbackHapticFilePattern;
  v5 = [(_UIFeedback *)&v12 initWithDictionaryRepresentation:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFF8];
    v7 = [v4 objectForKeyedSubscript:@"fileURL"];
    v8 = [v6 URLWithString:v7 encodingInvalidCharacters:0];
    fileURL = v5->_fileURL;
    v5->_fileURL = v8;

    v10 = v5;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = _UIFeedbackHapticFilePattern;
  v3 = [(_UIFeedback *)&v7 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(NSURL *)self->_fileURL absoluteString];
  [v4 setObject:v5 forKeyedSubscript:@"fileURL"];

  return v4;
}

- (unint64_t)_effectivePlayableFeedbackTypes
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 _feedbackSupportLevel] > 1;

  return 2 * v3;
}

@end