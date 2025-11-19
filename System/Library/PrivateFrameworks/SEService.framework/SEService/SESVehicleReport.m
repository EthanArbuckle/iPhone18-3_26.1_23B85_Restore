@interface SESVehicleReport
- (SESVehicleReport)initWithCoder:(id)a3;
- (SESVehicleReport)initWithKeyIdentifier:(id)a3 readerIdentifier:(id)a4 supportedFunctions:(id)a5 functionsInProgress:(id)a6 status:(id)a7 proprietaryData:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SESVehicleReport

- (SESVehicleReport)initWithKeyIdentifier:(id)a3 readerIdentifier:(id)a4 supportedFunctions:(id)a5 functionsInProgress:(id)a6 status:(id)a7 proprietaryData:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = SESVehicleReport;
  v18 = [(SESVehicleReport *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_keyIdentifier, a3);
    objc_storeStrong(&v19->_readerIdentifier, a4);
    objc_storeStrong(&v19->_supportedFunctions, a5);
    objc_storeStrong(&v19->_functionsInProgress, a6);
    objc_storeStrong(&v19->_status, a7);
    objc_storeStrong(&v19->_proprietaryData, a8);
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SESVehicleReport *)self keyIdentifier];
  [v4 encodeObject:v5 forKey:@"keyIdentifier"];

  v6 = [(SESVehicleReport *)self readerIdentifier];
  [v4 encodeObject:v6 forKey:@"readerIdentifier"];

  v7 = [(SESVehicleReport *)self supportedFunctions];
  [v4 encodeObject:v7 forKey:@"supportedFunctions"];

  v8 = [(SESVehicleReport *)self functionsInProgress];
  [v4 encodeObject:v8 forKey:@"functionsInProgress"];

  v9 = [(SESVehicleReport *)self status];
  [v4 encodeObject:v9 forKey:@"status"];

  v10 = [(SESVehicleReport *)self proprietaryData];
  [v4 encodeObject:v10 forKey:@"proprietaryData"];
}

- (SESVehicleReport)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SESVehicleReport;
  v5 = [(SESVehicleReport *)&v26 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SESVehicleReport *)v5 keyIdentifier];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v6->_keyIdentifier;
    v6->_keyIdentifier = v8;

    v10 = [(SESVehicleReport *)v6 readerIdentifier];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v6->_readerIdentifier;
    v6->_readerIdentifier = v11;

    v13 = [(SESVehicleReport *)v6 supportedFunctions];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportedFunctions"];
    supportedFunctions = v6->_supportedFunctions;
    v6->_supportedFunctions = v14;

    v16 = [(SESVehicleReport *)v6 functionsInProgress];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"functionsInProgress"];
    functionsInProgress = v6->_functionsInProgress;
    v6->_functionsInProgress = v17;

    v19 = [(SESVehicleReport *)v6 status];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    status = v6->_status;
    v6->_status = v20;

    v22 = [(SESVehicleReport *)v6 proprietaryData];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proprietaryData"];
    proprietaryData = v6->_proprietaryData;
    v6->_proprietaryData = v23;
  }

  return v6;
}

@end