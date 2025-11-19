@interface _SUAutoInstallOperationModel
- (_SUAutoInstallOperationModel)init;
- (_SUAutoInstallOperationModel)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
    v4 = [MEMORY[0x277CCAD78] UUID];
    id = v3->_id;
    v3->_id = v4;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  forecast = self->_forecast;
  agreementStatus = self->_agreementStatus;
  v7 = [(NSUUID *)self->_id UUIDString];
  v8 = [v3 stringWithFormat:@"[<%@:%p>forecast:%@|agreementStatus:%d|id:%@]", v4, self, forecast, agreementStatus, v7];

  return v8;
}

- (_SUAutoInstallOperationModel)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SUAutoInstallOperationModel;
  v5 = [(_SUAutoInstallOperationModel *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"forecast"];
    [(_SUAutoInstallOperationModel *)v5 setForecast:v6];

    -[_SUAutoInstallOperationModel setAgreementStatus:](v5, "setAgreementStatus:", [v4 decodeIntForKey:@"agreementStatus"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    [(_SUAutoInstallOperationModel *)v5 setId:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_SUAutoInstallOperationModel *)self forecast];
  [v4 encodeObject:v5 forKey:@"forecast"];

  [v4 encodeInt:-[_SUAutoInstallOperationModel agreementStatus](self forKey:{"agreementStatus"), @"agreementStatus"}];
  v6 = [(_SUAutoInstallOperationModel *)self id];
  [v4 encodeObject:v6 forKey:@"id"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_SUAutoInstallOperationModel);
  v5 = [(_SUAutoInstallOperationModel *)self forecast];
  [(_SUAutoInstallOperationModel *)v4 setForecast:v5];

  [(_SUAutoInstallOperationModel *)v4 setAgreementStatus:[(_SUAutoInstallOperationModel *)self agreementStatus]];
  v6 = [(_SUAutoInstallOperationModel *)self id];
  [(_SUAutoInstallOperationModel *)v4 setId:v6];

  return v4;
}

@end