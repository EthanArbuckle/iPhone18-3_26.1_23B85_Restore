@interface TIKeyboardLayout
- (BOOL)isEqual:(id)equal;
- (CGRect)_decodeCGRectForKey:(id)key withDecoder:(id)decoder;
- (CGRect)frame;
- (TIKeyboardLayout)initWithCapacity:(unint64_t)capacity;
- (TIKeyboardLayout)initWithCoder:(id)coder;
- (id)description;
- (int64_t)keyContainingPoint:(CGPoint)point;
- (unint64_t)hash;
- (void)_encodeCGRect:(CGRect)rect forKey:(id)key withCoder:(id)coder;
- (void)addKeyWithExactString:(id)string frame:(CGRect)frame;
- (void)addKeyWithString:(id)string frame:(CGRect)frame;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)ensureFrameCapacity:(unint64_t)capacity;
- (void)ensureStringCapacity:(unint64_t)capacity;
- (void)enumerateKeysUsingBlock:(id)block;
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

- (int64_t)keyContainingPoint:(CGPoint)point
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__TIKeyboardLayout_keyContainingPoint___block_invoke;
  v5[3] = &unk_1E6F4C430;
  pointCopy = point;
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

- (void)enumerateKeysUsingBlock:(id)block
{
  blockCopy = block;
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
      blockCopy[2](blockCopy, strings, v5++, &v9, v7, (v7 >> 16), ((v7 >> 16) >> 16), (v7 >> 48));
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

- (void)addKeyWithExactString:(id)string frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  count = self->_count;
  stringCopy = string;
  [(TIKeyboardLayout *)self ensureFrameCapacity:count + 1];
  v12 = self->_count;
  frames = self->_frames;
  self->_count = v12 + 1;
  frames[v12] = ((width << 32) | (height << 48) | (y << 16) | x);
  uTF8String = [stringCopy UTF8String];

  v14 = strlen(uTF8String) + 1;
  [(TIKeyboardLayout *)self ensureStringCapacity:self->_stringsSize + v14];
  strlcpy(&self->_strings[self->_stringsSize], uTF8String, v14);
  self->_stringsSize += v14;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  self->_frame = CGRectUnion(self->_frame, v15);
}

- (void)addKeyWithString:(id)string frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  stringCopy = string;
  lowercaseString = [stringCopy lowercaseString];
  v10 = [stringCopy isEqualToString:@"İ"];

  if (v10)
  {

    v11 = @"i";
  }

  else
  {
    v11 = lowercaseString;
  }

  v13 = v11;
  [(TIKeyboardLayout *)self addKeyWithExactString:v11 frame:x, y, width, height];
}

- (void)ensureStringCapacity:(unint64_t)capacity
{
  stringsCapacity = self->_stringsCapacity;
  if (stringsCapacity < capacity)
  {
    v5 = 2 * stringsCapacity;
    if (v5 <= capacity)
    {
      capacityCopy = capacity;
    }

    else
    {
      capacityCopy = v5;
    }

    v7 = malloc_type_calloc(capacityCopy, 8uLL, 0x100004000313F17uLL);
    v8 = v7;
    strings = self->_strings;
    if (strings)
    {
      memcpy(v7, strings, self->_stringsSize);
      free(self->_strings);
    }

    self->_strings = v8;
    self->_stringsCapacity = capacityCopy;
  }
}

- (void)ensureFrameCapacity:(unint64_t)capacity
{
  framesCapacity = self->_framesCapacity;
  if (framesCapacity < capacity)
  {
    v5 = 2 * framesCapacity;
    if (v5 <= capacity)
    {
      capacityCopy = capacity;
    }

    else
    {
      capacityCopy = v5;
    }

    v7 = malloc_type_calloc(capacityCopy, 8uLL, 0x100004000313F17uLL);
    v8 = v7;
    frames = self->_frames;
    if (frames)
    {
      memcpy(v7, frames, 8 * self->_count);
      free(self->_frames);
    }

    self->_frames = v8;
    self->_framesCapacity = capacityCopy;
  }
}

- (CGRect)_decodeCGRectForKey:(id)key withDecoder:(id)decoder
{
  v5 = MEMORY[0x1E696AEC0];
  decoderCopy = decoder;
  keyCopy = key;
  keyCopy = [v5 stringWithFormat:@"%@.origin.x", keyCopy];
  [decoderCopy decodeFloatForKey:keyCopy];
  v10 = v9;

  keyCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.origin.y", keyCopy];
  [decoderCopy decodeFloatForKey:keyCopy2];
  v13 = v12;

  keyCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.size.width", keyCopy];
  [decoderCopy decodeFloatForKey:keyCopy3];
  v16 = v15;

  keyCopy4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.size.height", keyCopy];

  [decoderCopy decodeFloatForKey:keyCopy4];
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

- (void)_encodeCGRect:(CGRect)rect forKey:(id)key withCoder:(id)coder
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = MEMORY[0x1E696AEC0];
  coderCopy = coder;
  keyCopy = key;
  keyCopy = [v10 stringWithFormat:@"%@.origin.x", keyCopy];
  *&v14 = x;
  [coderCopy encodeFloat:keyCopy forKey:v14];

  keyCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.origin.y", keyCopy];
  *&y = y;
  LODWORD(v16) = LODWORD(y);
  [coderCopy encodeFloat:keyCopy2 forKey:v16];

  keyCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.size.width", keyCopy];
  *&width = width;
  LODWORD(v18) = LODWORD(width);
  [coderCopy encodeFloat:keyCopy3 forKey:v18];

  keyCopy4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.size.height", keyCopy];

  *&height = height;
  LODWORD(v19) = LODWORD(height);
  [coderCopy encodeFloat:keyCopy4 forKey:v19];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  usesTwoHands = self->_usesTwoHands;
  coderCopy = coder;
  [coderCopy encodeBool:usesTwoHands forKey:@"usesTwoHands"];
  [coderCopy encodeBytes:self->_frames length:8 * self->_count forKey:@"frames"];
  [coderCopy encodeBytes:self->_strings length:self->_stringsSize forKey:@"strings"];
  [(TIKeyboardLayout *)self _encodeCGRect:@"frame" forKey:coderCopy withCoder:self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height];
  [coderCopy encodeBool:self->_shifted forKey:@"shifted"];
}

- (TIKeyboardLayout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TIKeyboardLayout;
  v5 = [(TIKeyboardLayout *)&v15 init];
  if (v5)
  {
    v5->_usesTwoHands = [coderCopy decodeBoolForKey:@"usesTwoHands"];
    v14 = 0;
    v6 = [coderCopy decodeBytesForKey:@"frames" returnedLength:&v14];
    v5->_count = v14 >> 3;
    [(TIKeyboardLayout *)v5 ensureFrameCapacity:?];
    memcpy(v5->_frames, v6, 8 * v5->_count);
    v7 = [coderCopy decodeBytesForKey:@"strings" returnedLength:&v5->_stringsSize];
    [(TIKeyboardLayout *)v5 ensureStringCapacity:v5->_stringsSize];
    memcpy(v5->_strings, v7, v5->_stringsSize);
    stringsSize = v5->_stringsSize;
    if (stringsSize)
    {
      v5->_strings[stringsSize - 1] = 0;
    }

    [(TIKeyboardLayout *)v5 _decodeCGRectForKey:@"frame" withDecoder:coderCopy];
    v5->_frame.origin.x = v9;
    v5->_frame.origin.y = v10;
    v5->_frame.size.width = v11;
    v5->_frame.size.height = v12;
    v5->_shifted = [coderCopy decodeBoolForKey:@"shifted"];
  }

  return v5;
}

- (TIKeyboardLayout)initWithCapacity:(unint64_t)capacity
{
  v8.receiver = self;
  v8.super_class = TIKeyboardLayout;
  v4 = [(TIKeyboardLayout *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(TIKeyboardLayout *)v4 ensureFrameCapacity:capacity];
    [(TIKeyboardLayout *)v5 ensureStringCapacity:5 * capacity];
    v6 = *(MEMORY[0x1E695F050] + 16);
    v5->_frame.origin = *MEMORY[0x1E695F050];
    v5->_frame.size = v6;
  }

  return v5;
}

@end