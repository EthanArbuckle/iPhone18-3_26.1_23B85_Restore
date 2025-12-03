@interface _UIFeedbackHapticFilePattern
+ (id)feedbackPatternFromFile:(id)file;
- (BOOL)isEqual:(id)equal;
- (_UIFeedbackHapticFilePattern)initWithDictionaryRepresentation:(id)representation;
- (_UIFeedbackHapticFilePattern)initWithFileURL:(id)l;
- (id)dictionaryRepresentation;
- (unint64_t)_effectivePlayableFeedbackTypes;
@end

@implementation _UIFeedbackHapticFilePattern

+ (id)feedbackPatternFromFile:(id)file
{
  fileCopy = file;
  v5 = [[self alloc] initWithFileURL:fileCopy];

  return v5;
}

- (_UIFeedbackHapticFilePattern)initWithFileURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = _UIFeedbackHapticFilePattern;
  v6 = [(_UIFeedback *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileURL, l);
    v8 = v7;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIFeedbackHapticFilePattern;
  if ([(_UIFeedback *)&v7 isEqual:equalCopy])
  {
    v5 = [(NSURL *)self->_fileURL isEqual:equalCopy[17]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UIFeedbackHapticFilePattern)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v12.receiver = self;
  v12.super_class = _UIFeedbackHapticFilePattern;
  v5 = [(_UIFeedback *)&v12 initWithDictionaryRepresentation:representationCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFF8];
    v7 = [representationCopy objectForKeyedSubscript:@"fileURL"];
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
  dictionaryRepresentation = [(_UIFeedback *)&v7 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  absoluteString = [(NSURL *)self->_fileURL absoluteString];
  [v4 setObject:absoluteString forKeyedSubscript:@"fileURL"];

  return v4;
}

- (unint64_t)_effectivePlayableFeedbackTypes
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 _feedbackSupportLevel] > 1;

  return 2 * v3;
}

@end