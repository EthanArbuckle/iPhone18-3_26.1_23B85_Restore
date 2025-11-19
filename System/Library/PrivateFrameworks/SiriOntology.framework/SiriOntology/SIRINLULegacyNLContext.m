@interface SIRINLULegacyNLContext
- (SIRINLULegacyNLContext)initWithCoder:(id)a3;
- (SIRINLULegacyNLContext)initWithDictationPrompt:(BOOL)a3 strictPrompt:(BOOL)a4 previousDomainName:(id)a5 listenAfterSpeaking:(BOOL)a6 renderedTexts:(id)a7 legacyContextSource:(int)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLULegacyNLContext

- (id)description
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", -[SIRINLULegacyNLContext dictationPrompt](self, "dictationPrompt")];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", -[SIRINLULegacyNLContext strictPrompt](self, "strictPrompt")];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", -[SIRINLULegacyNLContext listenAfterSpeaking](self, "listenAfterSpeaking")];
  v6 = [(SIRINLULegacyNLContext *)self renderedTexts];
  v7 = [SIRINLUPrintUtils indentArray:v6 numSpaces:4];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", -[SIRINLULegacyNLContext legacyContextSource](self, "legacyContextSource")];
  v9 = MEMORY[0x1E696AEC0];
  v10 = [(SIRINLULegacyNLContext *)self previousDomainName];
  v11 = [v9 stringWithFormat:@"{LegacyNLContext\n  dictationPrompt: %@\n  strictPrompt: %@\n  previousDomainName: %@\n  listenAfterSpeaking: %@\n  renderedTexts:\n%@\n  legacyContextSource: %@\n}", v3, v4, v10, v5, v7, v8];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  dictationPrompt = self->_dictationPrompt;
  v6 = a3;
  v11 = [v4 numberWithBool:dictationPrompt];
  [v6 encodeObject:v11 forKey:@"dictationPrompt"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_strictPrompt];
  [v6 encodeObject:v7 forKey:@"strictPrompt"];
  v8 = [(SIRINLULegacyNLContext *)self previousDomainName];
  [v6 encodeObject:v8 forKey:@"previousDomainName"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_listenAfterSpeaking];
  [v6 encodeObject:v9 forKey:@"listenAfterSpeaking"];
  v10 = [(SIRINLULegacyNLContext *)self renderedTexts];
  [v6 encodeObject:v10 forKey:@"renderedTexts"];

  [v6 encodeInt:-[SIRINLULegacyNLContext legacyContextSource](self forKey:{"legacyContextSource"), @"legacyContextSource"}];
}

- (SIRINLULegacyNLContext)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SIRINLULegacyNLContext;
  v5 = [(SIRINLULegacyNLContext *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dictationPrompt"];
    v5->_dictationPrompt = [v6 BOOLValue];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"strictPrompt"];
    v5->_strictPrompt = [v7 BOOLValue];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previousDomainName"];
    previousDomainName = v5->_previousDomainName;
    v5->_previousDomainName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listenAfterSpeaking"];
    v5->_listenAfterSpeaking = [v10 BOOLValue];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"renderedTexts"];
    renderedTexts = v5->_renderedTexts;
    v5->_renderedTexts = v14;

    v5->_legacyContextSource = [v4 decodeIntForKey:@"legacyContextSource"];
  }

  return v5;
}

- (SIRINLULegacyNLContext)initWithDictationPrompt:(BOOL)a3 strictPrompt:(BOOL)a4 previousDomainName:(id)a5 listenAfterSpeaking:(BOOL)a6 renderedTexts:(id)a7 legacyContextSource:(int)a8
{
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = SIRINLULegacyNLContext;
  v17 = [(SIRINLULegacyNLContext *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_dictationPrompt = a3;
    v17->_strictPrompt = a4;
    objc_storeStrong(&v17->_previousDomainName, a5);
    v18->_listenAfterSpeaking = a6;
    objc_storeStrong(&v18->_renderedTexts, a7);
    v18->_legacyContextSource = a8;
  }

  return v18;
}

@end