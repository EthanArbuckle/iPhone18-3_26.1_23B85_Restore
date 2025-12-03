@interface SPRPersistenceFactory
- (id)makePersistingCoreDataWithEntity:(int64_t)entity error:(id *)error;
- (id)makePersistingCoreDataWithName:(id)name error:(id *)error;
@end

@implementation SPRPersistenceFactory

- (id)makePersistingCoreDataWithEntity:(int64_t)entity error:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, error, v4);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (id)makePersistingCoreDataWithName:(id)name error:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, error, v4);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

@end