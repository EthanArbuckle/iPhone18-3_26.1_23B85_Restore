@interface STKClass0SMSAlertSession
- (STKClass0SMSAlertSession)initWithLogger:(id)logger responseProvider:(id)provider options:(id)options sound:(id)sound;
- (STKClass0SMSAlertSession)initWithLogger:(id)logger responseProvider:(id)provider options:(id)options sound:(id)sound slot:(int64_t)slot;
@end

@implementation STKClass0SMSAlertSession

- (STKClass0SMSAlertSession)initWithLogger:(id)logger responseProvider:(id)provider options:(id)options sound:(id)sound
{
  v11 = MEMORY[0x277CCA890];
  soundCopy = sound;
  optionsCopy = options;
  providerCopy = provider;
  loggerCopy = logger;
  currentHandler = [v11 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"STKAlertSession.m" lineNumber:365 description:@"Initializer is unavailable"];

  v17 = [(STKClass0SMSAlertSession *)self initWithLogger:loggerCopy responseProvider:providerCopy options:optionsCopy sound:soundCopy slot:1];
  return v17;
}

- (STKClass0SMSAlertSession)initWithLogger:(id)logger responseProvider:(id)provider options:(id)options sound:(id)sound slot:(int64_t)slot
{
  v9.receiver = self;
  v9.super_class = STKClass0SMSAlertSession;
  result = [(STKAlertSession *)&v9 initWithLogger:logger responseProvider:provider options:options sound:sound];
  if (result)
  {
    result->_slot = slot;
  }

  return result;
}

@end