@interface TRIContentTrackingId
+ (id)contentIdWithStr:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContentId:(id)a3;
- (TRIContentTrackingId)initWithStr:(id)a3;
- (id)copyWithReplacementStr:(id)a3;
- (id)description;
@end

@implementation TRIContentTrackingId

- (TRIContentTrackingId)initWithStr:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1198 description:{@"Invalid parameter not satisfying: %@", @"str != nil"}];
  }

  v11.receiver = self;
  v11.super_class = TRIContentTrackingId;
  v7 = [(TRIContentTrackingId *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_str, a3);
  }

  return v8;
}

+ (id)contentIdWithStr:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithStr:v4];

  return v5;
}

- (id)copyWithReplacementStr:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithStr:v3];

  return v4;
}

- (BOOL)isEqualToContentId:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || (v6 = self->_str == 0, [v4 str], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8))
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIContentTrackingId *)self isEqualToContentId:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIContentTrackingId | str:%@>", self->_str];

  return v2;
}

@end