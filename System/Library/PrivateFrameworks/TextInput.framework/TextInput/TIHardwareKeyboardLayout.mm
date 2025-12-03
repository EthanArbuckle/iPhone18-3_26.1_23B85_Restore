@interface TIHardwareKeyboardLayout
+ (void)flushLayoutCaches;
- (BOOL)isEqual:(id)equal;
- (CGRect)_frameForKeyCode:(unint64_t)code;
- (TIHardwareKeyboardLayout)initWithCoder:(id)coder;
- (TIHardwareKeyboardLayout)initWithKeyboardType:(int64_t)type;
- (id)_ANSIFrames;
- (void)addExactString:(id)string forKeyCode:(unint64_t)code;
- (void)addString:(id)string forKeyCode:(unint64_t)code;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIHardwareKeyboardLayout

- (id)_ANSIFrames
{
  v2 = __ansiFrames;
  if (!__ansiFrames)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:60];
    v4 = 0;
    v5 = 0.0;
    do
    {
      v6 = qword_186483FA0[v4];
      v7 = _TIValueForCGRect(v5, 0.0, 94.0, 88.0);
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
      [v3 setObject:v7 forKey:v8];

      v5 = v5 + 94.0;
      ++v4;
    }

    while (v4 != 13);
    v9 = 144.0;
    v10 = _TIValueForCGRect(v5, 0.0, 144.0, 88.0);
    [v3 setObject:v10 forKey:&unk_1EF7DC2C0];

    v11 = _TIValueForCGRect(0.0, 88.0, 144.0, 88.0);
    [v3 setObject:v11 forKey:&unk_1EF7DC2D8];

    for (i = 0; i != 13; ++i)
    {
      v13 = qword_186484008[i];
      v14 = _TIValueForCGRect(v9, 88.0, 94.0, 88.0);
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
      [v3 setObject:v14 forKey:v15];

      v9 = v9 + 94.0;
    }

    v16 = 0;
    v17 = 166.0;
    do
    {
      v18 = qword_186484070[v16];
      v19 = _TIValueForCGRect(v17, 176.0, 94.0, 88.0);
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
      [v3 setObject:v19 forKey:v20];

      v17 = v17 + 94.0;
      ++v16;
    }

    while (v16 != 11);
    v21 = _TIValueForCGRect(v17, 176.0, 166.0, 88.0);
    [v3 setObject:v21 forKey:&unk_1EF7DC2F0];

    v22 = 0;
    v23 = 213.0;
    do
    {
      v24 = qword_1864840C8[v22];
      v25 = _TIValueForCGRect(v23, 264.0, 94.0, 88.0);
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
      [v3 setObject:v25 forKey:v26];

      v23 = v23 + 94.0;
      ++v22;
    }

    while (v22 != 10);
    v27 = _TIValueForCGRect(401.0, 352.0, 564.0, 88.0);
    [v3 setObject:v27 forKey:&unk_1EF7DC308];

    v28 = __ansiFrames;
    __ansiFrames = v3;

    v2 = __ansiFrames;
  }

  return v2;
}

- (CGRect)_frameForKeyCode:(unint64_t)code
{
  keyboardType = self->_keyboardType;
  if (keyboardType == 2)
  {
    _JISFrames = [(TIHardwareKeyboardLayout *)self _JISFrames];
  }

  else
  {
    if (keyboardType == 1)
    {
      [(TIHardwareKeyboardLayout *)self _ISOFrames];
    }

    else
    {
      [(TIHardwareKeyboardLayout *)self _ANSIFrames];
    }
    _JISFrames = ;
  }

  v6 = _JISFrames;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:code];
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    v17 = 0u;
    v18 = 0u;
    [v8 getValue:&v17];
    v10 = *(&v17 + 1);
    v9 = *&v17;
    v12 = *(&v18 + 1);
    v11 = *&v18;
  }

  else
  {
    v9 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v11 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
  }

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)addExactString:(id)string forKeyCode:(unint64_t)code
{
  stringCopy = string;
  [(TIHardwareKeyboardLayout *)self _frameForKeyCode:code];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (!CGRectIsNull(v12))
  {
    [(TIKeyboardLayout *)self addKeyWithExactString:stringCopy frame:x, y, width, height];
  }
}

- (void)addString:(id)string forKeyCode:(unint64_t)code
{
  stringCopy = string;
  [(TIHardwareKeyboardLayout *)self _frameForKeyCode:code];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (!CGRectIsNull(v12))
  {
    [(TIKeyboardLayout *)self addKeyWithString:stringCopy frame:x, y, width, height];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_keyboardType == self->_keyboardType)
    {
      v7.receiver = self;
      v7.super_class = TIHardwareKeyboardLayout;
      v5 = [(TIKeyboardLayout *)&v7 isEqual:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TIHardwareKeyboardLayout;
  coderCopy = coder;
  [(TIKeyboardLayout *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_keyboardType forKey:{@"keyboardType", v5.receiver, v5.super_class}];
}

- (TIHardwareKeyboardLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TIHardwareKeyboardLayout;
  v5 = [(TIKeyboardLayout *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_keyboardType = [coderCopy decodeIntegerForKey:@"keyboardType"];
  }

  return v5;
}

- (TIHardwareKeyboardLayout)initWithKeyboardType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = TIHardwareKeyboardLayout;
  result = [(TIKeyboardLayout *)&v5 initWithCapacity:60];
  if (result)
  {
    result->_keyboardType = type;
  }

  return result;
}

+ (void)flushLayoutCaches
{
  v2 = __ansiFrames;
  __ansiFrames = 0;
}

@end