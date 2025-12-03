@interface SBSRemoteContentAlertAction
- (BOOL)isEqual:(id)equal;
- (SBSRemoteContentAlertAction)initWithCoder:(id)coder;
- (SBSRemoteContentAlertAction)initWithTitle:(id)title style:(int64_t)style;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSRemoteContentAlertAction

- (SBSRemoteContentAlertAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SBSRemoteContentAlertAction;
  v5 = [(SBSRemoteContentAlertAction *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v5->_style = [coderCopy decodeIntegerForKey:@"style"];
    v5->_enabled = [coderCopy decodeBoolForKey:@"enabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeInteger:self->_style forKey:@"style"];
  [coderCopy encodeBool:self->_enabled forKey:@"enabled"];
}

- (SBSRemoteContentAlertAction)initWithTitle:(id)title style:(int64_t)style
{
  titleCopy = title;
  v11.receiver = self;
  v11.super_class = SBSRemoteContentAlertAction;
  v7 = [(SBSRemoteContentAlertAction *)&v11 init];
  if (v7)
  {
    v8 = [titleCopy copy];
    title = v7->_title;
    v7->_title = v8;

    v7->_style = style;
    v7->_enabled = 1;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    title = [v5 title];
    if (title || self->_title)
    {
      title2 = [v5 title];
      v8 = [title2 isEqualToString:self->_title];
    }

    else
    {
      v8 = 1;
    }

    style = [v5 style];
    style = self->_style;
    isEnabled = [v5 isEnabled];
    if (style == style)
    {
      v12 = v8;
    }

    else
    {
      v12 = 0;
    }

    if ((isEnabled & 1) == self->_enabled)
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