@interface RadioMutableTrackHistorySectionInfo
- (void)setIndexTitle:(id)a3;
- (void)setName:(id)a3;
- (void)setObjects:(id)a3;
@end

@implementation RadioMutableTrackHistorySectionInfo

- (void)setObjects:(id)a3
{
  v4 = [a3 copy];
  objects = self->super._objects;
  self->super._objects = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->super._name;
  self->super._name = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setIndexTitle:(id)a3
{
  v4 = [a3 copy];
  indexTitle = self->super._indexTitle;
  self->super._indexTitle = v4;

  MEMORY[0x2821F96F8]();
}

@end