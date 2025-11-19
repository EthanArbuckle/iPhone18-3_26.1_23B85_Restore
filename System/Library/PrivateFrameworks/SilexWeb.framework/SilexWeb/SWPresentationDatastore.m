@interface SWPresentationDatastore
- (BOOL)isEqual:(id)a3;
- (SWPresentationDatastore)initWithType:(id)a3 identifier:(id)a4;
- (id)description;
@end

@implementation SWPresentationDatastore

- (SWPresentationDatastore)initWithType:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SWPresentationDatastore;
  v9 = [(SWPresentationDatastore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, a3);
    objc_storeStrong(&v10->_identifier, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SWPresentationDatastore *)self type];
      v6 = [(SWPresentationDatastore *)v4 type];
      if ([v5 isEqualToString:v6])
      {
        v7 = [(SWPresentationDatastore *)self identifier];
        v8 = [(SWPresentationDatastore *)v4 identifier];
        v9 = [v7 isEqualToString:v8];
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(SWPresentationDatastore *)self type];
  v6 = [(SWPresentationDatastore *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p type: %@; identifier: %@>", v4, self, v5, v6];;

  return v7;
}

@end