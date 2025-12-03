@interface MADAutoSetJobInformation
- (MADAutoSetJobInformation)init;
- (MADAutoSetJobInformation)initWithCoder:(id)coder;
- (id)copy;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
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

- (MADAutoSetJobInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MADAutoSetJobInformation;
  v5 = [(MADAutoSetJobInformation *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientInstance"];
    clientInstance = v5->_clientInstance;
    v5->_clientInstance = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDesire"];
    clientDesire = v5->_clientDesire;
    v5->_clientDesire = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"foundContent"];
    foundContent = v5->_foundContent;
    v5->_foundContent = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setDescriptor"];
    setDescriptor = v5->_setDescriptor;
    v5->_setDescriptor = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentSetStatus"];
    currentSetStatus = v5->_currentSetStatus;
    v5->_currentSetStatus = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assignedAutoAssetUUID"];
    assignedAutoAssetUUID = v5->_assignedAutoAssetUUID;
    v5->_assignedAutoAssetUUID = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientInstance = [(MADAutoSetJobInformation *)self clientInstance];
  [coderCopy encodeObject:clientInstance forKey:@"clientInstance"];

  clientDesire = [(MADAutoSetJobInformation *)self clientDesire];
  [coderCopy encodeObject:clientDesire forKey:@"clientDesire"];

  foundContent = [(MADAutoSetJobInformation *)self foundContent];
  [coderCopy encodeObject:foundContent forKey:@"foundContent"];

  setDescriptor = [(MADAutoSetJobInformation *)self setDescriptor];
  [coderCopy encodeObject:setDescriptor forKey:@"setDescriptor"];

  currentSetStatus = [(MADAutoSetJobInformation *)self currentSetStatus];
  [coderCopy encodeObject:currentSetStatus forKey:@"currentSetStatus"];

  assignedAutoAssetUUID = [(MADAutoSetJobInformation *)self assignedAutoAssetUUID];
  [coderCopy encodeObject:assignedAutoAssetUUID forKey:@"assignedAutoAssetUUID"];
}

- (id)copy
{
  v3 = objc_alloc_init(MADAutoSetJobInformation);
  clientInstance = [(MADAutoSetJobInformation *)self clientInstance];
  [(MADAutoSetJobInformation *)v3 setClientInstance:clientInstance];

  clientDesire = [(MADAutoSetJobInformation *)self clientDesire];
  [(MADAutoSetJobInformation *)v3 setClientDesire:clientDesire];

  foundContent = [(MADAutoSetJobInformation *)self foundContent];
  [(MADAutoSetJobInformation *)v3 setFoundContent:foundContent];

  setDescriptor = [(MADAutoSetJobInformation *)self setDescriptor];
  v8 = [setDescriptor copy];
  [(MADAutoSetJobInformation *)v3 setSetDescriptor:v8];

  currentSetStatus = [(MADAutoSetJobInformation *)self currentSetStatus];
  v10 = [currentSetStatus copy];
  [(MADAutoSetJobInformation *)v3 setCurrentSetStatus:v10];

  assignedAutoAssetUUID = [(MADAutoSetJobInformation *)self assignedAutoAssetUUID];
  [(MADAutoSetJobInformation *)v3 setAssignedAutoAssetUUID:assignedAutoAssetUUID];

  return v3;
}

- (id)summary
{
  foundContent = [(MADAutoSetJobInformation *)self foundContent];

  clientInstance = [(MADAutoSetJobInformation *)self clientInstance];
  summary = [clientInstance summary];
  clientDesire = [(MADAutoSetJobInformation *)self clientDesire];
  summary2 = [clientDesire summary];
  setDescriptor = [(MADAutoSetJobInformation *)self setDescriptor];
  summary3 = [setDescriptor summary];
  if (foundContent)
  {
    foundContent2 = [(MADAutoSetJobInformation *)self foundContent];
    summary4 = [foundContent2 summary];
    assignedAutoAssetUUID = [(MADAutoSetJobInformation *)self assignedAutoAssetUUID];
    if (assignedAutoAssetUUID)
    {
      [(MADAutoSetJobInformation *)self assignedAutoAssetUUID];
      v20 = foundContent2;
      v13 = setDescriptor;
      v14 = clientDesire;
      v16 = v15 = clientInstance;
      v17 = [NSString stringWithFormat:@"[clientInstance:%@|clientDesire:%@|setDescriptor:%@|foundContent:%@|UUID:%@]", summary, summary2, summary3, summary4, v16];

      clientInstance = v15;
      clientDesire = v14;
      setDescriptor = v13;
      foundContent2 = v20;
      goto LABEL_9;
    }

    [NSString stringWithFormat:@"[clientInstance:%@|clientDesire:%@|setDescriptor:%@|foundContent:%@|UUID:%@]", summary, summary2, summary3, summary4, @"N"];
  }

  else
  {
    foundContent2 = [(MADAutoSetJobInformation *)self currentSetStatus];
    summary4 = [foundContent2 summary];
    assignedAutoAssetUUID = [(MADAutoSetJobInformation *)self assignedAutoAssetUUID];
    if (assignedAutoAssetUUID)
    {
      [(MADAutoSetJobInformation *)self assignedAutoAssetUUID];
      v18 = v21 = clientInstance;
      v17 = [NSString stringWithFormat:@"[clientInstance:%@|clientDesire:%@|setDescriptor:%@|currentSetStatus:%@|UUID:%@]", summary, summary2, summary3, summary4, v18];

      clientInstance = v21;
      goto LABEL_9;
    }

    [NSString stringWithFormat:@"[clientInstance:%@|clientDesire:%@|setDescriptor:%@|currentSetStatus:%@|UUID:%@]", summary, summary2, summary3, summary4, @"N"];
  }
  v17 = ;
LABEL_9:

  return v17;
}

@end