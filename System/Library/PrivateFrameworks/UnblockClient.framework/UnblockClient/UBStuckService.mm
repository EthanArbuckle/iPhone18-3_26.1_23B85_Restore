@interface UBStuckService
- (UBStuckService)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)description;
- (id)initForPid:(int)pid threadID:(unint64_t)d timeElapsed:(double)elapsed incidentUUID:(id)iD;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UBStuckService

- (id)initForPid:(int)pid threadID:(unint64_t)d timeElapsed:(double)elapsed incidentUUID:(id)iD
{
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = UBStuckService;
  v11 = [(UBStuckService *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_pid = pid;
    v11->_threadID = d;
    v11->_timeElapsed = elapsed;
    v13 = objc_alloc(MEMORY[0x277CCAD78]);
    uUIDString = [iDCopy UUIDString];
    v15 = [v13 initWithUUIDString:uUIDString];
    incidentUUID = v12->_incidentUUID;
    v12->_incidentUUID = v15;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  pid = self->_pid;
  coderCopy = coder;
  [coderCopy encodeInt32:pid forKey:@"_pid"];
  [coderCopy encodeInt64:self->_threadID forKey:@"_threadID"];
  [coderCopy encodeDouble:@"_timeElapsed" forKey:self->_timeElapsed];
  [coderCopy encodeObject:self->_incidentUUID forKey:@"_incidentUUID"];
}

- (UBStuckService)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = UBStuckService;
  v5 = [(UBStuckService *)&v10 init];
  if (v5)
  {
    v5->_pid = [coderCopy decodeInt32ForKey:@"_pid"];
    v5->_threadID = [coderCopy decodeInt64ForKey:@"_threadID"];
    [coderCopy decodeDoubleForKey:@"_timeElapsed"];
    v5->_timeElapsed = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_incidentUUID"];
    incidentUUID = v5->_incidentUUID;
    v5->_incidentUUID = v7;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  ClassName = object_getClassName(self);
  v5 = [(UBStuckService *)self pid];
  threadID = [(UBStuckService *)self threadID];
  [(UBStuckService *)self timeElapsed];
  v8 = v7;
  incidentUUID = [(UBStuckService *)self incidentUUID];
  v10 = [v3 initWithFormat:@"%s for pid:%d tid:%llu timeElapsed:%.1f incidentUUID:%@", ClassName, v5, threadID, v8, incidentUUID];

  return v10;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(UBStuckService *)self description];
  v5 = [v3 initWithFormat:@"<%p %@>", self, v4];

  return v5;
}

@end