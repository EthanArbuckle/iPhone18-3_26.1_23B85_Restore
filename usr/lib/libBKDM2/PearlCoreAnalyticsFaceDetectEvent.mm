@interface PearlCoreAnalyticsFaceDetectEvent
- (PearlCoreAnalyticsFaceDetectEvent)init;
- (PearlCoreAnalyticsFaceDetectEvent)initWithName:(id)name;
@end

@implementation PearlCoreAnalyticsFaceDetectEvent

- (PearlCoreAnalyticsFaceDetectEvent)init
{
  v12[1] = *MEMORY[0x29EDCA608];
  v11.receiver = self;
  v11.super_class = PearlCoreAnalyticsFaceDetectEvent;
  v2 = [(PearlCoreAnalyticsEvent *)&v11 initWithName:@"com.apple.biometrickit.pearl.faceDetectAttempt"];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x29EDBFD98];
    v5 = *(&v2->super.super.super.isa + v4);
    v12[0] = @"secureFaceDetectDict";
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];
    v8 = *(&v3->super.super.super.isa + v4);
    *(&v3->super.super.super.isa + v4) = v7;
  }

  v9 = *MEMORY[0x29EDCA608];
  return v3;
}

- (PearlCoreAnalyticsFaceDetectEvent)initWithName:(id)name
{
  v13[1] = *MEMORY[0x29EDCA608];
  v12.receiver = self;
  v12.super_class = PearlCoreAnalyticsFaceDetectEvent;
  v3 = [(PearlCoreAnalyticsEvent *)&v12 initWithName:name];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x29EDBFD98];
    v6 = *(&v3->super.super.super.isa + v5);
    v13[0] = @"secureFaceDetectDict";
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:1];
    v8 = [v6 arrayByAddingObjectsFromArray:v7];
    v9 = *(&v4->super.super.super.isa + v5);
    *(&v4->super.super.super.isa + v5) = v8;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v4;
}

@end