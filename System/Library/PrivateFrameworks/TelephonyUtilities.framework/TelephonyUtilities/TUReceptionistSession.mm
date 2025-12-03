@interface TUReceptionistSession
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSession:(id)session;
- (TUReceptionistSession)initWithCoder:(id)coder;
- (TUReceptionistSession)initWithSummary:(id)summary predictedName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUReceptionistSession

- (TUReceptionistSession)initWithSummary:(id)summary predictedName:(id)name
{
  summaryCopy = summary;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = TUReceptionistSession;
  v9 = [(TUReceptionistSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_summary, summary);
    objc_storeStrong(&v10->_predictedName, name);
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  summary = [(TUReceptionistSession *)self summary];
  [v3 appendFormat:@" summary=%@", summary];

  predictedName = [(TUReceptionistSession *)self predictedName];
  [v3 appendFormat:@" predicatedName=%@", predictedName];

  [v3 appendFormat:@" "];
  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  summary = self->_summary;
  coderCopy = coder;
  [coderCopy encodeObject:summary forKey:@"summary"];
  [coderCopy encodeObject:self->_predictedName forKey:@"predictedName"];
}

- (TUReceptionistSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUReceptionistSession *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"summary"];
    summary = v5->_summary;
    v5->_summary = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictedName"];
    predictedName = v5->_predictedName;
    v5->_predictedName = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  summary = [(TUReceptionistSession *)self summary];
  v6 = v4[1];
  v4[1] = summary;

  predictedName = [(TUReceptionistSession *)self predictedName];
  v8 = v4[2];
  v4[2] = predictedName;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUReceptionistSession *)self isEqualToSession:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSession:(id)session
{
  sessionCopy = session;
  summary = [(TUReceptionistSession *)self summary];
  summary2 = [sessionCopy summary];
  if ([summary isEqual:summary2])
  {
    predictedName = [(TUReceptionistSession *)self predictedName];
    predictedName2 = [sessionCopy predictedName];
    v9 = [predictedName isEqual:predictedName2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end