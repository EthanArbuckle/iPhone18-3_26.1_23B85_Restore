@interface LighthousePlugin
- (LighthousePlugin)init;
- (id)performTrialTask:(id)task outError:(id *)error;
@end

@implementation LighthousePlugin

- (id)performTrialTask:(id)task outError:(id *)error
{
  taskCopy = task;
  selfCopy = self;
  v7 = Plugin.perform(_:)(taskCopy);

  return v7;
}

- (LighthousePlugin)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Plugin();
  return [(LighthousePlugin *)&v3 init];
}

@end