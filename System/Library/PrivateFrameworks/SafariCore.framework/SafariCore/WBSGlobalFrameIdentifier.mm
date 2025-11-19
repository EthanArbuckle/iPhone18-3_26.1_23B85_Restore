@interface WBSGlobalFrameIdentifier
- (BOOL)isEqual:(id)a3;
- (WBSGlobalFrameIdentifier)initWithCoder:(id)a3;
- (WBSGlobalFrameIdentifier)initWithDocumentID:(id)a3;
- (WBSGlobalFrameIdentifier)initWithPageID:(id)a3 frameID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSGlobalFrameIdentifier

- (WBSGlobalFrameIdentifier)initWithPageID:(id)a3 frameID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WBSGlobalFrameIdentifier;
  v9 = [(WBSGlobalFrameIdentifier *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webPageID, a3);
    objc_storeStrong(&v10->_webFrameID, a4);
    v11 = v10;
  }

  return v10;
}

- (WBSGlobalFrameIdentifier)initWithDocumentID:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSGlobalFrameIdentifier;
  v6 = [(WBSGlobalFrameIdentifier *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentID, a3);
    v8 = v7;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  documentID = self->_documentID;
  v5 = [objc_opt_class() allocWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v3 = [(NSNumber *)self->_webPageID unsignedIntegerValue];
  v4 = [(NSNumber *)self->_webFrameID unsignedIntegerValue]^ v3;
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

- (WBSGlobalFrameIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WBSGlobalFrameIdentifier;
  v5 = [(WBSGlobalFrameIdentifier *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webPageID"];
    webPageID = v5->_webPageID;
    v5->_webPageID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"webFrameID"];
    webFrameID = v5->_webFrameID;
    v5->_webFrameID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentID"];
    documentID = v5->_documentID;
    v5->_documentID = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  webPageID = self->_webPageID;
  v5 = a3;
  [v5 encodeObject:webPageID forKey:@"webPageID"];
  [v5 encodeObject:self->_webFrameID forKey:@"webFrameID"];
  [v5 encodeObject:self->_documentID forKey:@"documentID"];
}

@end