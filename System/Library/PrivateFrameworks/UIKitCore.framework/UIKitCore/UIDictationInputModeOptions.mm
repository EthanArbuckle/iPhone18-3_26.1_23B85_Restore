@interface UIDictationInputModeOptions
+ (UIDictationInputModeOptions)dictationInputModeOptionsWithInvocationSource:(id)source;
- (UIDictationInputModeOptions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIDictationInputModeOptions

+ (UIDictationInputModeOptions)dictationInputModeOptionsWithInvocationSource:(id)source
{
  sourceCopy = source;
  v4 = objc_alloc_init(UIDictationInputModeOptions);
  [(UIDictationInputModeOptions *)v4 setInvocationSource:sourceCopy];

  return v4;
}

- (UIDictationInputModeOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v5 = [(UIDictationInputModeOptions *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invocationSource"];
    invocationSource = v5->_invocationSource;
    v5->_invocationSource = v6;

    v5->_shouldStayInDictationInputModeIfAutoEndpointed = [coderCopy decodeBoolForKey:@"shouldStayIn"];
    v5->_shouldSupressShowingAlternativesAutomatically = [coderCopy decodeBoolForKey:@"shouldSuppressShowing"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  invocationSource = self->_invocationSource;
  v5 = coderCopy;
  if (invocationSource)
  {
    [coderCopy encodeObject:invocationSource forKey:@"invocationSource"];
    v5 = coderCopy;
  }

  [v5 encodeBool:self->_shouldStayInDictationInputModeIfAutoEndpointed forKey:@"shouldStayIn"];
  [coderCopy encodeBool:self->_shouldSupressShowingAlternativesAutomatically forKey:@"shouldSuppressShowing"];
}

@end