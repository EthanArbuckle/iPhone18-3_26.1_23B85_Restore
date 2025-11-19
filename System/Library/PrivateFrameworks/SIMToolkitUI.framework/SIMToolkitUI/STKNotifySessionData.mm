@interface STKNotifySessionData
- (STKNotifySessionData)initWithText:(id)a3 simLabel:(id)a4 notifyType:(int64_t)a5;
- (STKNotifySessionData)initWithXPCDictionary:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation STKNotifySessionData

- (STKNotifySessionData)initWithText:(id)a3 simLabel:(id)a4 notifyType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (!a5)
  {
    [STKNotifySessionData initWithText:a2 simLabel:self notifyType:?];
  }

  v14.receiver = self;
  v14.super_class = STKNotifySessionData;
  v11 = [(STKTextSessionData *)&v14 initWithText:v9 simLabel:v10];
  v12 = v11;
  if (v11)
  {
    v11->_notifyType = a5;
  }

  return v12;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v5.receiver = self;
  v5.super_class = STKNotifySessionData;
  v4 = a3;
  [(STKTextSessionData *)&v5 encodeWithXPCDictionary:v4];
  xpc_dictionary_set_uint64(v4, "_notifyType", self->_notifyType);
}

- (STKNotifySessionData)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = STKNotifySessionData;
  v5 = [(STKTextSessionData *)&v7 initWithXPCDictionary:v4];
  if (v5)
  {
    v5->_notifyType = xpc_dictionary_get_uint64(v4, "_notifyType");
  }

  return v5;
}

- (void)initWithText:(uint64_t)a1 simLabel:(uint64_t)a2 notifyType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STKNotifySessionData.m" lineNumber:18 description:@"NotifyType cannot be unknown."];
}

@end