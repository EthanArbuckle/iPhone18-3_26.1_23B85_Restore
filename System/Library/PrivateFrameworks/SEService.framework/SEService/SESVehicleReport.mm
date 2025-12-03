@interface SESVehicleReport
- (SESVehicleReport)initWithCoder:(id)coder;
- (SESVehicleReport)initWithKeyIdentifier:(id)identifier readerIdentifier:(id)readerIdentifier supportedFunctions:(id)functions functionsInProgress:(id)progress status:(id)status proprietaryData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SESVehicleReport

- (SESVehicleReport)initWithKeyIdentifier:(id)identifier readerIdentifier:(id)readerIdentifier supportedFunctions:(id)functions functionsInProgress:(id)progress status:(id)status proprietaryData:(id)data
{
  identifierCopy = identifier;
  readerIdentifierCopy = readerIdentifier;
  functionsCopy = functions;
  progressCopy = progress;
  statusCopy = status;
  dataCopy = data;
  v24.receiver = self;
  v24.super_class = SESVehicleReport;
  v18 = [(SESVehicleReport *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_keyIdentifier, identifier);
    objc_storeStrong(&v19->_readerIdentifier, readerIdentifier);
    objc_storeStrong(&v19->_supportedFunctions, functions);
    objc_storeStrong(&v19->_functionsInProgress, progress);
    objc_storeStrong(&v19->_status, status);
    objc_storeStrong(&v19->_proprietaryData, data);
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  keyIdentifier = [(SESVehicleReport *)self keyIdentifier];
  [coderCopy encodeObject:keyIdentifier forKey:@"keyIdentifier"];

  readerIdentifier = [(SESVehicleReport *)self readerIdentifier];
  [coderCopy encodeObject:readerIdentifier forKey:@"readerIdentifier"];

  supportedFunctions = [(SESVehicleReport *)self supportedFunctions];
  [coderCopy encodeObject:supportedFunctions forKey:@"supportedFunctions"];

  functionsInProgress = [(SESVehicleReport *)self functionsInProgress];
  [coderCopy encodeObject:functionsInProgress forKey:@"functionsInProgress"];

  status = [(SESVehicleReport *)self status];
  [coderCopy encodeObject:status forKey:@"status"];

  proprietaryData = [(SESVehicleReport *)self proprietaryData];
  [coderCopy encodeObject:proprietaryData forKey:@"proprietaryData"];
}

- (SESVehicleReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = SESVehicleReport;
  v5 = [(SESVehicleReport *)&v26 init];
  v6 = v5;
  if (v5)
  {
    keyIdentifier = [(SESVehicleReport *)v5 keyIdentifier];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v6->_keyIdentifier;
    v6->_keyIdentifier = v8;

    readerIdentifier = [(SESVehicleReport *)v6 readerIdentifier];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v6->_readerIdentifier;
    v6->_readerIdentifier = v11;

    supportedFunctions = [(SESVehicleReport *)v6 supportedFunctions];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportedFunctions"];
    supportedFunctions = v6->_supportedFunctions;
    v6->_supportedFunctions = v14;

    functionsInProgress = [(SESVehicleReport *)v6 functionsInProgress];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"functionsInProgress"];
    functionsInProgress = v6->_functionsInProgress;
    v6->_functionsInProgress = v17;

    status = [(SESVehicleReport *)v6 status];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    status = v6->_status;
    v6->_status = v20;

    proprietaryData = [(SESVehicleReport *)v6 proprietaryData];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proprietaryData"];
    proprietaryData = v6->_proprietaryData;
    v6->_proprietaryData = v23;
  }

  return v6;
}

@end