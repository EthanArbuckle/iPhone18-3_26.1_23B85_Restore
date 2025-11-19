@interface TPSSearchQueryManager
+ (TPSSearchQueryManager)shared;
- (void)cancelQueryWithIdentifier:(id)a3;
- (void)performQuery:(id)a3 completion:(id)a4;
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

- (void)performQuery:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1C0135B48(v8, sub_1C0136A08, v7);
}

- (void)cancelQueryWithIdentifier:(id)a3
{
  v4 = sub_1C014C230();
  v6 = v5;
  v7 = self;
  sub_1C0136370(v4, v6);
}

@end