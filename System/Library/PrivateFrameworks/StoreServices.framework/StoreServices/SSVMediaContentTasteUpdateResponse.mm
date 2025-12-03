@interface SSVMediaContentTasteUpdateResponse
- (NSString)description;
- (SSVMediaContentTasteUpdateResponse)initWithCoder:(id)coder;
- (SSVMediaContentTasteUpdateResponse)initWithXPCEncoding:(id)encoding;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSVMediaContentTasteUpdateResponse

- (void)encodeWithCoder:(id)coder
{
  contentTasteItems = self->_contentTasteItems;
  coderCopy = coder;
  [coderCopy encodeObject:contentTasteItems forKey:@"SSVMediaContentTasteUpdateResponseContentTasteItems"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"SSVMediaContentTasteUpdateResponseExpirationDate"];
  [coderCopy encodeInt64:self->_responseRevisionID forKey:@"SSVMediaContentTasteUpdateResponseResponseRevisionID"];
}

- (SSVMediaContentTasteUpdateResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSVMediaContentTasteUpdateResponse *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"SSVMediaContentTasteUpdateResponseContentTasteItems"];
    contentTasteItems = v5->_contentTasteItems;
    v5->_contentTasteItems = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSVMediaContentTasteUpdateResponseExpirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v11;

    v5->_responseRevisionID = [coderCopy decodeInt64ForKey:@"SSVMediaContentTasteUpdateResponseResponseRevisionID"];
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self->_cachedResponse)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"<%@ %p contentTasteItems:%@ expirationDate:%@ responseRevisionID:%llu isCachedResponse:%@>", v5, self, *&self->_contentTasteItems, self->_responseRevisionID, v7];

  return v8;
}

- (SSVMediaContentTasteUpdateResponse)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = objc_opt_class();
  NSSecureCodingObjectForXPCObject = SSCodingCreateNSSecureCodingObjectForXPCObject(encodingCopy, v5);

  v7 = NSSecureCodingObjectForXPCObject;
  return v7;
}

@end