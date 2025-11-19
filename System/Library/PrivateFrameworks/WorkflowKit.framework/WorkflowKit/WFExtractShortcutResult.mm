@interface WFExtractShortcutResult
- (WFExtractShortcutResult)initWithRecord:(id)a3 fileContentType:(int64_t)a4 iCloudIdentifier:(id)a5 sourceApplicationIdentifier:(id)a6 sharedDate:(id)a7;
@end

@implementation WFExtractShortcutResult

- (WFExtractShortcutResult)initWithRecord:(id)a3 fileContentType:(int64_t)a4 iCloudIdentifier:(id)a5 sourceApplicationIdentifier:(id)a6 sharedDate:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = WFExtractShortcutResult;
  v17 = [(WFExtractShortcutResult *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_record, a3);
    v18->_fileContentType = a4;
    v19 = [v14 copy];
    iCloudIdentifier = v18->_iCloudIdentifier;
    v18->_iCloudIdentifier = v19;

    v21 = [v15 copy];
    sourceApplicationIdentifier = v18->_sourceApplicationIdentifier;
    v18->_sourceApplicationIdentifier = v21;

    objc_storeStrong(&v18->_sharedDate, a7);
    v23 = v18;
  }

  return v18;
}

@end