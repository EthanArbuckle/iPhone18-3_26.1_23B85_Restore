@interface REMURLAttachment
- (BOOL)isEqual:(id)equal;
- (REMURLAttachment)initWithCoder:(id)coder;
- (REMURLAttachment)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID url:(id)url metadata:(id)metadata;
- (id)_deepCopy;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMURLAttachment

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = REMURLAttachment;
  coderCopy = coder;
  [(REMAttachment *)&v7 encodeWithCoder:coderCopy];
  v5 = [(REMURLAttachment *)self url:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"url"];

  metadata = [(REMURLAttachment *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];
}

- (REMURLAttachment)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID url:(id)url metadata:(id)metadata
{
  urlCopy = url;
  metadataCopy = metadata;
  v15 = *MEMORY[0x1E69638B8];
  v19.receiver = self;
  v19.super_class = REMURLAttachment;
  v16 = [(REMAttachment *)&v19 initWithObjectID:d accountID:iD reminderID:reminderID UTI:v15];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_url, url);
    objc_storeStrong(&v17->_metadata, metadata);
  }

  return v17;
}

- (REMURLAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = REMURLAttachment;
  v5 = [(REMAttachment *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v8;
  }

  return v5;
}

- (id)_deepCopy
{
  v7.receiver = self;
  v7.super_class = REMURLAttachment;
  _deepCopy = [(REMAttachment *)&v7 _deepCopy];
  v4 = [(REMURLAttachment *)self url];
  [_deepCopy setUrl:v4];

  metadata = [(REMURLAttachment *)self metadata];
  [_deepCopy setMetadata:metadata];

  return _deepCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMURLAttachment *)self url];
      v8 = [(REMURLAttachment *)v6 url];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMURLAttachment *)self url];
        v11 = [(REMURLAttachment *)v6 url];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      metadata = [(REMURLAttachment *)self metadata];
      metadata2 = [(REMURLAttachment *)v6 metadata];
      if (metadata == metadata2)
      {
        v13 = 1;
      }

      else
      {
        metadata3 = [(REMURLAttachment *)self metadata];
        metadata4 = [(REMURLAttachment *)v6 metadata];
        v13 = [metadata3 isEqual:metadata4];
      }

      goto LABEL_12;
    }

LABEL_5:
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = 1;
LABEL_13:

  return v13 & 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(REMAttachment *)self objectID];
  v6 = [v3 stringWithFormat:@"<%@: %p objectID: %@>", v4, self, objectID];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(REMAttachment *)self objectID];
  v6 = [(REMURLAttachment *)self url];
  v7 = [v3 stringWithFormat:@"<%@: %p objectID: %@, url: %@>", v4, self, objectID, v6];

  return v7;
}

@end