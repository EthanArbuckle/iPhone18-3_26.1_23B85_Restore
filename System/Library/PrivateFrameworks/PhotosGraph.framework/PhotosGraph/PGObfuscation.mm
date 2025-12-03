@interface PGObfuscation
+ (id)obfuscatedStringFromPlaintextDate:(id)date usingDateFormatter:(id)formatter;
+ (id)obfuscatedStringFromPlaintextNumber:(id)number;
+ (id)obfuscatedStringFromPlaintextString:(id)string;
+ (id)plaintextDateFromObfuscatedString:(id)string usingDateFormatter:(id)formatter;
+ (id)plaintextNumberFromObfuscatedString:(id)string;
+ (id)plaintextStringFromObfuscatedString:(id)string;
@end

@implementation PGObfuscation

+ (id)plaintextDateFromObfuscatedString:(id)string usingDateFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6 = [PGObfuscation plaintextStringFromObfuscatedString:string];
  if (v6)
  {
    v7 = [formatterCopy dateFromString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)obfuscatedStringFromPlaintextDate:(id)date usingDateFormatter:(id)formatter
{
  if (date)
  {
    v4 = [formatter stringFromDate:?];
    v5 = [PGObfuscation obfuscatedStringFromPlaintextString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)plaintextNumberFromObfuscatedString:(id)string
{
  stringCopy = string;
  v4 = [@"aE45Bhwo2Wf4re1A" dataUsingEncoding:4];
  v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:stringCopy options:0];

  v6 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v5, "length") + 16}];
  v12 = 0;
  v7 = 0;
  if (!CCCrypt(1u, 0, 1u, [v4 bytes], 0x10uLL, 0, objc_msgSend(v5, "bytes"), objc_msgSend(v5, "length"), objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length"), &v12))
  {
    [v6 setLength:v12];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    v9 = v8;
    if (v8)
    {
      v10 = MEMORY[0x277CCABB0];
      [v8 doubleValue];
      v7 = [v10 numberWithDouble:?];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)obfuscatedStringFromPlaintextNumber:(id)number
{
  stringValue = [number stringValue];
  v4 = [@"aE45Bhwo2Wf4re1A" dataUsingEncoding:4];
  v5 = [stringValue dataUsingEncoding:4];
  v6 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v5, "length") + 16}];
  v9 = 0;
  v7 = 0;
  if (!CCCrypt(0, 0, 1u, [v4 bytes], 0x10uLL, 0, objc_msgSend(v5, "bytes"), objc_msgSend(v5, "length"), objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length"), &v9))
  {
    [v6 setLength:v9];
    v7 = [v6 base64EncodedStringWithOptions:0];
  }

  return v7;
}

+ (id)plaintextStringFromObfuscatedString:(id)string
{
  stringCopy = string;
  v4 = [@"aE45Bhwo2Wf4re1A" dataUsingEncoding:4];
  v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:stringCopy options:0];

  v6 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v5, "length") + 16}];
  v9 = 0;
  v7 = 0;
  if (!CCCrypt(1u, 0, 1u, [v4 bytes], 0x10uLL, 0, objc_msgSend(v5, "bytes"), objc_msgSend(v5, "length"), objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length"), &v9))
  {
    [v6 setLength:v9];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
  }

  return v7;
}

+ (id)obfuscatedStringFromPlaintextString:(id)string
{
  stringCopy = string;
  v4 = [@"aE45Bhwo2Wf4re1A" dataUsingEncoding:4];
  v5 = [stringCopy dataUsingEncoding:4];

  v6 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v5, "length") + 16}];
  v9 = 0;
  v7 = 0;
  if (!CCCrypt(0, 0, 1u, [v4 bytes], 0x10uLL, 0, objc_msgSend(v5, "bytes"), objc_msgSend(v5, "length"), objc_msgSend(v6, "bytes"), objc_msgSend(v6, "length"), &v9))
  {
    [v6 setLength:v9];
    v7 = [v6 base64EncodedStringWithOptions:0];
  }

  return v7;
}

@end