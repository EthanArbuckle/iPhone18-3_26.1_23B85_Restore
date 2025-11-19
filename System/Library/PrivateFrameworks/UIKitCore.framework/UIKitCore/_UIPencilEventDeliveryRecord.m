@interface _UIPencilEventDeliveryRecord
- (_UIPencilEventDeliveryRecord)init;
@end

@implementation _UIPencilEventDeliveryRecord

- (_UIPencilEventDeliveryRecord)init
{
  v6.receiver = self;
  v6.super_class = _UIPencilEventDeliveryRecord;
  v2 = [(_UIPencilEventDeliveryRecord *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mutableInteractions = v2->_mutableInteractions;
    v2->_mutableInteractions = v3;
  }

  return v2;
}

@end