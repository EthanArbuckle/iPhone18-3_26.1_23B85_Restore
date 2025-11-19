@interface SKDEvent
- (SKDEvent)initWithType:(unsigned __int8)a3 status:(unsigned __int8)a4 identifier:(id)a5 info:(id)a6;
- (id)message;
- (id)statusMessage;
- (id)typeMessage;
- (void)addFeedback:(id)a3 value:(id)a4;
- (void)addFeedbackFromDictionary:(id)a3;
@end

@implementation SKDEvent

- (SKDEvent)initWithType:(unsigned __int8)a3 status:(unsigned __int8)a4 identifier:(id)a5 info:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = SKDEvent;
  v13 = [(SKDEvent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = a3;
    v13->_status = a4;
    objc_storeStrong(&v13->_identifier, a5);
    objc_storeStrong(&v14->_info, a6);
  }

  return v14;
}

- (void)addFeedback:(id)a3 value:(id)a4
{
  v10 = a3;
  v6 = a4;
  feedback = self->_feedback;
  if (!feedback)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_feedback;
    self->_feedback = v8;

    feedback = self->_feedback;
  }

  [(NSMutableDictionary *)feedback setObject:v6 forKey:v10];
}

- (void)addFeedbackFromDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    feedback = self->_feedback;
    v8 = v4;
    if (!feedback)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v7 = self->_feedback;
      self->_feedback = v6;

      feedback = self->_feedback;
    }

    [(NSMutableDictionary *)feedback addEntriesFromDictionary:v8];
    v4 = v8;
  }
}

- (id)typeMessage
{
  type = self->_type;
  if (type > 7)
  {
    type = 0;
  }

  return messageForEventType_sEventTypeMap[type];
}

- (id)statusMessage
{
  status = self->_status;
  if (status > 4)
  {
    status = 0;
  }

  return messageForEventStatus_sEventStatusMap[status];
}

- (id)message
{
  v3 = [(SKDEvent *)self info];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"messageInfoKey"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(SKDEvent *)self identifier];
  }

  v8 = v7;

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [(SKDEvent *)self typeMessage];
  }

  v10 = v9;

  return v10;
}

@end