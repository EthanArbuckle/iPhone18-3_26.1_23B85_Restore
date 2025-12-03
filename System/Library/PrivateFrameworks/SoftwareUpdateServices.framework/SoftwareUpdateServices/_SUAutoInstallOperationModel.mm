@interface _SUAutoInstallOperationModel
- (_SUAutoInstallOperationModel)init;
- (_SUAutoInstallOperationModel)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SUAutoInstallOperationModel

- (_SUAutoInstallOperationModel)init
{
  v7.receiver = self;
  v7.super_class = _SUAutoInstallOperationModel;
  v2 = [(_SUAutoInstallOperationModel *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_agreementStatus = 0;
    uUID = [MEMORY[0x277CCAD78] UUID];
    id = v3->_id;
    v3->_id = uUID;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  forecast = self->_forecast;
  agreementStatus = self->_agreementStatus;
  uUIDString = [(NSUUID *)self->_id UUIDString];
  v8 = [v3 stringWithFormat:@"[<%@:%p>forecast:%@|agreementStatus:%d|id:%@]", v4, self, forecast, agreementStatus, uUIDString];

  return v8;
}

- (_SUAutoInstallOperationModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _SUAutoInstallOperationModel;
  v5 = [(_SUAutoInstallOperationModel *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"forecast"];
    [(_SUAutoInstallOperationModel *)v5 setForecast:v6];

    -[_SUAutoInstallOperationModel setAgreementStatus:](v5, "setAgreementStatus:", [coderCopy decodeIntForKey:@"agreementStatus"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    [(_SUAutoInstallOperationModel *)v5 setId:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  forecast = [(_SUAutoInstallOperationModel *)self forecast];
  [coderCopy encodeObject:forecast forKey:@"forecast"];

  [coderCopy encodeInt:-[_SUAutoInstallOperationModel agreementStatus](self forKey:{"agreementStatus"), @"agreementStatus"}];
  v6 = [(_SUAutoInstallOperationModel *)self id];
  [coderCopy encodeObject:v6 forKey:@"id"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(_SUAutoInstallOperationModel);
  forecast = [(_SUAutoInstallOperationModel *)self forecast];
  [(_SUAutoInstallOperationModel *)v4 setForecast:forecast];

  [(_SUAutoInstallOperationModel *)v4 setAgreementStatus:[(_SUAutoInstallOperationModel *)self agreementStatus]];
  v6 = [(_SUAutoInstallOperationModel *)self id];
  [(_SUAutoInstallOperationModel *)v4 setId:v6];

  return v4;
}

@end