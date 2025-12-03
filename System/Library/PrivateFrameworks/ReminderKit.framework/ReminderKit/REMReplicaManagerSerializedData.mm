@interface REMReplicaManagerSerializedData
+ (id)serializedDataRepresentingDiscardedReplicaManager;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRepresentingDiscardedReplicaManager;
- (REMReplicaManagerSerializedData)initWithCoder:(id)coder;
- (REMReplicaManagerSerializedData)initWithManagerData:(id)data version:(unint64_t)version;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMReplicaManagerSerializedData

- (REMReplicaManagerSerializedData)initWithManagerData:(id)data version:(unint64_t)version
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = REMReplicaManagerSerializedData;
  v8 = [(REMReplicaManagerSerializedData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_managerData, data);
    v9->_version = version;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  managerData = [(REMReplicaManagerSerializedData *)self managerData];
  [coderCopy encodeObject:managerData forKey:@"managerData"];

  [coderCopy encodeInt64:-[REMReplicaManagerSerializedData version](self forKey:{"version"), @"version"}];
}

- (REMReplicaManagerSerializedData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managerData"];
  if (v5)
  {
    self = -[REMReplicaManagerSerializedData initWithManagerData:version:](self, "initWithManagerData:version:", v5, [coderCopy decodeInt64ForKey:@"version"]);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      managerData = [(REMReplicaManagerSerializedData *)self managerData];
      managerData2 = [(REMReplicaManagerSerializedData *)v6 managerData];
      v9 = managerData2;
      if (managerData == managerData2)
      {
      }

      else
      {
        managerData3 = [(REMReplicaManagerSerializedData *)self managerData];
        managerData4 = [(REMReplicaManagerSerializedData *)v6 managerData];
        v12 = [managerData3 isEqual:managerData4];

        if ((v12 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      version = [(REMReplicaManagerSerializedData *)self version];
      v13 = version == [(REMReplicaManagerSerializedData *)v6 version];
      goto LABEL_9;
    }

LABEL_5:
    v13 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v13 = 1;
LABEL_10:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  version = [(REMReplicaManagerSerializedData *)self version];
  managerData = [(REMReplicaManagerSerializedData *)self managerData];
  v7 = [v3 stringWithFormat:@"<%@: %p>{version: %llu %ld bytes}", v4, self, version, objc_msgSend(managerData, "length")];;

  return v7;
}

+ (id)serializedDataRepresentingDiscardedReplicaManager
{
  v2 = [REMReplicaManagerSerializedData alloc];
  data = [MEMORY[0x1E695DEF0] data];
  v4 = [(REMReplicaManagerSerializedData *)v2 initWithManagerData:data version:0];

  return v4;
}

- (BOOL)isRepresentingDiscardedReplicaManager
{
  if ([(REMReplicaManagerSerializedData *)self version])
  {
    return 0;
  }

  managerData = [(REMReplicaManagerSerializedData *)self managerData];
  v3 = [managerData length] == 0;

  return v3;
}

@end