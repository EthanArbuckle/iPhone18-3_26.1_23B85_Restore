@interface STSVehicleReport
- (BOOL)isFunctionInProgress:(id)progress;
- (BOOL)isFunctionSupported:(id)supported;
- (NSArray)functionsInProgress;
- (NSArray)supportedFunctions;
- (NSString)keyIdentifier;
- (STSVehicleReport)initWithCoder:(id)coder;
- (id)description;
- (id)getStatusForFunction:(id)function;
- (id)initVehicleReport:(id)report;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSVehicleReport

- (id)initVehicleReport:(id)report
{
  reportCopy = report;
  v9.receiver = self;
  v9.super_class = STSVehicleReport;
  v6 = [(STSVehicleReport *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vehicleReport, report);
  }

  return v7;
}

- (BOOL)isFunctionSupported:(id)supported
{
  supportedCopy = supported;
  vehicleReport = [(STSVehicleReport *)self vehicleReport];
  v6 = [vehicleReport isRKEFunctionSupported:supportedCopy];

  return v6;
}

- (NSArray)supportedFunctions
{
  vehicleReport = [(STSVehicleReport *)self vehicleReport];
  getSupportedRKEFunctions = [vehicleReport getSupportedRKEFunctions];

  return getSupportedRKEFunctions;
}

- (BOOL)isFunctionInProgress:(id)progress
{
  progressCopy = progress;
  vehicleReport = [(STSVehicleReport *)self vehicleReport];
  v6 = [vehicleReport isRKEFunctionInProgress:progressCopy];

  return v6;
}

- (NSArray)functionsInProgress
{
  vehicleReport = [(STSVehicleReport *)self vehicleReport];
  getRKEFunctionsInProgress = [vehicleReport getRKEFunctionsInProgress];

  return getRKEFunctionsInProgress;
}

- (id)getStatusForFunction:(id)function
{
  functionCopy = function;
  vehicleReport = [(STSVehicleReport *)self vehicleReport];
  v6 = [vehicleReport getStatusForRKEFunction:functionCopy];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  vehicleReport = [(STSVehicleReport *)self vehicleReport];
  [coderCopy encodeObject:vehicleReport forKey:@"stsVehicleReport"];
}

- (STSVehicleReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STSVehicleReport;
  v5 = [(STSVehicleReport *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stsVehicleReport"];
    vehicleReport = v5->_vehicleReport;
    v5->_vehicleReport = v6;
  }

  return v5;
}

- (NSString)keyIdentifier
{
  vehicleReport = [(STSVehicleReport *)self vehicleReport];
  keyIdentifier = [vehicleReport keyIdentifier];

  return keyIdentifier;
}

- (id)description
{
  vehicleReport = [(STSVehicleReport *)self vehicleReport];
  v3 = [vehicleReport description];

  return v3;
}

@end