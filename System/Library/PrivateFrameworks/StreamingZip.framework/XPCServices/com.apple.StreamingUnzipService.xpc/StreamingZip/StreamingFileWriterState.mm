@interface StreamingFileWriterState
- (StreamingFileWriterState)initWithCoder:(id)coder;
- (StreamingFileWriterState)initWithFileInterfaceType:(unint64_t)type fileInterfaceState:(id)state;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation StreamingFileWriterState

- (id)description
{
  fileInterfaceType = [(StreamingFileWriterState *)self fileInterfaceType];
  fileInterfaceState = [(StreamingFileWriterState *)self fileInterfaceState];
  v5 = [NSString stringWithFormat:@"<StreamingFileWriterState interfaceType:%lu state:%@>", fileInterfaceType, fileInterfaceState];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [NSNumber numberWithUnsignedInteger:[(StreamingFileWriterState *)self fileInterfaceType]];
  [coderCopy encodeObject:v5 forKey:@"FileInterfaceType"];

  fileInterfaceState = [(StreamingFileWriterState *)self fileInterfaceState];
  [coderCopy encodeObject:fileInterfaceState forKey:@"FileInterfaceState"];
}

- (StreamingFileWriterState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = StreamingFileWriterState;
  v5 = [(StreamingFileWriterState *)&v19 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FileInterfaceType"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];
  v5->_fileInterfaceType = unsignedIntegerValue;
  if ((unsignedIntegerValue - 1) >= 2)
  {
    v11 = sub_100001194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      fileInterfaceType = v5->_fileInterfaceType;
      *buf = 134218242;
      v21 = fileInterfaceType;
      v22 = 2112;
      v23 = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Found unknown file interface type on decode: %lu : %@", buf, 0x16u);
    }

    sub_10000151C("[StreamingFileWriterState initWithCoder:]", 74, @"SZExtractorErrorDomain", 2, 0, 0, @"Found unknown file interface type on decode: %lu", v12, v5->_fileInterfaceType);
    goto LABEL_12;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FileInterfaceState"];
  fileInterfaceState = v5->_fileInterfaceState;
  v5->_fileInterfaceState = v8;

  if (!v5->_fileInterfaceState)
  {
    v13 = sub_100001194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Missing file interface state data on decode : %@", buf, 0xCu);
    }

    sub_10000151C("[StreamingFileWriterState initWithCoder:]", 80, @"SZExtractorErrorDomain", 2, 0, 0, @"Missing file interface state data on decode", v14, v18);
    v15 = LABEL_12:;
    [coderCopy failWithError:v15];

    v10 = 0;
    goto LABEL_13;
  }

LABEL_5:
  v10 = v5;
LABEL_13:

  return v10;
}

- (StreamingFileWriterState)initWithFileInterfaceType:(unint64_t)type fileInterfaceState:(id)state
{
  stateCopy = state;
  v11.receiver = self;
  v11.super_class = StreamingFileWriterState;
  v8 = [(StreamingFileWriterState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_fileInterfaceType = type;
    objc_storeStrong(&v8->_fileInterfaceState, state);
  }

  return v9;
}

@end