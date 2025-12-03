@interface TIKeyboardSecureCandidateLayoutTraits
- (BOOL)isEqual:(id)equal;
- (TIKeyboardSecureCandidateLayoutTraits)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIKeyboardSecureCandidateLayoutTraits

- (BOOL)isEqual:(id)equal
{
  v19 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    forceSingleLineLayout = [(TIKeyboardSecureCandidateLayoutTraits *)self forceSingleLineLayout];
    if (forceSingleLineLayout == [v5 forceSingleLineLayout] && (v7 = -[TIKeyboardSecureCandidateLayoutTraits headerInliningBehavior](self, "headerInliningBehavior"), v7 == objc_msgSend(v5, "headerInliningBehavior")))
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_forceSingleLineLayout forKey:@"forceSingleLineLayout"];
  [coderCopy encodeInt32:self->_headerInliningBehavior forKey:@"headerInliningBehavior"];
  headerTraitsInOnlyLine = self->_headerTraitsInOnlyLine;
  if (headerTraitsInOnlyLine)
  {
    [coderCopy encodeObject:headerTraitsInOnlyLine forKey:@"headerTraitsInOnlyLine"];
  }

  headerTraitsInFirstLine = self->_headerTraitsInFirstLine;
  if (headerTraitsInFirstLine)
  {
    [coderCopy encodeObject:headerTraitsInFirstLine forKey:@"headerTraitsInFirstLine"];
  }

  inputTraitsInOnlyLine = self->_inputTraitsInOnlyLine;
  v7 = coderCopy;
  if (inputTraitsInOnlyLine)
  {
    [coderCopy encodeObject:inputTraitsInOnlyLine forKey:@"inputTraitsInOnlyLine"];
    v7 = coderCopy;
  }

  inputTraitsInFirstAndSecondLines = self->_inputTraitsInFirstAndSecondLines;
  if (inputTraitsInFirstAndSecondLines)
  {
    [coderCopy encodeObject:inputTraitsInFirstAndSecondLines forKey:@"inputTraitsInFirstAndSecondLines"];
    v7 = coderCopy;
  }

  inputTraitsInSecondLine = self->_inputTraitsInSecondLine;
  if (inputTraitsInSecondLine)
  {
    [coderCopy encodeObject:inputTraitsInSecondLine forKey:@"inputTraitsInSecondLine"];
    v7 = coderCopy;
  }
}

- (TIKeyboardSecureCandidateLayoutTraits)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = TIKeyboardSecureCandidateLayoutTraits;
  v5 = [(TIKeyboardSecureCandidateLayoutTraits *)&v18 init];
  if (v5)
  {
    v5->_forceSingleLineLayout = [coderCopy decodeBoolForKey:@"forceSingleLineLayout"];
    v5->_headerInliningBehavior = [coderCopy decodeInt32ForKey:@"headerInliningBehavior"];
    v6 = objc_opt_class();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"headerTraitsInOnlyLine"];
    headerTraitsInOnlyLine = v5->_headerTraitsInOnlyLine;
    v5->_headerTraitsInOnlyLine = v7;

    v9 = [coderCopy decodeObjectOfClass:v6 forKey:@"headerTraitsInFirstLine"];
    headerTraitsInFirstLine = v5->_headerTraitsInFirstLine;
    v5->_headerTraitsInFirstLine = v9;

    v11 = [coderCopy decodeObjectOfClass:v6 forKey:@"inputTraitsInOnlyLine"];
    inputTraitsInOnlyLine = v5->_inputTraitsInOnlyLine;
    v5->_inputTraitsInOnlyLine = v11;

    v13 = [coderCopy decodeObjectOfClass:v6 forKey:@"inputTraitsInFirstAndSecondLines"];
    inputTraitsInFirstAndSecondLines = v5->_inputTraitsInFirstAndSecondLines;
    v5->_inputTraitsInFirstAndSecondLines = v13;

    v15 = [coderCopy decodeObjectOfClass:v6 forKey:@"inputTraitsInSecondLine"];
    inputTraitsInSecondLine = v5->_inputTraitsInSecondLine;
    v5->_inputTraitsInSecondLine = v15;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(TIKeyboardSecureCandidateLayoutTraits);
  v6 = v5;
  if (v5)
  {
    v5->_forceSingleLineLayout = self->_forceSingleLineLayout;
    v5->_headerInliningBehavior = self->_headerInliningBehavior;
    v7 = [(TIKeyboardSecureCandidateTextTraits *)self->_headerTraitsInOnlyLine copyWithZone:zone];
    headerTraitsInOnlyLine = v6->_headerTraitsInOnlyLine;
    v6->_headerTraitsInOnlyLine = v7;

    v9 = [(TIKeyboardSecureCandidateTextTraits *)self->_headerTraitsInFirstLine copyWithZone:zone];
    headerTraitsInFirstLine = v6->_headerTraitsInFirstLine;
    v6->_headerTraitsInFirstLine = v9;

    v11 = [(TIKeyboardSecureCandidateTextTraits *)self->_inputTraitsInOnlyLine copyWithZone:zone];
    inputTraitsInOnlyLine = v6->_inputTraitsInOnlyLine;
    v6->_inputTraitsInOnlyLine = v11;

    v13 = [(TIKeyboardSecureCandidateTextTraits *)self->_inputTraitsInFirstAndSecondLines copyWithZone:zone];
    inputTraitsInFirstAndSecondLines = v6->_inputTraitsInFirstAndSecondLines;
    v6->_inputTraitsInFirstAndSecondLines = v13;

    v15 = [(TIKeyboardSecureCandidateTextTraits *)self->_inputTraitsInSecondLine copyWithZone:zone];
    inputTraitsInSecondLine = v6->_inputTraitsInSecondLine;
    v6->_inputTraitsInSecondLine = v15;
  }

  return v6;
}

@end