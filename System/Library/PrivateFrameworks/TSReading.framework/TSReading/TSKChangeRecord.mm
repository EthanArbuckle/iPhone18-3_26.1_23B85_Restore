@interface TSKChangeRecord
+ (id)changeRecordWithKind:(int)kind details:(id)details;
- (BOOL)allowedInCommit;
- (TSKChangeRecord)initWithKind:(int)kind details:(id)details;
- (void)dealloc;
@end

@implementation TSKChangeRecord

- (TSKChangeRecord)initWithKind:(int)kind details:(id)details
{
  v9.receiver = self;
  v9.super_class = TSKChangeRecord;
  v6 = [(TSKChangeRecord *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->mKind = kind;
    v6->mDetails = details;
  }

  return v7;
}

+ (id)changeRecordWithKind:(int)kind details:(id)details
{
  v4 = [[TSKChangeRecord alloc] initWithKind:*&kind details:details];

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