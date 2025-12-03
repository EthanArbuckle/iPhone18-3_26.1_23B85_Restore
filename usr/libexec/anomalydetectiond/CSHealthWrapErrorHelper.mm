@interface CSHealthWrapErrorHelper
+ (void)assignError:(id *)error code:(int)code format:(id)format;
+ (void)assignError:(id *)error code:(int64_t)code description:(id)description;
@end

@implementation CSHealthWrapErrorHelper

+ (void)assignError:(id *)error code:(int64_t)code description:(id)description
{
  if (error)
  {
    v11 = NSLocalizedDescriptionKey;
    descriptionCopy = description;
    descriptionCopy2 = description;
    v8 = [NSDictionary dictionaryWithObjects:&descriptionCopy forKeys:&v11 count:1];
    v9 = [NSError errorWithDomain:@"com.apple.coresafety.healthwrap" code:code userInfo:v8];

    v10 = v9;
    *error = v9;
  }
}

+ (void)assignError:(id *)error code:(int)code format:(id)format
{
  formatCopy = format;
  v9 = [[NSString alloc] initWithFormat:formatCopy arguments:&v10];

  [self assignError:error code:code description:v9];
}

@end