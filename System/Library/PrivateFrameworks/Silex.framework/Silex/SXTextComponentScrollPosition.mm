@interface SXTextComponentScrollPosition
+ (BOOL)jsonDictionaryRepresentationIsValid:(id)valid exactly:(BOOL)exactly;
- (SXTextComponentScrollPosition)initWithCoder:(id)coder;
- (SXTextComponentScrollPosition)initWithComponentIdentifier:(id)identifier canvasWidth:(double)width relativePageOffset:(double)offset characterIndex:(int64_t)index relativeTextOffset:(double)textOffset;
- (SXTextComponentScrollPosition)initWithDictionaryRepresentation:(id)representation exactly:(BOOL)exactly;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SXTextComponentScrollPosition

- (SXTextComponentScrollPosition)initWithComponentIdentifier:(id)identifier canvasWidth:(double)width relativePageOffset:(double)offset characterIndex:(int64_t)index relativeTextOffset:(double)textOffset
{
  v10.receiver = self;
  v10.super_class = SXTextComponentScrollPosition;
  result = [(SXComponentScrollPosition *)&v10 initWithComponentIdentifier:identifier canvasWidth:width relativePageOffset:offset];
  if (result)
  {
    result->_characterIndex = index;
    result->_relativeTextOffset = textOffset;
  }

  return result;
}

- (SXTextComponentScrollPosition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SXTextComponentScrollPosition;
  v5 = [(SXComponentScrollPosition *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_characterIndex = [coderCopy decodeIntegerForKey:@"characterIndex"];
    [coderCopy decodeDoubleForKey:@"relativeTextOffset"];
    v5->_relativeTextOffset = v6;
  }

  return v5;
}

+ (BOOL)jsonDictionaryRepresentationIsValid:(id)valid exactly:(BOOL)exactly
{
  validCopy = valid;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___SXTextComponentScrollPosition;
  v6 = 0;
  if (objc_msgSendSuper2(&v9, sel_jsonDictionaryRepresentationIsValid_exactly_, validCopy, 0))
  {
    v7 = [validCopy objectForKeyedSubscript:@"characterIndex"];
    v6 = v7 != 0;
  }

  return v6;
}

- (SXTextComponentScrollPosition)initWithDictionaryRepresentation:(id)representation exactly:(BOOL)exactly
{
  exactlyCopy = exactly;
  representationCopy = representation;
  if ([objc_opt_class() jsonDictionaryRepresentationIsValid:representationCopy exactly:exactlyCopy])
  {
    v13.receiver = self;
    v13.super_class = SXTextComponentScrollPosition;
    v7 = [(SXComponentScrollPosition *)&v13 initWithDictionaryRepresentation:representationCopy exactly:0];
    if (v7)
    {
      v8 = [representationCopy objectForKeyedSubscript:@"characterIndex"];
      v7->_characterIndex = [v8 integerValue];

      v9 = [representationCopy objectForKeyedSubscript:@"relativeTextOffset"];
      [v9 doubleValue];
      v7->_relativeTextOffset = v10;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = SXTextComponentScrollPosition;
  dictionaryRepresentation = [(SXComponentScrollPosition *)&v11 dictionaryRepresentation];
  v4 = dictionaryRepresentation;
  if (dictionaryRepresentation)
  {
    v5 = [dictionaryRepresentation mutableCopy];
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SXTextComponentScrollPosition;
  coderCopy = coder;
  [(SXComponentScrollPosition *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[SXTextComponentScrollPosition characterIndex](self forKey:{"characterIndex", v5.receiver, v5.super_class), @"characterIndex"}];
  [(SXTextComponentScrollPosition *)self relativeTextOffset];
  [coderCopy encodeDouble:@"relativeTextOffset" forKey:?];
}

@end