@interface _BKTouchServerClientRecord
- (_BKTouchServerClientRecord)init;
@end

@implementation _BKTouchServerClientRecord

- (_BKTouchServerClientRecord)init
{
  v8.receiver = self;
  v8.super_class = _BKTouchServerClientRecord;
  v2 = [(_BKTouchServerClientRecord *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    sceneHostSettings = v2->_sceneHostSettings;
    v2->_sceneHostSettings = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    hitTestContextCategoryToContextIDs = v2->_hitTestContextCategoryToContextIDs;
    v2->_hitTestContextCategoryToContextIDs = v5;
  }

  return v2;
}

@end