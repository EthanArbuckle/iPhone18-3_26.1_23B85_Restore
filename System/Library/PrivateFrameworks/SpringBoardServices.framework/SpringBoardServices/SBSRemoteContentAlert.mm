@interface SBSRemoteContentAlert
- (BOOL)isEqual:(id)a3;
- (SBSRemoteContentAlert)initWithCoder:(id)a3;
- (SBSRemoteContentAlert)initWithTitle:(id)a3 message:(id)a4 preferredStyle:(int64_t)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSRemoteContentAlert

- (SBSRemoteContentAlert)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SBSRemoteContentAlert;
  v5 = [(SBSRemoteContentAlert *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v8;

    v5->_preferredStyle = [v4 decodeIntegerForKey:@"preferredStyle"];
    v10 = MEMORY[0x1E695DF70];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"actions"];
    v15 = [v10 arrayWithArray:v14];
    actions = v5->_actions;
    v5->_actions = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_message forKey:@"message"];
  [v5 encodeInteger:self->_preferredStyle forKey:@"preferredStyle"];
  v6 = [(NSMutableArray *)self->_actions copy];
  [v5 encodeObject:v6 forKey:@"actions"];
}

- (SBSRemoteContentAlert)initWithTitle:(id)a3 message:(id)a4 preferredStyle:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = SBSRemoteContentAlert;
  v10 = [(SBSRemoteContentAlert *)&v18 init];
  if (v10)
  {
    v11 = [v8 copy];
    title = v10->_title;
    v10->_title = v11;

    v13 = [v9 copy];
    message = v10->_message;
    v10->_message = v13;

    v10->_preferredStyle = a5;
    v15 = [MEMORY[0x1E695DF70] array];
    actions = v10->_actions;
    v10->_actions = v15;
  }

  return v10;
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

      v9 = v8 ^ 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v5 message];
    if (v10 || self->_message)
    {
      v11 = [v5 message];
      v12 = [v11 isEqualToString:self->_message];

      v13 = v12 ^ 1;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v5 preferredStyle];
    preferredStyle = self->_preferredStyle;
    v16 = [v5 actions];
    v17 = [v16 isEqual:self->_actions];

    if ((v9 | v13))
    {
      v18 = 0;
    }

    else
    {
      v18 = (v14 == preferredStyle) & v17;
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