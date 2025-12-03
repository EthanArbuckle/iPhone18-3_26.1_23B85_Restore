@interface SUBDownload
+ (id)downloadWithDescriptor:(id)descriptor andProgress:(id)progress;
- (SUBDownload)initWithCoder:(id)coder;
- (id)copy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUBDownload

+ (id)downloadWithDescriptor:(id)descriptor andProgress:(id)progress
{
  progressCopy = progress;
  descriptorCopy = descriptor;
  v7 = objc_alloc_init(SUBDownload);
  v8 = [descriptorCopy copy];

  [(SUBDownload *)v7 setDescriptor:v8];
  v9 = [progressCopy copy];

  [(SUBDownload *)v7 setProgress:v9];

  return v7;
}

- (SUBDownload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SUBDownload;
  v5 = [(SUBDownload *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  descriptor = self->_descriptor;
  coderCopy = coder;
  [coderCopy encodeObject:descriptor forKey:@"descriptor"];
  [coderCopy encodeObject:self->_progress forKey:@"progress"];
}

- (id)copy
{
  v2 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

@end