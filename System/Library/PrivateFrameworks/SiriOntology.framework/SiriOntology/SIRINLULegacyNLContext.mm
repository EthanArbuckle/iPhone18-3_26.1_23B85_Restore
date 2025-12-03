@interface SIRINLULegacyNLContext
- (SIRINLULegacyNLContext)initWithCoder:(id)coder;
- (SIRINLULegacyNLContext)initWithDictationPrompt:(BOOL)prompt strictPrompt:(BOOL)strictPrompt previousDomainName:(id)name listenAfterSpeaking:(BOOL)speaking renderedTexts:(id)texts legacyContextSource:(int)source;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLULegacyNLContext

- (id)description
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", -[SIRINLULegacyNLContext dictationPrompt](self, "dictationPrompt")];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", -[SIRINLULegacyNLContext strictPrompt](self, "strictPrompt")];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", -[SIRINLULegacyNLContext listenAfterSpeaking](self, "listenAfterSpeaking")];
  renderedTexts = [(SIRINLULegacyNLContext *)self renderedTexts];
  v7 = [SIRINLUPrintUtils indentArray:renderedTexts numSpaces:4];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", -[SIRINLULegacyNLContext legacyContextSource](self, "legacyContextSource")];
  v9 = MEMORY[0x1E696AEC0];
  previousDomainName = [(SIRINLULegacyNLContext *)self previousDomainName];
  v11 = [v9 stringWithFormat:@"{LegacyNLContext\n  dictationPrompt: %@\n  strictPrompt: %@\n  previousDomainName: %@\n  listenAfterSpeaking: %@\n  renderedTexts:\n%@\n  legacyContextSource: %@\n}", v3, v4, previousDomainName, v5, v7, v8];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  dictationPrompt = self->_dictationPrompt;
  coderCopy = coder;
  v11 = [v4 numberWithBool:dictationPrompt];
  [coderCopy encodeObject:v11 forKey:@"dictationPrompt"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_strictPrompt];
  [coderCopy encodeObject:v7 forKey:@"strictPrompt"];
  previousDomainName = [(SIRINLULegacyNLContext *)self previousDomainName];
  [coderCopy encodeObject:previousDomainName forKey:@"previousDomainName"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_listenAfterSpeaking];
  [coderCopy encodeObject:v9 forKey:@"listenAfterSpeaking"];
  renderedTexts = [(SIRINLULegacyNLContext *)self renderedTexts];
  [coderCopy encodeObject:renderedTexts forKey:@"renderedTexts"];

  [coderCopy encodeInt:-[SIRINLULegacyNLContext legacyContextSource](self forKey:{"legacyContextSource"), @"legacyContextSource"}];
}

- (SIRINLULegacyNLContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SIRINLULegacyNLContext;
  v5 = [(SIRINLULegacyNLContext *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dictationPrompt"];
    v5->_dictationPrompt = [v6 BOOLValue];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"strictPrompt"];
    v5->_strictPrompt = [v7 BOOLValue];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previousDomainName"];
    previousDomainName = v5->_previousDomainName;
    v5->_previousDomainName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listenAfterSpeaking"];
    v5->_listenAfterSpeaking = [v10 BOOLValue];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"renderedTexts"];
    renderedTexts = v5->_renderedTexts;
    v5->_renderedTexts = v14;

    v5->_legacyContextSource = [coderCopy decodeIntForKey:@"legacyContextSource"];
  }

  return v5;
}

- (SIRINLULegacyNLContext)initWithDictationPrompt:(BOOL)prompt strictPrompt:(BOOL)strictPrompt previousDomainName:(id)name listenAfterSpeaking:(BOOL)speaking renderedTexts:(id)texts legacyContextSource:(int)source
{
  nameCopy = name;
  textsCopy = texts;
  v20.receiver = self;
  v20.super_class = SIRINLULegacyNLContext;
  v17 = [(SIRINLULegacyNLContext *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_dictationPrompt = prompt;
    v17->_strictPrompt = strictPrompt;
    objc_storeStrong(&v17->_previousDomainName, name);
    v18->_listenAfterSpeaking = speaking;
    objc_storeStrong(&v18->_renderedTexts, texts);
    v18->_legacyContextSource = source;
  }

  return v18;
}

@end