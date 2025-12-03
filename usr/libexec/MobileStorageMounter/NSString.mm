@interface NSString
+ (id)hexStringWithData:(id)data;
- (id)initHexStringWithData:(id)data;
@end

@implementation NSString

+ (id)hexStringWithData:(id)data
{
  dataCopy = data;
  v4 = [[NSString alloc] initHexStringWithData:dataCopy];

  return v4;
}

- (id)initHexStringWithData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy && (v6 = [dataCopy length], v7 = objc_msgSend(v5, "bytes"), v8 = 2 * v6, (v9 = malloc_type_malloc(2 * v6, 0x100004077774924uLL)) != 0))
  {
    if (v6)
    {
      v10 = v9 + 1;
      do
      {
        if (*v7 <= 0x9Fu)
        {
          v11 = (*v7 >> 4) | 0x30;
        }

        else
        {
          v11 = (*v7 >> 4) + 55;
        }

        *(v10 - 1) = v11;
        v12 = *v7++;
        v13 = (v12 & 0xF) + 55;
        v14 = v12 & 0xF | 0x30;
        if ((v12 & 0xFu) <= 9)
        {
          v15 = v14;
        }

        else
        {
          v15 = v13;
        }

        *v10 = v15;
        v10 += 2;
        v6 = v6 - 1;
      }

      while (v6);
    }

    self = [(NSString *)self initWithBytesNoCopy:v9 length:v8 encoding:1 freeWhenDone:1];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end