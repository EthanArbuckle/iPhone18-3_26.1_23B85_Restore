@interface _BKMousePointerServerClientRecord
- (_BKMousePointerServerClientRecord)init;
- (id)infoForDisplayUUID:(id)a3 createIfNeeded:(BOOL)a4;
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

- (id)infoForDisplayUUID:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_perDisplayUUIDInfo objectForKeyedSubscript:v6];
  v8 = v7;
  if (v4 && !v7)
  {
    v8 = objc_alloc_init(_BKMousePointerServerClientPerDisplay);
    [(NSMutableDictionary *)self->_perDisplayUUIDInfo setObject:v8 forKeyedSubscript:v6];
  }

  return v8;
}

@end