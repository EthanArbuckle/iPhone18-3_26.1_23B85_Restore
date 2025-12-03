@interface STKNotifySessionData
- (STKNotifySessionData)initWithText:(id)text simLabel:(id)label notifyType:(int64_t)type;
- (STKNotifySessionData)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation STKNotifySessionData

- (STKNotifySessionData)initWithText:(id)text simLabel:(id)label notifyType:(int64_t)type
{
  textCopy = text;
  labelCopy = label;
  if (!type)
  {
    [STKNotifySessionData initWithText:a2 simLabel:self notifyType:?];
  }

  v14.receiver = self;
  v14.super_class = STKNotifySessionData;
  v11 = [(STKTextSessionData *)&v14 initWithText:textCopy simLabel:labelCopy];
  v12 = v11;
  if (v11)
  {
    v11->_notifyType = type;
  }

  return v12;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v5.receiver = self;
  v5.super_class = STKNotifySessionData;
  dictionaryCopy = dictionary;
  [(STKTextSessionData *)&v5 encodeWithXPCDictionary:dictionaryCopy];
  xpc_dictionary_set_uint64(dictionaryCopy, "_notifyType", self->_notifyType);
}

- (STKNotifySessionData)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = STKNotifySessionData;
  v5 = [(STKTextSessionData *)&v7 initWithXPCDictionary:dictionaryCopy];
  if (v5)
  {
    v5->_notifyType = xpc_dictionary_get_uint64(dictionaryCopy, "_notifyType");
  }

  return v5;
}

- (void)initWithText:(uint64_t)a1 simLabel:(uint64_t)a2 notifyType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STKNotifySessionData.m" lineNumber:18 description:@"NotifyType cannot be unknown."];
}

@end