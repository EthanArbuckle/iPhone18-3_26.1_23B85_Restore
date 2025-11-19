@interface MADAutoSetJobInformation
- (MADAutoSetJobInformation)init;
- (MADAutoSetJobInformation)initWithCoder:(id)a3;
- (id)copy;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoSetJobInformation

- (MADAutoSetJobInformation)init
{
  v11.receiver = self;
  v11.super_class = MADAutoSetJobInformation;
  v2 = [(MADAutoSetJobInformation *)&v11 init];
  v3 = v2;
  if (v2)
  {
    clientInstance = v2->_clientInstance;
    v2->_clientInstance = 0;

    clientDesire = v3->_clientDesire;
    v3->_clientDesire = 0;

    foundContent = v3->_foundContent;
    v3->_foundContent = 0;

    setDescriptor = v3->_setDescriptor;
    v3->_setDescriptor = 0;

    currentSetStatus = v3->_currentSetStatus;
    v3->_currentSetStatus = 0;

    assignedAutoAssetUUID = v3->_assignedAutoAssetUUID;
    v3->_assignedAutoAssetUUID = 0;
  }

  return v3;
}

- (MADAutoSetJobInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MADAutoSetJobInformation;
  v5 = [(MADAutoSetJobInformation *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientInstance"];
    clientInstance = v5->_clientInstance;
    v5->_clientInstance = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDesire"];
    clientDesire = v5->_clientDesire;
    v5->_clientDesire = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foundContent"];
    foundContent = v5->_foundContent;
    v5->_foundContent = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setDescriptor"];
    setDescriptor = v5->_setDescriptor;
    v5->_setDescriptor = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentSetStatus"];
    currentSetStatus = v5->_currentSetStatus;
    v5->_currentSetStatus = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assignedAutoAssetUUID"];
    assignedAutoAssetUUID = v5->_assignedAutoAssetUUID;
    v5->_assignedAutoAssetUUID = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoSetJobInformation *)self clientInstance];
  [v4 encodeObject:v5 forKey:@"clientInstance"];

  v6 = [(MADAutoSetJobInformation *)self clientDesire];
  [v4 encodeObject:v6 forKey:@"clientDesire"];

  v7 = [(MADAutoSetJobInformation *)self foundContent];
  [v4 encodeObject:v7 forKey:@"foundContent"];

  v8 = [(MADAutoSetJobInformation *)self setDescriptor];
  [v4 encodeObject:v8 forKey:@"setDescriptor"];

  v9 = [(MADAutoSetJobInformation *)self currentSetStatus];
  [v4 encodeObject:v9 forKey:@"currentSetStatus"];

  v10 = [(MADAutoSetJobInformation *)self assignedAutoAssetUUID];
  [v4 encodeObject:v10 forKey:@"assignedAutoAssetUUID"];
}

- (id)copy
{
  v3 = objc_alloc_init(MADAutoSetJobInformation);
  v4 = [(MADAutoSetJobInformation *)self clientInstance];
  [(MADAutoSetJobInformation *)v3 setClientInstance:v4];

  v5 = [(MADAutoSetJobInformation *)self clientDesire];
  [(MADAutoSetJobInformation *)v3 setClientDesire:v5];

  v6 = [(MADAutoSetJobInformation *)self foundContent];
  [(MADAutoSetJobInformation *)v3 setFoundContent:v6];

  v7 = [(MADAutoSetJobInformation *)self setDescriptor];
  v8 = [v7 copy];
  [(MADAutoSetJobInformation *)v3 setSetDescriptor:v8];

  v9 = [(MADAutoSetJobInformation *)self currentSetStatus];
  v10 = [v9 copy];
  [(MADAutoSetJobInformation *)v3 setCurrentSetStatus:v10];

  v11 = [(MADAutoSetJobInformation *)self assignedAutoAssetUUID];
  [(MADAutoSetJobInformation *)v3 setAssignedAutoAssetUUID:v11];

  return v3;
}

- (id)summary
{
  v3 = [(MADAutoSetJobInformation *)self foundContent];

  v4 = [(MADAutoSetJobInformation *)self clientInstance];
  v5 = [v4 summary];
  v6 = [(MADAutoSetJobInformation *)self clientDesire];
  v7 = [v6 summary];
  v8 = [(MADAutoSetJobInformation *)self setDescriptor];
  v9 = [v8 summary];
  if (v3)
  {
    v10 = [(MADAutoSetJobInformation *)self foundContent];
    v11 = [v10 summary];
    v12 = [(MADAutoSetJobInformation *)self assignedAutoAssetUUID];
    if (v12)
    {
      [(MADAutoSetJobInformation *)self assignedAutoAssetUUID];
      v20 = v10;
      v13 = v8;
      v14 = v6;
      v16 = v15 = v4;
      v17 = [NSString stringWithFormat:@"[clientInstance:%@|clientDesire:%@|setDescriptor:%@|foundContent:%@|UUID:%@]", v5, v7, v9, v11, v16];

      v4 = v15;
      v6 = v14;
      v8 = v13;
      v10 = v20;
      goto LABEL_9;
    }

    [NSString stringWithFormat:@"[clientInstance:%@|clientDesire:%@|setDescriptor:%@|foundContent:%@|UUID:%@]", v5, v7, v9, v11, @"N"];
  }

  else
  {
    v10 = [(MADAutoSetJobInformation *)self currentSetStatus];
    v11 = [v10 summary];
    v12 = [(MADAutoSetJobInformation *)self assignedAutoAssetUUID];
    if (v12)
    {
      [(MADAutoSetJobInformation *)self assignedAutoAssetUUID];
      v18 = v21 = v4;
      v17 = [NSString stringWithFormat:@"[clientInstance:%@|clientDesire:%@|setDescriptor:%@|currentSetStatus:%@|UUID:%@]", v5, v7, v9, v11, v18];

      v4 = v21;
      goto LABEL_9;
    }

    [NSString stringWithFormat:@"[clientInstance:%@|clientDesire:%@|setDescriptor:%@|currentSetStatus:%@|UUID:%@]", v5, v7, v9, v11, @"N"];
  }
  v17 = ;
LABEL_9:

  return v17;
}

@end