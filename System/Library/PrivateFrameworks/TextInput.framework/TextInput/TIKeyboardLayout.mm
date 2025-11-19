@interface TIKeyboardLayout
- (BOOL)isEqual:(id)a3;
- (CGRect)_decodeCGRectForKey:(id)a3 withDecoder:(id)a4;
- (CGRect)frame;
- (TIKeyboardLayout)initWithCapacity:(unint64_t)a3;
- (TIKeyboardLayout)initWithCoder:(id)a3;
- (id)description;
- (int64_t)keyContainingPoint:(CGPoint)a3;
- (unint64_t)hash;
- (void)_encodeCGRect:(CGRect)a3 forKey:(id)a4 withCoder:(id)a5;
- (void)addKeyWithExactString:(id)a3 frame:(CGRect)a4;
- (void)addKeyWithString:(id)a3 frame:(CGRect)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)ensureFrameCapacity:(unint64_t)a3;
- (void)ensureStringCapacity:(unint64_t)a3;
- (void)enumerateKeysUsingBlock:(id)a3;
@end

@implementation TIKeyboardLayout

- (void)dealloc
{
  frames = self->_frames;
  if (frames)
  {
    free(frames);
  }

  strings = self->_strings;
  if (strings)
  {
    free(strings);
  }

  v5.receiver = self;
  v5.super_class = TIKeyboardLayout;
  [(TIKeyboardLayout *)&v5 dealloc];
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_count];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __31__TIKeyboardLayout_description__block_invoke;
  v14 = &unk_1E6F4C458;
  v15 = v3;
  v4 = v3;
  [(TIKeyboardLayout *)self enumerateKeysUsingBlock:&v11];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 componentsJoinedByString:{@", "}];
  v9 = [v5 stringWithFormat:@"<%@: %p keys = [%@]>", v7, self, v8, v11, v12, v13, v14];;

  return v9;
}

void __31__TIKeyboardLayout_description__block_invoke(uint64_t a1, const char *a2, double a3, double a4, double a5, double a6)
{
  if (*a2 == 10)
  {
    v11 = "\\n";
  }

  else
  {
    v11 = a2;
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
  v14 = [v12 stringWithFormat:@"%@(x=%.0f, y=%.0f, w=%.0f, h=%.0f)", v13, *&a3, *&a4, *&a5, *&a6];

  [*(a1 + 32) addObject:v14];
}

- (int64_t)keyContainingPoint:(CGPoint)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__TIKeyboardLayout_keyContainingPoint___block_invoke;
  v5[3] = &unk_1E6F4C430;
  v6 = a3;
  v5[4] = &v7;
  [(TIKeyboardLayout *)self enumerateKeysUsingBlock:v5];
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

BOOL __39__TIKeyboardLayout_keyContainingPoint___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  result = CGRectContainsPoint(*&a2, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a7;
    *a8 = 1;
  }

  return result;
}

- (void)enumerateKeysUsingBlock:(id)a3
{
  v4 = a3;
  v9 = 0;
  if (self->_count)
  {
    v5 = 0;
    strings = self->_strings;
    do
    {
      if (strings - self->_strings >= self->_stringsSize)
      {
        break;
      }

      v7 = self->_frames[v5];
      v4[2](v4, strings, v5++, &v9, v7, (v7 >> 16), ((v7 >> 16) >> 16), (v7 >> 48));
      v8 = strlen(strings);
      if (v5 >= self->_count)
      {
        break;
      }

      strings += v8 + 1;
    }

    while ((v9 & 1) == 0);
  }
}

- (void)addKeyWithExactString:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  count = self->_count;
  v10 = a3;
  [(TIKeyboardLayout *)self ensureFrameCapacity:count + 1];
  v12 = self->_count;
  frames = self->_frames;
  self->_count = v12 + 1;
  frames[v12] = ((width << 32) | (height << 48) | (y << 16) | x);
  v13 = [v10 UTF8String];

  v14 = strlen(v13) + 1;
  [(TIKeyboardLayout *)self ensureStringCapacity:self->_stringsSize + v14];
  strlcpy(&self->_strings[self->_stringsSize], v13, v14);
  self->_stringsSize += v14;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  self->_frame = CGRectUnion(self->_frame, v15);
}

- (void)addKeyWithString:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v12 = [v9 lowercaseString];
  v10 = [v9 isEqualToString:@"İ"];

  if (v10)
  {

    v11 = @"i";
  }

  else
  {
    v11 = v12;
  }

  v13 = v11;
  [(TIKeyboardLayout *)self addKeyWithExactString:v11 frame:x, y, width, height];
}

- (void)ensureStringCapacity:(unint64_t)a3
{
  stringsCapacity = self->_stringsCapacity;
  if (stringsCapacity < a3)
  {
    v5 = 2 * stringsCapacity;
    if (v5 <= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = v5;
    }

    v7 = malloc_type_calloc(v6, 8uLL, 0x100004000313F17uLL);
    v8 = v7;
    strings = self->_strings;
    if (strings)
    {
      memcpy(v7, strings, self->_stringsSize);
      free(self->_strings);
    }

    self->_strings = v8;
    self->_stringsCapacity = v6;
  }
}

- (void)ensureFrameCapacity:(unint64_t)a3
{
  framesCapacity = self->_framesCapacity;
  if (framesCapacity < a3)
  {
    v5 = 2 * framesCapacity;
    if (v5 <= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = v5;
    }

    v7 = malloc_type_calloc(v6, 8uLL, 0x100004000313F17uLL);
    v8 = v7;
    frames = self->_frames;
    if (frames)
    {
      memcpy(v7, frames, 8 * self->_count);
      free(self->_frames);
    }

    self->_frames = v8;
    self->_framesCapacity = v6;
  }
}

- (CGRect)_decodeCGRectForKey:(id)a3 withDecoder:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 stringWithFormat:@"%@.origin.x", v7];
  [v6 decodeFloatForKey:v8];
  v10 = v9;

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.origin.y", v7];
  [v6 decodeFloatForKey:v11];
  v13 = v12;

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.size.width", v7];
  [v6 decodeFloatForKey:v14];
  v16 = v15;

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.size.height", v7];

  [v6 decodeFloatForKey:v17];
  v19 = v18;

  v20 = v10;
  v21 = v13;
  v22 = v16;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)_encodeCGRect:(CGRect)a3 forKey:(id)a4 withCoder:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = MEMORY[0x1E696AEC0];
  v11 = a5;
  v12 = a4;
  v13 = [v10 stringWithFormat:@"%@.origin.x", v12];
  *&v14 = x;
  [v11 encodeFloat:v13 forKey:v14];

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.origin.y", v12];
  *&y = y;
  LODWORD(v16) = LODWORD(y);
  [v11 encodeFloat:v15 forKey:v16];

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.size.width", v12];
  *&width = width;
  LODWORD(v18) = LODWORD(width);
  [v11 encodeFloat:v17 forKey:v18];

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.size.height", v12];

  *&height = height;
  LODWORD(v19) = LODWORD(height);
  [v11 encodeFloat:v20 forKey:v19];
}

- (unint64_t)hash
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__TIKeyboardLayout_hash__block_invoke;
  v5[3] = &unk_1E6F4C408;
  v5[4] = &v6;
  [(TIKeyboardLayout *)self enumerateKeysUsingBlock:v5];
  v3 = ((257 * ((257 * ((257 * ((257 * v7[3]) + self->_frame.origin.x * 100.0)) + self->_frame.origin.y * 100.0)) + self->_frame.size.width * 100.0)) + self->_frame.size.height * 100.0);
  v7[3] = v3;
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __24__TIKeyboardLayout_hash__block_invoke(uint64_t result, _BYTE *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = a2 + 1;
    do
    {
      *(*(*(result + 32) + 8) + 24) = 257 * *(*(*(result + 32) + 8) + 24) + v2;
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      v9 = v5->_usesTwoHands == self->_usesTwoHands && (count = v5->_count, count == self->_count) && (stringsSize = v5->_stringsSize, stringsSize == self->_stringsSize) && !memcmp(v5->_strings, self->_strings, stringsSize) && !memcmp(v6->_frames, self->_frames, 8 * count) && CGRectEqualToRect(v6->_frame, self->_frame) && v6->_shifted == self->_shifted;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  usesTwoHands = self->_usesTwoHands;
  v5 = a3;
  [v5 encodeBool:usesTwoHands forKey:@"usesTwoHands"];
  [v5 encodeBytes:self->_frames length:8 * self->_count forKey:@"frames"];
  [v5 encodeBytes:self->_strings length:self->_stringsSize forKey:@"strings"];
  [(TIKeyboardLayout *)self _encodeCGRect:@"frame" forKey:v5 withCoder:self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height];
  [v5 encodeBool:self->_shifted forKey:@"shifted"];
}

- (TIKeyboardLayout)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TIKeyboardLayout;
  v5 = [(TIKeyboardLayout *)&v15 init];
  if (v5)
  {
    v5->_usesTwoHands = [v4 decodeBoolForKey:@"usesTwoHands"];
    v14 = 0;
    v6 = [v4 decodeBytesForKey:@"frames" returnedLength:&v14];
    v5->_count = v14 >> 3;
    [(TIKeyboardLayout *)v5 ensureFrameCapacity:?];
    memcpy(v5->_frames, v6, 8 * v5->_count);
    v7 = [v4 decodeBytesForKey:@"strings" returnedLength:&v5->_stringsSize];
    [(TIKeyboardLayout *)v5 ensureStringCapacity:v5->_stringsSize];
    memcpy(v5->_strings, v7, v5->_stringsSize);
    stringsSize = v5->_stringsSize;
    if (stringsSize)
    {
      v5->_strings[stringsSize - 1] = 0;
    }

    [(TIKeyboardLayout *)v5 _decodeCGRectForKey:@"frame" withDecoder:v4];
    v5->_frame.origin.x = v9;
    v5->_frame.origin.y = v10;
    v5->_frame.size.width = v11;
    v5->_frame.size.height = v12;
    v5->_shifted = [v4 decodeBoolForKey:@"shifted"];
  }

  return v5;
}

- (TIKeyboardLayout)initWithCapacity:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = TIKeyboardLayout;
  v4 = [(TIKeyboardLayout *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(TIKeyboardLayout *)v4 ensureFrameCapacity:a3];
    [(TIKeyboardLayout *)v5 ensureStringCapacity:5 * a3];
    v6 = *(MEMORY[0x1E695F050] + 16);
    v5->_frame.origin = *MEMORY[0x1E695F050];
    v5->_frame.size = v6;
  }

  return v5;
}

@end