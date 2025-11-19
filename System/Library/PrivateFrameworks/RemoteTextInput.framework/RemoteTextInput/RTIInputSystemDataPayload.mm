@interface RTIInputSystemDataPayload
+ (id)payloadWithData:(id)a3;
+ (id)payloadWithData:(id)a3 version:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (RTIInputSystemDataPayload)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)data;
- (void)_unarchiveData;
- (void)updateData;
@end

@implementation RTIInputSystemDataPayload

- (RTIInputSystemDataPayload)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RTIInputSystemDataPayload;
  v3 = [(RTIDataPayload *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(RTIInputSystemDataPayload *)v3 _unarchiveData];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTIInputSystemDataPayload alloc];
  v5 = [(RTIInputSystemDataPayload *)self data];
  v6 = [(RTIDataPayload *)v4 initWithData:v5 version:[(RTIDataPayload *)self version]];

  v7 = [(NSUUID *)self->_sessionUUID copy];
  v8 = *(v6 + 56);
  *(v6 + 56) = v7;

  *(v6 + 24) = self->_disableUpdate;
  v9 = [(RTIDocumentState *)self->_documentState copy];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  v11 = [(RTIDocumentTraits *)self->_documentTraits copy];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v32.receiver = self;
      v32.super_class = RTIInputSystemDataPayload;
      if ([(RTIDataPayload *)&v32 isEqual:v5])
      {
        v6 = [(RTIInputSystemDataPayload *)self sessionUUID];
        v7 = [v5 sessionUUID];
        v8 = v7;
        if (v6 == v7)
        {
        }

        else
        {
          v9 = [(RTIInputSystemDataPayload *)self sessionUUID];
          v10 = [v5 sessionUUID];
          v11 = [v9 isEqual:v10];

          if (!v11)
          {
            goto LABEL_20;
          }
        }

        v13 = [(RTIInputSystemDataPayload *)self documentState];
        v14 = [v5 documentState];
        v15 = v14;
        if (v13 == v14)
        {
        }

        else
        {
          v16 = [(RTIInputSystemDataPayload *)self documentState];
          v17 = [v5 documentState];
          v18 = [v16 isEqual:v17];

          if (!v18)
          {
            goto LABEL_20;
          }
        }

        v19 = [(RTIInputSystemDataPayload *)self documentTraits];
        v20 = [v5 documentTraits];
        v21 = v20;
        if (v19 == v20)
        {
        }

        else
        {
          v22 = [(RTIInputSystemDataPayload *)self documentTraits];
          v23 = [v5 documentTraits];
          v24 = [v22 isEqual:v23];

          if (!v24)
          {
            goto LABEL_20;
          }
        }

        v25 = [(RTIInputSystemDataPayload *)self textOperations];
        v26 = [v5 textOperations];
        v27 = v26;
        if (v25 == v26)
        {
        }

        else
        {
          v28 = [(RTIInputSystemDataPayload *)self textOperations];
          v29 = [v5 textOperations];
          v30 = [v28 isEqual:v29];

          if (!v30)
          {
            goto LABEL_20;
          }
        }

        v12 = self->_disableUpdate == v5[24];
        goto LABEL_21;
      }

LABEL_20:
      v12 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v12 = 0;
  }

LABEL_22:

  return v12;
}

+ (id)payloadWithData:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithData:v4 version:1];

  [v5 _unarchiveData];

  return v5;
}

+ (id)payloadWithData:(id)a3 version:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithData:v6 version:a4];

  [v7 _unarchiveData];

  return v7;
}

- (id)data
{
  if (!self->_disableUpdate)
  {
    v7.receiver = self;
    v7.super_class = RTIInputSystemDataPayload;
    v3 = [(RTIDataPayload *)&v7 data];

    if (!v3)
    {
      [(RTIInputSystemDataPayload *)self updateData];
    }
  }

  v6.receiver = self;
  v6.super_class = RTIInputSystemDataPayload;
  v4 = [(RTIDataPayload *)&v6 data];

  return v4;
}

- (void)updateData
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [(RTIDocumentTraits *)self->_documentTraits fenceHandle];

  if (!v3)
  {
    v4 = [[RTIKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v4 setRtiVersion:{-[RTIDataPayload version](self, "version")}];
    documentState = self->_documentState;
    if (documentState)
    {
      [v4 encodeObject:documentState forKey:@"documentState"];
    }

    documentTraits = self->_documentTraits;
    if (documentTraits)
    {
      [v4 encodeObject:documentTraits forKey:@"documentTraits"];
    }

    textOperations = self->_textOperations;
    if (textOperations)
    {
      [v4 encodeObject:textOperations forKey:@"textOperations"];
    }

    sessionUUID = self->_sessionUUID;
    if (sessionUUID)
    {
      v12[0] = 0;
      v12[1] = 0;
      [(NSUUID *)sessionUUID getUUIDBytes:v12];
      v9 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 length:16];
      [v4 encodeObject:v9 forKey:@"sessionUUID"];
    }

    v10 = [v4 encodedData];
    [(RTIDataPayload *)self setData:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_unarchiveData
{
  self->_disableUpdate = 1;
  v3 = [(RTIInputSystemDataPayload *)self data];

  if (v3)
  {
    v4 = [RTIKeyedUnarchiver alloc];
    v5 = [(RTIInputSystemDataPayload *)self data];
    v15 = [(RTIKeyedUnarchiver *)v4 initForReadingFromData:v5 error:0];

    [v15 setRtiVersion:{-[RTIDataPayload version](self, "version")}];
    v6 = [v15 decodeObjectOfClass:objc_opt_class() forKey:@"documentState"];
    documentState = self->_documentState;
    self->_documentState = v6;

    v8 = [v15 decodeObjectOfClass:objc_opt_class() forKey:@"documentTraits"];
    documentTraits = self->_documentTraits;
    self->_documentTraits = v8;

    v10 = [v15 decodeObjectOfClass:objc_opt_class() forKey:@"textOperations"];
    textOperations = self->_textOperations;
    self->_textOperations = v10;

    v12 = [v15 decodeObjectOfClass:objc_opt_class() forKey:@"sessionUUID"];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v12, "bytes")}];
      sessionUUID = self->_sessionUUID;
      self->_sessionUUID = v13;
    }
  }
}

@end