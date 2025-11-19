@interface MRLayerCommand
- (MRLayerCommand)initWithCommand:(int)a3 andObject:(id)a4;
- (void)dealloc;
@end

@implementation MRLayerCommand

- (MRLayerCommand)initWithCommand:(int)a3 andObject:(id)a4
{
  v9.receiver = self;
  v9.super_class = MRLayerCommand;
  v6 = [(MRLayerCommand *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->commandID = a3;
    v6->object = a4;
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