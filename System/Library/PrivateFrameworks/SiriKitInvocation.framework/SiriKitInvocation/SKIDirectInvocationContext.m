@interface SKIDirectInvocationContext
+ (id)contextForAnnounceNotifications;
+ (id)contextForCarPlayDirectAction;
- (SKIDirectInvocationContext)init;
@end

@implementation SKIDirectInvocationContext

+ (id)contextForCarPlayDirectAction
{
  v2 = objc_alloc_init(SKIDirectInvocationContext);
  [(SKIDirectInvocationContext *)v2 setVoiceTriggerEnabled:1];
  [(SKIDirectInvocationContext *)v2 setTextToSpeechEnabled:1];
  [(SKIDirectInvocationContext *)v2 setEyesFree:1];
  [(SKIDirectInvocationContext *)v2 setInputOrigin:*MEMORY[0x277D48400]];
  [(SKIDirectInvocationContext *)v2 setInteractionType:*MEMORY[0x277D48468]];

  return v2;
}

- (SKIDirectInvocationContext)init
{
  v5.receiver = self;
  v5.super_class = SKIDirectInvocationContext;
  v2 = [(SKIDirectInvocationContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKIDirectInvocationContext *)v2 setVoiceTriggerEnabled:1];
    [(SKIDirectInvocationContext *)v3 setTextToSpeechEnabled:1];
    [(SKIDirectInvocationContext *)v3 setEyesFree:0];
    [(SKIDirectInvocationContext *)v3 setInputOrigin:*MEMORY[0x277D483F8]];
    [(SKIDirectInvocationContext *)v3 setInteractionType:*MEMORY[0x277D48468]];
    [(SKIDirectInvocationContext *)v3 setResponseMode:0];
  }

  return v3;
}

+ (id)contextForAnnounceNotifications
{
  v2 = objc_alloc_init(SKIDirectInvocationContext);
  [(SKIDirectInvocationContext *)v2 setVoiceTriggerEnabled:1];
  [(SKIDirectInvocationContext *)v2 setTextToSpeechEnabled:1];
  [(SKIDirectInvocationContext *)v2 setEyesFree:1];
  [(SKIDirectInvocationContext *)v2 setInputOrigin:*MEMORY[0x277D483F8]];
  [(SKIDirectInvocationContext *)v2 setInteractionType:*MEMORY[0x277D48468]];
  [(SKIDirectInvocationContext *)v2 setResponseMode:*MEMORY[0x277D48CA8]];

  return v2;
}

@end