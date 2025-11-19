@interface PSIReusableObject
- (PSIReusableObject)init;
- (unint64_t)objectType;
- (void)didPrepareFromStatement:(sqlite3_stmt *)a3;
- (void)prepareFromStatement:(sqlite3_stmt *)a3;
@end

@implementation PSIReusableObject

- (unint64_t)objectType
{
  v2 = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (void)didPrepareFromStatement:(sqlite3_stmt *)a3
{
  if (self->_isPreparingFromStatement)
  {
    if (self->_isPreparedFromStatement)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"PSIReusableObject.m" lineNumber:41 description:0];
    }

    *&self->_isPreparingFromStatement = 256;
  }
}

- (void)prepareFromStatement:(sqlite3_stmt *)a3
{
  if (!self->_isPreparedForReuse)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PSIReusableObject.m" lineNumber:34 description:0];
  }

  if (self->_isPreparedFromStatement)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PSIReusableObject.m" lineNumber:35 description:0];
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