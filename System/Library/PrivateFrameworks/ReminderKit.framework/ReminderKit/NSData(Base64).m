@interface NSData(Base64)
+ (id)dataFromBase64String:()Base64;
- (id)base64EncodedString;
@end

@implementation NSData(Base64)

+ (id)dataFromBase64String:()Base64
{
  v3 = [a3 dataUsingEncoding:1];
  v7 = 0;
  v4 = NewBase64Decode([v3 bytes], objc_msgSend(v3, "length"), &v7);
  v5 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:v7];
  free(v4);

  return v5;
}

- (id)base64EncodedString
{
  v5 = 0;
  v1 = NewBase64Encode([a1 bytes], objc_msgSend(a1, "length"), 0, &v5);
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [v2 initWithBytes:v1 length:v5 encoding:1];
  free(v1);

  return v3;
}

@end