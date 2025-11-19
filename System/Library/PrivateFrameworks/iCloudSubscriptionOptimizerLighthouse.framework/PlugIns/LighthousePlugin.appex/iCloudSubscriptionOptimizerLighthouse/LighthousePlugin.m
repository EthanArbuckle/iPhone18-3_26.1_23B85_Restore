@interface LighthousePlugin
- (LighthousePlugin)init;
- (id)performTrialTask:(id)a3 outError:(id *)a4;
@end

@implementation LighthousePlugin

- (id)performTrialTask:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = Plugin.perform(_:)(v5);

  return v7;
}

- (LighthousePlugin)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Plugin();
  return [(LighthousePlugin *)&v3 init];
}

@end