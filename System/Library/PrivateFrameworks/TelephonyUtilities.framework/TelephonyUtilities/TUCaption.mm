@interface TUCaption
+ (double)averageConfidenceOverCaptions:(id)captions;
+ (id)combinedStringFromCaptions:(id)captions;
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCaption:(id)caption;
- (TUCaption)initWithCaption:(id)caption;
- (TUCaption)initWithCaptionsToken:(id)token;
- (TUCaption)initWithCaptionsToken:(id)token utteranceStartTimestamp:(id)timestamp utteranceDuration:(id)duration;
- (TUCaption)initWithCoder:(id)coder;
- (TUCaption)initWithConfidence:(double)confidence text:(id)text;
- (TUCaption)initWithConfidence:(double)confidence text:(id)text utteranceStartTimestamp:(id)timestamp utteranceDuration:(id)duration;
- (TUCaption)initWithText:(id)text confidence:(double)confidence range:(_NSRange)range;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUCaption

- (TUCaption)initWithCaptionsToken:(id)token utteranceStartTimestamp:(id)timestamp utteranceDuration:(id)duration
{
  tokenCopy = token;
  timestampCopy = timestamp;
  durationCopy = duration;
  if (!tokenCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUCaption initWithCaptionsToken:utteranceStartTimestamp:utteranceDuration:]", @"token"}];
  }

  v11 = [(TUCaption *)self initWithCaptionsToken:tokenCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_utteranceStartTimestamp, timestamp);
    objc_storeStrong(&v12->_utteranceDuration, duration);
  }

  return v12;
}

- (TUCaption)initWithCaptionsToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUCaption initWithCaptionsToken:]", @"token"}];
  }

  v12.receiver = self;
  v12.super_class = TUCaption;
  v5 = [(TUCaption *)&v12 init];
  if (v5)
  {
    [tokenCopy confidence];
    v5->_confidence = v6;
    text = [tokenCopy text];
    v8 = [text copy];
    text = v5->_text;
    v5->_text = v8;

    v5->_range.location = [tokenCopy range];
    v5->_range.length = v10;
  }

  return v5;
}

- (TUCaption)initWithCaption:(id)caption
{
  captionCopy = caption;
  v12.receiver = self;
  v12.super_class = TUCaption;
  v5 = [(TUCaption *)&v12 init];
  if (v5)
  {
    text = [captionCopy text];
    v7 = [text copy];
    text = v5->_text;
    v5->_text = v7;

    [captionCopy confidence];
    v5->_confidence = v9;
    v5->_range.location = [captionCopy range];
    v5->_range.length = v10;
  }

  return v5;
}

- (TUCaption)initWithConfidence:(double)confidence text:(id)text
{
  textCopy = text;
  v12.receiver = self;
  v12.super_class = TUCaption;
  v7 = [(TUCaption *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_confidence = confidence;
    v9 = [textCopy copy];
    text = v8->_text;
    v8->_text = v9;
  }

  return v8;
}

- (TUCaption)initWithConfidence:(double)confidence text:(id)text utteranceStartTimestamp:(id)timestamp utteranceDuration:(id)duration
{
  textCopy = text;
  timestampCopy = timestamp;
  durationCopy = duration;
  v22.receiver = self;
  v22.super_class = TUCaption;
  v13 = [(TUCaption *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_confidence = confidence;
    v15 = [textCopy copy];
    text = v14->_text;
    v14->_text = v15;

    v17 = [timestampCopy copy];
    utteranceStartTimestamp = v14->_utteranceStartTimestamp;
    v14->_utteranceStartTimestamp = v17;

    v19 = [durationCopy copy];
    utteranceDuration = v14->_utteranceDuration;
    v14->_utteranceDuration = v19;
  }

  return v14;
}

- (TUCaption)initWithText:(id)text confidence:(double)confidence range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v15.receiver = self;
  v15.super_class = TUCaption;
  v10 = [(TUCaption *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_confidence = confidence;
    v12 = [textCopy copy];
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

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  text = self->_text;
  v5 = NSStringFromSelector(sel_text);
  [coderCopy encodeObject:text forKey:v5];

  confidence = self->_confidence;
  v7 = NSStringFromSelector(sel_confidence);
  [coderCopy encodeDouble:v7 forKey:confidence];

  utteranceDuration = self->_utteranceDuration;
  if (utteranceDuration)
  {
    v9 = NSStringFromSelector(sel_utteranceDuration);
    [coderCopy encodeObject:utteranceDuration forKey:v9];
  }

  utteranceStartTimestamp = self->_utteranceStartTimestamp;
  if (utteranceStartTimestamp)
  {
    v11 = NSStringFromSelector(sel_utteranceDuration);
    [coderCopy encodeObject:utteranceStartTimestamp forKey:v11];
  }

  [coderCopy encodeInt64:self->_range.length forKey:@"length"];
  [coderCopy encodeInt64:self->_range.location forKey:@"location"];
}

- (TUCaption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = TUCaption;
  v5 = [(TUCaption *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_text);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    text = v5->_text;
    v5->_text = v8;

    v10 = NSStringFromSelector(sel_confidence);
    [coderCopy decodeDoubleForKey:v10];
    v5->_confidence = v11;

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_utteranceDuration);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    utteranceDuration = v5->_utteranceDuration;
    v5->_utteranceDuration = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_utteranceStartTimestamp);
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
    utteranceStartTimestamp = v5->_utteranceStartTimestamp;
    v5->_utteranceStartTimestamp = v18;

    v20 = [coderCopy decodeInt64ForKey:@"length"];
    v5->_range.location = [coderCopy decodeInt64ForKey:@"location"];
    v5->_range.length = v20;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUCaption allocWithZone:zone];

  return [(TUCaption *)v4 initWithCaption:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_confidence);
  [(TUCaption *)self confidence];
  [v3 appendFormat:@" %@=%f", v4, v5];

  [v3 appendFormat:@", "];
  utteranceDuration = [(TUCaption *)self utteranceDuration];

  if (utteranceDuration)
  {
    utteranceDuration2 = [(TUCaption *)self utteranceDuration];
    [v3 appendFormat:@" utteranceDuration=%@", utteranceDuration2];
  }

  [v3 appendFormat:@", "];
  utteranceStartTimestamp = [(TUCaption *)self utteranceStartTimestamp];

  if (utteranceStartTimestamp)
  {
    utteranceStartTimestamp2 = [(TUCaption *)self utteranceStartTimestamp];
    [v3 appendFormat:@" utteranceStartTimestamp=%@", utteranceStartTimestamp2];
  }

  [v3 appendString:@">"];

  return v3;
}

- (unint64_t)hash
{
  text = [(TUCaption *)self text];
  v4 = [text hash];
  [(TUCaption *)self confidence];
  v6 = v5;
  utteranceDuration = [(TUCaption *)self utteranceDuration];
  v8 = v4 ^ [utteranceDuration hash];
  utteranceStartTimestamp = [(TUCaption *)self utteranceStartTimestamp];
  v10 = v8 ^ [utteranceStartTimestamp hash];
  [(TUCaption *)self range];
  v12 = v10 ^ v11 ^ [(TUCaption *)self range];

  return v12 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCaption *)self isEqualToCaption:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCaption:(id)caption
{
  captionCopy = caption;
  text = self->_text;
  text = [captionCopy text];
  if (TUObjectsAreEqualOrNil(text, text) && (confidence = self->_confidence, [captionCopy confidence], confidence == v8))
  {
    utteranceDuration = self->_utteranceDuration;
    utteranceDuration = [captionCopy utteranceDuration];
    if (TUObjectsAreEqualOrNil(utteranceDuration, utteranceDuration))
    {
      utteranceStartTimestamp = self->_utteranceStartTimestamp;
      utteranceStartTimestamp = [captionCopy utteranceStartTimestamp];
      if (TUObjectsAreEqualOrNil(utteranceStartTimestamp, utteranceStartTimestamp) && (location = self->_range.location, location == [captionCopy range]))
      {
        length = self->_range.length;
        [captionCopy range];
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

+ (id)combinedStringFromCaptions:(id)captions
{
  v3 = MEMORY[0x1E695DF70];
  captionsCopy = captions;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__TUCaption_combinedStringFromCaptions___block_invoke;
  v9[3] = &unk_1E7425D80;
  v10 = v5;
  v6 = v5;
  [captionsCopy enumerateObjectsUsingBlock:v9];

  v7 = [v6 componentsJoinedByString:@" "];

  return v7;
}

void __40__TUCaption_combinedStringFromCaptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 text];
  [v2 addObject:v3];
}

+ (double)averageConfidenceOverCaptions:(id)captions
{
  captionsCopy = captions;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__TUCaption_averageConfidenceOverCaptions___block_invoke;
  v7[3] = &unk_1E7425DA8;
  v7[4] = &v8;
  [captionsCopy enumerateObjectsUsingBlock:v7];
  v4 = v9[3];
  v5 = v4 / [captionsCopy count];
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