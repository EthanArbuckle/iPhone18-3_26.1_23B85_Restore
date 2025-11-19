@interface SPRAttestationManager
- (BOOL)attestWithCheckpoint:(int64_t)a3 error:(id *)a4;
- (BOOL)refreshAndReturnError:(id *)a3;
- (id)requestTokenWithWarningsAndReturnError:(id *)a3;
@end

@implementation SPRAttestationManager

- (BOOL)refreshAndReturnError:(id *)a3
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, v3, v4);

  if (a3 && v6)
  {
    *a3 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (BOOL)attestWithCheckpoint:(int64_t)a3 error:(id *)a4
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, a4, v4);

  if (a4 && v6)
  {
    *a4 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (id)requestTokenWithWarningsAndReturnError:(id *)a3
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, v3, v4);

  if (a3 && v6)
  {
    *a3 = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

@end