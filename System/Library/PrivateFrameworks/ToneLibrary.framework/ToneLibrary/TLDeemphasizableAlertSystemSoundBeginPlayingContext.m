@interface TLDeemphasizableAlertSystemSoundBeginPlayingContext
- (TLDeemphasizableAlertSystemSoundBeginPlayingContext)initWithAlert:(id)a3 alertSystemSoundContext:(id)a4 toneIdentifierForDeemphasizingAlert:(id)a5 vibrationIdentifierForDeemphasizingAlert:(id)a6;
@end

@implementation TLDeemphasizableAlertSystemSoundBeginPlayingContext

- (TLDeemphasizableAlertSystemSoundBeginPlayingContext)initWithAlert:(id)a3 alertSystemSoundContext:(id)a4 toneIdentifierForDeemphasizingAlert:(id)a5 vibrationIdentifierForDeemphasizingAlert:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = TLDeemphasizableAlertSystemSoundBeginPlayingContext;
  v15 = [(TLDeemphasizableAlertSystemSoundBeginPlayingContext *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_alert, a3);
    objc_storeStrong(&v16->_alertSystemSoundContext, a4);
    v17 = [v13 copy];
    toneIdentifierForDeemphasizingAlert = v16->_toneIdentifierForDeemphasizingAlert;
    v16->_toneIdentifierForDeemphasizingAlert = v17;

    v19 = [v14 copy];
    vibrationIdentifierForDeemphasizingAlert = v16->_vibrationIdentifierForDeemphasizingAlert;
    v16->_vibrationIdentifierForDeemphasizingAlert = v19;
  }

  return v16;
}

@end