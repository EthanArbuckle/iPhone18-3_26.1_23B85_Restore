@interface SHDataFetcherFileInfo
+ (id)dataFetcherForSourceURL:(id)a3;
- (NSData)data;
- (NSString)suggestedExtension;
- (SHDataFetcherFileInfo)initWithData:(id)a3 suggestedFileName:(id)a4;
- (SHDataFetcherFileInfo)initWithDataURL:(id)a3;
- (SHDataFetcherFileInfo)initWithDataURL:(id)a3 suggestedFileName:(id)a4;
- (int)compressionType;
@end

@implementation SHDataFetcherFileInfo

+ (id)dataFetcherForSourceURL:(id)a3
{
  v3 = [a3 isFileURL];
  v4 = off_279BBEDC0;
  if (!v3)
  {
    v4 = off_279BBEDB8;
  }

  v5 = *v4;
  v6 = objc_opt_new();

  return v6;
}

- (SHDataFetcherFileInfo)initWithData:(id)a3 suggestedFileName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SHDataFetcherFileInfo;
  v9 = [(SHDataFetcherFileInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, a3);
    objc_storeStrong(&v10->_suggestedFileName, a4);
  }

  return v10;
}

- (SHDataFetcherFileInfo)initWithDataURL:(id)a3 suggestedFileName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SHDataFetcherFileInfo;
  v9 = [(SHDataFetcherFileInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataFilePathURL, a3);
    objc_storeStrong(&v10->_suggestedFileName, a4);
  }

  return v10;
}

- (SHDataFetcherFileInfo)initWithDataURL:(id)a3
{
  v4 = a3;
  v5 = [v4 lastPathComponent];
  v6 = [(SHDataFetcherFileInfo *)self initWithDataURL:v4 suggestedFileName:v5];

  return v6;
}

- (int)compressionType
{
  v2 = MEMORY[0x277D54E08];
  v3 = MEMORY[0x277CBEBC0];
  v4 = [(SHDataFetcherFileInfo *)self suggestedFileName];
  v5 = [v3 fileURLWithPath:v4 isDirectory:0];
  v6 = [v5 pathExtension];
  LODWORD(v2) = [v2 supportedCompressionTypeFromFilePathExtension:v6];

  return v2;
}

- (NSString)suggestedExtension
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(SHDataFetcherFileInfo *)self suggestedFileName];
  v4 = [v2 URLWithString:v3];
  v5 = [v4 pathExtension];

  return v5;
}

- (NSData)data
{
  data = self->_data;
  if (data)
  {
    v3 = data;
  }

  else
  {
    v4 = MEMORY[0x277CBEA90];
    v5 = [(SHDataFetcherFileInfo *)self dataFilePathURL];
    v3 = [v4 dataWithContentsOfURL:v5];
  }

  return v3;
}

@end