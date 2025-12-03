@interface PRUISModalEntryPointPosterSelectionResponse
- (PRUISModalEntryPointPosterSelectionResponse)initWithBSXPCCoder:(id)coder;
- (PRUISModalEntryPointPosterSelectionResponse)initWithResult:(int64_t)result configurationUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation PRUISModalEntryPointPosterSelectionResponse

- (PRUISModalEntryPointPosterSelectionResponse)initWithResult:(int64_t)result configurationUUID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = PRUISModalEntryPointPosterSelectionResponse;
  v8 = [(PRUISModalEntryPointResponse *)&v12 initWithResult:result];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configurationUUID, d);
    v10 = v9;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  result = [(PRUISModalEntryPointResponse *)self result];
  configurationUUID = self->_configurationUUID;

  return [v4 initWithResult:result configurationUUID:configurationUUID];
}

- (PRUISModalEntryPointPosterSelectionResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"result"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationUUID"];

  v7 = [(PRUISModalEntryPointPosterSelectionResponse *)self initWithResult:v5 configurationUUID:v6];
  return v7;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[PRUISModalEntryPointResponse result](self forKey:{"result"), @"result"}];
  [coderCopy encodeObject:self->_configurationUUID forKey:@"configurationUUID"];
}

@end