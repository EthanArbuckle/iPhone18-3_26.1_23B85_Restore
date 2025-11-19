@interface SiriSpotlightContext
- (SiriSpotlightContext)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriSpotlightContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SiriContext *)self contextOverride];
  v5 = [(SiriSpotlightContext *)self utteranceText];
  v6 = [MEMORY[0x1E696AEC0] stringWithSiriSpotlightContextSource:{-[SiriSpotlightContext source](self, "source")}];
  v7 = [v3 stringWithFormat:@"<SiriLongPressButtonContext contextOverride:%@, utteranceText:%@, source:%@>", v4, v5, v6];

  return v7;
}

- (SiriSpotlightContext)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SiriSpotlightContext;
  v5 = [(SiriContext *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"utteranceText"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1F47C3998;
    }

    objc_storeStrong(&v5->_utteranceText, v8);

    v5->_source = [v4 decodeIntegerForKey:@"source"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SiriSpotlightContext;
  v4 = a3;
  [(SiriContext *)&v6 encodeWithCoder:v4];
  v5 = [(SiriSpotlightContext *)self utteranceText:v6.receiver];
  [v4 encodeObject:v5 forKey:@"utteranceText"];

  [v4 encodeInteger:-[SiriSpotlightContext source](self forKey:{"source"), @"source"}];
}

@end