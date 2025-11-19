@interface SUBDownload
+ (id)downloadWithDescriptor:(id)a3 andProgress:(id)a4;
- (SUBDownload)initWithCoder:(id)a3;
- (id)copy;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUBDownload

+ (id)downloadWithDescriptor:(id)a3 andProgress:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SUBDownload);
  v8 = [v6 copy];

  [(SUBDownload *)v7 setDescriptor:v8];
  v9 = [v5 copy];

  [(SUBDownload *)v7 setProgress:v9];

  return v7;
}

- (SUBDownload)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SUBDownload;
  v5 = [(SUBDownload *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  descriptor = self->_descriptor;
  v5 = a3;
  [v5 encodeObject:descriptor forKey:@"descriptor"];
  [v5 encodeObject:self->_progress forKey:@"progress"];
}

- (id)copy
{
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

@end