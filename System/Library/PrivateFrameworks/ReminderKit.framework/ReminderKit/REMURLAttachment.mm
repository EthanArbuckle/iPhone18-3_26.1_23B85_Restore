@interface REMURLAttachment
- (BOOL)isEqual:(id)a3;
- (REMURLAttachment)initWithCoder:(id)a3;
- (REMURLAttachment)initWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 url:(id)a6 metadata:(id)a7;
- (id)_deepCopy;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMURLAttachment

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = REMURLAttachment;
  v4 = a3;
  [(REMAttachment *)&v7 encodeWithCoder:v4];
  v5 = [(REMURLAttachment *)self url:v7.receiver];
  [v4 encodeObject:v5 forKey:@"url"];

  v6 = [(REMURLAttachment *)self metadata];
  [v4 encodeObject:v6 forKey:@"metadata"];
}

- (REMURLAttachment)initWithObjectID:(id)a3 accountID:(id)a4 reminderID:(id)a5 url:(id)a6 metadata:(id)a7
{
  v13 = a6;
  v14 = a7;
  v15 = *MEMORY[0x1E69638B8];
  v19.receiver = self;
  v19.super_class = REMURLAttachment;
  v16 = [(REMAttachment *)&v19 initWithObjectID:a3 accountID:a4 reminderID:a5 UTI:v15];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_url, a6);
    objc_storeStrong(&v17->_metadata, a7);
  }

  return v17;
}

- (REMURLAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = REMURLAttachment;
  v5 = [(REMAttachment *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v8;
  }

  return v5;
}

- (id)_deepCopy
{
  v7.receiver = self;
  v7.super_class = REMURLAttachment;
  v3 = [(REMAttachment *)&v7 _deepCopy];
  v4 = [(REMURLAttachment *)self url];
  [v3 setUrl:v4];

  v5 = [(REMURLAttachment *)self metadata];
  [v3 setMetadata:v5];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
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

      v14 = [(REMURLAttachment *)self metadata];
      v15 = [(REMURLAttachment *)v6 metadata];
      if (v14 == v15)
      {
        v13 = 1;
      }

      else
      {
        v16 = [(REMURLAttachment *)self metadata];
        v17 = [(REMURLAttachment *)v6 metadata];
        v13 = [v16 isEqual:v17];
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
  v5 = [(REMAttachment *)self objectID];
  v6 = [v3 stringWithFormat:@"<%@: %p objectID: %@>", v4, self, v5];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMAttachment *)self objectID];
  v6 = [(REMURLAttachment *)self url];
  v7 = [v3 stringWithFormat:@"<%@: %p objectID: %@, url: %@>", v4, self, v5, v6];

  return v7;
}

@end