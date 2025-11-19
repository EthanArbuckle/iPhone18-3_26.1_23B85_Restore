@interface TUCaption
+ (double)averageConfidenceOverCaptions:(id)a3;
+ (id)combinedStringFromCaptions:(id)a3;
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCaption:(id)a3;
- (TUCaption)initWithCaption:(id)a3;
- (TUCaption)initWithCaptionsToken:(id)a3;
- (TUCaption)initWithCaptionsToken:(id)a3 utteranceStartTimestamp:(id)a4 utteranceDuration:(id)a5;
- (TUCaption)initWithCoder:(id)a3;
- (TUCaption)initWithConfidence:(double)a3 text:(id)a4;
- (TUCaption)initWithConfidence:(double)a3 text:(id)a4 utteranceStartTimestamp:(id)a5 utteranceDuration:(id)a6;
- (TUCaption)initWithText:(id)a3 confidence:(double)a4 range:(_NSRange)a5;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUCaption

- (TUCaption)initWithCaptionsToken:(id)a3 utteranceStartTimestamp:(id)a4 utteranceDuration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUCaption initWithCaptionsToken:utteranceStartTimestamp:utteranceDuration:]", @"token"}];
  }

  v11 = [(TUCaption *)self initWithCaptionsToken:v8];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_utteranceStartTimestamp, a4);
    objc_storeStrong(&v12->_utteranceDuration, a5);
  }

  return v12;
}

- (TUCaption)initWithCaptionsToken:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUCaption initWithCaptionsToken:]", @"token"}];
  }

  v12.receiver = self;
  v12.super_class = TUCaption;
  v5 = [(TUCaption *)&v12 init];
  if (v5)
  {
    [v4 confidence];
    v5->_confidence = v6;
    v7 = [v4 text];
    v8 = [v7 copy];
    text = v5->_text;
    v5->_text = v8;

    v5->_range.location = [v4 range];
    v5->_range.length = v10;
  }

  return v5;
}

- (TUCaption)initWithCaption:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TUCaption;
  v5 = [(TUCaption *)&v12 init];
  if (v5)
  {
    v6 = [v4 text];
    v7 = [v6 copy];
    text = v5->_text;
    v5->_text = v7;

    [v4 confidence];
    v5->_confidence = v9;
    v5->_range.location = [v4 range];
    v5->_range.length = v10;
  }

  return v5;
}

- (TUCaption)initWithConfidence:(double)a3 text:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = TUCaption;
  v7 = [(TUCaption *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_confidence = a3;
    v9 = [v6 copy];
    text = v8->_text;
    v8->_text = v9;
  }

  return v8;
}

- (TUCaption)initWithConfidence:(double)a3 text:(id)a4 utteranceStartTimestamp:(id)a5 utteranceDuration:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = TUCaption;
  v13 = [(TUCaption *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_confidence = a3;
    v15 = [v10 copy];
    text = v14->_text;
    v14->_text = v15;

    v17 = [v11 copy];
    utteranceStartTimestamp = v14->_utteranceStartTimestamp;
    v14->_utteranceStartTimestamp = v17;

    v19 = [v12 copy];
    utteranceDuration = v14->_utteranceDuration;
    v14->_utteranceDuration = v19;
  }

  return v14;
}

- (TUCaption)initWithText:(id)a3 confidence:(double)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a3;
  v15.receiver = self;
  v15.super_class = TUCaption;
  v10 = [(TUCaption *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_confidence = a4;
    v12 = [v9 copy];
    text = v11->_text;
    v11->_text = v12;

    v11->_range.location = location;
    v11->_range.length = length;
  }

  return v11;
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v8 = [a1 unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  text = self->_text;
  v5 = NSStringFromSelector(sel_text);
  [v12 encodeObject:text forKey:v5];

  confidence = self->_confidence;
  v7 = NSStringFromSelector(sel_confidence);
  [v12 encodeDouble:v7 forKey:confidence];

  utteranceDuration = self->_utteranceDuration;
  if (utteranceDuration)
  {
    v9 = NSStringFromSelector(sel_utteranceDuration);
    [v12 encodeObject:utteranceDuration forKey:v9];
  }

  utteranceStartTimestamp = self->_utteranceStartTimestamp;
  if (utteranceStartTimestamp)
  {
    v11 = NSStringFromSelector(sel_utteranceDuration);
    [v12 encodeObject:utteranceStartTimestamp forKey:v11];
  }

  [v12 encodeInt64:self->_range.length forKey:@"length"];
  [v12 encodeInt64:self->_range.location forKey:@"location"];
}

- (TUCaption)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = TUCaption;
  v5 = [(TUCaption *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_text);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    text = v5->_text;
    v5->_text = v8;

    v10 = NSStringFromSelector(sel_confidence);
    [v4 decodeDoubleForKey:v10];
    v5->_confidence = v11;

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_utteranceDuration);
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    utteranceDuration = v5->_utteranceDuration;
    v5->_utteranceDuration = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_utteranceStartTimestamp);
    v18 = [v4 decodeObjectOfClass:v16 forKey:v17];
    utteranceStartTimestamp = v5->_utteranceStartTimestamp;
    v5->_utteranceStartTimestamp = v18;

    v20 = [v4 decodeInt64ForKey:@"length"];
    v5->_range.location = [v4 decodeInt64ForKey:@"location"];
    v5->_range.length = v20;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUCaption allocWithZone:a3];

  return [(TUCaption *)v4 initWithCaption:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_confidence);
  [(TUCaption *)self confidence];
  [v3 appendFormat:@" %@=%f", v4, v5];

  [v3 appendFormat:@", "];
  v6 = [(TUCaption *)self utteranceDuration];

  if (v6)
  {
    v7 = [(TUCaption *)self utteranceDuration];
    [v3 appendFormat:@" utteranceDuration=%@", v7];
  }

  [v3 appendFormat:@", "];
  v8 = [(TUCaption *)self utteranceStartTimestamp];

  if (v8)
  {
    v9 = [(TUCaption *)self utteranceStartTimestamp];
    [v3 appendFormat:@" utteranceStartTimestamp=%@", v9];
  }

  [v3 appendString:@">"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(TUCaption *)self text];
  v4 = [v3 hash];
  [(TUCaption *)self confidence];
  v6 = v5;
  v7 = [(TUCaption *)self utteranceDuration];
  v8 = v4 ^ [v7 hash];
  v9 = [(TUCaption *)self utteranceStartTimestamp];
  v10 = v8 ^ [v9 hash];
  [(TUCaption *)self range];
  v12 = v10 ^ v11 ^ [(TUCaption *)self range];

  return v12 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCaption *)self isEqualToCaption:v4];
  }

  return v5;
}

- (BOOL)isEqualToCaption:(id)a3
{
  v4 = a3;
  text = self->_text;
  v6 = [v4 text];
  if (TUObjectsAreEqualOrNil(text, v6) && (confidence = self->_confidence, [v4 confidence], confidence == v8))
  {
    utteranceDuration = self->_utteranceDuration;
    v10 = [v4 utteranceDuration];
    if (TUObjectsAreEqualOrNil(utteranceDuration, v10))
    {
      utteranceStartTimestamp = self->_utteranceStartTimestamp;
      v12 = [v4 utteranceStartTimestamp];
      if (TUObjectsAreEqualOrNil(utteranceStartTimestamp, v12) && (location = self->_range.location, location == [v4 range]))
      {
        length = self->_range.length;
        [v4 range];
        v16 = length == v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)combinedStringFromCaptions:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__TUCaption_combinedStringFromCaptions___block_invoke;
  v9[3] = &unk_1E7425D80;
  v10 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v7 = [v6 componentsJoinedByString:@" "];

  return v7;
}

void __40__TUCaption_combinedStringFromCaptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 text];
  [v2 addObject:v3];
}

+ (double)averageConfidenceOverCaptions:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__TUCaption_averageConfidenceOverCaptions___block_invoke;
  v7[3] = &unk_1E7425DA8;
  v7[4] = &v8;
  [v3 enumerateObjectsUsingBlock:v7];
  v4 = v9[3];
  v5 = v4 / [v3 count];
  _Block_object_dispose(&v8, 8);

  return v5;
}

double __43__TUCaption_averageConfidenceOverCaptions___block_invoke(uint64_t a1, void *a2)
{
  [a2 confidence];
  v3 = *(*(a1 + 32) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end