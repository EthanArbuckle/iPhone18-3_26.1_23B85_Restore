@interface STKTextSessionData
- (STKTextSessionData)init;
- (STKTextSessionData)initWithText:(id)a3 simLabel:(id)a4;
- (STKTextSessionData)initWithXPCDictionary:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation STKTextSessionData

- (STKTextSessionData)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"STKTextSessionData.m" lineNumber:20 description:@"Unavailable."];

  return 0;
}

- (STKTextSessionData)initWithText:(id)a3 simLabel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = STKTextSessionData;
  v8 = [(STKTextSessionData *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    text = v8->_text;
    v8->_text = v9;

    v11 = [v7 copy];
    simLabel = v8->_simLabel;
    v8->_simLabel = v11;
  }

  return v8;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  text = self->_text;
  v6 = a3;
  BSSerializeStringToXPCDictionaryWithKey();
  simLabel = self->_simLabel;
  BSSerializeStringToXPCDictionaryWithKey();
}

- (STKTextSessionData)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = BSDeserializeStringFromXPCDictionaryWithKey();
  v6 = BSDeserializeStringFromXPCDictionaryWithKey();

  v7 = [(STKTextSessionData *)self initWithText:v5 simLabel:v6];
  return v7;
}

@end