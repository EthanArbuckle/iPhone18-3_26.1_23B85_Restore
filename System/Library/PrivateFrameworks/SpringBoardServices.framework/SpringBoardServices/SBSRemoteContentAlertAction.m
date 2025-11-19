@interface SBSRemoteContentAlertAction
- (BOOL)isEqual:(id)a3;
- (SBSRemoteContentAlertAction)initWithCoder:(id)a3;
- (SBSRemoteContentAlertAction)initWithTitle:(id)a3 style:(int64_t)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSRemoteContentAlertAction

- (SBSRemoteContentAlertAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSRemoteContentAlertAction;
  v5 = [(SBSRemoteContentAlertAction *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v5->_style = [v4 decodeIntegerForKey:@"style"];
    v5->_enabled = [v4 decodeBoolForKey:@"enabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeInteger:self->_style forKey:@"style"];
  [v5 encodeBool:self->_enabled forKey:@"enabled"];
}

- (SBSRemoteContentAlertAction)initWithTitle:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SBSRemoteContentAlertAction;
  v7 = [(SBSRemoteContentAlertAction *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    title = v7->_title;
    v7->_title = v8;

    v7->_style = a4;
    v7->_enabled = 1;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 title];
    if (v6 || self->_title)
    {
      v7 = [v5 title];
      v8 = [v7 isEqualToString:self->_title];
    }

    else
    {
      v8 = 1;
    }

    v9 = [v5 style];
    style = self->_style;
    v11 = [v5 isEnabled];
    if (v9 == style)
    {
      v12 = v8;
    }

    else
    {
      v12 = 0;
    }

    if ((v11 & 1) == self->_enabled)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_style];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
  v7 = [v6 hash];

  return v5 ^ v7;
}

@end