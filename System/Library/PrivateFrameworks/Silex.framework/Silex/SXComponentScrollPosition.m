@interface SXComponentScrollPosition
+ (BOOL)jsonDictionaryRepresentationIsValid:(id)a3 exactly:(BOOL)a4;
- (SXComponentScrollPosition)initWithCoder:(id)a3;
- (SXComponentScrollPosition)initWithComponentIdentifier:(id)a3 canvasWidth:(double)a4 relativePageOffset:(double)a5;
- (SXComponentScrollPosition)initWithDictionaryRepresentation:(id)a3 exactly:(BOOL)a4;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SXComponentScrollPosition

- (SXComponentScrollPosition)initWithComponentIdentifier:(id)a3 canvasWidth:(double)a4 relativePageOffset:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = SXComponentScrollPosition;
  v10 = [(SXComponentScrollPosition *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_componentIdentifier, a3);
    v11->_canvasWidth = a4;
    v11->_relativePageOffset = a5;
  }

  return v11;
}

- (SXComponentScrollPosition)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SXComponentScrollPosition;
  v5 = [(SXScrollPosition *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"componentIdentifier"];
    componentIdentifier = v5->_componentIdentifier;
    v5->_componentIdentifier = v6;

    [v4 decodeFloatForKey:@"canvasWidth"];
    v5->_canvasWidth = v8;
    [v4 decodeFloatForKey:@"relativePageOffset"];
    v5->_relativePageOffset = v9;
  }

  return v5;
}

+ (BOOL)jsonDictionaryRepresentationIsValid:(id)a3 exactly:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = [v5 allKeys];
    v8 = [v7 count] == 3;
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:@"componentIdentifier"];
    if (v7)
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

- (SXComponentScrollPosition)initWithDictionaryRepresentation:(id)a3 exactly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([objc_opt_class() jsonDictionaryRepresentationIsValid:v6 exactly:v4])
  {
    v7 = [v6 objectForKeyedSubscript:@"componentIdentifier"];
    v8 = [v6 objectForKeyedSubscript:@"canvasWidth"];
    [v8 floatValue];
    v10 = v9;
    v11 = [v6 objectForKeyedSubscript:@"relativePageOffset"];
    [v11 floatValue];
    v13 = [(SXComponentScrollPosition *)self initWithComponentIdentifier:v7 canvasWidth:v10 relativePageOffset:v12];

    self = v13;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = [(SXComponentScrollPosition *)self componentIdentifier];
  v4 = v3;
  if (v3)
  {
    v12[0] = v3;
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

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(SXComponentScrollPosition *)self componentIdentifier];
  [v7 encodeObject:v4 forKey:@"componentIdentifier"];

  [(SXComponentScrollPosition *)self canvasWidth];
  *&v5 = v5;
  [v7 encodeFloat:@"canvasWidth" forKey:v5];
  [(SXComponentScrollPosition *)self relativePageOffset];
  *&v6 = v6;
  [v7 encodeFloat:@"relativePageOffset" forKey:v6];
}

@end