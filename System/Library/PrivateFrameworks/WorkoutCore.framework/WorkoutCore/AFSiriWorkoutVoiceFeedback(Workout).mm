@interface AFSiriWorkoutVoiceFeedback(Workout)
- (uint64_t)initWithVoiceFeedbackIdentifier:()Workout text:language:;
@end

@implementation AFSiriWorkoutVoiceFeedback(Workout)

- (uint64_t)initWithVoiceFeedbackIdentifier:()Workout text:language:
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v5 = selfCopy;
  selfCopy = 0;
  selfCopy = [v5 initWithVoiceFeedbackIdentifier:location[0] text:v11 voiceName:0 voiceLanguage:v10 intensity:0];
  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

@end