@interface CMDPGrammarData
- (CMDPGrammarData)initWithGrammarDataWord:(id)word lmIdentifer:(id)identifer commandIdentifier:(id)identifier;
@end

@implementation CMDPGrammarData

- (CMDPGrammarData)initWithGrammarDataWord:(id)word lmIdentifer:(id)identifer commandIdentifier:(id)identifier
{
  wordCopy = word;
  identiferCopy = identifer;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = CMDPGrammarData;
  v12 = [(CMDPGrammarData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_word, word);
    objc_storeStrong(&v13->_builtInLMIdentifier, identifer);
    objc_storeStrong(&v13->_commandIdentifier, identifier);
  }

  return v13;
}

@end