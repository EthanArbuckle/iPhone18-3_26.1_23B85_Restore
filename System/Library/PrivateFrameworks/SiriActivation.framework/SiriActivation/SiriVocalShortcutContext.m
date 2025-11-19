@interface SiriVocalShortcutContext
- (SiriVocalShortcutContext)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriVocalShortcutContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SiriContext *)self contextOverride];
  v5 = [(SiriVocalShortcutContext *)self utteranceText];
  v6 = [v3 stringWithFormat:@"<SiriVocalShortcutContext contextOverride:%@, utteranceText:%@>", v4, v5];

  return v6;
}

- (SiriVocalShortcutContext)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SiriVocalShortcutContext;
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
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SiriVocalShortcutContext;
  v4 = a3;
  [(SiriContext *)&v6 encodeWithCoder:v4];
  v5 = [(SiriVocalShortcutContext *)self utteranceText:v6.receiver];
  [v4 encodeObject:v5 forKey:@"utteranceText"];
}

@end