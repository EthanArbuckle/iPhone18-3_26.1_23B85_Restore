@interface TPSSearchQueryManager
+ (TPSSearchQueryManager)shared;
- (void)cancelQueryWithIdentifier:(id)identifier;
- (void)performQuery:(id)query completion:(id)completion;
@end

@implementation TPSSearchQueryManager

+ (TPSSearchQueryManager)shared
{
  if (qword_1EBE06380 != -1)
  {
    swift_once();
  }

  v3 = qword_1EBE06A80;

  return v3;
}

- (void)performQuery:(id)query completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  queryCopy = query;
  selfCopy = self;
  sub_1C0135B48(queryCopy, sub_1C0136A08, v7);
}

- (void)cancelQueryWithIdentifier:(id)identifier
{
  v4 = sub_1C014C230();
  v6 = v5;
  selfCopy = self;
  sub_1C0136370(v4, v6);
}

@end