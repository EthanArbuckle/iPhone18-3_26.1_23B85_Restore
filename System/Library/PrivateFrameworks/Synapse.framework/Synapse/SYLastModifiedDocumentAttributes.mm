@interface SYLastModifiedDocumentAttributes
- (SYLastModifiedDocumentAttributes)initWithCoder:(id)a3;
- (SYLastModifiedDocumentAttributes)initWithFileURL:(id)a3 modifiedDate:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SYLastModifiedDocumentAttributes

- (SYLastModifiedDocumentAttributes)initWithFileURL:(id)a3 modifiedDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SYLastModifiedDocumentAttributes;
  v9 = [(SYLastModifiedDocumentAttributes *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileURL, a3);
    objc_storeStrong(&v10->_modifiedDate, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SYLastModifiedDocumentAttributes *)self fileURL];
  [v4 encodeObject:v5 forKey:@"fileURL"];

  v6 = [(SYLastModifiedDocumentAttributes *)self modifiedDate];
  [v4 encodeObject:v6 forKey:@"modifiedDate"];
}

- (SYLastModifiedDocumentAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileURL"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modifiedDate"];

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
    v8 = 0;
  }

  else
  {
    self = [(SYLastModifiedDocumentAttributes *)self initWithFileURL:v5 modifiedDate:v6];
    v8 = self;
  }

  return v8;
}

@end