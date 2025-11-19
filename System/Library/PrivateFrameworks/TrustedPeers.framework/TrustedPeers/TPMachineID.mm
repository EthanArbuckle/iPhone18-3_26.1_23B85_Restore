@interface TPMachineID
- (TPMachineID)initWithMachineID:(id)a3 status:(unint64_t)a4 modified:(id)a5;
- (id)description;
@end

@implementation TPMachineID

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TPMachineID *)self machineID];
  v5 = [(TPMachineID *)self status];
  if (v5 > 5)
  {
    v6 = @"allowed";
  }

  else
  {
    v6 = off_279DEDC78[v5];
  }

  v7 = [(TPMachineID *)self modified];
  v8 = [v3 stringWithFormat:@"<TPMachineID: %@ %@ %@>", v4, v6, v7];

  return v8;
}

- (TPMachineID)initWithMachineID:(id)a3 status:(unint64_t)a4 modified:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = TPMachineID;
  v11 = [(TPMachineID *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_machineID, a3);
    v12->_status = a4;
    objc_storeStrong(&v12->_modified, a5);
  }

  return v12;
}

@end