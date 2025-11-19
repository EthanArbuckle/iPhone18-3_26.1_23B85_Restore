@interface UIDictationInputModeOptions
+ (UIDictationInputModeOptions)dictationInputModeOptionsWithInvocationSource:(id)a3;
- (UIDictationInputModeOptions)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIDictationInputModeOptions

+ (UIDictationInputModeOptions)dictationInputModeOptionsWithInvocationSource:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UIDictationInputModeOptions);
  [(UIDictationInputModeOptions *)v4 setInvocationSource:v3];

  return v4;
}

- (UIDictationInputModeOptions)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v5 = [(UIDictationInputModeOptions *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invocationSource"];
    invocationSource = v5->_invocationSource;
    v5->_invocationSource = v6;

    v5->_shouldStayInDictationInputModeIfAutoEndpointed = [v4 decodeBoolForKey:@"shouldStayIn"];
    v5->_shouldSupressShowingAlternativesAutomatically = [v4 decodeBoolForKey:@"shouldSuppressShowing"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if (([v6 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  invocationSource = self->_invocationSource;
  v5 = v6;
  if (invocationSource)
  {
    [v6 encodeObject:invocationSource forKey:@"invocationSource"];
    v5 = v6;
  }

  [v5 encodeBool:self->_shouldStayInDictationInputModeIfAutoEndpointed forKey:@"shouldStayIn"];
  [v6 encodeBool:self->_shouldSupressShowingAlternativesAutomatically forKey:@"shouldSuppressShowing"];
}

@end