@interface NSError
+ (id)tl_errorWithDomain:(id)domain description:(id)description;
- (id)tl_nonRedundantDescription;
@end

@implementation NSError

+ (id)tl_errorWithDomain:(id)domain description:(id)description
{
  domainCopy = domain;
  if (description)
  {
    v12 = &v16;
    descriptionCopy = description;
    v8 = [[NSString alloc] initWithFormat:descriptionCopy arguments:&v16];

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

  v10 = [self errorWithDomain:domainCopy code:0 userInfo:{v9, v12}];

  return v10;
}

- (id)tl_nonRedundantDescription
{
  v3 = [(NSError *)self description];
  userInfo = [(NSError *)self userInfo];
  v5 = [userInfo objectForKey:NSLocalizedDescriptionKey];
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