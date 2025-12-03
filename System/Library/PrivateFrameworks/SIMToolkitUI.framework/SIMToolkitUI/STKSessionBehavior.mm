@interface STKSessionBehavior
- (STKSessionBehavior)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation STKSessionBehavior

- (void)encodeWithXPCDictionary:(id)dictionary
{
  timeout = self->_timeout;
  xdict = dictionary;
  xpc_dictionary_set_double(xdict, "_timeout", timeout);
  xpc_dictionary_set_BOOL(xdict, "_shouldSendResponseUponDisplay", self->_shouldSendResponseUponDisplay);
  xpc_dictionary_set_BOOL(xdict, "_dismissesAfterUserEvent", self->_dismissesAfterUserEvent);
}

- (STKSessionBehavior)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = STKSessionBehavior;
  v5 = [(STKSessionBehavior *)&v7 init];
  if (v5)
  {
    v5->_timeout = xpc_dictionary_get_double(dictionaryCopy, "_timeout");
    v5->_shouldSendResponseUponDisplay = xpc_dictionary_get_BOOL(dictionaryCopy, "_shouldSendResponseUponDisplay");
    v5->_dismissesAfterUserEvent = xpc_dictionary_get_BOOL(dictionaryCopy, "_dismissesAfterUserEvent");
  }

  return v5;
}

@end