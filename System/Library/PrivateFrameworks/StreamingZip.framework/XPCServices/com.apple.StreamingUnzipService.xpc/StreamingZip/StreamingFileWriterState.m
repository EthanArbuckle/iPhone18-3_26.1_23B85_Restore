@interface StreamingFileWriterState
- (StreamingFileWriterState)initWithCoder:(id)a3;
- (StreamingFileWriterState)initWithFileInterfaceType:(unint64_t)a3 fileInterfaceState:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation StreamingFileWriterState

- (id)description
{
  v3 = [(StreamingFileWriterState *)self fileInterfaceType];
  v4 = [(StreamingFileWriterState *)self fileInterfaceState];
  v5 = [NSString stringWithFormat:@"<StreamingFileWriterState interfaceType:%lu state:%@>", v3, v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:[(StreamingFileWriterState *)self fileInterfaceType]];
  [v4 encodeObject:v5 forKey:@"FileInterfaceType"];

  v6 = [(StreamingFileWriterState *)self fileInterfaceState];
  [v4 encodeObject:v6 forKey:@"FileInterfaceState"];
}

- (StreamingFileWriterState)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = StreamingFileWriterState;
  v5 = [(StreamingFileWriterState *)&v19 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FileInterfaceType"];
  v7 = [v6 unsignedIntegerValue];
  v5->_fileInterfaceType = v7;
  if ((v7 - 1) >= 2)
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

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FileInterfaceState"];
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
    [v4 failWithError:v15];

    v10 = 0;
    goto LABEL_13;
  }

LABEL_5:
  v10 = v5;
LABEL_13:

  return v10;
}

- (StreamingFileWriterState)initWithFileInterfaceType:(unint64_t)a3 fileInterfaceState:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = StreamingFileWriterState;
  v8 = [(StreamingFileWriterState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_fileInterfaceType = a3;
    objc_storeStrong(&v8->_fileInterfaceState, a4);
  }

  return v9;
}

@end