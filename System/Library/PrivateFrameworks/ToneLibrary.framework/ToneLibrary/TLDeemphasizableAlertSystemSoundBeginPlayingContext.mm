@interface TLDeemphasizableAlertSystemSoundBeginPlayingContext
- (TLDeemphasizableAlertSystemSoundBeginPlayingContext)initWithAlert:(id)alert alertSystemSoundContext:(id)context toneIdentifierForDeemphasizingAlert:(id)deemphasizingAlert vibrationIdentifierForDeemphasizingAlert:(id)forDeemphasizingAlert;
@end

@implementation TLDeemphasizableAlertSystemSoundBeginPlayingContext

- (TLDeemphasizableAlertSystemSoundBeginPlayingContext)initWithAlert:(id)alert alertSystemSoundContext:(id)context toneIdentifierForDeemphasizingAlert:(id)deemphasizingAlert vibrationIdentifierForDeemphasizingAlert:(id)forDeemphasizingAlert
{
  alertCopy = alert;
  contextCopy = context;
  deemphasizingAlertCopy = deemphasizingAlert;
  forDeemphasizingAlertCopy = forDeemphasizingAlert;
  v22.receiver = self;
  v22.super_class = TLDeemphasizableAlertSystemSoundBeginPlayingContext;
  v15 = [(TLDeemphasizableAlertSystemSoundBeginPlayingContext *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_alert, alert);
    objc_storeStrong(&v16->_alertSystemSoundContext, context);
    v17 = [deemphasizingAlertCopy copy];
    toneIdentifierForDeemphasizingAlert = v16->_toneIdentifierForDeemphasizingAlert;
    v16->_toneIdentifierForDeemphasizingAlert = v17;

    v19 = [forDeemphasizingAlertCopy copy];
    vibrationIdentifierForDeemphasizingAlert = v16->_vibrationIdentifierForDeemphasizingAlert;
    v16->_vibrationIdentifierForDeemphasizingAlert = v19;
  }

  return v16;
}

@end