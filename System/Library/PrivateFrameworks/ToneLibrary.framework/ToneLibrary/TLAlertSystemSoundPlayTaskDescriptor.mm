@interface TLAlertSystemSoundPlayTaskDescriptor
- (TLAlertSystemSoundPlayTaskDescriptor)initWithAlert:(id)a3 sound:(id)a4 vibrationIdentifier:(id)a5 isDeemphasized:(BOOL)a6 alertSystemSoundContext:(id)a7;
@end

@implementation TLAlertSystemSoundPlayTaskDescriptor

- (TLAlertSystemSoundPlayTaskDescriptor)initWithAlert:(id)a3 sound:(id)a4 vibrationIdentifier:(id)a5 isDeemphasized:(BOOL)a6 alertSystemSoundContext:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = TLAlertSystemSoundPlayTaskDescriptor;
  v17 = [(TLAlertSystemSoundPlayTaskDescriptor *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_alert, a3);
    objc_storeStrong(&v18->_sound, a4);
    v19 = [v15 copy];
    vibrationIdentifier = v18->_vibrationIdentifier;
    v18->_vibrationIdentifier = v19;

    v18->_deemphasized = a6;
    objc_storeStrong(&v18->_alertSystemSoundContext, a7);
  }

  return v18;
}

@end