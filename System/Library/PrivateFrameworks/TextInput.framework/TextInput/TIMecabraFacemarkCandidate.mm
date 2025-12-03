@interface TIMecabraFacemarkCandidate
+ (id)candidateWithCandidate:(id)candidate category:(id)category input:(id)input mecabraCandidatePointerValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (TIMecabraFacemarkCandidate)initWithCandidate:(id)candidate category:(id)category input:(id)input mecabraCandidatePointerValue:(id)value;
- (TIMecabraFacemarkCandidate)initWithCandidateResultSetCoder:(id)coder;
- (TIMecabraFacemarkCandidate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCandidateResultSetCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIMecabraFacemarkCandidate

- (void)encodeWithCandidateResultSetCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TIMecabraFacemarkCandidate;
  coderCopy = coder;
  [(TIMecabraCandidate *)&v6 encodeWithCandidateResultSetCoder:coderCopy];
  v5 = [(TIMecabraFacemarkCandidate *)self category:v6.receiver];
  [coderCopy encodeString:v5];
}

- (TIMecabraFacemarkCandidate)initWithCandidateResultSetCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TIMecabraFacemarkCandidate;
  v5 = [(TIMecabraCandidate *)&v10 initWithCandidateResultSetCoder:coderCopy];
  if (v5)
  {
    decodeString = [coderCopy decodeString];
    v7 = [decodeString copy];
    category = v5->_category;
    v5->_category = v7;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  input = [(TIMecabraCandidate *)self input];
  candidate = [(TIMecabraCandidate *)self candidate];
  category = [(TIMecabraFacemarkCandidate *)self category];
  v8 = [v3 stringWithFormat:@"<%@: %p '%@' -> '%@' (%@)", v4, self, input, candidate, category];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      category = [(TIMecabraFacemarkCandidate *)v5 category];
      category2 = [(TIMecabraFacemarkCandidate *)self category];
      v8 = [category isEqualToString:category2];

      if (v8)
      {
        v11.receiver = self;
        v11.super_class = TIMecabraFacemarkCandidate;
        v9 = [(TIMecabraCandidate *)&v11 isEqual:v5];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TIMecabraFacemarkCandidate;
  [(TIMecabraCandidate *)&v6 encodeWithCoder:coderCopy];
  category = self->_category;
  if (category)
  {
    [coderCopy encodeObject:category forKey:@"category"];
  }
}

- (TIMecabraFacemarkCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TIMecabraFacemarkCandidate;
  v5 = [(TIMecabraCandidate *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    v7 = [v6 copy];
    category = v5->_category;
    v5->_category = v7;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = TIMecabraFacemarkCandidate;
  v5 = [(TIMecabraCandidate *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_category copyWithZone:zone];
    v7 = v5[31];
    v5[31] = v6;
  }

  return v5;
}

- (TIMecabraFacemarkCandidate)initWithCandidate:(id)candidate category:(id)category input:(id)input mecabraCandidatePointerValue:(id)value
{
  categoryCopy = category;
  v14.receiver = self;
  v14.super_class = TIMecabraFacemarkCandidate;
  v11 = [(TIMecabraCandidate *)&v14 initWithSurface:candidate input:input mecabraCandidatePointerValue:value];
  v12 = v11;
  if (v11)
  {
    [(TIMecabraFacemarkCandidate *)v11 setCategory:categoryCopy];
  }

  return v12;
}

+ (id)candidateWithCandidate:(id)candidate category:(id)category input:(id)input mecabraCandidatePointerValue:(id)value
{
  valueCopy = value;
  inputCopy = input;
  categoryCopy = category;
  candidateCopy = candidate;
  v14 = [[self alloc] initWithCandidate:candidateCopy category:categoryCopy input:inputCopy mecabraCandidatePointerValue:valueCopy];

  return v14;
}

@end