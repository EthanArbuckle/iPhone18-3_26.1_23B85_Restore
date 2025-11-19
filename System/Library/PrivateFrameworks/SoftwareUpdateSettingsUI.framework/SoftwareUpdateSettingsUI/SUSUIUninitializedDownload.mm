@interface SUSUIUninitializedDownload
- (SUSUIUninitializedDownload)init;
- (SUSUIUninitializedDownload)initWithDescriptor:(id)a3;
@end

@implementation SUSUIUninitializedDownload

- (SUSUIUninitializedDownload)init
{
  exception = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Cannot invoke init method on SUDownloadUninitialized. Use initWithDescriptor: instead." userInfo:0];
  v2 = exception;
  objc_exception_throw(exception);
}

- (SUSUIUninitializedDownload)initWithDescriptor:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11.receiver = v3;
  v11.super_class = SUSUIUninitializedDownload;
  v9 = [(SUDownload *)&v11 init];
  v13 = v9;
  objc_storeStrong(&v13, v9);
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277D648C8]);
    [v10 setIsDone:0];
    [v10 setPhase:*MEMORY[0x277D649F8]];
    [(SUDownload *)v13 setProgress:v10];
    [(SUDownload *)v13 setDescriptor:location[0]];
    v7 = v13;
    v4 = objc_alloc(MEMORY[0x277D64890]);
    v8 = [v4 initWithDescriptor:location[0]];
    [(SUDownload *)v7 setDownloadOptions:?];
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v10, 0);
  }

  v6 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  return v6;
}

@end