@interface SSVMediaSocialAdminStatus
- (SSVMediaSocialAdminStatus)initWithAdminStatus:(BOOL)status dateUpdated:(id)updated;
- (SSVMediaSocialAdminStatus)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSVMediaSocialAdminStatus

- (SSVMediaSocialAdminStatus)initWithAdminStatus:(BOOL)status dateUpdated:(id)updated
{
  updatedCopy = updated;
  v12.receiver = self;
  v12.super_class = SSVMediaSocialAdminStatus;
  v7 = [(SSVMediaSocialAdminStatus *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_admin = status;
    if (updatedCopy)
    {
      date = updatedCopy;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
    }

    dateUpdated = v8->_dateUpdated;
    v8->_dateUpdated = date;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dateUpdated = [(SSVMediaSocialAdminStatus *)self dateUpdated];
  v6 = NSStringFromSelector(sel_dateUpdated);
  [coderCopy encodeObject:dateUpdated forKey:v6];

  isAdmin = [(SSVMediaSocialAdminStatus *)self isAdmin];
  v8 = NSStringFromSelector(sel_isAdmin);
  [coderCopy encodeBool:isAdmin forKey:v8];
}

- (SSVMediaSocialAdminStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SSVMediaSocialAdminStatus;
  v5 = [(SSVMediaSocialAdminStatus *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_dateUpdated);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    dateUpdated = v5->_dateUpdated;
    v5->_dateUpdated = v8;

    v10 = NSStringFromSelector(sel_isAdmin);
    v5->_admin = [coderCopy decodeBoolForKey:v10];
  }

  return v5;
}

@end