@interface TRIContentTrackingId
+ (id)contentIdWithStr:(id)str;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContentId:(id)id;
- (TRIContentTrackingId)initWithStr:(id)str;
- (id)copyWithReplacementStr:(id)str;
- (id)description;
@end

@implementation TRIContentTrackingId

- (TRIContentTrackingId)initWithStr:(id)str
{
  strCopy = str;
  if (!strCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1198 description:{@"Invalid parameter not satisfying: %@", @"str != nil"}];
  }

  v11.receiver = self;
  v11.super_class = TRIContentTrackingId;
  v7 = [(TRIContentTrackingId *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_str, str);
  }

  return v8;
}

+ (id)contentIdWithStr:(id)str
{
  strCopy = str;
  v5 = [[self alloc] initWithStr:strCopy];

  return v5;
}

- (id)copyWithReplacementStr:(id)str
{
  strCopy = str;
  v4 = [objc_alloc(objc_opt_class()) initWithStr:strCopy];

  return v4;
}

- (BOOL)isEqualToContentId:(id)id
{
  idCopy = id;
  v5 = idCopy;
  if (!idCopy || (v6 = self->_str == 0, [idCopy str], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8))
  {
    v11 = 0;
  }

  else
  {
    str = self->_str;
    if (str)
    {
      v10 = [v5 str];
      v11 = [(NSString *)str isEqual:v10];
    }

    else
    {
      v11 = 1;
    }
  }

  return v11 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIContentTrackingId *)self isEqualToContentId:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIContentTrackingId | str:%@>", self->_str];

  return v2;
}

@end