@interface TSUMultiPartFormPart
- (id)headerData;
@end

@implementation TSUMultiPartFormPart

- (id)headerData
{
  v3 = [(TSUMultiPartFormPart *)self filename];

  v4 = MEMORY[0x277CCAB68];
  v5 = [(TSUMultiPartFormPart *)self name];
  v6 = v5;
  if (v3)
  {
    v7 = [(TSUMultiPartFormPart *)self filename];
    v8 = [v4 stringWithFormat:@"Content-Disposition: form-data name=%@; filename=%@\r\n", v6, v7];;
  }

  else
  {
    v8 = [v4 stringWithFormat:@"Content-Disposition: form-data name=%@\r\n", v5];;
  }

  v9 = [(TSUMultiPartFormPart *)self contentType];

  if (v9)
  {
    v10 = [(TSUMultiPartFormPart *)self contentType];
    [v8 appendFormat:@"Content-Type: %@\r\n", v10];
  }

  [v8 appendString:@"\r\n"];
  v11 = [v8 dataUsingEncoding:4];

  return v11;
}

@end