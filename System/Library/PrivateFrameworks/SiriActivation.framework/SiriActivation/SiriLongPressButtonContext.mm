@interface SiriLongPressButtonContext
- (SiriLongPressButtonContext)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriLongPressButtonContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  contextOverride = [(SiriContext *)self contextOverride];
  v5 = MEMORY[0x1E696AD98];
  [(SiriLongPressButtonContext *)self buttonDownTimestamp];
  v6 = [v5 numberWithDouble:?];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SiriLongPressButtonContext longPressBehavior](self, "longPressBehavior")}];
  activationEventInstrumentationIdentifier = [(SiriLongPressButtonContext *)self activationEventInstrumentationIdentifier];
  v9 = [v3 stringWithFormat:@"<SiriLongPressButtonContext contextOverride:%@ buttonDownTimestamp:%@ longPressBehavior: %@, activationEventInstrumentationIdentifier: %@>", contextOverride, v6, v7, activationEventInstrumentationIdentifier];

  return v9;
}

- (SiriLongPressButtonContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SiriLongPressButtonContext;
  v5 = [(SiriContext *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buttonDownTimestamp"];
    [v6 doubleValue];
    v5->_buttonDownTimestamp = v7;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"longPressBehavior"];
    v5->_longPressBehavior = [v8 integerValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activationEventIdentifier"];
    activationEventInstrumentationIdentifier = v5->_activationEventInstrumentationIdentifier;
    v5->_activationEventInstrumentationIdentifier = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = SiriLongPressButtonContext;
  coderCopy = coder;
  [(SiriContext *)&v9 encodeWithCoder:coderCopy];
  v5 = MEMORY[0x1E696AD98];
  [(SiriLongPressButtonContext *)self buttonDownTimestamp:v9.receiver];
  v6 = [v5 numberWithDouble:?];
  [coderCopy encodeObject:v6 forKey:@"buttonDownTimestamp"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SiriLongPressButtonContext longPressBehavior](self, "longPressBehavior")}];
  [coderCopy encodeObject:v7 forKey:@"longPressBehavior"];

  activationEventInstrumentationIdentifier = [(SiriLongPressButtonContext *)self activationEventInstrumentationIdentifier];
  [coderCopy encodeObject:activationEventInstrumentationIdentifier forKey:@"activationEventIdentifier"];
}

@end