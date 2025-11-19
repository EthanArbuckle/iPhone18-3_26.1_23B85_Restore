@interface SXTextComponentScrollPosition
+ (BOOL)jsonDictionaryRepresentationIsValid:(id)a3 exactly:(BOOL)a4;
- (SXTextComponentScrollPosition)initWithCoder:(id)a3;
- (SXTextComponentScrollPosition)initWithComponentIdentifier:(id)a3 canvasWidth:(double)a4 relativePageOffset:(double)a5 characterIndex:(int64_t)a6 relativeTextOffset:(double)a7;
- (SXTextComponentScrollPosition)initWithDictionaryRepresentation:(id)a3 exactly:(BOOL)a4;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SXTextComponentScrollPosition

- (SXTextComponentScrollPosition)initWithComponentIdentifier:(id)a3 canvasWidth:(double)a4 relativePageOffset:(double)a5 characterIndex:(int64_t)a6 relativeTextOffset:(double)a7
{
  v10.receiver = self;
  v10.super_class = SXTextComponentScrollPosition;
  result = [(SXComponentScrollPosition *)&v10 initWithComponentIdentifier:a3 canvasWidth:a4 relativePageOffset:a5];
  if (result)
  {
    result->_characterIndex = a6;
    result->_relativeTextOffset = a7;
  }

  return result;
}

- (SXTextComponentScrollPosition)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SXTextComponentScrollPosition;
  v5 = [(SXComponentScrollPosition *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_characterIndex = [v4 decodeIntegerForKey:@"characterIndex"];
    [v4 decodeDoubleForKey:@"relativeTextOffset"];
    v5->_relativeTextOffset = v6;
  }

  return v5;
}

+ (BOOL)jsonDictionaryRepresentationIsValid:(id)a3 exactly:(BOOL)a4
{
  v5 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___SXTextComponentScrollPosition;
  v6 = 0;
  if (objc_msgSendSuper2(&v9, sel_jsonDictionaryRepresentationIsValid_exactly_, v5, 0))
  {
    v7 = [v5 objectForKeyedSubscript:@"characterIndex"];
    v6 = v7 != 0;
  }

  return v6;
}

- (SXTextComponentScrollPosition)initWithDictionaryRepresentation:(id)a3 exactly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([objc_opt_class() jsonDictionaryRepresentationIsValid:v6 exactly:v4])
  {
    v13.receiver = self;
    v13.super_class = SXTextComponentScrollPosition;
    v7 = [(SXComponentScrollPosition *)&v13 initWithDictionaryRepresentation:v6 exactly:0];
    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"characterIndex"];
      v7->_characterIndex = [v8 integerValue];

      v9 = [v6 objectForKeyedSubscript:@"relativeTextOffset"];
      [v9 doubleValue];
      v7->_relativeTextOffset = v10;
    }

    self = v7;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)dictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = SXTextComponentScrollPosition;
  v3 = [(SXComponentScrollPosition *)&v11 dictionaryRepresentation];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SXTextComponentScrollPosition characterIndex](self, "characterIndex")}];
    [v5 setObject:v6 forKeyedSubscript:@"characterIndex"];

    v7 = MEMORY[0x1E696AD98];
    [(SXTextComponentScrollPosition *)self relativeTextOffset];
    v8 = [v7 numberWithDouble:?];
    [v5 setObject:v8 forKeyedSubscript:@"relativeTextOffset"];

    v9 = [v5 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SXTextComponentScrollPosition;
  v4 = a3;
  [(SXComponentScrollPosition *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[SXTextComponentScrollPosition characterIndex](self forKey:{"characterIndex", v5.receiver, v5.super_class), @"characterIndex"}];
  [(SXTextComponentScrollPosition *)self relativeTextOffset];
  [v4 encodeDouble:@"relativeTextOffset" forKey:?];
}

@end