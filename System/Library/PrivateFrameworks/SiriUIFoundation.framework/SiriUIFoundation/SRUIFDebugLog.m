@interface SRUIFDebugLog
- (SRUIFDebugLog)initWithData:(id)a3 mimeType:(id)a4 name:(id)a5 attemptCompression:(BOOL)a6;
@end

@implementation SRUIFDebugLog

- (SRUIFDebugLog)initWithData:(id)a3 mimeType:(id)a4 name:(id)a5 attemptCompression:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24.receiver = self;
  v24.super_class = SRUIFDebugLog;
  v13 = [(SRUIFDebugLog *)&v24 init];
  if (v13)
  {
    if (v6)
    {
      v14 = [v10 sruif_dataByCompressingWithGzip];
      data = v13->_data;
      v13->_data = v14;
    }

    if (v13->_data)
    {
      mimeType = v13->_mimeType;
      v13->_mimeType = @"application/x-gzip";

      v17 = [v12 stringByAppendingPathExtension:@"gz"];
    }

    else
    {
      v18 = [v10 copy];
      v19 = v13->_data;
      v13->_data = v18;

      v20 = [v11 copy];
      v21 = v13->_mimeType;
      v13->_mimeType = v20;

      v17 = [v12 copy];
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