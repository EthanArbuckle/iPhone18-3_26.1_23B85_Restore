@interface WBSLPLinkMetadataInfo
- (WBSLPLinkMetadataInfo)initWithSQLiteRow:(id)a3;
- (WBSLPLinkMetadataInfo)initWithURLString:(id)a3 uuidString:(id)a4 lastFetchDate:(id)a5 lastFetchDidSucceed:(BOOL)a6 metadataHasImage:(BOOL)a7;
- (id)copyWithoutUUID;
@end

@implementation WBSLPLinkMetadataInfo

- (WBSLPLinkMetadataInfo)initWithSQLiteRow:(id)a3
{
  v4 = a3;
  v5 = [v4 stringAtIndex:0];
  v6 = [v4 stringAtIndex:1];
  v7 = MEMORY[0x1E695DF00];
  [v4 doubleAtIndex:2];
  v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
  v9 = -[WBSLPLinkMetadataInfo initWithURLString:uuidString:lastFetchDate:lastFetchDidSucceed:metadataHasImage:](self, "initWithURLString:uuidString:lastFetchDate:lastFetchDidSucceed:metadataHasImage:", v5, v6, v8, [v4 BOOLAtIndex:3], objc_msgSend(v4, "BOOLAtIndex:", 4));

  return v9;
}

- (WBSLPLinkMetadataInfo)initWithURLString:(id)a3 uuidString:(id)a4 lastFetchDate:(id)a5 lastFetchDidSucceed:(BOOL)a6 metadataHasImage:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v24.receiver = self;
  v24.super_class = WBSLPLinkMetadataInfo;
  v15 = [(WBSLPLinkMetadataInfo *)&v24 init];
  if (v15)
  {
    v16 = [v12 copy];
    urlString = v15->_urlString;
    v15->_urlString = v16;

    v18 = [v13 copy];
    uuidString = v15->_uuidString;
    v15->_uuidString = v18;

    v20 = [v14 copy];
    lastFetchDate = v15->_lastFetchDate;
    v15->_lastFetchDate = v20;

    v15->_lastFetchDidSucceed = a6;
    v15->_metadataHasImage = a7;
    v22 = v15;
  }

  return v15;
}

- (id)copyWithoutUUID
{
  v3 = [WBSLPLinkMetadataInfo alloc];
  urlString = self->_urlString;
  lastFetchDate = self->_lastFetchDate;
  lastFetchDidSucceed = self->_lastFetchDidSucceed;
  metadataHasImage = self->_metadataHasImage;

  return [(WBSLPLinkMetadataInfo *)v3 initWithURLString:urlString uuidString:0 lastFetchDate:lastFetchDate lastFetchDidSucceed:lastFetchDidSucceed metadataHasImage:metadataHasImage];
}

@end