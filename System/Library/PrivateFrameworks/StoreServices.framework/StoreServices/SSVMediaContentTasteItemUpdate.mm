@interface SSVMediaContentTasteItemUpdate
- (SSVMediaContentTasteItemUpdate)initWithCoder:(id)a3;
- (SSVMediaContentTasteItemUpdate)initWithXPCEncoding:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSVMediaContentTasteItemUpdate

- (void)encodeWithCoder:(id)a3
{
  item = self->_item;
  v5 = a3;
  [v5 encodeObject:item forKey:@"SSVMediaContentTasteItemUpdateItem"];
  [v5 encodeObject:self->_updateDate forKey:@"SSVMediaContentTasteItemUpdateUpdateDate"];
}

- (SSVMediaContentTasteItemUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSVMediaContentTasteItemUpdate *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSVMediaContentTasteItemUpdateItem"];
    item = v5->_item;
    v5->_item = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSVMediaContentTasteItemUpdateUpdateDate"];
    updateDate = v5->_updateDate;
    v5->_updateDate = v8;
  }

  return v5;
}

- (SSVMediaContentTasteItemUpdate)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  NSSecureCodingObjectForXPCObject = SSCodingCreateNSSecureCodingObjectForXPCObject(v4, v5);

  v7 = NSSecureCodingObjectForXPCObject;
  return v7;
}

@end