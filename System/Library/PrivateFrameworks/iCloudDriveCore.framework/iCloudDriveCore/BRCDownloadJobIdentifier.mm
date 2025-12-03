@interface BRCDownloadJobIdentifier
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDownloadJobIdentifier:(id)identifier;
- (BRCDownloadJobIdentifier)initWithDBRowID:(unint64_t)d etag:(id)etag kind:(int)kind;
- (NSString)description;
@end

@implementation BRCDownloadJobIdentifier

- (BRCDownloadJobIdentifier)initWithDBRowID:(unint64_t)d etag:(id)etag kind:(int)kind
{
  etagCopy = etag;
  v13.receiver = self;
  v13.super_class = BRCDownloadJobIdentifier;
  v10 = [(BRCDownloadJobIdentifier *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_itemDBRowID = d;
    objc_storeStrong(&v10->_etag, etag);
    v11->_kind = kind;
  }

  return v11;
}

- (NSString)description
{
  itemDBRowID = self->_itemDBRowID;
  etag = self->_etag;
  kind = self->_kind;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%lld-%@-%s", itemDBRowID, etag, BRCPrettyPrintEnum()];
}

- (BOOL)isEqualToDownloadJobIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  v6 = identifierCopy && self->_itemDBRowID == *(identifierCopy + 2) && [(NSString *)self->_etag isEqualToString:*(identifierCopy + 3)]&& self->_kind == v5[2];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCDownloadJobIdentifier *)self isEqualToDownloadJobIdentifier:equalCopy];
  }

  return v5;
}

@end