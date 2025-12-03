@interface DADiagnosticFlow
+ (id)defaultFlow;
- (DADiagnosticFlow)initWithBSXPCCoder:(id)coder;
- (DADiagnosticFlow)initWithCoder:(id)coder;
- (DADiagnosticFlow)initWithDestination:(unint64_t)destination serialNumber:(id)number sessionID:(id)d passcode:(id)passcode;
- (NSString)debugDescription;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DADiagnosticFlow

+ (id)defaultFlow
{
  v2 = [[DADiagnosticFlow alloc] initWithDestination:0];

  return v2;
}

- (DADiagnosticFlow)initWithDestination:(unint64_t)destination serialNumber:(id)number sessionID:(id)d passcode:(id)passcode
{
  numberCopy = number;
  dCopy = d;
  passcodeCopy = passcode;
  v17.receiver = self;
  v17.super_class = DADiagnosticFlow;
  v14 = [(DADiagnosticFlow *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_destination = destination;
    objc_storeStrong(&v14->_serialNumber, number);
    objc_storeStrong(&v15->_sessionID, d);
    objc_storeStrong(&v15->_passcode, passcode);
  }

  return v15;
}

- (DADiagnosticFlow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DADiagnosticFlow *)self init];
  if (v5)
  {
    v5->_destination = [coderCopy decodeIntForKey:@"destination"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passcode"];
    passcode = v5->_passcode;
    v5->_passcode = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[DADiagnosticFlow destination](self forKey:{"destination"), @"destination"}];
  serialNumber = [(DADiagnosticFlow *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"serialNumber"];

  sessionID = [(DADiagnosticFlow *)self sessionID];
  [coderCopy encodeObject:sessionID forKey:@"sessionID"];

  passcode = [(DADiagnosticFlow *)self passcode];
  [coderCopy encodeObject:passcode forKey:@"passcode"];
}

- (DADiagnosticFlow)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DADiagnosticFlow *)self init];
  if (v5)
  {
    v5->_destination = [coderCopy decodeInt64ForKey:@"destination"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passcode"];
    passcode = v5->_passcode;
    v5->_passcode = v10;
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[DADiagnosticFlow destination](self forKey:{"destination"), @"destination"}];
  serialNumber = [(DADiagnosticFlow *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"serialNumber"];

  sessionID = [(DADiagnosticFlow *)self sessionID];
  [coderCopy encodeObject:sessionID forKey:@"sessionID"];

  passcode = [(DADiagnosticFlow *)self passcode];
  [coderCopy encodeObject:passcode forKey:@"passcode"];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  destination = [(DADiagnosticFlow *)self destination];
  serialNumber = [(DADiagnosticFlow *)self serialNumber];
  sessionID = [(DADiagnosticFlow *)self sessionID];
  passcode = [(DADiagnosticFlow *)self passcode];
  v9 = [v3 stringWithFormat:@"<%@: %p> destination: %lu, serialNumber: %@, sessionID: %@, passcode: %@", v4, self, destination, serialNumber, sessionID, passcode];

  return v9;
}

@end