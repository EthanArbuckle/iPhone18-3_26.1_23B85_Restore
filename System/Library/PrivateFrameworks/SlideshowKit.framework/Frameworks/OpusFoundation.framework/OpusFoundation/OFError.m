@interface OFError
+ (id)errorForCode:(int64_t)a3;
@end

@implementation OFError

+ (id)errorForCode:(int64_t)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (a3 > -4)
  {
    if (a3 == -3)
    {
      v5 = @"Not found";
      goto LABEL_15;
    }

    if (a3 != -2)
    {
      if (a3 == -1)
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
    if (a3 == -6)
    {
      v5 = @"Authorization failed";
      goto LABEL_15;
    }

    if (a3 != -5)
    {
      if (a3 == -4)
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

  return [v7 errorWithDomain:@"OFErrorDomain" code:a3 localizedDescription:v6];
}

@end