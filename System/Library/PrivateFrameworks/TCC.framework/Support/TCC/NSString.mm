@interface NSString
- (id)stringByResolvingRealPathWithError:(id *)error;
@end

@implementation NSString

- (id)stringByResolvingRealPathWithError:(id *)error
{
  if ([(NSString *)self isEqualToString:&stru_1000A7240])
  {
    if (error)
    {
      v12[0] = NSLocalizedDescriptionKey;
      v12[1] = NSFilePathErrorKey;
      v13[0] = @"Receiver must not be the empty string.";
      v13[1] = self;
      v5 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:v5];
    }

LABEL_7:
    v7 = 0;
  }

  else
  {
    v10 = 0;
    v9 = xmmword_100080E20;
    memset(v11, 0, 512);
    while (1)
    {
      selfCopy = self;
      if (getattrlist([(NSString *)selfCopy fileSystemRepresentation:v9], &v9, v11, 0x40CuLL, 0) != -1)
      {
        break;
      }

      if (*__error() != 35)
      {
        goto LABEL_7;
      }
    }

    v7 = [[NSString alloc] initWithUTF8String:v11 + SDWORD1(v11[0]) + 4];
  }

  return v7;
}

@end