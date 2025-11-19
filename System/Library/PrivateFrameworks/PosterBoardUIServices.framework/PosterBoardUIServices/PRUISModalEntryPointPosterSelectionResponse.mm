@interface PRUISModalEntryPointPosterSelectionResponse
- (PRUISModalEntryPointPosterSelectionResponse)initWithBSXPCCoder:(id)a3;
- (PRUISModalEntryPointPosterSelectionResponse)initWithResult:(int64_t)a3 configurationUUID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation PRUISModalEntryPointPosterSelectionResponse

- (PRUISModalEntryPointPosterSelectionResponse)initWithResult:(int64_t)a3 configurationUUID:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PRUISModalEntryPointPosterSelectionResponse;
  v8 = [(PRUISModalEntryPointResponse *)&v12 initWithResult:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configurationUUID, a4);
    v10 = v9;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(PRUISModalEntryPointResponse *)self result];
  configurationUUID = self->_configurationUUID;

  return [v4 initWithResult:v5 configurationUUID:configurationUUID];
}

- (PRUISModalEntryPointPosterSelectionResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"result"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configurationUUID"];

  v7 = [(PRUISModalEntryPointPosterSelectionResponse *)self initWithResult:v5 configurationUUID:v6];
  return v7;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[PRUISModalEntryPointResponse result](self forKey:{"result"), @"result"}];
  [v4 encodeObject:self->_configurationUUID forKey:@"configurationUUID"];
}

@end