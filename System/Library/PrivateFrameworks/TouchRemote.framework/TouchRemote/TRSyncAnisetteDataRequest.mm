@interface TRSyncAnisetteDataRequest
- (TRSyncAnisetteDataRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRSyncAnisetteDataRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TRSyncAnisetteDataRequest;
  [(TRMessage *)&v6 encodeWithCoder:coderCopy];
  simData = self->_simData;
  if (simData)
  {
    [coderCopy encodeObject:simData forKey:@"TRAnisetteDataMessages_sD"];
  }
}

- (TRSyncAnisetteDataRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRSyncAnisetteDataRequest;
  v5 = [(TRMessage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TRAnisetteDataMessages_sD"];
    simData = v5->_simData;
    v5->_simData = v6;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"simData:[-%@-]", self->_simData];
  v4 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TRSyncAnisetteDataRequest;
  v5 = [(TRMessage *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@ %@", v5, v3];

  return v6;
}

@end