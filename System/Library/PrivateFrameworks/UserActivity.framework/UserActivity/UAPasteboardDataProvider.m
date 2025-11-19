@interface UAPasteboardDataProvider
- (UAPasteboardDataProvider)initWithData:(id)a3 type:(id)a4;
- (void)getDataWithCompletionBlock:(id)a3;
@end

@implementation UAPasteboardDataProvider

- (UAPasteboardDataProvider)initWithData:(id)a3 type:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = UAPasteboardDataProvider;
  v8 = [(UAPasteboardDataProvider *)&v11 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAD78] UUID];
    [(UAPasteboardDataProvider *)v8 setUuid:v9];

    [(UAPasteboardDataProvider *)v8 setType:v7];
    [(UAPasteboardDataProvider *)v8 setData:v6];
  }

  return v8;
}

- (void)getDataWithCompletionBlock:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(UAPasteboardDataProvider *)self data];

  if (v5)
  {
    v6 = MEMORY[0x277CBEAE0];
    v7 = [(UAPasteboardDataProvider *)self data];
    v15 = [v6 inputStreamWithData:v7];

    v4[2](v4, v15, 0);
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"Zero length data to convert";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = [v9 errorWithDomain:@"UAContinuityErrorDomain" code:-124 userInfo:v10];

    v12 = _uaGetLogForCategory(@"pasteboard-client");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(UAPasteboardDataProvider *)self type];
      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_ERROR, "[Local Pasteboard] Error, providing nil data for type: %@", buf, 0xCu);
    }

    (v4)[2](v4, 0, v11);
    v14 = *MEMORY[0x277D85DE8];
  }
}

@end