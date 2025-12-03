@interface SSVMediaContentTasteItemUpdate
- (SSVMediaContentTasteItemUpdate)initWithCoder:(id)coder;
- (SSVMediaContentTasteItemUpdate)initWithXPCEncoding:(id)encoding;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSVMediaContentTasteItemUpdate

- (void)encodeWithCoder:(id)coder
{
  item = self->_item;
  coderCopy = coder;
  [coderCopy encodeObject:item forKey:@"SSVMediaContentTasteItemUpdateItem"];
  [coderCopy encodeObject:self->_updateDate forKey:@"SSVMediaContentTasteItemUpdateUpdateDate"];
}

- (SSVMediaContentTasteItemUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSVMediaContentTasteItemUpdate *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSVMediaContentTasteItemUpdateItem"];
    item = v5->_item;
    v5->_item = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSVMediaContentTasteItemUpdateUpdateDate"];
    updateDate = v5->_updateDate;
    v5->_updateDate = v8;
  }

  return v5;
}

- (SSVMediaContentTasteItemUpdate)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = objc_opt_class();
  NSSecureCodingObjectForXPCObject = SSCodingCreateNSSecureCodingObjectForXPCObject(encodingCopy, v5);

  v7 = NSSecureCodingObjectForXPCObject;
  return v7;
}

@end