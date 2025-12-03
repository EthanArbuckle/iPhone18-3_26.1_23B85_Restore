@interface WFRuntimeRunnableDataSourceImpl
- (void)loadEntriesFor:(Class)for parameterKey:(NSString *)key collectionIdentifier:(NSString *)identifier limit:(int64_t)limit completionHandler:(id)handler;
@end

@implementation WFRuntimeRunnableDataSourceImpl

- (void)loadEntriesFor:(Class)for parameterKey:(NSString *)key collectionIdentifier:(NSString *)identifier limit:(int64_t)limit completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = for;
  v13[3] = key;
  v13[4] = identifier;
  v13[5] = limit;
  v13[6] = v12;
  v13[7] = self;
  keyCopy = key;
  identifierCopy = identifier;
  selfCopy = self;

  sub_1CA67052C(&unk_1CA98C7A0, v13);
}

@end