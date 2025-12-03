@interface SBSRemoteContentAlert
- (BOOL)isEqual:(id)equal;
- (SBSRemoteContentAlert)initWithCoder:(id)coder;
- (SBSRemoteContentAlert)initWithTitle:(id)title message:(id)message preferredStyle:(int64_t)style;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSRemoteContentAlert

- (SBSRemoteContentAlert)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = SBSRemoteContentAlert;
  v5 = [(SBSRemoteContentAlert *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v8;

    v5->_preferredStyle = [coderCopy decodeIntegerForKey:@"preferredStyle"];
    v10 = MEMORY[0x1E695DF70];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"actions"];
    v15 = [v10 arrayWithArray:v14];
    actions = v5->_actions;
    v5->_actions = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_message forKey:@"message"];
  [coderCopy encodeInteger:self->_preferredStyle forKey:@"preferredStyle"];
  v6 = [(NSMutableArray *)self->_actions copy];
  [coderCopy encodeObject:v6 forKey:@"actions"];
}

- (SBSRemoteContentAlert)initWithTitle:(id)title message:(id)message preferredStyle:(int64_t)style
{
  titleCopy = title;
  messageCopy = message;
  v18.receiver = self;
  v18.super_class = SBSRemoteContentAlert;
  v10 = [(SBSRemoteContentAlert *)&v18 init];
  if (v10)
  {
    v11 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v11;

    v13 = [messageCopy copy];
    message = v10->_message;
    v10->_message = v13;

    v10->_preferredStyle = style;
    array = [MEMORY[0x1E695DF70] array];
    actions = v10->_actions;
    v10->_actions = array;
  }

  return v10;
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

      v9 = v8 ^ 1;
    }

    else
    {
      v9 = 0;
    }

    message = [v5 message];
    if (message || self->_message)
    {
      message2 = [v5 message];
      v12 = [message2 isEqualToString:self->_message];

      v13 = v12 ^ 1;
    }

    else
    {
      v13 = 0;
    }

    preferredStyle = [v5 preferredStyle];
    preferredStyle = self->_preferredStyle;
    actions = [v5 actions];
    v17 = [actions isEqual:self->_actions];

    if ((v9 | v13))
    {
      v18 = 0;
    }

    else
    {
      v18 = (preferredStyle == preferredStyle) & v17;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_message hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_preferredStyle];
  v6 = [v5 hash];
  v7 = v4 ^ [(NSMutableArray *)self->_actions hash];

  return v7 ^ v6;
}

@end