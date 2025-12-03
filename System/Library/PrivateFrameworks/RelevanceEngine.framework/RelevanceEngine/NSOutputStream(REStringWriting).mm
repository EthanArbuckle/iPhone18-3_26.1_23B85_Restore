@interface NSOutputStream(REStringWriting)
- (void)re_writeString:()REStringWriting;
@end

@implementation NSOutputStream(REStringWriting)

- (void)re_writeString:()REStringWriting
{
  v4 = a3;
  v5 = [v4 lengthOfBytesUsingEncoding:4];
  if (v5)
  {
    v6 = v5;
    if (v5 == 1)
    {
      v9 = [v4 characterAtIndex:0];
      [self write:&v9 maxLength:1];
    }

    else
    {
      uTF8String = [v4 UTF8String];
      if (uTF8String)
      {
        v8 = uTF8String;
        do
        {
          v6 -= [self write:v8 maxLength:v6];
        }

        while (v6 && ([self hasSpaceAvailable] & 1) != 0);
      }
    }
  }
}

@end