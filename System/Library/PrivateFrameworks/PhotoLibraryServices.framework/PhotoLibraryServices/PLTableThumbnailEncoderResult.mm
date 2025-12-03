@interface PLTableThumbnailEncoderResult
- (NSData)imageData;
- (NSData)ktxHeaderData;
- (PLImageTableEntryFooter_s)tableFooter;
- (PLTableThumbnailEncoderResult)initWithKtxData:(id)data uuid:(id)uuid format:(id)format;
- (PL_KTXHeader)_ktxHeader;
- (id)entryDataForEntryLength:(unint64_t)length;
- (unint64_t)imageDataLength;
@end

@implementation PLTableThumbnailEncoderResult

- (id)entryDataForEntryLength:(unint64_t)length
{
  v16 = *MEMORY[0x1E69E9840];
  imageData = [(PLTableThumbnailEncoderResult *)self imageData];
  v6 = [imageData length] + 28;

  if (v6 <= length)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:length];
    imageData2 = [(PLTableThumbnailEncoderResult *)self imageData];
    v10 = [imageData2 length];
    imageData3 = [(PLTableThumbnailEncoderResult *)self imageData];
    [v8 replaceBytesInRange:0 withBytes:{v10, objc_msgSend(imageData3, "bytes")}];

    LODWORD(v15) = 0;
    [(PLTableThumbnailEncoderResult *)self tableFooter:0];
    [v8 replaceBytesInRange:objc_msgSend(v8 withBytes:{"length") - 28, 28, &v13}];
  }

  else
  {
    v7 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      lengthCopy = length;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Cannot build entry data, entryLength: %ld too small", &v13, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (PLImageTableEntryFooter_s)tableFooter
{
  _ktxHeader = [(PLTableThumbnailEncoderResult *)self _ktxHeader];
  uuid = [(PLTableThumbnailEncoderResult *)self uuid];
  *&retstr->var0.var0 = PLUUIDBytesFromString();
  *&retstr->var0.var8 = v7;

  if (_ktxHeader)
  {
    v9 = *&_ktxHeader->var7;
  }

  else
  {
    v9 = 0;
  }

  *&retstr->var1 = v9;
  retstr->var3 = 0;
  return result;
}

- (NSData)imageData
{
  imageDataLength = [(PLTableThumbnailEncoderResult *)self imageDataLength];
  ktxData = [(PLTableThumbnailEncoderResult *)self ktxData];
  v5 = [ktxData length] - imageDataLength;

  ktxData2 = [(PLTableThumbnailEncoderResult *)self ktxData];
  v7 = [ktxData2 subdataWithRange:{v5, imageDataLength}];

  return v7;
}

- (unint64_t)imageDataLength
{
  _ktxHeader = [(PLTableThumbnailEncoderResult *)self _ktxHeader];
  ktxData = [(PLTableThumbnailEncoderResult *)self ktxData];
  v5 = *([ktxData bytes] + _ktxHeader->var13 + 64);

  return v5;
}

- (NSData)ktxHeaderData
{
  ktxData = [(PLTableThumbnailEncoderResult *)self ktxData];
  v3 = [ktxData subdataWithRange:{0, 64}];

  return v3;
}

- (PLTableThumbnailEncoderResult)initWithKtxData:(id)data uuid:(id)uuid format:(id)format
{
  dataCopy = data;
  uuidCopy = uuid;
  formatCopy = format;
  v15.receiver = self;
  v15.super_class = PLTableThumbnailEncoderResult;
  v12 = [(PLTableThumbnailEncoderResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, uuid);
    objc_storeStrong(&v13->_ktxData, data);
    objc_storeStrong(&v13->_imageFormat, format);
  }

  return v13;
}

- (PL_KTXHeader)_ktxHeader
{
  ktxData = [(PLTableThumbnailEncoderResult *)self ktxData];
  bytes = [ktxData bytes];

  return bytes;
}

@end