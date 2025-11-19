@interface _BKTouchSensitiveButtonEventRecord
- (_BKTouchSensitiveButtonEventRecord)init;
@end

@implementation _BKTouchSensitiveButtonEventRecord

- (_BKTouchSensitiveButtonEventRecord)init
{
  v6.receiver = self;
  v6.super_class = _BKTouchSensitiveButtonEventRecord;
  v2 = [(_BKTouchSensitiveButtonEventRecord *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableIndexSet);
    stagesEntered = v2->_stagesEntered;
    v2->_stagesEntered = v3;
  }

  return v2;
}

@end