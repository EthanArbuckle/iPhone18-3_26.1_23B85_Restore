@interface SXPhoneNumberActionSerializer
- (id)URLForAction:(id)a3 type:(int64_t)a4;
@end

@implementation SXPhoneNumberActionSerializer

- (id)URLForAction:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 phoneNumber];

    v7 = 0;
    if (a4 != 1 && v6)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v8 setScheme:@"tel"];
      v9 = [v5 phoneNumber];
      [v8 setHost:v9];

      v7 = [v8 URL];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end