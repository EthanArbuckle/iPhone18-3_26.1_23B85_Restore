@interface SiriLongPressButtonContext
- (SiriLongPressButtonContext)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriLongPressButtonContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SiriContext *)self contextOverride];
  v5 = MEMORY[0x1E696AD98];
  [(SiriLongPressButtonContext *)self buttonDownTimestamp];
  v6 = [v5 numberWithDouble:?];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SiriLongPressButtonContext longPressBehavior](self, "longPressBehavior")}];
  v8 = [(SiriLongPressButtonContext *)self activationEventInstrumentationIdentifier];
  v9 = [v3 stringWithFormat:@"<SiriLongPressButtonContext contextOverride:%@ buttonDownTimestamp:%@ longPressBehavior: %@, activationEventInstrumentationIdentifier: %@>", v4, v6, v7, v8];

  return v9;
}

- (SiriLongPressButtonContext)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SiriLongPressButtonContext;
  v5 = [(SiriContext *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buttonDownTimestamp"];
    [v6 doubleValue];
    v5->_buttonDownTimestamp = v7;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"longPressBehavior"];
    v5->_longPressBehavior = [v8 integerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activationEventIdentifier"];
    activationEventInstrumentationIdentifier = v5->_activationEventInstrumentationIdentifier;
    v5->_activationEventInstrumentationIdentifier = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = SiriLongPressButtonContext;
  v4 = a3;
  [(SiriContext *)&v9 encodeWithCoder:v4];
  v5 = MEMORY[0x1E696AD98];
  [(SiriLongPressButtonContext *)self buttonDownTimestamp:v9.receiver];
  v6 = [v5 numberWithDouble:?];
  [v4 encodeObject:v6 forKey:@"buttonDownTimestamp"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SiriLongPressButtonContext longPressBehavior](self, "longPressBehavior")}];
  [v4 encodeObject:v7 forKey:@"longPressBehavior"];

  v8 = [(SiriLongPressButtonContext *)self activationEventInstrumentationIdentifier];
  [v4 encodeObject:v8 forKey:@"activationEventIdentifier"];
}

@end