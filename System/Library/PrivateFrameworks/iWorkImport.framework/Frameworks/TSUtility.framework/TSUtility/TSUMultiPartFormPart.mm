@interface TSUMultiPartFormPart
- (id)headerData;
@end

@implementation TSUMultiPartFormPart

- (id)headerData
{
  filename = [(TSUMultiPartFormPart *)self filename];

  v4 = MEMORY[0x277CCAB68];
  name = [(TSUMultiPartFormPart *)self name];
  v6 = name;
  if (filename)
  {
    filename2 = [(TSUMultiPartFormPart *)self filename];
    v8 = [v4 stringWithFormat:@"Content-Disposition: form-data name=%@; filename=%@\r\n", v6, filename2];;
  }

  else
  {
    v8 = [v4 stringWithFormat:@"Content-Disposition: form-data name=%@\r\n", name];;
  }

  contentType = [(TSUMultiPartFormPart *)self contentType];

  if (contentType)
  {
    contentType2 = [(TSUMultiPartFormPart *)self contentType];
    [v8 appendFormat:@"Content-Type: %@\r\n", contentType2];
  }

  [v8 appendString:@"\r\n"];
  v11 = [v8 dataUsingEncoding:4];

  return v11;
}

@end