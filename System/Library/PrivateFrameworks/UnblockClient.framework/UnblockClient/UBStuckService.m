@interface UBStuckService
- (UBStuckService)initWithCoder:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)initForPid:(int)a3 threadID:(unint64_t)a4 timeElapsed:(double)a5 incidentUUID:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UBStuckService

- (id)initForPid:(int)a3 threadID:(unint64_t)a4 timeElapsed:(double)a5 incidentUUID:(id)a6
{
  v10 = a6;
  v18.receiver = self;
  v18.super_class = UBStuckService;
  v11 = [(UBStuckService *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_pid = a3;
    v11->_threadID = a4;
    v11->_timeElapsed = a5;
    v13 = objc_alloc(MEMORY[0x277CCAD78]);
    v14 = [v10 UUIDString];
    v15 = [v13 initWithUUIDString:v14];
    incidentUUID = v12->_incidentUUID;
    v12->_incidentUUID = v15;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  pid = self->_pid;
  v5 = a3;
  [v5 encodeInt32:pid forKey:@"_pid"];
  [v5 encodeInt64:self->_threadID forKey:@"_threadID"];
  [v5 encodeDouble:@"_timeElapsed" forKey:self->_timeElapsed];
  [v5 encodeObject:self->_incidentUUID forKey:@"_incidentUUID"];
}

- (UBStuckService)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UBStuckService;
  v5 = [(UBStuckService *)&v10 init];
  if (v5)
  {
    v5->_pid = [v4 decodeInt32ForKey:@"_pid"];
    v5->_threadID = [v4 decodeInt64ForKey:@"_threadID"];
    [v4 decodeDoubleForKey:@"_timeElapsed"];
    v5->_timeElapsed = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_incidentUUID"];
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
  v6 = [(UBStuckService *)self threadID];
  [(UBStuckService *)self timeElapsed];
  v8 = v7;
  v9 = [(UBStuckService *)self incidentUUID];
  v10 = [v3 initWithFormat:@"%s for pid:%d tid:%llu timeElapsed:%.1f incidentUUID:%@", ClassName, v5, v6, v8, v9];

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