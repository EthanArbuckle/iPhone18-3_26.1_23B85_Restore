@interface STKClass0SMSAlertSession
- (STKClass0SMSAlertSession)initWithLogger:(id)a3 responseProvider:(id)a4 options:(id)a5 sound:(id)a6;
- (STKClass0SMSAlertSession)initWithLogger:(id)a3 responseProvider:(id)a4 options:(id)a5 sound:(id)a6 slot:(int64_t)a7;
@end

@implementation STKClass0SMSAlertSession

- (STKClass0SMSAlertSession)initWithLogger:(id)a3 responseProvider:(id)a4 options:(id)a5 sound:(id)a6
{
  v11 = MEMORY[0x277CCA890];
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v11 currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"STKAlertSession.m" lineNumber:365 description:@"Initializer is unavailable"];

  v17 = [(STKClass0SMSAlertSession *)self initWithLogger:v15 responseProvider:v14 options:v13 sound:v12 slot:1];
  return v17;
}

- (STKClass0SMSAlertSession)initWithLogger:(id)a3 responseProvider:(id)a4 options:(id)a5 sound:(id)a6 slot:(int64_t)a7
{
  v9.receiver = self;
  v9.super_class = STKClass0SMSAlertSession;
  result = [(STKAlertSession *)&v9 initWithLogger:a3 responseProvider:a4 options:a5 sound:a6];
  if (result)
  {
    result->_slot = a7;
  }

  return result;
}

@end