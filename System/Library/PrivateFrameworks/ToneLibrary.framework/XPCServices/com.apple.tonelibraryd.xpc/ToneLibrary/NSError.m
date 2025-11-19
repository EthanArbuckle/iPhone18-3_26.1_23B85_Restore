@interface NSError
+ (id)tl_errorWithDomain:(id)a3 description:(id)a4;
- (id)tl_nonRedundantDescription;
@end

@implementation NSError

+ (id)tl_errorWithDomain:(id)a3 description:(id)a4
{
  v6 = a3;
  if (a4)
  {
    v12 = &v16;
    v7 = a4;
    v8 = [[NSString alloc] initWithFormat:v7 arguments:&v16];

    if (v8)
    {
      v13 = NSLocalizedDescriptionKey;
      v14 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [a1 errorWithDomain:v6 code:0 userInfo:{v9, v12}];

  return v10;
}

- (id)tl_nonRedundantDescription
{
  v3 = [(NSError *)self description];
  v4 = [(NSError *)self userInfo];
  v5 = [v4 objectForKey:NSLocalizedDescriptionKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [NSString stringWithFormat:@"%@=%@, ", NSLocalizedDescriptionKey, v5];
    v7 = [v3 stringByReplacingOccurrencesOfString:v6 withString:&stru_1000086A8];

    v8 = [NSString stringWithFormat:@"%@=%@", NSLocalizedDescriptionKey, v5];

    v3 = [v7 stringByReplacingOccurrencesOfString:v8 withString:&stru_1000086A8];
  }

  return v3;
}

@end