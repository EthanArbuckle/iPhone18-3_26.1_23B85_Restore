@interface STKTextSessionData
- (STKTextSessionData)init;
- (STKTextSessionData)initWithText:(id)text simLabel:(id)label;
- (STKTextSessionData)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation STKTextSessionData

- (STKTextSessionData)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"STKTextSessionData.m" lineNumber:20 description:@"Unavailable."];

  return 0;
}

- (STKTextSessionData)initWithText:(id)text simLabel:(id)label
{
  textCopy = text;
  labelCopy = label;
  v14.receiver = self;
  v14.super_class = STKTextSessionData;
  v8 = [(STKTextSessionData *)&v14 init];
  if (v8)
  {
    v9 = [textCopy copy];
    text = v8->_text;
    v8->_text = v9;

    v11 = [labelCopy copy];
    simLabel = v8->_simLabel;
    v8->_simLabel = v11;
  }

  return v8;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  text = self->_text;
  dictionaryCopy = dictionary;
  BSSerializeStringToXPCDictionaryWithKey();
  simLabel = self->_simLabel;
  BSSerializeStringToXPCDictionaryWithKey();
}

- (STKTextSessionData)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = BSDeserializeStringFromXPCDictionaryWithKey();
  v6 = BSDeserializeStringFromXPCDictionaryWithKey();

  v7 = [(STKTextSessionData *)self initWithText:v5 simLabel:v6];
  return v7;
}

@end