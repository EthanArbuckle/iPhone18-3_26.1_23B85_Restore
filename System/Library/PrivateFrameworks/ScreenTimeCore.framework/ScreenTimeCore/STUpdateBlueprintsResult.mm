@interface STUpdateBlueprintsResult
+ (id)outOfDateWithReturnDestination:(id)a3;
+ (id)success;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResult:(id)a3;
- (id)_initWithType:(int64_t)a3 returnDestination:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation STUpdateBlueprintsResult

- (id)_initWithType:(int64_t)a3 returnDestination:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = STUpdateBlueprintsResult;
  v7 = [(STUpdateBlueprintsResult *)&v10 init];
  returnDestination = v7->_returnDestination;
  v7->_type = a3;
  v7->_returnDestination = v6;

  return v7;
}

+ (id)success
{
  v2 = [[STUpdateBlueprintsResult alloc] _initWithType:0 returnDestination:0];

  return v2;
}

+ (id)outOfDateWithReturnDestination:(id)a3
{
  v3 = a3;
  v4 = [[STUpdateBlueprintsResult alloc] _initWithType:1 returnDestination:v3];

  return v4;
}

- (id)description
{
  v4 = [(STUpdateBlueprintsResult *)self type];
  if (v4 == 1)
  {
    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
    v8 = [(STUpdateBlueprintsResult *)self returnDestination];
    v2 = [NSString stringWithFormat:@"<%@:%p { OutOfDate: %@ }>", v6, self, v8];
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v2 = [NSString stringWithFormat:@"<%@:%p { Success }>", v6, self];
  }

LABEL_6:

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  type = self->_type;
  returnDestination = self->_returnDestination;

  return [v4 _initWithType:type returnDestination:returnDestination];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STUpdateBlueprintsResult *)self isEqualToResult:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToResult:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(STUpdateBlueprintsResult *)self type];
    if (v5 == [(STUpdateBlueprintsResult *)v4 type])
    {
      v6 = [(STUpdateBlueprintsResult *)self returnDestination];
      v7 = [(STUpdateBlueprintsResult *)v4 returnDestination];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(STUpdateBlueprintsResult *)self returnDestination];
        v9 = [(STUpdateBlueprintsResult *)v4 returnDestination];
        v10 = [v8 isEqual:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(STUpdateBlueprintsResult *)self type];
  v4 = [(STUpdateBlueprintsResult *)self returnDestination];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end