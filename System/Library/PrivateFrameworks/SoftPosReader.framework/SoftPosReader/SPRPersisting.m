@interface SPRPersisting
- (BOOL)deleteAll:(id *)a3;
- (BOOL)deleteWithKey:(id)a3 error:(id *)a4;
- (BOOL)insertWithKey:(id)a3 value:(id)a4 error:(id *)a5;
- (BOOL)updateWithKey:(id)a3 value:(id)a4 error:(id *)a5;
- (id)retrieveAll:(id *)a3;
- (id)retrieveWithKey:(id)a3 error:(id *)a4;
@end

@implementation SPRPersisting

- (BOOL)insertWithKey:(id)a3 value:(id)a4 error:(id *)a5
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, a4, a5);

  if (a5 && v6)
  {
    *a5 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (id)retrieveWithKey:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, a4, v4);

  if (a4 && v6)
  {
    *a4 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (BOOL)updateWithKey:(id)a3 value:(id)a4 error:(id *)a5
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, a4, a5);

  if (a5 && v6)
  {
    *a5 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (BOOL)deleteWithKey:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, a4, v4);

  if (a4 && v6)
  {
    *a4 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (BOOL)deleteAll:(id *)a3
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, v3, v4);

  if (a3 && v6)
  {
    *a3 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (id)retrieveAll:(id *)a3
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, v3, v4);

  if (a3 && v6)
  {
    *a3 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

@end