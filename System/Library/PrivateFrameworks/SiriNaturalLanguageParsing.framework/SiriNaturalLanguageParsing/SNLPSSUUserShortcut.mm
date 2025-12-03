@interface SNLPSSUUserShortcut
- (SNLPSSUUserShortcut)initWithIdentifier:(id)identifier phrase:(id)phrase;
@end

@implementation SNLPSSUUserShortcut

- (SNLPSSUUserShortcut)initWithIdentifier:(id)identifier phrase:(id)phrase
{
  identifierCopy = identifier;
  phraseCopy = phrase;
  v13.receiver = self;
  v13.super_class = SNLPSSUUserShortcut;
  v8 = [(SNLPSSUUserShortcut *)&v13 init];
  identifier = v8->_identifier;
  v8->_identifier = identifierCopy;
  v10 = identifierCopy;

  phrase = v8->_phrase;
  v8->_phrase = phraseCopy;

  return v8;
}

@end