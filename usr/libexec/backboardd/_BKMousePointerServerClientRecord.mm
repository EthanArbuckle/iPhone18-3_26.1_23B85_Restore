@interface _BKMousePointerServerClientRecord
- (_BKMousePointerServerClientRecord)init;
- (id)infoForDisplayUUID:(id)d createIfNeeded:(BOOL)needed;
@end

@implementation _BKMousePointerServerClientRecord

- (_BKMousePointerServerClientRecord)init
{
  v6.receiver = self;
  v6.super_class = _BKMousePointerServerClientRecord;
  v2 = [(_BKMousePointerServerClientRecord *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    perDisplayUUIDInfo = v2->_perDisplayUUIDInfo;
    v2->_perDisplayUUIDInfo = v3;
  }

  return v2;
}

- (id)infoForDisplayUUID:(id)d createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  dCopy = d;
  v7 = [(NSMutableDictionary *)self->_perDisplayUUIDInfo objectForKeyedSubscript:dCopy];
  v8 = v7;
  if (neededCopy && !v7)
  {
    v8 = objc_alloc_init(_BKMousePointerServerClientPerDisplay);
    [(NSMutableDictionary *)self->_perDisplayUUIDInfo setObject:v8 forKeyedSubscript:dCopy];
  }

  return v8;
}

@end