@interface PGError
+ (id)errorForCode:(int64_t)a3;
+ (id)xpcSafeErrorWithError:(id)a3;
@end

@implementation PGError

+ (id)xpcSafeErrorWithError:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = a3;
    v5 = [v4 domain];
    v6 = [v4 code];
    v7 = [v4 localizedDescription];

    v8 = [v3 errorWithDomain:v5 code:v6 localizedDescription:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)errorForCode:(int64_t)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (a3 <= -6)
  {
    if (a3 > -9)
    {
      if (a3 == -8)
      {
        v6 = @"PGErrorFormatIncompleteData";
      }

      else if (a3 == -7)
      {
        v6 = @"PGErrorFormatNotAuthorized";
      }

      else
      {
        v6 = @"PGErrorFormatFeatureNotSupported";
      }

      goto LABEL_23;
    }

    if (a3 == -10)
    {
      v6 = @"PGErrorFormatNotReady";
      goto LABEL_23;
    }

    if (a3 == -9)
    {
      v6 = @"PGErrorFormatSyntaxError";
      goto LABEL_23;
    }

LABEL_22:
    v6 = @"PGErrorFormatUnknownError";
    goto LABEL_23;
  }

  if (a3 > -4)
  {
    switch(a3)
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

  if (a3 == -5)
  {
    v6 = @"PGErrorFormatAlreadyInUse";
  }

  else
  {
    v6 = @"PGErrorFormatCanceled";
  }

LABEL_23:
  v7 = [v4 localizedStringForKey:v6 value:v6 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PGErrorDomain" code:a3 localizedDescription:v7];

  return v8;
}

@end