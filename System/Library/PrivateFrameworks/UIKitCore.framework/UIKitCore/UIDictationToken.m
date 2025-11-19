@interface UIDictationToken
- (BOOL)isEqual:(id)a3;
- (UIDictationToken)initWithCoder:(id)a3;
- (UIDictationToken)initWithText:(id)a3 removeSpaceBefore:(BOOL)a4 removeSpaceAfter:(BOOL)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIDictationToken

- (UIDictationToken)initWithText:(id)a3 removeSpaceBefore:(BOOL)a4 removeSpaceAfter:(BOOL)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = UIDictationToken;
  v10 = [(UIDictationToken *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_text, a3);
    v11->_removeSpaceBefore = a4;
    v11->_removeSpaceAfter = a5;
    v12 = v11;
  }

  return v11;
}

- (UIDictationToken)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIDictationToken;
  v5 = [(UIDictationToken *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v5->_removeSpaceBefore = [v4 decodeBoolForKey:@"removeSpaceBefore"];
    v5->_removeSpaceAfter = [v4 decodeBoolForKey:@"removeSpaceAfter"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"text"];
  [v5 encodeBool:self->_removeSpaceBefore forKey:@"removeSpaceBefore"];
  [v5 encodeBool:self->_removeSpaceAfter forKey:@"removeSpaceAfter"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = self->_text;
    v6 = [v4 text];
    if (-[NSString isEqualToString:](text, "isEqualToString:", v6) && (removeSpaceBefore = self->_removeSpaceBefore, removeSpaceBefore == [v4 removeSpaceBefore]))
    {
      removeSpaceAfter = self->_removeSpaceAfter;
      v9 = removeSpaceAfter == [v4 removeSpaceAfter];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  text = self->_text;
  if (self->_removeSpaceBefore)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if (self->_removeSpaceAfter)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  v9 = [(UIDictationToken *)self _descriptionExtra];
  v10 = [v3 stringWithFormat:@"<%@ token=%@, removeSpaceBefore/After=%s/%s%@>", v5, text, v7, v8, v9];

  return v10;
}

@end