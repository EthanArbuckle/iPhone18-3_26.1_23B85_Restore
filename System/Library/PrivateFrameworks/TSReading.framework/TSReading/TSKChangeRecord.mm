@interface TSKChangeRecord
+ (id)changeRecordWithKind:(int)a3 details:(id)a4;
- (BOOL)allowedInCommit;
- (TSKChangeRecord)initWithKind:(int)a3 details:(id)a4;
- (void)dealloc;
@end

@implementation TSKChangeRecord

- (TSKChangeRecord)initWithKind:(int)a3 details:(id)a4
{
  v9.receiver = self;
  v9.super_class = TSKChangeRecord;
  v6 = [(TSKChangeRecord *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->mKind = a3;
    v6->mDetails = a4;
  }

  return v7;
}

+ (id)changeRecordWithKind:(int)a3 details:(id)a4
{
  v4 = [[TSKChangeRecord alloc] initWithKind:*&a3 details:a4];

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKChangeRecord;
  [(TSKChangeRecord *)&v3 dealloc];
}

- (BOOL)allowedInCommit
{
  mKind = self->mKind;
  v3 = mKind - 1;
  v4 = mKind == 1000;
  return v3 < 2 || v4;
}

@end