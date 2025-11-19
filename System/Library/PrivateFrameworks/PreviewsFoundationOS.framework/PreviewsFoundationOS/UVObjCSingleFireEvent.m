@interface UVObjCSingleFireEvent
- (UVObjCSingleFireEvent)init;
@end

@implementation UVObjCSingleFireEvent

- (UVObjCSingleFireEvent)init
{
  v6.receiver = self;
  v6.super_class = UVObjCSingleFireEvent;
  v2 = [(UVObjCSingleFireEvent *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC20PreviewsFoundationOS19ObjcSingleFireEvent);
    event = v2->_event;
    v2->_event = v3;
  }

  return v2;
}

@end