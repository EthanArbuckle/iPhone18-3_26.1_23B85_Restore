@interface REUIRelevanceEngineControllerUpdateOperation
+ (id)hideElement:(id)element atPath:(id)path;
+ (id)showElement:(id)element atPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation REUIRelevanceEngineControllerUpdateOperation

+ (id)showElement:(id)element atPath:(id)path
{
  result = [self reloadElement:element atPath:path];
  *(result + 5) = 1;
  return result;
}

+ (id)hideElement:(id)element atPath:(id)path
{
  result = [self reloadElement:element atPath:path];
  *(result + 5) = 2;
  return result;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_updateType];
  v4 = [v3 hash];
  v7.receiver = self;
  v7.super_class = REUIRelevanceEngineControllerUpdateOperation;
  v5 = [(REElementUpdateOperation *)&v7 hash];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && (v7.receiver = self, v7.super_class = REUIRelevanceEngineControllerUpdateOperation, [(REElementUpdateOperation *)&v7 isEqual:equalCopy]) && equalCopy[5] == self->_updateType;

  return v5;
}

- (id)description
{
  updateType = self->_updateType;
  if (updateType == 2)
  {
    v4 = @" Hide: %@";
    goto LABEL_5;
  }

  if (updateType == 1)
  {
    v4 = @" Show: %@";
LABEL_5:
    v5 = MEMORY[0x277CCACA8];
    path = [(REElementUpdateOperation *)self path];
    v7 = REStringForSectionPath();
    v8 = [v5 stringWithFormat:v4, v7];

    goto LABEL_7;
  }

  v8 = &stru_287437DE8;
LABEL_7:
  v12.receiver = self;
  v12.super_class = REUIRelevanceEngineControllerUpdateOperation;
  v9 = [(REElementUpdateOperation *)&v12 description];
  v10 = [v9 stringByAppendingString:v8];

  return v10;
}

@end