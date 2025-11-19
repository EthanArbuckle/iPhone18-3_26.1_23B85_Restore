@interface TSPMutableComponentObjectUUIDMap
- (id)copyWithZone:(_NSZone *)a3;
- (id)setObjectUUID:(id)a3 forIdentifier:(int64_t)a4;
@end

@implementation TSPMutableComponentObjectUUIDMap

- (id)setObjectUUID:(id)a3 forIdentifier:(int64_t)a4
{
  a3;
  if (!self->super._identifierToUUIDMap)
  {
    operator new();
  }

  if (!self->super._uuidToIdentifierMap)
  {
    operator new();
  }

  sub_276ACE740();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(TSPComponentObjectUUIDMap, a2, a3);

  return MEMORY[0x2821F9670](v4, sel_initWithComponentObjectUUIDMap_, self);
}

@end