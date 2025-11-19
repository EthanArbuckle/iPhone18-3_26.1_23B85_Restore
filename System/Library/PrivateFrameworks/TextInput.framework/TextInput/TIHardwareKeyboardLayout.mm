@interface TIHardwareKeyboardLayout
+ (void)flushLayoutCaches;
- (BOOL)isEqual:(id)a3;
- (CGRect)_frameForKeyCode:(unint64_t)a3;
- (TIHardwareKeyboardLayout)initWithCoder:(id)a3;
- (TIHardwareKeyboardLayout)initWithKeyboardType:(int64_t)a3;
- (id)_ANSIFrames;
- (void)addExactString:(id)a3 forKeyCode:(unint64_t)a4;
- (void)addString:(id)a3 forKeyCode:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
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

- (CGRect)_frameForKeyCode:(unint64_t)a3
{
  keyboardType = self->_keyboardType;
  if (keyboardType == 2)
  {
    v5 = [(TIHardwareKeyboardLayout *)self _JISFrames];
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
    v5 = ;
  }

  v6 = v5;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
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

- (void)addExactString:(id)a3 forKeyCode:(unint64_t)a4
{
  v10 = a3;
  [(TIHardwareKeyboardLayout *)self _frameForKeyCode:a4];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (!CGRectIsNull(v12))
  {
    [(TIKeyboardLayout *)self addKeyWithExactString:v10 frame:x, y, width, height];
  }
}

- (void)addString:(id)a3 forKeyCode:(unint64_t)a4
{
  v10 = a3;
  [(TIHardwareKeyboardLayout *)self _frameForKeyCode:a4];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (!CGRectIsNull(v12))
  {
    [(TIKeyboardLayout *)self addKeyWithString:v10 frame:x, y, width, height];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v4->_keyboardType == self->_keyboardType)
    {
      v7.receiver = self;
      v7.super_class = TIHardwareKeyboardLayout;
      v5 = [(TIKeyboardLayout *)&v7 isEqual:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIHardwareKeyboardLayout;
  v4 = a3;
  [(TIKeyboardLayout *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_keyboardType forKey:{@"keyboardType", v5.receiver, v5.super_class}];
}

- (TIHardwareKeyboardLayout)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TIHardwareKeyboardLayout;
  v5 = [(TIKeyboardLayout *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_keyboardType = [v4 decodeIntegerForKey:@"keyboardType"];
  }

  return v5;
}

- (TIHardwareKeyboardLayout)initWithKeyboardType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = TIHardwareKeyboardLayout;
  result = [(TIKeyboardLayout *)&v5 initWithCapacity:60];
  if (result)
  {
    result->_keyboardType = a3;
  }

  return result;
}

+ (void)flushLayoutCaches
{
  v2 = __ansiFrames;
  __ansiFrames = 0;
}

@end