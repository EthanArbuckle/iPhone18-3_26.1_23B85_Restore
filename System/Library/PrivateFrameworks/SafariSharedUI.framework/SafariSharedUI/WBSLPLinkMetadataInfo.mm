@interface WBSLPLinkMetadataInfo
- (WBSLPLinkMetadataInfo)initWithSQLiteRow:(id)row;
- (WBSLPLinkMetadataInfo)initWithURLString:(id)string uuidString:(id)uuidString lastFetchDate:(id)date lastFetchDidSucceed:(BOOL)succeed metadataHasImage:(BOOL)image;
- (id)copyWithoutUUID;
@end

@implementation WBSLPLinkMetadataInfo

- (WBSLPLinkMetadataInfo)initWithSQLiteRow:(id)row
{
  rowCopy = row;
  v5 = [rowCopy stringAtIndex:0];
  v6 = [rowCopy stringAtIndex:1];
  v7 = MEMORY[0x1E695DF00];
  [rowCopy doubleAtIndex:2];
  v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
  v9 = -[WBSLPLinkMetadataInfo initWithURLString:uuidString:lastFetchDate:lastFetchDidSucceed:metadataHasImage:](self, "initWithURLString:uuidString:lastFetchDate:lastFetchDidSucceed:metadataHasImage:", v5, v6, v8, [rowCopy BOOLAtIndex:3], objc_msgSend(rowCopy, "BOOLAtIndex:", 4));

  return v9;
}

- (WBSLPLinkMetadataInfo)initWithURLString:(id)string uuidString:(id)uuidString lastFetchDate:(id)date lastFetchDidSucceed:(BOOL)succeed metadataHasImage:(BOOL)image
{
  stringCopy = string;
  uuidStringCopy = uuidString;
  dateCopy = date;
  v24.receiver = self;
  v24.super_class = WBSLPLinkMetadataInfo;
  v15 = [(WBSLPLinkMetadataInfo *)&v24 init];
  if (v15)
  {
    v16 = [stringCopy copy];
    urlString = v15->_urlString;
    v15->_urlString = v16;

    v18 = [uuidStringCopy copy];
    uuidString = v15->_uuidString;
    v15->_uuidString = v18;

    v20 = [dateCopy copy];
    lastFetchDate = v15->_lastFetchDate;
    v15->_lastFetchDate = v20;

    v15->_lastFetchDidSucceed = succeed;
    v15->_metadataHasImage = image;
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