@interface OFError
+ (id)errorForCode:(int64_t)code;
@end

@implementation OFError

+ (id)errorForCode:(int64_t)code
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (code > -4)
  {
    if (code == -3)
    {
      v5 = @"Not found";
      goto LABEL_15;
    }

    if (code != -2)
    {
      if (code == -1)
      {
        v5 = @"Internal error";
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v5 = @"Not implemented";
  }

  else
  {
    if (code == -6)
    {
      v5 = @"Authorization failed";
      goto LABEL_15;
    }

    if (code != -5)
    {
      if (code == -4)
      {
        v5 = @"Cancelled";
        goto LABEL_15;
      }

LABEL_12:
      v5 = @"Unknown error";
      goto LABEL_15;
    }

    v5 = @"Network not available";
  }

LABEL_15:
  v6 = [v4 localizedStringForKey:v5 value:v5 table:@"Localizable"];
  v7 = MEMORY[0x277CCA9B8];

  return [v7 errorWithDomain:@"OFErrorDomain" code:code localizedDescription:v6];
}

@end