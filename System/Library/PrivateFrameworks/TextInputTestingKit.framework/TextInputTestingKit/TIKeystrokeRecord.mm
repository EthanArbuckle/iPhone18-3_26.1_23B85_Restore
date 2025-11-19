@interface TIKeystrokeRecord
+ (id)keystrokeRecord;
- (TIKeystrokeRecord)init;
@end

@implementation TIKeystrokeRecord

- (TIKeystrokeRecord)init
{
  v3.receiver = self;
  v3.super_class = TIKeystrokeRecord;
  return [(TIKeystrokeRecord *)&v3 init];
}

+ (id)keystrokeRecord
{
  v2 = objc_alloc_init(TIKeystrokeRecord);

  return v2;
}

@end