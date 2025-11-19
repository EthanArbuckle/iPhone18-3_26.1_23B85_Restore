@interface PKMemoItem
- (NSCopying)identifier;
- (PKMemoItem)initWithMemo:(id)a3 type:(unint64_t)a4;
@end

@implementation PKMemoItem

- (PKMemoItem)initWithMemo:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKMemoItem;
  v8 = [(PKMemoItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a4;
    objc_storeStrong(&v8->_memo, a3);
  }

  return v9;
}

- (NSCopying)identifier
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69BB8F0];
  type = self->_type;
  if (type - 1 >= 2)
  {
    if (type != 3 && type != 0)
    {
      goto LABEL_10;
    }

    if (self->_memo)
    {
      v8[0] = self->_memo;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      PKCombinedHash();
    }
  }

  v2 = PKIntegerHash();
LABEL_10:
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v2];

  return v6;
}

@end