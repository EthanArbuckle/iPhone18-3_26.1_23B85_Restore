@interface SSDownloadMonitorItem
- (SSDownloadMonitorItem)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)dealloc;
@end

@implementation SSDownloadMonitorItem

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownloadMonitorItem;
  [(SSDownloadMonitorItem *)&v3 dealloc];
}

- (SSDownloadMonitorItem)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    objc_opt_class();
    self->_clientIdentifier = SSXPCDictionaryCopyCFObjectWithClass(encoding, "0");
    self->_itemState = xpc_dictionary_get_int64(encoding, "1");
    objc_opt_class();
    self->_statusString = SSXPCDictionaryCopyCFObjectWithClass(encoding, "2");
    objc_opt_class();
    self->_representativeTitle = SSXPCDictionaryCopyCFObjectWithClass(encoding, "3");
    self->_totalNumberOfItems = xpc_dictionary_get_int64(encoding, "4");
    self->_transferTypes = xpc_dictionary_get_int64(encoding, "5");
  }

  else
  {

    return 0;
  }

  return self;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_clientIdentifier);
  xpc_dictionary_set_int64(v3, "1", self->_itemState);
  SSXPCDictionarySetCFObject(v3, "2", self->_statusString);
  SSXPCDictionarySetCFObject(v3, "3", self->_representativeTitle);
  xpc_dictionary_set_int64(v3, "4", self->_totalNumberOfItems);
  xpc_dictionary_set_int64(v3, "5", self->_transferTypes);
  return v3;
}

@end