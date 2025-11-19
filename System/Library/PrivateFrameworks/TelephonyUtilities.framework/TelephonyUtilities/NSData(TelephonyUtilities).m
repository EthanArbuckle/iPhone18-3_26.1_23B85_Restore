@interface NSData(TelephonyUtilities)
+ (id)tu_dataForURLSafeBase64EncodedString:()TelephonyUtilities;
+ (id)tu_dataForUUID:()TelephonyUtilities;
- (id)tu_URLSafeBase64EncodedString;
- (id)tu_UUID;
@end

@implementation NSData(TelephonyUtilities)

- (id)tu_URLSafeBase64EncodedString
{
  if ([a1 length])
  {
    v2 = [a1 base64EncodedStringWithOptions:0];
    v3 = [v2 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

    v4 = [v3 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

    v5 = [v4 tu_stringByStrippingBase64Padding];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tu_dataForURLSafeBase64EncodedString:()TelephonyUtilities
{
  if (a3)
  {
    v3 = [a3 copy];
    v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

    v5 = [v4 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];

    v6 = [v5 tu_stringByAddingBase64Padding];

    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tu_UUID
{
  v5[2] = *MEMORY[0x1E69E9840];
  if ([a1 length] == 16)
  {
    v5[0] = 0;
    v5[1] = 0;
    [a1 getBytes:v5 length:16];
    v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v5];
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)tu_dataForUUID:()TelephonyUtilities
{
  v3 = a3;
  v6[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6[0] = 0;
    v6[1] = 0;
    [a3 getUUIDBytes:v6];
    v3 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:16];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end