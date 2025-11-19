@interface TUReceptionistSession
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSession:(id)a3;
- (TUReceptionistSession)initWithCoder:(id)a3;
- (TUReceptionistSession)initWithSummary:(id)a3 predictedName:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUReceptionistSession

- (TUReceptionistSession)initWithSummary:(id)a3 predictedName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TUReceptionistSession;
  v9 = [(TUReceptionistSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_summary, a3);
    objc_storeStrong(&v10->_predictedName, a4);
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUReceptionistSession *)self summary];
  [v3 appendFormat:@" summary=%@", v4];

  v5 = [(TUReceptionistSession *)self predictedName];
  [v3 appendFormat:@" predicatedName=%@", v5];

  [v3 appendFormat:@" "];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  summary = self->_summary;
  v5 = a3;
  [v5 encodeObject:summary forKey:@"summary"];
  [v5 encodeObject:self->_predictedName forKey:@"predictedName"];
}

- (TUReceptionistSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUReceptionistSession *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"summary"];
    summary = v5->_summary;
    v5->_summary = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictedName"];
    predictedName = v5->_predictedName;
    v5->_predictedName = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(TUReceptionistSession *)self summary];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(TUReceptionistSession *)self predictedName];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUReceptionistSession *)self isEqualToSession:v4];
  }

  return v5;
}

- (BOOL)isEqualToSession:(id)a3
{
  v4 = a3;
  v5 = [(TUReceptionistSession *)self summary];
  v6 = [v4 summary];
  if ([v5 isEqual:v6])
  {
    v7 = [(TUReceptionistSession *)self predictedName];
    v8 = [v4 predictedName];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end