@interface SSVMediaContentTasteUpdateResponse
- (NSString)description;
- (SSVMediaContentTasteUpdateResponse)initWithCoder:(id)a3;
- (SSVMediaContentTasteUpdateResponse)initWithXPCEncoding:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSVMediaContentTasteUpdateResponse

- (void)encodeWithCoder:(id)a3
{
  contentTasteItems = self->_contentTasteItems;
  v5 = a3;
  [v5 encodeObject:contentTasteItems forKey:@"SSVMediaContentTasteUpdateResponseContentTasteItems"];
  [v5 encodeObject:self->_expirationDate forKey:@"SSVMediaContentTasteUpdateResponseExpirationDate"];
  [v5 encodeInt64:self->_responseRevisionID forKey:@"SSVMediaContentTasteUpdateResponseResponseRevisionID"];
}

- (SSVMediaContentTasteUpdateResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSVMediaContentTasteUpdateResponse *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"SSVMediaContentTasteUpdateResponseContentTasteItems"];
    contentTasteItems = v5->_contentTasteItems;
    v5->_contentTasteItems = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSVMediaContentTasteUpdateResponseExpirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v11;

    v5->_responseRevisionID = [v4 decodeInt64ForKey:@"SSVMediaContentTasteUpdateResponseResponseRevisionID"];
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

- (SSVMediaContentTasteUpdateResponse)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  NSSecureCodingObjectForXPCObject = SSCodingCreateNSSecureCodingObjectForXPCObject(v4, v5);

  v7 = NSSecureCodingObjectForXPCObject;
  return v7;
}

@end