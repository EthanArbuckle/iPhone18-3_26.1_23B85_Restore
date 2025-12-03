@interface PGError
+ (id)errorForCode:(int64_t)code;
+ (id)xpcSafeErrorWithError:(id)error;
@end

@implementation PGError

+ (id)xpcSafeErrorWithError:(id)error
{
  if (error)
  {
    v3 = MEMORY[0x277CCA9B8];
    errorCopy = error;
    domain = [errorCopy domain];
    code = [errorCopy code];
    localizedDescription = [errorCopy localizedDescription];

    v8 = [v3 errorWithDomain:domain code:code localizedDescription:localizedDescription];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)errorForCode:(int64_t)code
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (code <= -6)
  {
    if (code > -9)
    {
      if (code == -8)
      {
        v6 = @"PGErrorFormatIncompleteData";
      }

      else if (code == -7)
      {
        v6 = @"PGErrorFormatNotAuthorized";
      }

      else
      {
        v6 = @"PGErrorFormatFeatureNotSupported";
      }

      goto LABEL_23;
    }

    if (code == -10)
    {
      v6 = @"PGErrorFormatNotReady";
      goto LABEL_23;
    }

    if (code == -9)
    {
      v6 = @"PGErrorFormatSyntaxError";
      goto LABEL_23;
    }

LABEL_22:
    v6 = @"PGErrorFormatUnknownError";
    goto LABEL_23;
  }

  if (code > -4)
  {
    switch(code)
    {
      case -3:
        v6 = @"PGErrorFormatNotFound";
        goto LABEL_23;
      case -2:
        v6 = @"PGErrorFormatNotImplemented";
        goto LABEL_23;
      case -1:
        v6 = @"PGErrorFormatInternalError";
        goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (code == -5)
  {
    v6 = @"PGErrorFormatAlreadyInUse";
  }

  else
  {
    v6 = @"PGErrorFormatCanceled";
  }

LABEL_23:
  v7 = [v4 localizedStringForKey:v6 value:v6 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:code localizedDescription:v7];

  return v8;
}

@end