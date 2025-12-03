@interface TPMachineID
- (TPMachineID)initWithMachineID:(id)d status:(unint64_t)status modified:(id)modified;
- (id)description;
@end

@implementation TPMachineID

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  machineID = [(TPMachineID *)self machineID];
  status = [(TPMachineID *)self status];
  if (status > 5)
  {
    v6 = @"allowed";
  }

  else
  {
    v6 = off_279DEDC78[status];
  }

  modified = [(TPMachineID *)self modified];
  v8 = [v3 stringWithFormat:@"<TPMachineID: %@ %@ %@>", machineID, v6, modified];

  return v8;
}

- (TPMachineID)initWithMachineID:(id)d status:(unint64_t)status modified:(id)modified
{
  dCopy = d;
  modifiedCopy = modified;
  v14.receiver = self;
  v14.super_class = TPMachineID;
  v11 = [(TPMachineID *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_machineID, d);
    v12->_status = status;
    objc_storeStrong(&v12->_modified, modified);
  }

  return v12;
}

@end