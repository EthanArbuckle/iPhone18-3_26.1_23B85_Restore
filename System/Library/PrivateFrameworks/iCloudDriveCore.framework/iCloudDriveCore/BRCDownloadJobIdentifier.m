@interface BRCDownloadJobIdentifier
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDownloadJobIdentifier:(id)a3;
- (BRCDownloadJobIdentifier)initWithDBRowID:(unint64_t)a3 etag:(id)a4 kind:(int)a5;
- (NSString)description;
@end

@implementation BRCDownloadJobIdentifier

- (BRCDownloadJobIdentifier)initWithDBRowID:(unint64_t)a3 etag:(id)a4 kind:(int)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = BRCDownloadJobIdentifier;
  v10 = [(BRCDownloadJobIdentifier *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_itemDBRowID = a3;
    objc_storeStrong(&v10->_etag, a4);
    v11->_kind = a5;
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

- (BOOL)isEqualToDownloadJobIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = v4 && self->_itemDBRowID == *(v4 + 2) && [(NSString *)self->_etag isEqualToString:*(v4 + 3)]&& self->_kind == v5[2];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCDownloadJobIdentifier *)self isEqualToDownloadJobIdentifier:v4];
  }

  return v5;
}

@end