@interface WFExtractShortcutResult
- (WFExtractShortcutResult)initWithRecord:(id)record fileContentType:(int64_t)type iCloudIdentifier:(id)identifier sourceApplicationIdentifier:(id)applicationIdentifier sharedDate:(id)date;
@end

@implementation WFExtractShortcutResult

- (WFExtractShortcutResult)initWithRecord:(id)record fileContentType:(int64_t)type iCloudIdentifier:(id)identifier sourceApplicationIdentifier:(id)applicationIdentifier sharedDate:(id)date
{
  recordCopy = record;
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  dateCopy = date;
  v25.receiver = self;
  v25.super_class = WFExtractShortcutResult;
  v17 = [(WFExtractShortcutResult *)&v25 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_record, record);
    v18->_fileContentType = type;
    v19 = [identifierCopy copy];
    iCloudIdentifier = v18->_iCloudIdentifier;
    v18->_iCloudIdentifier = v19;

    v21 = [applicationIdentifierCopy copy];
    sourceApplicationIdentifier = v18->_sourceApplicationIdentifier;
    v18->_sourceApplicationIdentifier = v21;

    objc_storeStrong(&v18->_sharedDate, date);
    v23 = v18;
  }

  return v18;
}

@end