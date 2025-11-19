@interface REMFetchResultToken_Codable
- (REMFetchResultToken_Codable)initWithPersistentHistoryTokens:(id)a3;
@end

@implementation REMFetchResultToken_Codable

- (REMFetchResultToken_Codable)initWithPersistentHistoryTokens:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_23004CBA4(0, &qword_280C987F8);
  sub_23030F658();
  v5 = sub_23030F638();

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(REMFetchResultToken *)&v8 initWithPersistentHistoryTokens:v5];

  return v6;
}

@end