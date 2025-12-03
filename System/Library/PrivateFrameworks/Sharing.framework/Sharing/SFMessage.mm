@interface SFMessage
- (SFMessage)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
@end

@implementation SFMessage

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bodyData = self->_bodyData;
  v10 = coderCopy;
  if (bodyData)
  {
    [coderCopy encodeObject:bodyData forKey:@"bodyData"];
    coderCopy = v10;
  }

  deviceIDs = self->_deviceIDs;
  if (deviceIDs)
  {
    [v10 encodeObject:deviceIDs forKey:@"deviceIDs"];
    coderCopy = v10;
  }

  if (self->_expectsResponse)
  {
    [v10 encodeBool:1 forKey:@"expectsResponse"];
    coderCopy = v10;
  }

  headerFields = self->_headerFields;
  if (headerFields)
  {
    [v10 encodeObject:headerFields forKey:@"headerFields"];
    coderCopy = v10;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v10 encodeObject:identifier forKey:@"identifier"];
    coderCopy = v10;
  }

  peerDevice = self->_peerDevice;
  if (peerDevice)
  {
    [v10 encodeObject:peerDevice forKey:@"peerDevice"];
    coderCopy = v10;
  }
}

- (id)description
{
  v3 = objc_opt_class();
  identifier = NSStringFromClass(v3);
  NSAppendPrintF();
  v4 = 0;

  if (self->_identifier)
  {
    identifier = self->_identifier;
    NSAppendPrintF();
    v5 = v4;

    v4 = v5;
  }

  [(NSDictionary *)self->_headerFields count:identifier];
  [(NSData *)self->_bodyData length];
  NSAppendPrintF();
  v6 = v4;

  return v4;
}

- (void)invalidate
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (SFMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = SFMessage;
  v5 = [(SFMessage *)&v42 init];
  if (v5)
  {
    v6 = 0x1E695D000uLL;
    if ([coderCopy containsValueForKey:@"bodyData"])
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bodyData"];
      bodyData = v5->_bodyData;
      v5->_bodyData = v7;
    }

    v9 = [coderCopy containsValueForKey:@"deviceIDs"];
    v10 = 0x1E696A000uLL;
    v11 = MEMORY[0x1E695D940];
    if (v9)
    {
      v12 = MEMORY[0x1E695DFD8];
      v13 = objc_opt_class();
      v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
      v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"deviceIDs"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = MEMORY[0x1E695DF30];
        v17 = *v11;
        v18 = _NSMethodExceptionProem();
        [v16 raise:v17 format:{@"%@: non-set value for key %@ : %@", v18, @"deviceIDs", v15}];

        v10 = 0x1E696A000;
      }

      objc_storeStrong(&v5->_deviceIDs, v15);
      v6 = 0x1E695D000;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    if ([coderCopy containsValueForKey:@"expectsResponse"])
    {
      v5->_expectsResponse = [coderCopy decodeBoolForKey:@"expectsResponse"];
    }

    if ([coderCopy containsValueForKey:@"headerFields"])
    {
      v41 = MEMORY[0x1E695DFD8];
      v40 = objc_opt_class();
      v19 = *(v6 + 3824);
      v39 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = objc_opt_class();
      v22 = v14;
      v23 = objc_opt_class();
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v26 = *(v10 + 4016);
      v27 = [v41 setWithObjects:{v40, v39, v20, v21, v23, v24, v25, objc_opt_class(), 0}];

      v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"headerFields"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = MEMORY[0x1E695DF30];
        v30 = *MEMORY[0x1E695D940];
        v31 = _NSMethodExceptionProem();
        [v29 raise:v30 format:{@"%@: non-dictionary value for key %@ : %@", v31, @"headerFields", v28}];
      }

      objc_storeStrong(&v5->_headerFields, v28);
      v14 = v27;
      v10 = 0x1E696A000;
    }

    else
    {
      v28 = v15;
    }

    if ([coderCopy containsValueForKey:@"identifier"])
    {
      v32 = *(v10 + 4016);
      v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
      identifier = v5->_identifier;
      v5->_identifier = v33;
    }

    if ([coderCopy containsValueForKey:@"peerDevice"])
    {
      v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerDevice"];
      peerDevice = v5->_peerDevice;
      v5->_peerDevice = v35;
    }

    v37 = v5;
  }

  return v5;
}

@end