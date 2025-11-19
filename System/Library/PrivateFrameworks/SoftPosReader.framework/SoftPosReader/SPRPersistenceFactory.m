@interface SPRPersistenceFactory
- (id)makePersistingCoreDataWithEntity:(int64_t)a3 error:(id *)a4;
- (id)makePersistingCoreDataWithName:(id)a3 error:(id *)a4;
@end

@implementation SPRPersistenceFactory

- (id)makePersistingCoreDataWithEntity:(int64_t)a3 error:(id *)a4
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, a4, v4);

  if (a4 && v6)
  {
    *a4 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (id)makePersistingCoreDataWithName:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, a4, v4);

  if (a4 && v6)
  {
    *a4 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

@end