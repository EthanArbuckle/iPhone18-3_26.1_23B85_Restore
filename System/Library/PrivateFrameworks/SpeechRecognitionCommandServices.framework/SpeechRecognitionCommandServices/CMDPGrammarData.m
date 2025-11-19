@interface CMDPGrammarData
- (CMDPGrammarData)initWithGrammarDataWord:(id)a3 lmIdentifer:(id)a4 commandIdentifier:(id)a5;
@end

@implementation CMDPGrammarData

- (CMDPGrammarData)initWithGrammarDataWord:(id)a3 lmIdentifer:(id)a4 commandIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CMDPGrammarData;
  v12 = [(CMDPGrammarData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_word, a3);
    objc_storeStrong(&v13->_builtInLMIdentifier, a4);
    objc_storeStrong(&v13->_commandIdentifier, a5);
  }

  return v13;
}

@end