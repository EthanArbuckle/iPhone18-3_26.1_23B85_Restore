@interface SYLastModifiedDocumentAttributes
- (SYLastModifiedDocumentAttributes)initWithCoder:(id)coder;
- (SYLastModifiedDocumentAttributes)initWithFileURL:(id)l modifiedDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SYLastModifiedDocumentAttributes

- (SYLastModifiedDocumentAttributes)initWithFileURL:(id)l modifiedDate:(id)date
{
  lCopy = l;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = SYLastModifiedDocumentAttributes;
  v9 = [(SYLastModifiedDocumentAttributes *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileURL, l);
    objc_storeStrong(&v10->_modifiedDate, date);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fileURL = [(SYLastModifiedDocumentAttributes *)self fileURL];
  [coderCopy encodeObject:fileURL forKey:@"fileURL"];

  modifiedDate = [(SYLastModifiedDocumentAttributes *)self modifiedDate];
  [coderCopy encodeObject:modifiedDate forKey:@"modifiedDate"];
}

- (SYLastModifiedDocumentAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modifiedDate"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SYLastModifiedDocumentAttributes *)self initWithFileURL:v5 modifiedDate:v6];
    selfCopy = self;
  }

  return selfCopy;
}

@end