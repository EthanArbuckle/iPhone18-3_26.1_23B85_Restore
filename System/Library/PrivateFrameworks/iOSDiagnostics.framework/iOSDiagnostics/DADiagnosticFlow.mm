@interface DADiagnosticFlow
+ (id)defaultFlow;
- (DADiagnosticFlow)initWithBSXPCCoder:(id)a3;
- (DADiagnosticFlow)initWithCoder:(id)a3;
- (DADiagnosticFlow)initWithDestination:(unint64_t)a3 serialNumber:(id)a4 sessionID:(id)a5 passcode:(id)a6;
- (NSString)debugDescription;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DADiagnosticFlow

+ (id)defaultFlow
{
  v2 = [[DADiagnosticFlow alloc] initWithDestination:0];

  return v2;
}

- (DADiagnosticFlow)initWithDestination:(unint64_t)a3 serialNumber:(id)a4 sessionID:(id)a5 passcode:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = DADiagnosticFlow;
  v14 = [(DADiagnosticFlow *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_destination = a3;
    objc_storeStrong(&v14->_serialNumber, a4);
    objc_storeStrong(&v15->_sessionID, a5);
    objc_storeStrong(&v15->_passcode, a6);
  }

  return v15;
}

- (DADiagnosticFlow)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DADiagnosticFlow *)self init];
  if (v5)
  {
    v5->_destination = [v4 decodeIntForKey:@"destination"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passcode"];
    passcode = v5->_passcode;
    v5->_passcode = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[DADiagnosticFlow destination](self forKey:{"destination"), @"destination"}];
  v5 = [(DADiagnosticFlow *)self serialNumber];
  [v4 encodeObject:v5 forKey:@"serialNumber"];

  v6 = [(DADiagnosticFlow *)self sessionID];
  [v4 encodeObject:v6 forKey:@"sessionID"];

  v7 = [(DADiagnosticFlow *)self passcode];
  [v4 encodeObject:v7 forKey:@"passcode"];
}

- (DADiagnosticFlow)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(DADiagnosticFlow *)self init];
  if (v5)
  {
    v5->_destination = [v4 decodeInt64ForKey:@"destination"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passcode"];
    passcode = v5->_passcode;
    v5->_passcode = v10;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[DADiagnosticFlow destination](self forKey:{"destination"), @"destination"}];
  v5 = [(DADiagnosticFlow *)self serialNumber];
  [v4 encodeObject:v5 forKey:@"serialNumber"];

  v6 = [(DADiagnosticFlow *)self sessionID];
  [v4 encodeObject:v6 forKey:@"sessionID"];

  v7 = [(DADiagnosticFlow *)self passcode];
  [v4 encodeObject:v7 forKey:@"passcode"];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DADiagnosticFlow *)self destination];
  v6 = [(DADiagnosticFlow *)self serialNumber];
  v7 = [(DADiagnosticFlow *)self sessionID];
  v8 = [(DADiagnosticFlow *)self passcode];
  v9 = [v3 stringWithFormat:@"<%@: %p> destination: %lu, serialNumber: %@, sessionID: %@, passcode: %@", v4, self, v5, v6, v7, v8];

  return v9;
}

@end