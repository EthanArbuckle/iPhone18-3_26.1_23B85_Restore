@interface _UIFeedbackLibraryPattern
+ (id)feedbackPatternWithLibraryKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (CHHapticPattern)pattern;
- (_UIFeedbackLibraryPattern)initWithDictionaryRepresentation:(id)representation;
- (_UIFeedbackLibraryPattern)initWithLibraryKey:(id)key;
- (id)dictionaryRepresentation;
- (unint64_t)_effectivePlayableFeedbackTypes;
@end

@implementation _UIFeedbackLibraryPattern

+ (id)feedbackPatternWithLibraryKey:(id)key
{
  keyCopy = key;
  v5 = [[self alloc] initWithLibraryKey:keyCopy];

  return v5;
}

- (_UIFeedbackLibraryPattern)initWithLibraryKey:(id)key
{
  keyCopy = key;
  v10.receiver = self;
  v10.super_class = _UIFeedbackLibraryPattern;
  v6 = [(_UIFeedback *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryKey, key);
    v8 = v7;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UIFeedbackLibraryPattern;
  if ([(_UIFeedback *)&v7 isEqual:equalCopy])
  {
    v5 = [(NSString *)self->_libraryKey isEqual:equalCopy[16]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UIFeedbackLibraryPattern)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v10.receiver = self;
  v10.super_class = _UIFeedbackLibraryPattern;
  v5 = [(_UIFeedback *)&v10 initWithDictionaryRepresentation:representationCopy];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"libraryKey"];
    libraryKey = v5->_libraryKey;
    v5->_libraryKey = v6;

    v8 = v5;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v6.receiver = self;
  v6.super_class = _UIFeedbackLibraryPattern;
  dictionaryRepresentation = [(_UIFeedback *)&v6 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  [v4 setObject:self->_libraryKey forKeyedSubscript:@"libraryKey"];

  return v4;
}

- (unint64_t)_effectivePlayableFeedbackTypes
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 _feedbackSupportLevel] > 1;

  return 2 * v3;
}

- (CHHapticPattern)pattern
{
  v21 = *MEMORY[0x1E69E9840];
  pattern = self->_pattern;
  if (!pattern)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v4 = qword_1ED49A668;
    v16 = qword_1ED49A668;
    if (!qword_1ED49A668)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v18 = __getCHHapticPatternClass_block_invoke;
      v19 = &unk_1E70F2F20;
      v20 = &v13;
      __getCHHapticPatternClass_block_invoke(&buf);
      v4 = v14[3];
    }

    v5 = v4;
    _Block_object_dispose(&v13, 8);
    libraryKey = self->_libraryKey;
    v12 = 0;
    v7 = [v4 patternForKey:libraryKey error:&v12];
    v8 = v12;
    v9 = self->_pattern;
    self->_pattern = v7;

    if (v8)
    {
      if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v10 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A660) + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v8;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "failed loading haptic library pattern: %@", &buf, 0xCu);
        }
      }
    }

    pattern = self->_pattern;
  }

  return pattern;
}

@end