@interface RTIInputSystemDataPayload
+ (id)payloadWithData:(id)data;
+ (id)payloadWithData:(id)data version:(unint64_t)version;
- (BOOL)isEqual:(id)equal;
- (RTIInputSystemDataPayload)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)data;
- (void)_unarchiveData;
- (void)updateData;
@end

@implementation RTIInputSystemDataPayload

- (RTIInputSystemDataPayload)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = RTIInputSystemDataPayload;
  v3 = [(RTIDataPayload *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(RTIInputSystemDataPayload *)v3 _unarchiveData];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTIInputSystemDataPayload alloc];
  data = [(RTIInputSystemDataPayload *)self data];
  v6 = [(RTIDataPayload *)v4 initWithData:data version:[(RTIDataPayload *)self version]];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v32.receiver = self;
      v32.super_class = RTIInputSystemDataPayload;
      if ([(RTIDataPayload *)&v32 isEqual:v5])
      {
        sessionUUID = [(RTIInputSystemDataPayload *)self sessionUUID];
        sessionUUID2 = [v5 sessionUUID];
        v8 = sessionUUID2;
        if (sessionUUID == sessionUUID2)
        {
        }

        else
        {
          sessionUUID3 = [(RTIInputSystemDataPayload *)self sessionUUID];
          sessionUUID4 = [v5 sessionUUID];
          v11 = [sessionUUID3 isEqual:sessionUUID4];

          if (!v11)
          {
            goto LABEL_20;
          }
        }

        documentState = [(RTIInputSystemDataPayload *)self documentState];
        documentState2 = [v5 documentState];
        v15 = documentState2;
        if (documentState == documentState2)
        {
        }

        else
        {
          documentState3 = [(RTIInputSystemDataPayload *)self documentState];
          documentState4 = [v5 documentState];
          v18 = [documentState3 isEqual:documentState4];

          if (!v18)
          {
            goto LABEL_20;
          }
        }

        documentTraits = [(RTIInputSystemDataPayload *)self documentTraits];
        documentTraits2 = [v5 documentTraits];
        v21 = documentTraits2;
        if (documentTraits == documentTraits2)
        {
        }

        else
        {
          documentTraits3 = [(RTIInputSystemDataPayload *)self documentTraits];
          documentTraits4 = [v5 documentTraits];
          v24 = [documentTraits3 isEqual:documentTraits4];

          if (!v24)
          {
            goto LABEL_20;
          }
        }

        textOperations = [(RTIInputSystemDataPayload *)self textOperations];
        textOperations2 = [v5 textOperations];
        v27 = textOperations2;
        if (textOperations == textOperations2)
        {
        }

        else
        {
          textOperations3 = [(RTIInputSystemDataPayload *)self textOperations];
          textOperations4 = [v5 textOperations];
          v30 = [textOperations3 isEqual:textOperations4];

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

+ (id)payloadWithData:(id)data
{
  dataCopy = data;
  v5 = [[self alloc] initWithData:dataCopy version:1];

  [v5 _unarchiveData];

  return v5;
}

+ (id)payloadWithData:(id)data version:(unint64_t)version
{
  dataCopy = data;
  v7 = [[self alloc] initWithData:dataCopy version:version];

  [v7 _unarchiveData];

  return v7;
}

- (id)data
{
  if (!self->_disableUpdate)
  {
    v7.receiver = self;
    v7.super_class = RTIInputSystemDataPayload;
    data = [(RTIDataPayload *)&v7 data];

    if (!data)
    {
      [(RTIInputSystemDataPayload *)self updateData];
    }
  }

  v6.receiver = self;
  v6.super_class = RTIInputSystemDataPayload;
  data2 = [(RTIDataPayload *)&v6 data];

  return data2;
}

- (void)updateData
{
  v12[2] = *MEMORY[0x1E69E9840];
  fenceHandle = [(RTIDocumentTraits *)self->_documentTraits fenceHandle];

  if (!fenceHandle)
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

    encodedData = [v4 encodedData];
    [(RTIDataPayload *)self setData:encodedData];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_unarchiveData
{
  self->_disableUpdate = 1;
  data = [(RTIInputSystemDataPayload *)self data];

  if (data)
  {
    v4 = [RTIKeyedUnarchiver alloc];
    data2 = [(RTIInputSystemDataPayload *)self data];
    v15 = [(RTIKeyedUnarchiver *)v4 initForReadingFromData:data2 error:0];

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