@interface _UIViewLFLDChangeRecord
- (_UIViewLFLDChangeRecord)init;
@end

@implementation _UIViewLFLDChangeRecord

- (_UIViewLFLDChangeRecord)init
{
  v4.receiver = self;
  v4.super_class = _UIViewLFLDChangeRecord;
  v2 = [(_UIViewLFLDChangeRecord *)&v4 init];
  if (v2)
  {
    v2->_timestamp = CFAbsoluteTimeGetCurrent();
  }

  return v2;
}

@end