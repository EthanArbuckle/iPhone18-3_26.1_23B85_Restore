@interface SNLPSSUUserShortcut
- (SNLPSSUUserShortcut)initWithIdentifier:(id)a3 phrase:(id)a4;
@end

@implementation SNLPSSUUserShortcut

- (SNLPSSUUserShortcut)initWithIdentifier:(id)a3 phrase:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SNLPSSUUserShortcut;
  v8 = [(SNLPSSUUserShortcut *)&v13 init];
  identifier = v8->_identifier;
  v8->_identifier = v6;
  v10 = v6;

  phrase = v8->_phrase;
  v8->_phrase = v7;

  return v8;
}

@end