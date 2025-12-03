@interface TLAlertSystemSoundPlayTaskDescriptor
- (TLAlertSystemSoundPlayTaskDescriptor)initWithAlert:(id)alert sound:(id)sound vibrationIdentifier:(id)identifier isDeemphasized:(BOOL)deemphasized alertSystemSoundContext:(id)context;
@end

@implementation TLAlertSystemSoundPlayTaskDescriptor

- (TLAlertSystemSoundPlayTaskDescriptor)initWithAlert:(id)alert sound:(id)sound vibrationIdentifier:(id)identifier isDeemphasized:(BOOL)deemphasized alertSystemSoundContext:(id)context
{
  alertCopy = alert;
  soundCopy = sound;
  identifierCopy = identifier;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = TLAlertSystemSoundPlayTaskDescriptor;
  v17 = [(TLAlertSystemSoundPlayTaskDescriptor *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_alert, alert);
    objc_storeStrong(&v18->_sound, sound);
    v19 = [identifierCopy copy];
    vibrationIdentifier = v18->_vibrationIdentifier;
    v18->_vibrationIdentifier = v19;

    v18->_deemphasized = deemphasized;
    objc_storeStrong(&v18->_alertSystemSoundContext, context);
  }

  return v18;
}

@end