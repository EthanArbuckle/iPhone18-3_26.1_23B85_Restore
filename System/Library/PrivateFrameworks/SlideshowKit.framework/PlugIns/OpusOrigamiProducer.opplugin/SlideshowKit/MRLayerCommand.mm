@interface MRLayerCommand
- (MRLayerCommand)initWithCommand:(int)command andObject:(id)object;
- (void)dealloc;
@end

@implementation MRLayerCommand

- (MRLayerCommand)initWithCommand:(int)command andObject:(id)object
{
  v9.receiver = self;
  v9.super_class = MRLayerCommand;
  v6 = [(MRLayerCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->commandID = command;
    v6->object = object;
  }

  return v7;
}

- (void)dealloc
{
  self->object = 0;
  v3.receiver = self;
  v3.super_class = MRLayerCommand;
  [(MRLayerCommand *)&v3 dealloc];
}

@end