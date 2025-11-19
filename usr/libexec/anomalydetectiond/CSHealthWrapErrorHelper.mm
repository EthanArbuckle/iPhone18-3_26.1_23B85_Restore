@interface CSHealthWrapErrorHelper
+ (void)assignError:(id *)a3 code:(int)a4 format:(id)a5;
+ (void)assignError:(id *)a3 code:(int64_t)a4 description:(id)a5;
@end

@implementation CSHealthWrapErrorHelper

+ (void)assignError:(id *)a3 code:(int64_t)a4 description:(id)a5
{
  if (a3)
  {
    v11 = NSLocalizedDescriptionKey;
    v12 = a5;
    v7 = a5;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [NSError errorWithDomain:@"com.apple.coresafety.healthwrap" code:a4 userInfo:v8];

    v10 = v9;
    *a3 = v9;
  }
}

+ (void)assignError:(id *)a3 code:(int)a4 format:(id)a5
{
  v8 = a5;
  v9 = [[NSString alloc] initWithFormat:v8 arguments:&v10];

  [a1 assignError:a3 code:a4 description:v9];
}

@end