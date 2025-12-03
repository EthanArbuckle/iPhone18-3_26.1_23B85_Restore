@interface TRIPushChannelId
+ (BOOL)_writeToByte:(char *)byte fromHexByteString:(id)string;
+ (id)_base64ChannelIdForIdentifier:(id)identifier populationType:(int)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPushChannelId:(id)id;
- (NSString)identifier;
- (TRIPushChannelId)initWithIdentifier:(id)identifier type:(unint64_t)type;
- (TRIPushChannelId)initWithRolloutDeployment:(id)deployment;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIPushChannelId

- (TRIPushChannelId)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = TRIPushChannelId;
  v7 = [(TRIPushChannelId *)&v17 init];
  if (!v7)
  {
    goto LABEL_10;
  }

  if ([identifierCopy hasPrefix:@"TRI-TEST-"])
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = identifierCopy;
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Channel generation being skipped for test identifier: %@", buf, 0xCu);
    }

    goto LABEL_6;
  }

  v10 = [identifierCopy copy];
  rawIdentifier = v7->_rawIdentifier;
  v7->_rawIdentifier = v10;

  v7->_type = type;
  if (type != 1)
  {
LABEL_10:
    v9 = v7;
    goto LABEL_11;
  }

  v12 = +[TRISystemConfiguration sharedInstance];
  v7->_populationType = [v12 populationType];

  v13 = [objc_opt_class() _base64ChannelIdForIdentifier:v7->_rawIdentifier populationType:{-[TRIPushChannelId populationType](v7, "populationType")}];
  if (v13)
  {
    base64ChannelId = v7->_base64ChannelId;
    v7->_base64ChannelId = v13;

    goto LABEL_10;
  }

LABEL_6:
  v9 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (TRIPushChannelId)initWithRolloutDeployment:(id)deployment
{
  rolloutId = [deployment rolloutId];
  v5 = [(TRIPushChannelId *)self initWithIdentifier:rolloutId type:1];

  return v5;
}

- (NSString)identifier
{
  v2 = 8;
  if (self->_type == 1)
  {
    v2 = 16;
  }

  return *(&self->super.isa + v2);
}

+ (id)_base64ChannelIdForIdentifier:(id)identifier populationType:(int)type
{
  typeCopy = type;
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  uTF8String = [identifierCopy UTF8String];
  if (!uTF8String)
  {
    v14 = 0;
    goto LABEL_17;
  }

  v8 = strlen(uTF8String);
  if (v8)
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = identifierCopy;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Received an unexpected odd length identifier: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:(v8 >> 1) + 1];
    if (v9)
    {
      if (v8 < 2)
      {
LABEL_8:
        v17 = typeCopy;
        [v9 appendBytes:&v17 length:1];
        if ([v9 length]< 0x11)
        {
          v14 = [v9 base64EncodedStringWithOptions:0];
          goto LABEL_16;
        }

        v13 = TRILogCategory_Server();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v19 = identifierCopy;
          _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Unexpectedly long channel id for identifier %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v10 = 0;
        while (1)
        {
          v11 = [identifierCopy substringWithRange:{v10, 2}];
          buf[0] = 0;
          if (![self _writeToByte:buf fromHexByteString:v11])
          {
            break;
          }

          [v9 appendBytes:buf length:1];

          v12 = v10 + 3;
          v10 += 2;
          if (v12 >= v8)
          {
            goto LABEL_8;
          }
        }
      }
    }
  }

  v14 = 0;
LABEL_16:

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (BOOL)_writeToByte:(char *)byte fromHexByteString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] != 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIPushChannelId.m" lineNumber:117 description:@"Unexpected byte string length"];
  }

  v11 = 0;
  if ([MEMORY[0x277D73748] convertFromString:stringCopy usingBase:16 toI64:&v11] && v11 <= 0xFF)
  {
    *byte = v11;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIPushChannelId | uncomputed identifier:%@ base64String:%@ type:%lu>", self->_rawIdentifier, self->_base64ChannelId, self->_type];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIPushChannelId *)self isEqualToPushChannelId:v5];
  }

  return v6;
}

- (BOOL)isEqualToPushChannelId:(id)id
{
  idCopy = id;
  type = [idCopy type];
  if (type == [(TRIPushChannelId *)self type])
  {
    identifier = [idCopy identifier];
    identifier2 = [(TRIPushChannelId *)self identifier];
    v8 = [identifier isEqual:identifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(TRIPushChannelId *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end