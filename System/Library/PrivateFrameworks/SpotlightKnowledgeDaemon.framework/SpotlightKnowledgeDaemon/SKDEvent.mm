@interface SKDEvent
- (SKDEvent)initWithType:(unsigned __int8)type status:(unsigned __int8)status identifier:(id)identifier info:(id)info;
- (id)message;
- (id)statusMessage;
- (id)typeMessage;
- (void)addFeedback:(id)feedback value:(id)value;
- (void)addFeedbackFromDictionary:(id)dictionary;
@end

@implementation SKDEvent

- (SKDEvent)initWithType:(unsigned __int8)type status:(unsigned __int8)status identifier:(id)identifier info:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = SKDEvent;
  v13 = [(SKDEvent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = type;
    v13->_status = status;
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v14->_info, info);
  }

  return v14;
}

- (void)addFeedback:(id)feedback value:(id)value
{
  feedbackCopy = feedback;
  valueCopy = value;
  feedback = self->_feedback;
  if (!feedback)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_feedback;
    self->_feedback = v8;

    feedback = self->_feedback;
  }

  [(NSMutableDictionary *)feedback setObject:valueCopy forKey:feedbackCopy];
}

- (void)addFeedbackFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    feedback = self->_feedback;
    v8 = dictionaryCopy;
    if (!feedback)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v7 = self->_feedback;
      self->_feedback = v6;

      feedback = self->_feedback;
    }

    [(NSMutableDictionary *)feedback addEntriesFromDictionary:v8];
    dictionaryCopy = v8;
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
  info = [(SKDEvent *)self info];
  userInfo = [info userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"messageInfoKey"];
  v6 = v5;
  if (v5)
  {
    identifier = v5;
  }

  else
  {
    identifier = [(SKDEvent *)self identifier];
  }

  v8 = identifier;

  if (v8)
  {
    typeMessage = v8;
  }

  else
  {
    typeMessage = [(SKDEvent *)self typeMessage];
  }

  v10 = typeMessage;

  return v10;
}

@end