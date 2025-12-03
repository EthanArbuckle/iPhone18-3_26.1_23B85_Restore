@interface SXComponentScrollPosition
+ (BOOL)jsonDictionaryRepresentationIsValid:(id)valid exactly:(BOOL)exactly;
- (SXComponentScrollPosition)initWithCoder:(id)coder;
- (SXComponentScrollPosition)initWithComponentIdentifier:(id)identifier canvasWidth:(double)width relativePageOffset:(double)offset;
- (SXComponentScrollPosition)initWithDictionaryRepresentation:(id)representation exactly:(BOOL)exactly;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SXComponentScrollPosition

- (SXComponentScrollPosition)initWithComponentIdentifier:(id)identifier canvasWidth:(double)width relativePageOffset:(double)offset
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SXComponentScrollPosition;
  v10 = [(SXComponentScrollPosition *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_componentIdentifier, identifier);
    v11->_canvasWidth = width;
    v11->_relativePageOffset = offset;
  }

  return v11;
}

- (SXComponentScrollPosition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SXComponentScrollPosition;
  v5 = [(SXScrollPosition *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"componentIdentifier"];
    componentIdentifier = v5->_componentIdentifier;
    v5->_componentIdentifier = v6;

    [coderCopy decodeFloatForKey:@"canvasWidth"];
    v5->_canvasWidth = v8;
    [coderCopy decodeFloatForKey:@"relativePageOffset"];
    v5->_relativePageOffset = v9;
  }

  return v5;
}

+ (BOOL)jsonDictionaryRepresentationIsValid:(id)valid exactly:(BOOL)exactly
{
  validCopy = valid;
  v6 = validCopy;
  if (exactly)
  {
    allKeys = [validCopy allKeys];
    v8 = [allKeys count] == 3;
  }

  else
  {
    allKeys = [validCopy objectForKeyedSubscript:@"componentIdentifier"];
    if (allKeys)
    {
      v9 = [v6 objectForKeyedSubscript:@"canvasWidth"];
      if (v9)
      {
        v10 = [v6 objectForKeyedSubscript:@"relativePageOffset"];
        v8 = v10 != 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (SXComponentScrollPosition)initWithDictionaryRepresentation:(id)representation exactly:(BOOL)exactly
{
  exactlyCopy = exactly;
  representationCopy = representation;
  if ([objc_opt_class() jsonDictionaryRepresentationIsValid:representationCopy exactly:exactlyCopy])
  {
    v7 = [representationCopy objectForKeyedSubscript:@"componentIdentifier"];
    v8 = [representationCopy objectForKeyedSubscript:@"canvasWidth"];
    [v8 floatValue];
    v10 = v9;
    v11 = [representationCopy objectForKeyedSubscript:@"relativePageOffset"];
    [v11 floatValue];
    v13 = [(SXComponentScrollPosition *)self initWithComponentIdentifier:v7 canvasWidth:v10 relativePageOffset:v12];

    self = v13;
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
  v12[3] = *MEMORY[0x1E69E9840];
  componentIdentifier = [(SXComponentScrollPosition *)self componentIdentifier];
  v4 = componentIdentifier;
  if (componentIdentifier)
  {
    v12[0] = componentIdentifier;
    v11[0] = @"componentIdentifier";
    v11[1] = @"canvasWidth";
    v5 = MEMORY[0x1E696AD98];
    [(SXComponentScrollPosition *)self canvasWidth];
    v6 = [v5 numberWithDouble:?];
    v12[1] = v6;
    v11[2] = @"relativePageOffset";
    v7 = MEMORY[0x1E696AD98];
    [(SXComponentScrollPosition *)self relativePageOffset];
    v8 = [v7 numberWithDouble:?];
    v12[2] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  componentIdentifier = [(SXComponentScrollPosition *)self componentIdentifier];
  [coderCopy encodeObject:componentIdentifier forKey:@"componentIdentifier"];

  [(SXComponentScrollPosition *)self canvasWidth];
  *&v5 = v5;
  [coderCopy encodeFloat:@"canvasWidth" forKey:v5];
  [(SXComponentScrollPosition *)self relativePageOffset];
  *&v6 = v6;
  [coderCopy encodeFloat:@"relativePageOffset" forKey:v6];
}

@end