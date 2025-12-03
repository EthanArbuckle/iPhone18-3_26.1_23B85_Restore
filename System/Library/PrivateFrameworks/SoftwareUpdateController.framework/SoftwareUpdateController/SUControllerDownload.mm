@interface SUControllerDownload
+ (id)downloadWithDescriptor:(id)descriptor andProgress:(id)progress;
- (SUControllerDownload)initWithCoder:(id)coder;
- (SUControllerDownload)initWithDescriptor:(id)descriptor;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUControllerDownload

+ (id)downloadWithDescriptor:(id)descriptor andProgress:(id)progress
{
  progressCopy = progress;
  descriptorCopy = descriptor;
  v7 = objc_alloc_init(SUControllerDownload);
  v8 = [descriptorCopy copy];

  [(SUControllerDownload *)v7 setDescriptor:v8];
  v9 = [progressCopy copy];

  [(SUControllerDownload *)v7 setProgress:v9];

  return v7;
}

- (SUControllerDownload)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v9.receiver = self;
  v9.super_class = SUControllerDownload;
  v6 = [(SUControllerDownload *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, descriptor);
  }

  return v7;
}

- (SUControllerDownload)initWithCoder:(id)coder
{
  v20[6] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = SUControllerDownload;
  v5 = [(SUControllerDownload *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v20[4] = objc_opt_class();
    v20[5] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:6];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v9;

    v11 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v13 = [v11 setWithArray:v12];

    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  descriptor = [(SUControllerDownload *)self descriptor];
  [coderCopy encodeObject:descriptor forKey:@"descriptor"];

  progress = [(SUControllerDownload *)self progress];
  [coderCopy encodeObject:progress forKey:@"progress"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  descriptor = [(SUControllerDownload *)self descriptor];
  progress = [(SUControllerDownload *)self progress];
  v6 = [v3 stringWithFormat:@"Descriptor: %@\nProgress: %@", descriptor, progress];

  return v6;
}

@end