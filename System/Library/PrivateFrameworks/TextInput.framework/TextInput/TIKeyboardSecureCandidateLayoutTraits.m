@interface TIKeyboardSecureCandidateLayoutTraits
- (BOOL)isEqual:(id)a3;
- (TIKeyboardSecureCandidateLayoutTraits)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIKeyboardSecureCandidateLayoutTraits

- (BOOL)isEqual:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(TIKeyboardSecureCandidateLayoutTraits *)self forceSingleLineLayout];
    if (v6 == [v5 forceSingleLineLayout] && (v7 = -[TIKeyboardSecureCandidateLayoutTraits headerInliningBehavior](self, "headerInliningBehavior"), v7 == objc_msgSend(v5, "headerInliningBehavior")))
    {
      v8 = 0;
      v9 = 0;
      v14 = sel_headerTraitsInOnlyLine;
      v15 = sel_headerTraitsInFirstLine;
      v16 = sel_inputTraitsInOnlyLine;
      v17 = sel_inputTraitsInFirstAndSecondLines;
      v18 = sel_inputTraitsInSecondLine;
      while (1)
      {
        v10 = (&v14)[v9];
        v11 = [self v10];
        v12 = [v5 v10];
        if (v11 != v12 && ![v11 isEqual:v12])
        {
          break;
        }

        v8 = v9++ > 3;
        if (v9 == 5)
        {
          v8 = 1;
          goto LABEL_11;
        }
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_11:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v4 = v3;
  if (self->_forceSingleLineLayout)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"; forceSingleLineLayout = %@", v5];
  v6 = self->_headerInliningBehavior - 1;
  if (v6 >= 3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i [unknown enum value]", self->_headerInliningBehavior];
  }

  else
  {
    v7 = off_1E6F4D728[v6];
  }

  [v4 appendFormat:@"; headerInliningBehavior = %@", v7];
  if (self->_headerTraitsInOnlyLine)
  {
    [v4 appendFormat:@"; headerTraitsInOnlyLine = %@", self->_headerTraitsInOnlyLine];
  }

  if (self->_headerTraitsInFirstLine)
  {
    [v4 appendFormat:@"; headerTraitsInFirstLine = %@", self->_headerTraitsInFirstLine];
  }

  if (self->_inputTraitsInOnlyLine)
  {
    [v4 appendFormat:@"; inputTraitsInOnlyLine = %@", self->_inputTraitsInOnlyLine];
  }

  if (self->_inputTraitsInFirstAndSecondLines)
  {
    [v4 appendFormat:@"; inputTraitsInFirstAndSecondLine = %@", self->_inputTraitsInFirstAndSecondLines];
  }

  if (self->_inputTraitsInSecondLine)
  {
    [v4 appendFormat:@"; inputTraitsInSecondLine = %@", self->_inputTraitsInSecondLine];
  }

  [v4 appendString:@">"];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  [v10 encodeBool:self->_forceSingleLineLayout forKey:@"forceSingleLineLayout"];
  [v10 encodeInt32:self->_headerInliningBehavior forKey:@"headerInliningBehavior"];
  headerTraitsInOnlyLine = self->_headerTraitsInOnlyLine;
  if (headerTraitsInOnlyLine)
  {
    [v10 encodeObject:headerTraitsInOnlyLine forKey:@"headerTraitsInOnlyLine"];
  }

  headerTraitsInFirstLine = self->_headerTraitsInFirstLine;
  if (headerTraitsInFirstLine)
  {
    [v10 encodeObject:headerTraitsInFirstLine forKey:@"headerTraitsInFirstLine"];
  }

  inputTraitsInOnlyLine = self->_inputTraitsInOnlyLine;
  v7 = v10;
  if (inputTraitsInOnlyLine)
  {
    [v10 encodeObject:inputTraitsInOnlyLine forKey:@"inputTraitsInOnlyLine"];
    v7 = v10;
  }

  inputTraitsInFirstAndSecondLines = self->_inputTraitsInFirstAndSecondLines;
  if (inputTraitsInFirstAndSecondLines)
  {
    [v10 encodeObject:inputTraitsInFirstAndSecondLines forKey:@"inputTraitsInFirstAndSecondLines"];
    v7 = v10;
  }

  inputTraitsInSecondLine = self->_inputTraitsInSecondLine;
  if (inputTraitsInSecondLine)
  {
    [v10 encodeObject:inputTraitsInSecondLine forKey:@"inputTraitsInSecondLine"];
    v7 = v10;
  }
}

- (TIKeyboardSecureCandidateLayoutTraits)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = TIKeyboardSecureCandidateLayoutTraits;
  v5 = [(TIKeyboardSecureCandidateLayoutTraits *)&v18 init];
  if (v5)
  {
    v5->_forceSingleLineLayout = [v4 decodeBoolForKey:@"forceSingleLineLayout"];
    v5->_headerInliningBehavior = [v4 decodeInt32ForKey:@"headerInliningBehavior"];
    v6 = objc_opt_class();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"headerTraitsInOnlyLine"];
    headerTraitsInOnlyLine = v5->_headerTraitsInOnlyLine;
    v5->_headerTraitsInOnlyLine = v7;

    v9 = [v4 decodeObjectOfClass:v6 forKey:@"headerTraitsInFirstLine"];
    headerTraitsInFirstLine = v5->_headerTraitsInFirstLine;
    v5->_headerTraitsInFirstLine = v9;

    v11 = [v4 decodeObjectOfClass:v6 forKey:@"inputTraitsInOnlyLine"];
    inputTraitsInOnlyLine = v5->_inputTraitsInOnlyLine;
    v5->_inputTraitsInOnlyLine = v11;

    v13 = [v4 decodeObjectOfClass:v6 forKey:@"inputTraitsInFirstAndSecondLines"];
    inputTraitsInFirstAndSecondLines = v5->_inputTraitsInFirstAndSecondLines;
    v5->_inputTraitsInFirstAndSecondLines = v13;

    v15 = [v4 decodeObjectOfClass:v6 forKey:@"inputTraitsInSecondLine"];
    inputTraitsInSecondLine = v5->_inputTraitsInSecondLine;
    v5->_inputTraitsInSecondLine = v15;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(TIKeyboardSecureCandidateLayoutTraits);
  v6 = v5;
  if (v5)
  {
    v5->_forceSingleLineLayout = self->_forceSingleLineLayout;
    v5->_headerInliningBehavior = self->_headerInliningBehavior;
    v7 = [(TIKeyboardSecureCandidateTextTraits *)self->_headerTraitsInOnlyLine copyWithZone:a3];
    headerTraitsInOnlyLine = v6->_headerTraitsInOnlyLine;
    v6->_headerTraitsInOnlyLine = v7;

    v9 = [(TIKeyboardSecureCandidateTextTraits *)self->_headerTraitsInFirstLine copyWithZone:a3];
    headerTraitsInFirstLine = v6->_headerTraitsInFirstLine;
    v6->_headerTraitsInFirstLine = v9;

    v11 = [(TIKeyboardSecureCandidateTextTraits *)self->_inputTraitsInOnlyLine copyWithZone:a3];
    inputTraitsInOnlyLine = v6->_inputTraitsInOnlyLine;
    v6->_inputTraitsInOnlyLine = v11;

    v13 = [(TIKeyboardSecureCandidateTextTraits *)self->_inputTraitsInFirstAndSecondLines copyWithZone:a3];
    inputTraitsInFirstAndSecondLines = v6->_inputTraitsInFirstAndSecondLines;
    v6->_inputTraitsInFirstAndSecondLines = v13;

    v15 = [(TIKeyboardSecureCandidateTextTraits *)self->_inputTraitsInSecondLine copyWithZone:a3];
    inputTraitsInSecondLine = v6->_inputTraitsInSecondLine;
    v6->_inputTraitsInSecondLine = v15;
  }

  return v6;
}

@end