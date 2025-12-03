@interface _UIKeyboardFeedbackDescriptor
+ (id)descriptorWithIntensity:(float)intensity sharpness:(float)sharpness audio:(id)audio volume:(float)volume;
@end

@implementation _UIKeyboardFeedbackDescriptor

+ (id)descriptorWithIntensity:(float)intensity sharpness:(float)sharpness audio:(id)audio volume:(float)volume
{
  audioCopy = audio;
  v10 = objc_alloc_init(_UIKeyboardFeedbackDescriptor);
  *&v11 = intensity;
  [(_UIKeyboardFeedbackDescriptor *)v10 setHapticIntensity:v11];
  *&v12 = sharpness;
  [(_UIKeyboardFeedbackDescriptor *)v10 setHapticSharpness:v12];
  [(_UIKeyboardFeedbackDescriptor *)v10 setAudioFile:audioCopy];

  *&v13 = volume;
  [(_UIKeyboardFeedbackDescriptor *)v10 setAudioVolume:v13];

  return v10;
}

@end