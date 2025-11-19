@interface RTITextStyling
+ (id)textStylingWithFontName:(id)a3 fontSize:(double)a4 fontWeight:(double)a5;
- (BOOL)isEqual:(id)a3;
- (RTITextStyling)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addAttributes:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTITextStyling

+ (id)textStylingWithFontName:(id)a3 fontSize:(double)a4 fontWeight:(double)a5
{
  v8 = a3;
  v9 = objc_alloc_init(a1);
  v10 = [v8 copy];

  v11 = *(v9 + 2);
  *(v9 + 2) = v10;

  v9[3] = a4;
  v9[4] = a5;

  return v9;
}

- (void)addAttributes:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    attributes = self->_attributes;
    if (!attributes)
    {
      v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
      v6 = self->_attributes;
      self->_attributes = v5;

      attributes = self->_attributes;
    }

    [(NSMutableDictionary *)attributes addEntriesFromDictionary:v7];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  v5 = [(RTITextStyling *)self fontName];
  [v4 encodeObject:v5 forKey:@"fontName"];

  [(RTITextStyling *)self fontSize];
  [v4 encodeDouble:@"fontSize" forKey:?];
  [(RTITextStyling *)self fontWeight];
  [v4 encodeDouble:@"fontWeight" forKey:?];
  v6 = [(RTITextStyling *)self attributes];
  [v4 encodeObject:v6 forKey:@"attributes"];
}

- (RTITextStyling)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v17.receiver = self;
  v17.super_class = RTITextStyling;
  v5 = [(RTITextStyling *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fontName"];
    fontName = v5->_fontName;
    v5->_fontName = v6;

    [v4 decodeDoubleForKey:@"fontSize"];
    v5->_fontSize = v8;
    [v4 decodeDoubleForKey:@"fontWeight"];
    v5->_fontWeight = v9;
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(RTITextStyling *)self fontName];
  [(RTITextStyling *)self fontSize];
  v6 = v5;
  [(RTITextStyling *)self fontWeight];
  v8 = [RTITextStyling textStylingWithFontName:v4 fontSize:v6 fontWeight:v7];

  v9 = [(RTITextStyling *)self attributes];
  [v8 addAttributes:v9];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = MEMORY[0x1E696AEC0];
      v8 = [(RTITextStyling *)self fontName];
      v9 = [(RTITextStyling *)v6 fontName];
      LODWORD(v7) = [v7 _string:v8 matchesString:v9];

      if (!v7 || ([(RTITextStyling *)self fontSize], v11 = v10, [(RTITextStyling *)v6 fontSize], v11 != v12) || ([(RTITextStyling *)self fontWeight], v14 = v13, [(RTITextStyling *)v6 fontWeight], v14 != v15))
      {
        v22 = 0;
LABEL_14:

        goto LABEL_15;
      }

      v16 = [(RTITextStyling *)self attributes];
      v17 = [(RTITextStyling *)v6 attributes];
      if (v16 == v17)
      {
        v22 = 1;
LABEL_20:

        goto LABEL_14;
      }

      v18 = [(RTITextStyling *)self attributes];
      v19 = [v18 count];
      if (v19 || (-[RTITextStyling attributes](v6, "attributes"), v3 = objc_claimAutoreleasedReturnValue(), [v3 count]))
      {
        v20 = [(RTITextStyling *)self attributes];
        v21 = [(RTITextStyling *)v6 attributes];
        v22 = [v20 isEqualToDictionary:v21];

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
  v4 = [(RTITextStyling *)self fontName];
  [v3 appendFormat:@"; fontName = %@", v4];

  [(RTITextStyling *)self fontSize];
  [v3 appendFormat:@"; fontSize = %f", v5];
  [(RTITextStyling *)self fontWeight];
  [v3 appendFormat:@"; fontWeight = %f", v6];
  v7 = [(RTITextStyling *)self attributes];
  [v3 appendFormat:@"; attributes = %@", v7];

  return v3;
}

@end