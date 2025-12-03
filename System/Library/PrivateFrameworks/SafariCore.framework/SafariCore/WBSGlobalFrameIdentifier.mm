@interface WBSGlobalFrameIdentifier
- (BOOL)isEqual:(id)equal;
- (WBSGlobalFrameIdentifier)initWithCoder:(id)coder;
- (WBSGlobalFrameIdentifier)initWithDocumentID:(id)d;
- (WBSGlobalFrameIdentifier)initWithPageID:(id)d frameID:(id)iD;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSGlobalFrameIdentifier

- (WBSGlobalFrameIdentifier)initWithPageID:(id)d frameID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v13.receiver = self;
  v13.super_class = WBSGlobalFrameIdentifier;
  v9 = [(WBSGlobalFrameIdentifier *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webPageID, d);
    objc_storeStrong(&v10->_webFrameID, iD);
    v11 = v10;
  }

  return v10;
}

- (WBSGlobalFrameIdentifier)initWithDocumentID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = WBSGlobalFrameIdentifier;
  v6 = [(WBSGlobalFrameIdentifier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentID, d);
    v8 = v7;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  documentID = self->_documentID;
  v5 = [objc_opt_class() allocWithZone:zone];
  if (documentID)
  {
    v6 = self->_documentID;

    return [v5 initWithDocumentID:v6];
  }

  else
  {
    webPageID = self->_webPageID;
    webFrameID = self->_webFrameID;

    return [v5 initWithPageID:webPageID frameID:webFrameID];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(NSNumber *)self->_webPageID isEqual:v5->_webPageID]&& [(NSNumber *)self->_webFrameID isEqual:v5->_webFrameID])
      {
        v6 = [(NSUUID *)self->_documentID isEqual:v5->_documentID];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  unsignedIntegerValue = [(NSNumber *)self->_webPageID unsignedIntegerValue];
  v4 = [(NSNumber *)self->_webFrameID unsignedIntegerValue]^ unsignedIntegerValue;
  return v4 ^ [(NSUUID *)self->_documentID hash];
}

- (id)description
{
  documentID = self->_documentID;
  if (documentID)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"FrameIdentifier (%p): { documentID: %@ }", self, documentID, v5];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"FrameIdentifier (%p): { pageID: %@, frameID: %@ }", self, self->_webPageID, self->_webFrameID];
  }
  v3 = ;

  return v3;
}

- (WBSGlobalFrameIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WBSGlobalFrameIdentifier;
  v5 = [(WBSGlobalFrameIdentifier *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webPageID"];
    webPageID = v5->_webPageID;
    v5->_webPageID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"webFrameID"];
    webFrameID = v5->_webFrameID;
    v5->_webFrameID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentID"];
    documentID = v5->_documentID;
    v5->_documentID = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  webPageID = self->_webPageID;
  coderCopy = coder;
  [coderCopy encodeObject:webPageID forKey:@"webPageID"];
  [coderCopy encodeObject:self->_webFrameID forKey:@"webFrameID"];
  [coderCopy encodeObject:self->_documentID forKey:@"documentID"];
}

@end