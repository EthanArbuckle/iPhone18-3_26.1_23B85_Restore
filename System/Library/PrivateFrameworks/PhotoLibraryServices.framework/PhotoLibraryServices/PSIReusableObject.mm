@interface PSIReusableObject
- (PSIReusableObject)init;
- (unint64_t)objectType;
- (void)didPrepareFromStatement:(sqlite3_stmt *)statement;
- (void)prepareFromStatement:(sqlite3_stmt *)statement;
@end

@implementation PSIReusableObject

- (unint64_t)objectType
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (void)didPrepareFromStatement:(sqlite3_stmt *)statement
{
  if (self->_isPreparingFromStatement)
  {
    if (self->_isPreparedFromStatement)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PSIReusableObject.m" lineNumber:41 description:0];
    }

    *&self->_isPreparingFromStatement = 256;
  }
}

- (void)prepareFromStatement:(sqlite3_stmt *)statement
{
  if (!self->_isPreparedForReuse)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PSIReusableObject.m" lineNumber:34 description:0];
  }

  if (self->_isPreparedFromStatement)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PSIReusableObject.m" lineNumber:35 description:0];
  }

  self->_isPreparedForReuse = 0;
}

- (PSIReusableObject)init
{
  v3.receiver = self;
  v3.super_class = PSIReusableObject;
  result = [(PSIReusableObject *)&v3 init];
  if (result)
  {
    result->_isPreparedForReuse = 1;
  }

  return result;
}

@end