@interface UIDictationInterpretationGroup
- (UIDictationInterpretationGroup)initWithCoder:(id)coder;
- (UIDictationInterpretationGroup)initWithInterpretations:(id)interpretations;
- (UIDictationInterpretationGroup)initWithInterpretations:(id)interpretations isLowConfidence:(BOOL)confidence;
- (double)bestConfidenceScore;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIDictationInterpretationGroup

- (UIDictationInterpretationGroup)initWithInterpretations:(id)interpretations
{
  interpretationsCopy = interpretations;
  v10.receiver = self;
  v10.super_class = UIDictationInterpretationGroup;
  v5 = [(UIDictationInterpretationGroup *)&v10 init];
  if (v5)
  {
    v6 = [interpretationsCopy copy];
    interpretations = v5->_interpretations;
    v5->_interpretations = v6;

    v8 = v5;
  }

  return v5;
}

- (UIDictationInterpretationGroup)initWithInterpretations:(id)interpretations isLowConfidence:(BOOL)confidence
{
  result = [(UIDictationInterpretationGroup *)self initWithInterpretations:interpretations];
  if (result)
  {
    result->_isLowConfidence = confidence;
  }

  return result;
}

- (UIDictationInterpretationGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = UIDictationInterpretationGroup;
  v5 = [(UIDictationInterpretationGroup *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"interpretations"];
    interpretations = v5->_interpretations;
    v5->_interpretations = v9;

    v5->_isLowConfidence = [coderCopy decodeBoolForKey:@"isLowConfidence"];
    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  interpretations = self->_interpretations;
  coderCopy = coder;
  [coderCopy encodeObject:interpretations forKey:@"interpretations"];
  [coderCopy encodeBool:self->_isLowConfidence forKey:@"isLowConfidence"];
}

- (double)bestConfidenceScore
{
  firstObject = [(NSArray *)self->_interpretations firstObject];
  [firstObject averageConfidenceScore];
  v4 = v3;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  firstObject = [(NSArray *)self->_interpretations firstObject];
  v7 = [firstObject serializedInterpretationWithTransform:0];
  v8 = [v3 stringWithFormat:@"<%@ best=%@>", v5, v7];

  return v8;
}

@end