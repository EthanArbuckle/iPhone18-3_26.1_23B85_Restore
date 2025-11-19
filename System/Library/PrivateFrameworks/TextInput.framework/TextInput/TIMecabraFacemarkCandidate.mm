@interface TIMecabraFacemarkCandidate
+ (id)candidateWithCandidate:(id)a3 category:(id)a4 input:(id)a5 mecabraCandidatePointerValue:(id)a6;
- (BOOL)isEqual:(id)a3;
- (TIMecabraFacemarkCandidate)initWithCandidate:(id)a3 category:(id)a4 input:(id)a5 mecabraCandidatePointerValue:(id)a6;
- (TIMecabraFacemarkCandidate)initWithCandidateResultSetCoder:(id)a3;
- (TIMecabraFacemarkCandidate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCandidateResultSetCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIMecabraFacemarkCandidate

- (void)encodeWithCandidateResultSetCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TIMecabraFacemarkCandidate;
  v4 = a3;
  [(TIMecabraCandidate *)&v6 encodeWithCandidateResultSetCoder:v4];
  v5 = [(TIMecabraFacemarkCandidate *)self category:v6.receiver];
  [v4 encodeString:v5];
}

- (TIMecabraFacemarkCandidate)initWithCandidateResultSetCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TIMecabraFacemarkCandidate;
  v5 = [(TIMecabraCandidate *)&v10 initWithCandidateResultSetCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeString];
    v7 = [v6 copy];
    category = v5->_category;
    v5->_category = v7;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TIMecabraCandidate *)self input];
  v6 = [(TIMecabraCandidate *)self candidate];
  v7 = [(TIMecabraFacemarkCandidate *)self category];
  v8 = [v3 stringWithFormat:@"<%@: %p '%@' -> '%@' (%@)", v4, self, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(TIMecabraFacemarkCandidate *)v5 category];
      v7 = [(TIMecabraFacemarkCandidate *)self category];
      v8 = [v6 isEqualToString:v7];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TIMecabraFacemarkCandidate;
  [(TIMecabraCandidate *)&v6 encodeWithCoder:v4];
  category = self->_category;
  if (category)
  {
    [v4 encodeObject:category forKey:@"category"];
  }
}

- (TIMecabraFacemarkCandidate)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TIMecabraFacemarkCandidate;
  v5 = [(TIMecabraCandidate *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    v7 = [v6 copy];
    category = v5->_category;
    v5->_category = v7;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = TIMecabraFacemarkCandidate;
  v5 = [(TIMecabraCandidate *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_category copyWithZone:a3];
    v7 = v5[31];
    v5[31] = v6;
  }

  return v5;
}

- (TIMecabraFacemarkCandidate)initWithCandidate:(id)a3 category:(id)a4 input:(id)a5 mecabraCandidatePointerValue:(id)a6
{
  v10 = a4;
  v14.receiver = self;
  v14.super_class = TIMecabraFacemarkCandidate;
  v11 = [(TIMecabraCandidate *)&v14 initWithSurface:a3 input:a5 mecabraCandidatePointerValue:a6];
  v12 = v11;
  if (v11)
  {
    [(TIMecabraFacemarkCandidate *)v11 setCategory:v10];
  }

  return v12;
}

+ (id)candidateWithCandidate:(id)a3 category:(id)a4 input:(id)a5 mecabraCandidatePointerValue:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithCandidate:v13 category:v12 input:v11 mecabraCandidatePointerValue:v10];

  return v14;
}

@end