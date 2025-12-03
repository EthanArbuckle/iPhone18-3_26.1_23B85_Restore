@interface NSString(OFNSStringMIMEExtensions)
+ (uint64_t)mimeBoundary;
+ (void)mimePart:()OFNSStringMIMEExtensions forName:;
@end

@implementation NSString(OFNSStringMIMEExtensions)

+ (uint64_t)mimeBoundary
{
  result = mimeBoundary_mimeBoundary;
  if (!mimeBoundary_mimeBoundary)
  {
    v1 = objc_alloc(MEMORY[0x277CCACA8]);
    result = [v1 initWithFormat:@"----_Multipart_MIME_Boundary_%@_----", objc_msgSend(objc_msgSend(MEMORY[0x277CCAC38], "processInfo"), "globallyUniqueString")];
    mimeBoundary_mimeBoundary = result;
  }

  return result;
}

+ (void)mimePart:()OFNSStringMIMEExtensions forName:
{
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"--%@\r\nContent-Disposition: form-data; charset=UTF-8; name=%@\r\n\r\n", objc_msgSend(MEMORY[0x277CCACA8], "mimeBoundary"), a4];
  [string appendString:a3];
  [string appendString:@"\r\n"];
  return string;
}

@end