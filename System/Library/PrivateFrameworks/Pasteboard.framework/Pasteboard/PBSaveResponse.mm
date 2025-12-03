@interface PBSaveResponse
- (PBSaveResponse)initWithCoder:(id)coder;
- (PBSaveResponse)initWithNotificationState:(unint64_t)state changeCount:(int64_t)count sharingToken:(id)token;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PBSaveResponse

- (PBSaveResponse)initWithNotificationState:(unint64_t)state changeCount:(int64_t)count sharingToken:(id)token
{
  tokenCopy = token;
  v13.receiver = self;
  v13.super_class = PBSaveResponse;
  v10 = [(PBSaveResponse *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_notificationState = state;
    v10->_changeCount = count;
    objc_storeStrong(&v10->_sharingToken, token);
  }

  return v11;
}

- (PBSaveResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"notificationState"];
  v6 = [coderCopy decodeIntegerForKey:@"changeCount"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingToken"];

  v8 = [(PBSaveResponse *)self initWithNotificationState:v5 changeCount:v6 sharingToken:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  notificationState = self->_notificationState;
  coderCopy = coder;
  [coderCopy encodeInt64:notificationState forKey:@"notificationState"];
  [coderCopy encodeInteger:self->_changeCount forKey:@"changeCount"];
  [coderCopy encodeObject:self->_sharingToken forKey:@"sharingToken"];
}

@end