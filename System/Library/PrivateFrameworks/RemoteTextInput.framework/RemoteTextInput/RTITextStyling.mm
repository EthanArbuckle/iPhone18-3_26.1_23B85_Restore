@interface RTITextStyling
+ (id)textStylingWithFontName:(id)name fontSize:(double)size fontWeight:(double)weight;
- (BOOL)isEqual:(id)equal;
- (RTITextStyling)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addAttributes:(id)attributes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTITextStyling

+ (id)textStylingWithFontName:(id)name fontSize:(double)size fontWeight:(double)weight
{
  nameCopy = name;
  v9 = objc_alloc_init(self);
  v10 = [nameCopy copy];

  v11 = *(v9 + 2);
  *(v9 + 2) = v10;

  v9[3] = size;
  v9[4] = weight;

  return v9;
}

- (void)addAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([attributesCopy count])
  {
    attributes = self->_attributes;
    if (!attributes)
    {
      v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(attributesCopy, "count")}];
      v6 = self->_attributes;
      self->_attributes = v5;

      attributes = self->_attributes;
    }

    [(NSMutableDictionary *)attributes addEntriesFromDictionary:attributesCopy];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  fontName = [(RTITextStyling *)self fontName];
  [coderCopy encodeObject:fontName forKey:@"fontName"];

  [(RTITextStyling *)self fontSize];
  [coderCopy encodeDouble:@"fontSize" forKey:?];
  [(RTITextStyling *)self fontWeight];
  [coderCopy encodeDouble:@"fontWeight" forKey:?];
  attributes = [(RTITextStyling *)self attributes];
  [coderCopy encodeObject:attributes forKey:@"attributes"];
}

- (RTITextStyling)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v17.receiver = self;
  v17.super_class = RTITextStyling;
  v5 = [(RTITextStyling *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fontName"];
    fontName = v5->_fontName;
    v5->_fontName = v6;

    [coderCopy decodeDoubleForKey:@"fontSize"];
    v5->_fontSize = v8;
    [coderCopy decodeDoubleForKey:@"fontWeight"];
    v5->_fontWeight = v9;
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  fontName = [(RTITextStyling *)self fontName];
  [(RTITextStyling *)self fontSize];
  v6 = v5;
  [(RTITextStyling *)self fontWeight];
  v8 = [RTITextStyling textStylingWithFontName:fontName fontSize:v6 fontWeight:v7];

  attributes = [(RTITextStyling *)self attributes];
  [v8 addAttributes:attributes];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = MEMORY[0x1E696AEC0];
      fontName = [(RTITextStyling *)self fontName];
      fontName2 = [(RTITextStyling *)v6 fontName];
      LODWORD(v7) = [v7 _string:fontName matchesString:fontName2];

      if (!v7 || ([(RTITextStyling *)self fontSize], v11 = v10, [(RTITextStyling *)v6 fontSize], v11 != v12) || ([(RTITextStyling *)self fontWeight], v14 = v13, [(RTITextStyling *)v6 fontWeight], v14 != v15))
      {
        v22 = 0;
LABEL_14:

        goto LABEL_15;
      }

      attributes = [(RTITextStyling *)self attributes];
      attributes2 = [(RTITextStyling *)v6 attributes];
      if (attributes == attributes2)
      {
        v22 = 1;
LABEL_20:

        goto LABEL_14;
      }

      attributes3 = [(RTITextStyling *)self attributes];
      v19 = [attributes3 count];
      if (v19 || (-[RTITextStyling attributes](v6, "attributes"), v3 = objc_claimAutoreleasedReturnValue(), [v3 count]))
      {
        attributes4 = [(RTITextStyling *)self attributes];
        attributes5 = [(RTITextStyling *)v6 attributes];
        v22 = [attributes4 isEqualToDictionary:attributes5];

        if (v19)
        {
LABEL_19:

          goto LABEL_20;
        }
      }

      else
      {
        v22 = 1;
      }

      goto LABEL_19;
    }

    v22 = 0;
  }

LABEL_15:

  return v22;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  fontName = [(RTITextStyling *)self fontName];
  [v3 appendFormat:@"; fontName = %@", fontName];

  [(RTITextStyling *)self fontSize];
  [v3 appendFormat:@"; fontSize = %f", v5];
  [(RTITextStyling *)self fontWeight];
  [v3 appendFormat:@"; fontWeight = %f", v6];
  attributes = [(RTITextStyling *)self attributes];
  [v3 appendFormat:@"; attributes = %@", attributes];

  return v3;
}

@end