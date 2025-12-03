@interface SPRPersisting
- (BOOL)deleteAll:(id *)all;
- (BOOL)deleteWithKey:(id)key error:(id *)error;
- (BOOL)insertWithKey:(id)key value:(id)value error:(id *)error;
- (BOOL)updateWithKey:(id)key value:(id)value error:(id *)error;
- (id)retrieveAll:(id *)all;
- (id)retrieveWithKey:(id)key error:(id *)error;
@end

@implementation SPRPersisting

- (BOOL)insertWithKey:(id)key value:(id)value error:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, value, error);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (id)retrieveWithKey:(id)key error:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, error, v4);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (BOOL)updateWithKey:(id)key value:(id)value error:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, value, error);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (BOOL)deleteWithKey:(id)key error:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, error, v4);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (BOOL)deleteAll:(id *)all
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, v3, v4);

  if (all && v6)
  {
    *all = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (id)retrieveAll:(id *)all
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, v3, v4);

  if (all && v6)
  {
    *all = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

@end