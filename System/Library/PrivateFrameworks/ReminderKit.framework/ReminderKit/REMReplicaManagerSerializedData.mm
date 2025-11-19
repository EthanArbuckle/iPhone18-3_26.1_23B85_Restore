@interface REMReplicaManagerSerializedData
+ (id)serializedDataRepresentingDiscardedReplicaManager;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRepresentingDiscardedReplicaManager;
- (REMReplicaManagerSerializedData)initWithCoder:(id)a3;
- (REMReplicaManagerSerializedData)initWithManagerData:(id)a3 version:(unint64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMReplicaManagerSerializedData

- (REMReplicaManagerSerializedData)initWithManagerData:(id)a3 version:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = REMReplicaManagerSerializedData;
  v8 = [(REMReplicaManagerSerializedData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_managerData, a3);
    v9->_version = a4;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(REMReplicaManagerSerializedData *)self managerData];
  [v5 encodeObject:v4 forKey:@"managerData"];

  [v5 encodeInt64:-[REMReplicaManagerSerializedData version](self forKey:{"version"), @"version"}];
}

- (REMReplicaManagerSerializedData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managerData"];
  if (v5)
  {
    self = -[REMReplicaManagerSerializedData initWithManagerData:version:](self, "initWithManagerData:version:", v5, [v4 decodeInt64ForKey:@"version"]);
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMReplicaManagerSerializedData *)self managerData];
      v8 = [(REMReplicaManagerSerializedData *)v6 managerData];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMReplicaManagerSerializedData *)self managerData];
        v11 = [(REMReplicaManagerSerializedData *)v6 managerData];
        v12 = [v10 isEqual:v11];

        if ((v12 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v14 = [(REMReplicaManagerSerializedData *)self version];
      v13 = v14 == [(REMReplicaManagerSerializedData *)v6 version];
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
  v5 = [(REMReplicaManagerSerializedData *)self version];
  v6 = [(REMReplicaManagerSerializedData *)self managerData];
  v7 = [v3 stringWithFormat:@"<%@: %p>{version: %llu %ld bytes}", v4, self, v5, objc_msgSend(v6, "length")];;

  return v7;
}

+ (id)serializedDataRepresentingDiscardedReplicaManager
{
  v2 = [REMReplicaManagerSerializedData alloc];
  v3 = [MEMORY[0x1E695DEF0] data];
  v4 = [(REMReplicaManagerSerializedData *)v2 initWithManagerData:v3 version:0];

  return v4;
}

- (BOOL)isRepresentingDiscardedReplicaManager
{
  if ([(REMReplicaManagerSerializedData *)self version])
  {
    return 0;
  }

  v4 = [(REMReplicaManagerSerializedData *)self managerData];
  v3 = [v4 length] == 0;

  return v3;
}

@end