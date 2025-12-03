@interface SPRAttestationManager
- (BOOL)attestWithCheckpoint:(int64_t)checkpoint error:(id *)error;
- (BOOL)refreshAndReturnError:(id *)error;
- (id)requestTokenWithWarningsAndReturnError:(id *)error;
@end

@implementation SPRAttestationManager

- (BOOL)refreshAndReturnError:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, v3, v4);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (BOOL)attestWithCheckpoint:(int64_t)checkpoint error:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, error, v4);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

- (id)requestTokenWithWarningsAndReturnError:(id *)error
{
  v6 = objc_msgSend_errorWithCode_(SPRError, a2, 7002, v3, v4);

  if (error && v6)
  {
    *error = objc_msgSend_errorWithCode_(SPRError, v7, 7002, v8, v9);
  }

  return 0;
}

@end