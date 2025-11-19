@interface INDiagnosticReport
- (INDiagnosticReport)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INDiagnosticReport

- (INDiagnosticReport)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = INDiagnosticReport;
  v5 = [(INDiagnosticReport *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushEnvironment"];
    pushEnvironment = v5->_pushEnvironment;
    v5->_pushEnvironment = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
    pushToken = v5->_pushToken;
    v5->_pushToken = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"pushTopics"];
    pushTopics = v5->_pushTopics;
    v5->_pushTopics = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nextHeartbeatDate"];
    nextHeartbeatDate = v5->_nextHeartbeatDate;
    v5->_nextHeartbeatDate = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disabled"];
    v5->_disabled = [v17 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  pushEnvironment = self->_pushEnvironment;
  v5 = a3;
  [v5 encodeObject:pushEnvironment forKey:@"pushEnvironment"];
  [v5 encodeObject:self->_pushToken forKey:@"pushToken"];
  [v5 encodeObject:self->_pushTopics forKey:@"pushTopics"];
  [v5 encodeObject:self->_nextHeartbeatDate forKey:@"nextHeartbeatDate"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_disabled];
  [v5 encodeObject:v6 forKey:@"disabled"];
}

@end