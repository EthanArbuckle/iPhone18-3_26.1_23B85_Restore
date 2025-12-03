@interface SiriVocalShortcutContext
- (SiriVocalShortcutContext)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriVocalShortcutContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  contextOverride = [(SiriContext *)self contextOverride];
  utteranceText = [(SiriVocalShortcutContext *)self utteranceText];
  v6 = [v3 stringWithFormat:@"<SiriVocalShortcutContext contextOverride:%@, utteranceText:%@>", contextOverride, utteranceText];

  return v6;
}

- (SiriVocalShortcutContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SiriVocalShortcutContext;
  v5 = [(SiriContext *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"utteranceText"];
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SiriVocalShortcutContext;
  coderCopy = coder;
  [(SiriContext *)&v6 encodeWithCoder:coderCopy];
  v5 = [(SiriVocalShortcutContext *)self utteranceText:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"utteranceText"];
}

@end