@interface SFSearchViewAppearFeedback
- (SFSearchViewAppearFeedback)initWithCoder:(id)a3;
- (SFSearchViewAppearFeedback)initWithEvent:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSearchViewAppearFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFSearchViewAppearFeedback;
  v4 = a3;
  [(SFFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_viewAppearEvent forKey:{@"viewAppearEvent", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_isOnLockScreen forKey:@"_isOnLockScreen"];
  [v4 encodeBool:self->_isOverApp forKey:@"_isOverApp"];
  [v4 encodeBool:self->_readerTextAvailable forKey:@"_readerTextAvailable"];
  [v4 encodeObject:self->_preexistingInput forKey:@"_preexistingInput"];
  [v4 encodeObject:self->_originatingApp forKey:@"_originatingApp"];
  [v4 encodeBool:self->_isUsingLoweredSearchBar forKey:@"_isUsingLoweredSearchBar"];
}

- (SFSearchViewAppearFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SFSearchViewAppearFeedback;
  v5 = [(SFFeedback *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_viewAppearEvent = [v4 decodeIntegerForKey:@"viewAppearEvent"];
    v5->_isOnLockScreen = [v4 decodeBoolForKey:@"_isOnLockScreen"];
    v5->_isOverApp = [v4 decodeBoolForKey:@"_isOverApp"];
    v5->_readerTextAvailable = [v4 decodeBoolForKey:@"_readerTextAvailable"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_preexistingInput"];
    preexistingInput = v5->_preexistingInput;
    v5->_preexistingInput = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_originatingApp"];
    originatingApp = v5->_originatingApp;
    v5->_originatingApp = v8;

    v5->_isUsingLoweredSearchBar = [v4 decodeBoolForKey:@"_isUsingLoweredSearchBar"];
  }

  return v5;
}

- (SFSearchViewAppearFeedback)initWithEvent:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SFSearchViewAppearFeedback;
  result = [(SFFeedback *)&v5 init];
  if (result)
  {
    result->_viewAppearEvent = a3;
  }

  return result;
}

@end