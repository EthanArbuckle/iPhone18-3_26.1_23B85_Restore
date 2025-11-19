@interface PLTableThumbnailEncoderResult
- (NSData)imageData;
- (NSData)ktxHeaderData;
- (PLImageTableEntryFooter_s)tableFooter;
- (PLTableThumbnailEncoderResult)initWithKtxData:(id)a3 uuid:(id)a4 format:(id)a5;
- (PL_KTXHeader)_ktxHeader;
- (id)entryDataForEntryLength:(unint64_t)a3;
- (unint64_t)imageDataLength;
@end

@implementation PLTableThumbnailEncoderResult

- (id)entryDataForEntryLength:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(PLTableThumbnailEncoderResult *)self imageData];
  v6 = [v5 length] + 28;

  if (v6 <= a3)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:a3];
    v9 = [(PLTableThumbnailEncoderResult *)self imageData];
    v10 = [v9 length];
    v11 = [(PLTableThumbnailEncoderResult *)self imageData];
    [v8 replaceBytesInRange:0 withBytes:{v10, objc_msgSend(v11, "bytes")}];

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
      v14 = a3;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Cannot build entry data, entryLength: %ld too small", &v13, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (PLImageTableEntryFooter_s)tableFooter
{
  v5 = [(PLTableThumbnailEncoderResult *)self _ktxHeader];
  v6 = [(PLTableThumbnailEncoderResult *)self uuid];
  *&retstr->var0.var0 = PLUUIDBytesFromString();
  *&retstr->var0.var8 = v7;

  if (v5)
  {
    v9 = *&v5->var7;
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
  v3 = [(PLTableThumbnailEncoderResult *)self imageDataLength];
  v4 = [(PLTableThumbnailEncoderResult *)self ktxData];
  v5 = [v4 length] - v3;

  v6 = [(PLTableThumbnailEncoderResult *)self ktxData];
  v7 = [v6 subdataWithRange:{v5, v3}];

  return v7;
}

- (unint64_t)imageDataLength
{
  v3 = [(PLTableThumbnailEncoderResult *)self _ktxHeader];
  v4 = [(PLTableThumbnailEncoderResult *)self ktxData];
  v5 = *([v4 bytes] + v3->var13 + 64);

  return v5;
}

- (NSData)ktxHeaderData
{
  v2 = [(PLTableThumbnailEncoderResult *)self ktxData];
  v3 = [v2 subdataWithRange:{0, 64}];

  return v3;
}

- (PLTableThumbnailEncoderResult)initWithKtxData:(id)a3 uuid:(id)a4 format:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PLTableThumbnailEncoderResult;
  v12 = [(PLTableThumbnailEncoderResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, a4);
    objc_storeStrong(&v13->_ktxData, a3);
    objc_storeStrong(&v13->_imageFormat, a5);
  }

  return v13;
}

- (PL_KTXHeader)_ktxHeader
{
  v2 = [(PLTableThumbnailEncoderResult *)self ktxData];
  v3 = [v2 bytes];

  return v3;
}

@end