@interface MBEncryptionUtilities
+ (id)decryptString:(id)string withKey:(id)key salt:(id)salt error:(id *)error;
+ (id)keyDataForKey:(id)key salt:(id)salt;
@end

@implementation MBEncryptionUtilities

+ (id)decryptString:(id)string withKey:(id)key salt:(id)salt error:(id *)error
{
  stringCopy = string;
  v11 = [self keyDataForKey:key salt:salt];
  v12 = [[NSData alloc] initWithBase64EncodedString:stringCopy options:0];

  dataOutMoved = 0;
  iv = xmmword_1000B73A0;
  if (CCCrypt(1u, 0, 1u, [v11 bytes], objc_msgSend(v11, "length"), &iv, objc_msgSend(v12, "bytes"), objc_msgSend(v12, "length"), 0, 0, &dataOutMoved) == -4301 || !objc_msgSend(v12, "length"))
  {
    v16 = [NSMutableData alloc];
    v15 = [v16 initWithLength:dataOutMoved];
    bytes = [v11 bytes];
    v18 = [v11 length];
    bytes2 = [v12 bytes];
    v20 = [v12 length];
    dataOut = [v15 mutableBytes];
    v22 = CCCrypt(1u, 0, 1u, bytes, v18, &iv, bytes2, v20, dataOut, dataOutMoved, &dataOutMoved);
    if (v22)
    {
      if (error)
      {
        v13 = [MBError errorWithCode:1 format:@"Failed to encrypt data: %d", v22];
        v14 = 0;
        goto LABEL_8;
      }

      v14 = 0;
    }

    else
    {
      [v15 setLength:dataOutMoved];
      v14 = v15;
      v15 = v14;
    }
  }

  else
  {
    if (error)
    {
      v13 = [MBError errorWithCode:1 format:@"CCCrypt was OK with a zero-length buffer? No. Just no."];
      v14 = 0;
      v15 = 0;
LABEL_8:
      *error = v13;
      goto LABEL_12;
    }

    v14 = 0;
    v15 = 0;
  }

LABEL_12:

  return v14;
}

+ (id)keyDataForKey:(id)key salt:(id)salt
{
  keyCopy = key;
  saltCopy = salt;
  if (!keyCopy || (v7 = saltCopy) == 0)
  {
    objc_exception_throw([[MBException alloc] initWithCode:207 format:@"Key and salt must not be nil"]);
  }

  v8 = [keyCopy mutableCopy];
  [v8 appendData:v7];
  v9 = [MBDigest sha1ForData:v8];
  v10 = [v9 subdataWithRange:{0, 16}];

  return v10;
}

@end