@interface SUControllerStatus
- (SUControllerStatus)init;
- (SUControllerStatus)initWithCoder:(id)a3;
- (id)copy;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUControllerStatus

- (SUControllerStatus)init
{
  v3.receiver = self;
  v3.super_class = SUControllerStatus;
  result = [(SUControllerStatus *)&v3 init];
  if (result)
  {
    result->_failForwardMode = 0;
    result->_managerState = 0;
    result->_updateState = 0;
  }

  return result;
}

- (SUControllerStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SUControllerStatus;
  v5 = [(SUControllerStatus *)&v7 init];
  if (v5)
  {
    v5->_managerState = [v4 decodeInt64ForKey:@"managerState"];
    v5->_updateState = [v4 decodeInt64ForKey:@"updateState"];
    v5->_failForwardMode = [v4 decodeBoolForKey:@"failForwardMode"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[SUControllerStatus managerState](self forKey:{"managerState"), @"managerState"}];
  [v4 encodeInt64:-[SUControllerStatus updateState](self forKey:{"updateState"), @"updateState"}];
  [v4 encodeBool:-[SUControllerStatus failForwardMode](self forKey:{"failForwardMode"), @"failForwardMode"}];
}

- (id)copy
{
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = SUControllerStringForManagerState([(SUControllerStatus *)self managerState]);
  v5 = SUControllerStringForManagerState([(SUControllerStatus *)self updateState]);
  v6 = [(SUControllerStatus *)self failForwardMode];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"\n       ManagerState: %@\n        UpdateState: %@\n    FailForwardMode: %@\n", v4, v5, v7];

  return v8;
}

- (id)summary
{
  v3 = MEMORY[0x277CCACA8];
  v4 = SUControllerStringForManagerState([(SUControllerStatus *)self managerState]);
  v5 = SUControllerStringForManagerState([(SUControllerStatus *)self updateState]);
  v6 = [v3 stringWithFormat:@"%@(%@)", v4, v5];

  return v6;
}

@end