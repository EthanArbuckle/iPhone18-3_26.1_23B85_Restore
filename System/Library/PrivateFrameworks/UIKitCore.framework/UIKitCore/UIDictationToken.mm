@interface UIDictationToken
- (BOOL)isEqual:(id)equal;
- (UIDictationToken)initWithCoder:(id)coder;
- (UIDictationToken)initWithText:(id)text removeSpaceBefore:(BOOL)before removeSpaceAfter:(BOOL)after;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIDictationToken

- (UIDictationToken)initWithText:(id)text removeSpaceBefore:(BOOL)before removeSpaceAfter:(BOOL)after
{
  textCopy = text;
  v14.receiver = self;
  v14.super_class = UIDictationToken;
  v10 = [(UIDictationToken *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_text, text);
    v11->_removeSpaceBefore = before;
    v11->_removeSpaceAfter = after;
    v12 = v11;
  }

  return v11;
}

- (UIDictationToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = UIDictationToken;
  v5 = [(UIDictationToken *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v5->_removeSpaceBefore = [coderCopy decodeBoolForKey:@"removeSpaceBefore"];
    v5->_removeSpaceAfter = [coderCopy decodeBoolForKey:@"removeSpaceAfter"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"text"];
  [coderCopy encodeBool:self->_removeSpaceBefore forKey:@"removeSpaceBefore"];
  [coderCopy encodeBool:self->_removeSpaceAfter forKey:@"removeSpaceAfter"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = self->_text;
    text = [equalCopy text];
    if (-[NSString isEqualToString:](text, "isEqualToString:", text) && (removeSpaceBefore = self->_removeSpaceBefore, removeSpaceBefore == [equalCopy removeSpaceBefore]))
    {
      removeSpaceAfter = self->_removeSpaceAfter;
      v9 = removeSpaceAfter == [equalCopy removeSpaceAfter];
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

  _descriptionExtra = [(UIDictationToken *)self _descriptionExtra];
  v10 = [v3 stringWithFormat:@"<%@ token=%@, removeSpaceBefore/After=%s/%s%@>", v5, text, v7, v8, _descriptionExtra];

  return v10;
}

@end