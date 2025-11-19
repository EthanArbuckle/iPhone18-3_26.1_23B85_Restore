@interface TULabeledHandle
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLabeledHandle:(id)a3;
- (TULabeledHandle)init;
- (TULabeledHandle)initWithCoder:(id)a3;
- (TULabeledHandle)initWithHandle:(id)a3 label:(id)a4 isSuggested:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TULabeledHandle

- (TULabeledHandle)initWithHandle:(id)a3 label:(id)a4 isSuggested:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = TULabeledHandle;
  v11 = [(TULabeledHandle *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_handle, a3);
    v13 = [v10 copy];
    label = v12->_label;
    v12->_label = v13;

    v12->_isSuggested = a5;
  }

  return v12;
}

- (TULabeledHandle)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"TULabeledHandle.m" lineNumber:27 description:{@"%s is not available. Use a designated initializer instead.", "-[TULabeledHandle init]"}];

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TULabeledHandle *)self handle];
  v6 = [(TULabeledHandle *)self label];
  v7 = [v3 stringWithFormat:@"<%@ %p handle=%@ label=%@>", v4, self, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TULabeledHandle *)self isEqualToLabeledHandle:v4];

  return v5;
}

- (BOOL)isEqualToLabeledHandle:(id)a3
{
  v4 = a3;
  v5 = [(TULabeledHandle *)self handle];
  v6 = [v4 handle];
  if ([v5 isEqualToHandle:v6])
  {
    v7 = [(TULabeledHandle *)self label];
    v8 = [v4 label];
    if (TUStringsAreEqualOrNil(v7, v8))
    {
      v9 = [(TULabeledHandle *)self isSuggested];
      v10 = v9 ^ [v4 isSuggested] ^ 1;
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
  v3 = [(TULabeledHandle *)self handle];
  v4 = [v3 hash];
  v5 = [(TULabeledHandle *)self label];
  v6 = [v5 hash] ^ v4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TULabeledHandle *)self handle];
  v6 = [(TULabeledHandle *)self label];
  v7 = [v4 initWithHandle:v5 label:v6 isSuggested:{-[TULabeledHandle isSuggested](self, "isSuggested")}];

  return v7;
}

- (TULabeledHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_handle);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_label);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = NSStringFromSelector(sel_isSuggested);
  v12 = [v4 decodeBoolForKey:v11];

  v13 = [(TULabeledHandle *)self initWithHandle:v7 label:v10 isSuggested:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TULabeledHandle *)self handle];
  v6 = NSStringFromSelector(sel_handle);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TULabeledHandle *)self label];
  v8 = NSStringFromSelector(sel_label);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TULabeledHandle *)self isSuggested];
  v10 = NSStringFromSelector(sel_isSuggested);
  [v4 encodeBool:v9 forKey:v10];
}

@end