@interface SBTraitsInputsAllUnknownOrientationValidator
- (id)validateInputs:(id)inputs withContext:(id)context;
@end

@implementation SBTraitsInputsAllUnknownOrientationValidator

- (id)validateInputs:(id)inputs withContext:(id)context
{
  v14.receiver = self;
  v14.super_class = SBTraitsInputsAllUnknownOrientationValidator;
  v4 = [(SBTraitsInputsValidator *)&v14 validateInputs:inputs withContext:context];
  deviceOrientationInputs = [v4 deviceOrientationInputs];
  if (![deviceOrientationInputs currentDeviceOrientation] && !objc_msgSend(deviceOrientationInputs, "nonFlatDeviceOrientation"))
  {
    v6 = [objc_alloc(MEMORY[0x277D734A8]) initWithCurrentDeviceOrientation:1 nonFlatDeviceOrientation:1];

    deviceOrientationInputs = v6;
  }

  v7 = objc_alloc(MEMORY[0x277D734B0]);
  interfaceIdiomInputs = [v4 interfaceIdiomInputs];
  userInterfaceStyleInputs = [v4 userInterfaceStyleInputs];
  keyboardInputs = [v4 keyboardInputs];
  ambientPresentationInputs = [v4 ambientPresentationInputs];
  v12 = [v7 initWithInterfaceIdiomInputs:interfaceIdiomInputs userInterfaceStyleInputs:userInterfaceStyleInputs deviceOrientationInputs:deviceOrientationInputs keyboardInputs:keyboardInputs ambientPresentationInputs:ambientPresentationInputs];

  return v12;
}

@end