@interface OKError
+ (id)errorForCode:(int64_t)code;
@end

@implementation OKError

+ (id)errorForCode:(int64_t)code
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (code <= -5)
  {
    switch(code)
    {
      case -7:
        v5 = @"Already in use";
        goto LABEL_17;
      case -6:
        v5 = @"Failed to authorize";
        goto LABEL_17;
      case -5:
        v5 = @"Network not available";
        goto LABEL_17;
    }

LABEL_13:
    v5 = @"Unknown error";
    goto LABEL_17;
  }

  if (code > -3)
  {
    if (code == -2)
    {
      v5 = @"Not implemented";
      goto LABEL_17;
    }

    if (code == -1)
    {
      v5 = @"Internal error";
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (code == -4)
  {
    v5 = @"Cancelled";
  }

  else
  {
    v5 = @"Not found";
  }

LABEL_17:
  v6 = [v4 localizedStringForKey:v5 value:v5 table:@"Localizable"];
  v7 = MEMORY[0x277CCA9B8];

  return [v7 errorWithDomain:@"OKErrorDomain" code:code localizedDescription:v6];
}

@end