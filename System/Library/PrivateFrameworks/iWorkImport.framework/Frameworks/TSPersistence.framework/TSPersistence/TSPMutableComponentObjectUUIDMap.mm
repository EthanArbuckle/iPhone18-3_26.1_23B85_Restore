@interface TSPMutableComponentObjectUUIDMap
- (id)copyWithZone:(_NSZone *)zone;
- (id)setObjectUUID:(id)d forIdentifier:(int64_t)identifier;
@end

@implementation TSPMutableComponentObjectUUIDMap

- (id)setObjectUUID:(id)d forIdentifier:(int64_t)identifier
{
  d;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSPComponentObjectUUIDMap, a2, zone);

  return MEMORY[0x2821F9670](v4, sel_initWithComponentObjectUUIDMap_, self);
}

@end