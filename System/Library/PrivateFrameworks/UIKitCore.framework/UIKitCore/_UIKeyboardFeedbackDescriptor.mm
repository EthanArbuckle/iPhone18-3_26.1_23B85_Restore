@interface _UIKeyboardFeedbackDescriptor
+ (id)descriptorWithIntensity:(float)a3 sharpness:(float)a4 audio:(id)a5 volume:(float)a6;
@end

@implementation _UIKeyboardFeedbackDescriptor

+ (id)descriptorWithIntensity:(float)a3 sharpness:(float)a4 audio:(id)a5 volume:(float)a6
{
  v9 = a5;
  v10 = objc_alloc_init(_UIKeyboardFeedbackDescriptor);
  *&v11 = a3;
  [(_UIKeyboardFeedbackDescriptor *)v10 setHapticIntensity:v11];
  *&v12 = a4;
  [(_UIKeyboardFeedbackDescriptor *)v10 setHapticSharpness:v12];
  [(_UIKeyboardFeedbackDescriptor *)v10 setAudioFile:v9];

  *&v13 = a6;
  [(_UIKeyboardFeedbackDescriptor *)v10 setAudioVolume:v13];

  return v10;
}

@end