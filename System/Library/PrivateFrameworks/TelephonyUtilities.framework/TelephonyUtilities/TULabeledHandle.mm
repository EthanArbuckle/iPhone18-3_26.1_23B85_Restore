@interface TULabeledHandle
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLabeledHandle:(id)handle;
- (TULabeledHandle)init;
- (TULabeledHandle)initWithCoder:(id)coder;
- (TULabeledHandle)initWithHandle:(id)handle label:(id)label isSuggested:(BOOL)suggested;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TULabeledHandle

- (TULabeledHandle)initWithHandle:(id)handle label:(id)label isSuggested:(BOOL)suggested
{
  handleCopy = handle;
  labelCopy = label;
  v16.receiver = self;
  v16.super_class = TULabeledHandle;
  v11 = [(TULabeledHandle *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_handle, handle);
    v13 = [labelCopy copy];
    label = v12->_label;
    v12->_label = v13;

    v12->_isSuggested = suggested;
  }

  return v12;
}

- (TULabeledHandle)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TULabeledHandle.m" lineNumber:27 description:{@"%s is not available. Use a designated initializer instead.", "-[TULabeledHandle init]"}];

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  handle = [(TULabeledHandle *)self handle];
  label = [(TULabeledHandle *)self label];
  v7 = [v3 stringWithFormat:@"<%@ %p handle=%@ label=%@>", v4, self, handle, label];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TULabeledHandle *)self isEqualToLabeledHandle:equalCopy];

  return v5;
}

- (BOOL)isEqualToLabeledHandle:(id)handle
{
  handleCopy = handle;
  handle = [(TULabeledHandle *)self handle];
  handle2 = [handleCopy handle];
  if ([handle isEqualToHandle:handle2])
  {
    label = [(TULabeledHandle *)self label];
    label2 = [handleCopy label];
    if (TUStringsAreEqualOrNil(label, label2))
    {
      isSuggested = [(TULabeledHandle *)self isSuggested];
      v10 = isSuggested ^ [handleCopy isSuggested] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  handle = [(TULabeledHandle *)self handle];
  v4 = [handle hash];
  label = [(TULabeledHandle *)self label];
  v6 = [label hash] ^ v4;
  if ([(TULabeledHandle *)self isSuggested])
  {
    v7 = 1231;
  }

  else
  {
    v7 = 1237;
  }

  return v6 ^ v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  handle = [(TULabeledHandle *)self handle];
  label = [(TULabeledHandle *)self label];
  v7 = [v4 initWithHandle:handle label:label isSuggested:{-[TULabeledHandle isSuggested](self, "isSuggested")}];

  return v7;
}

- (TULabeledHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_handle);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_label);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = NSStringFromSelector(sel_isSuggested);
  v12 = [coderCopy decodeBoolForKey:v11];

  v13 = [(TULabeledHandle *)self initWithHandle:v7 label:v10 isSuggested:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  handle = [(TULabeledHandle *)self handle];
  v6 = NSStringFromSelector(sel_handle);
  [coderCopy encodeObject:handle forKey:v6];

  label = [(TULabeledHandle *)self label];
  v8 = NSStringFromSelector(sel_label);
  [coderCopy encodeObject:label forKey:v8];

  isSuggested = [(TULabeledHandle *)self isSuggested];
  v10 = NSStringFromSelector(sel_isSuggested);
  [coderCopy encodeBool:isSuggested forKey:v10];
}

@end