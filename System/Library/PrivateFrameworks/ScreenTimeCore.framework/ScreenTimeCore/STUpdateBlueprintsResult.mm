@interface STUpdateBlueprintsResult
+ (id)outOfDateWithReturnDestination:(id)destination;
+ (id)success;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResult:(id)result;
- (id)_initWithType:(int64_t)type returnDestination:(id)destination;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation STUpdateBlueprintsResult

- (id)_initWithType:(int64_t)type returnDestination:(id)destination
{
  destinationCopy = destination;
  v10.receiver = self;
  v10.super_class = STUpdateBlueprintsResult;
  v7 = [(STUpdateBlueprintsResult *)&v10 init];
  returnDestination = v7->_returnDestination;
  v7->_type = type;
  v7->_returnDestination = destinationCopy;

  return v7;
}

+ (id)success
{
  v2 = [[STUpdateBlueprintsResult alloc] _initWithType:0 returnDestination:0];

  return v2;
}

+ (id)outOfDateWithReturnDestination:(id)destination
{
  destinationCopy = destination;
  v4 = [[STUpdateBlueprintsResult alloc] _initWithType:1 returnDestination:destinationCopy];

  return v4;
}

- (id)description
{
  type = [(STUpdateBlueprintsResult *)self type];
  if (type == 1)
  {
    v7 = objc_opt_class();
    v6 = NSStringFromClass(v7);
    returnDestination = [(STUpdateBlueprintsResult *)self returnDestination];
    v2 = [NSString stringWithFormat:@"<%@:%p { OutOfDate: %@ }>", v6, self, returnDestination];
  }

  else
  {
    if (type)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  type = self->_type;
  returnDestination = self->_returnDestination;

  return [v4 _initWithType:type returnDestination:returnDestination];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STUpdateBlueprintsResult *)self isEqualToResult:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToResult:(id)result
{
  resultCopy = result;
  if (resultCopy == self)
  {
    v10 = 1;
  }

  else
  {
    type = [(STUpdateBlueprintsResult *)self type];
    if (type == [(STUpdateBlueprintsResult *)resultCopy type])
    {
      returnDestination = [(STUpdateBlueprintsResult *)self returnDestination];
      returnDestination2 = [(STUpdateBlueprintsResult *)resultCopy returnDestination];
      if (returnDestination == returnDestination2)
      {
        v10 = 1;
      }

      else
      {
        returnDestination3 = [(STUpdateBlueprintsResult *)self returnDestination];
        returnDestination4 = [(STUpdateBlueprintsResult *)resultCopy returnDestination];
        v10 = [returnDestination3 isEqual:returnDestination4];
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
  type = [(STUpdateBlueprintsResult *)self type];
  returnDestination = [(STUpdateBlueprintsResult *)self returnDestination];
  v5 = [returnDestination hash];

  return v5 ^ type;
}

@end