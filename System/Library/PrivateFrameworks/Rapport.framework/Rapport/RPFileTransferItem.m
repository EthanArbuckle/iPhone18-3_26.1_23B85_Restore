@interface RPFileTransferItem
- (RPFileTransferItem)init;
- (id)descriptionWithLevel:(int)a3;
@end

@implementation RPFileTransferItem

- (RPFileTransferItem)init
{
  v6.receiver = self;
  v6.super_class = RPFileTransferItem;
  v2 = [(RPFileTransferItem *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_fileSize = -1;
    v4 = v2;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)a3
{
  itemURL = self->_itemURL;
  [(NSDictionary *)self->_metadata count];
  sha256HashData = self->_sha256HashData;
  NSAppendPrintF();

  return 0;
}

@end