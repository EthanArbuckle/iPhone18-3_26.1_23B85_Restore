@interface SRUIFDebugLog
- (SRUIFDebugLog)initWithData:(id)data mimeType:(id)type name:(id)name attemptCompression:(BOOL)compression;
@end

@implementation SRUIFDebugLog

- (SRUIFDebugLog)initWithData:(id)data mimeType:(id)type name:(id)name attemptCompression:(BOOL)compression
{
  compressionCopy = compression;
  dataCopy = data;
  typeCopy = type;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = SRUIFDebugLog;
  v13 = [(SRUIFDebugLog *)&v24 init];
  if (v13)
  {
    if (compressionCopy)
    {
      sruif_dataByCompressingWithGzip = [dataCopy sruif_dataByCompressingWithGzip];
      data = v13->_data;
      v13->_data = sruif_dataByCompressingWithGzip;
    }

    if (v13->_data)
    {
      mimeType = v13->_mimeType;
      v13->_mimeType = @"application/x-gzip";

      v17 = [nameCopy stringByAppendingPathExtension:@"gz"];
    }

    else
    {
      v18 = [dataCopy copy];
      v19 = v13->_data;
      v13->_data = v18;

      v20 = [typeCopy copy];
      v21 = v13->_mimeType;
      v13->_mimeType = v20;

      v17 = [nameCopy copy];
    }

    name = v13->_name;
    v13->_name = v17;

    if (!v13->_mimeType)
    {
      v13->_mimeType = @"application/octet-stream";
    }
  }

  return v13;
}

@end