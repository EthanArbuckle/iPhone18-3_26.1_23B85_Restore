@interface SHDataFetcherFileInfo
+ (id)dataFetcherForSourceURL:(id)l;
- (NSData)data;
- (NSString)suggestedExtension;
- (SHDataFetcherFileInfo)initWithData:(id)data suggestedFileName:(id)name;
- (SHDataFetcherFileInfo)initWithDataURL:(id)l;
- (SHDataFetcherFileInfo)initWithDataURL:(id)l suggestedFileName:(id)name;
- (int)compressionType;
@end

@implementation SHDataFetcherFileInfo

+ (id)dataFetcherForSourceURL:(id)l
{
  isFileURL = [l isFileURL];
  v4 = off_279BBEDC0;
  if (!isFileURL)
  {
    v4 = off_279BBEDB8;
  }

  v5 = *v4;
  v6 = objc_opt_new();

  return v6;
}

- (SHDataFetcherFileInfo)initWithData:(id)data suggestedFileName:(id)name
{
  dataCopy = data;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = SHDataFetcherFileInfo;
  v9 = [(SHDataFetcherFileInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, data);
    objc_storeStrong(&v10->_suggestedFileName, name);
  }

  return v10;
}

- (SHDataFetcherFileInfo)initWithDataURL:(id)l suggestedFileName:(id)name
{
  lCopy = l;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = SHDataFetcherFileInfo;
  v9 = [(SHDataFetcherFileInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataFilePathURL, l);
    objc_storeStrong(&v10->_suggestedFileName, name);
  }

  return v10;
}

- (SHDataFetcherFileInfo)initWithDataURL:(id)l
{
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  v6 = [(SHDataFetcherFileInfo *)self initWithDataURL:lCopy suggestedFileName:lastPathComponent];

  return v6;
}

- (int)compressionType
{
  v2 = MEMORY[0x277D54E08];
  v3 = MEMORY[0x277CBEBC0];
  suggestedFileName = [(SHDataFetcherFileInfo *)self suggestedFileName];
  v5 = [v3 fileURLWithPath:suggestedFileName isDirectory:0];
  pathExtension = [v5 pathExtension];
  LODWORD(v2) = [v2 supportedCompressionTypeFromFilePathExtension:pathExtension];

  return v2;
}

- (NSString)suggestedExtension
{
  v2 = MEMORY[0x277CBEBC0];
  suggestedFileName = [(SHDataFetcherFileInfo *)self suggestedFileName];
  v4 = [v2 URLWithString:suggestedFileName];
  pathExtension = [v4 pathExtension];

  return pathExtension;
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
    dataFilePathURL = [(SHDataFetcherFileInfo *)self dataFilePathURL];
    v3 = [v4 dataWithContentsOfURL:dataFilePathURL];
  }

  return v3;
}

@end