@interface SFSearchViewAppearFeedback
- (SFSearchViewAppearFeedback)initWithCoder:(id)coder;
- (SFSearchViewAppearFeedback)initWithEvent:(unint64_t)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSearchViewAppearFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFSearchViewAppearFeedback;
  coderCopy = coder;
  [(SFFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_viewAppearEvent forKey:{@"viewAppearEvent", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_isOnLockScreen forKey:@"_isOnLockScreen"];
  [coderCopy encodeBool:self->_isOverApp forKey:@"_isOverApp"];
  [coderCopy encodeBool:self->_readerTextAvailable forKey:@"_readerTextAvailable"];
  [coderCopy encodeObject:self->_preexistingInput forKey:@"_preexistingInput"];
  [coderCopy encodeObject:self->_originatingApp forKey:@"_originatingApp"];
  [coderCopy encodeBool:self->_isUsingLoweredSearchBar forKey:@"_isUsingLoweredSearchBar"];
}

- (SFSearchViewAppearFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SFSearchViewAppearFeedback;
  v5 = [(SFFeedback *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_viewAppearEvent = [coderCopy decodeIntegerForKey:@"viewAppearEvent"];
    v5->_isOnLockScreen = [coderCopy decodeBoolForKey:@"_isOnLockScreen"];
    v5->_isOverApp = [coderCopy decodeBoolForKey:@"_isOverApp"];
    v5->_readerTextAvailable = [coderCopy decodeBoolForKey:@"_readerTextAvailable"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_preexistingInput"];
    preexistingInput = v5->_preexistingInput;
    v5->_preexistingInput = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_originatingApp"];
    originatingApp = v5->_originatingApp;
    v5->_originatingApp = v8;

    v5->_isUsingLoweredSearchBar = [coderCopy decodeBoolForKey:@"_isUsingLoweredSearchBar"];
  }

  return v5;
}

- (SFSearchViewAppearFeedback)initWithEvent:(unint64_t)event
{
  v5.receiver = self;
  v5.super_class = SFSearchViewAppearFeedback;
  result = [(SFFeedback *)&v5 init];
  if (result)
  {
    result->_viewAppearEvent = event;
  }

  return result;
}

@end