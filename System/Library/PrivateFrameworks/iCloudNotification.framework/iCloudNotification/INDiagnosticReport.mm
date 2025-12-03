@interface INDiagnosticReport
- (INDiagnosticReport)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INDiagnosticReport

- (INDiagnosticReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = INDiagnosticReport;
  v5 = [(INDiagnosticReport *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushEnvironment"];
    pushEnvironment = v5->_pushEnvironment;
    v5->_pushEnvironment = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
    pushToken = v5->_pushToken;
    v5->_pushToken = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"pushTopics"];
    pushTopics = v5->_pushTopics;
    v5->_pushTopics = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nextHeartbeatDate"];
    nextHeartbeatDate = v5->_nextHeartbeatDate;
    v5->_nextHeartbeatDate = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disabled"];
    v5->_disabled = [v17 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  pushEnvironment = self->_pushEnvironment;
  coderCopy = coder;
  [coderCopy encodeObject:pushEnvironment forKey:@"pushEnvironment"];
  [coderCopy encodeObject:self->_pushToken forKey:@"pushToken"];
  [coderCopy encodeObject:self->_pushTopics forKey:@"pushTopics"];
  [coderCopy encodeObject:self->_nextHeartbeatDate forKey:@"nextHeartbeatDate"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_disabled];
  [coderCopy encodeObject:v6 forKey:@"disabled"];
}

@end