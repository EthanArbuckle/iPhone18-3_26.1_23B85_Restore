@interface RadioMutableTrackHistorySectionInfo
- (void)setIndexTitle:(id)title;
- (void)setName:(id)name;
- (void)setObjects:(id)objects;
@end

@implementation RadioMutableTrackHistorySectionInfo

- (void)setObjects:(id)objects
{
  v4 = [objects copy];
  objects = self->super._objects;
  self->super._objects = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->super._name;
  self->super._name = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setIndexTitle:(id)title
{
  v4 = [title copy];
  indexTitle = self->super._indexTitle;
  self->super._indexTitle = v4;

  MEMORY[0x2821F96F8]();
}

@end