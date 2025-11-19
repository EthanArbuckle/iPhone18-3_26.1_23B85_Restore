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
      [a1 write:&v9 maxLength:1];
    }

    else
    {
      v7 = [v4 UTF8String];
      if (v7)
      {
        v8 = v7;
        do
        {
          v6 -= [a1 write:v8 maxLength:v6];
        }

        while (v6 && ([a1 hasSpaceAvailable] & 1) != 0);
      }
    }
  }
}

@end