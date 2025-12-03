@interface MBBackupOperation
+ (id)nameForType:(int)type;
- (MBBackupOperation)initWithDecoder:(id)decoder;
- (MBBackupOperation)initWithDecoder:(id)decoder domainManager:(id)manager;
- (id)description;
- (void)encode:(id)encode;
@end

@implementation MBBackupOperation

+ (id)nameForType:(int)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_1000FE668 + type);
  }
}

- (MBBackupOperation)initWithDecoder:(id)decoder
{
  [(MBBackupOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (MBBackupOperation)initWithDecoder:(id)decoder domainManager:(id)manager
{
  decoderCopy = decoder;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = MBBackupOperation;
  v8 = [(MBBackupOperation *)&v20 init];
  if (v8)
  {
    decodeInt8 = [decoderCopy decodeInt8];
    if (decodeInt8 >= 5)
    {
      v19 = [[MBException alloc] initWithCode:11 format:{@"Invalid type: %d", decodeInt8}];
    }

    else
    {
      v8->_type = decodeInt8;
      v8->_flags = [decoderCopy decodeInt8];
      decodeString = [decoderCopy decodeString];
      if (decodeString && ([managerCopy domainForName:decodeString], v11 = objc_claimAutoreleasedReturnValue(), domain = v8->_domain, v8->_domain = v11, domain, !v8->_domain))
      {
        v19 = [[MBException alloc] initWithCode:11 format:{@"Invalid domain name: %@", decodeString}];
      }

      else
      {
        decodeData = [decoderCopy decodeData];
        if (!decodeData || (v14 = [[MBFileID alloc] initWithData:decodeData], fileID = v8->_fileID, v8->_fileID = v14, fileID, v8->_fileID))
        {
          decodeString2 = [decoderCopy decodeString];
          path = v8->_path;
          v8->_path = decodeString2;

          v8->_size = [decoderCopy decodeInt64];
          goto LABEL_8;
        }

        v19 = [[MBException alloc] initWithCode:11 format:{@"Invalid file ID data: %@", decodeData}];
      }
    }

    objc_exception_throw(v19);
  }

LABEL_8:

  return v8;
}

- (void)encode:(id)encode
{
  type_low = SLOBYTE(self->_type);
  encodeCopy = encode;
  [encodeCopy encodeInt8:type_low];
  [encodeCopy encodeInt8:self->_flags];
  name = [(MBDomain *)self->_domain name];
  [encodeCopy encodeString:name];

  data = [(MBFileID *)self->_fileID data];
  [encodeCopy encodeData:data];

  [encodeCopy encodeString:self->_path];
  [encodeCopy encodeInt64:self->_size];
}

- (id)description
{
  v3 = objc_opt_class();
  typeName = [(MBBackupOperation *)self typeName];
  v5 = [NSString stringWithFormat:@"<%@: type=%@, domain=%@, fileID=%@, path=%@, size=%llu, flags=0x%x>", v3, typeName, self->_domain, self->_fileID, self->_path, self->_size, self->_flags];

  return v5;
}

@end