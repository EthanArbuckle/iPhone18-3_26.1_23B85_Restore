@interface SFPBKDF2Operation
- (NSData)salt;
- (SFPBKDF2Operation)init;
- (SFPBKDF2Operation)initWithCoder:(id)coder;
- (SFPBKDF2Operation)initWithPseudoRandomFunction:(id)function iterationCount:(int64_t)count salt:(id)salt;
- (SFPseudoRandomFunction)pseudoRandomFunction;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setPseudoRandomFunction:(id)function;
- (void)setSalt:(id)salt;
@end

@implementation SFPBKDF2Operation

- (SFPBKDF2Operation)init
{
  v3 = _defaultPseudoRandomFunction();
  _randomSalt = [objc_opt_class() _randomSalt];
  v5 = [(SFPBKDF2Operation *)self initWithPseudoRandomFunction:v3 iterationCount:20 salt:_randomSalt];

  return v5;
}

- (SFPBKDF2Operation)initWithPseudoRandomFunction:(id)function iterationCount:(int64_t)count salt:(id)salt
{
  functionCopy = function;
  saltCopy = salt;
  v14.receiver = self;
  v14.super_class = SFPBKDF2Operation;
  v11 = [(SFPBKDF2Operation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11->_pbkdf2OperationInternal + 2, function);
    *(v12->_pbkdf2OperationInternal + 1) = count;
    objc_storeStrong(v12->_pbkdf2OperationInternal + 3, salt);
  }

  return v12;
}

- (SFPBKDF2Operation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFPBKDF2Operation;
  return [(SFPBKDF2Operation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  pbkdf2OperationInternal = self->_pbkdf2OperationInternal;
  v7 = pbkdf2OperationInternal[1];
  v6 = pbkdf2OperationInternal[2];
  v8 = pbkdf2OperationInternal[3];

  return [v4 initWithPseudoRandomFunction:v6 iterationCount:v7 salt:v8];
}

- (SFPseudoRandomFunction)pseudoRandomFunction
{
  v2 = [*(self->_pbkdf2OperationInternal + 2) copyWithZone:0];

  return v2;
}

- (void)setPseudoRandomFunction:(id)function
{
  v4 = [function copyWithZone:0];
  pbkdf2OperationInternal = self->_pbkdf2OperationInternal;
  v6 = pbkdf2OperationInternal[2];
  pbkdf2OperationInternal[2] = v4;

  MEMORY[0x2821F96F8]();
}

- (NSData)salt
{
  v2 = [*(self->_pbkdf2OperationInternal + 3) copy];

  return v2;
}

- (void)setSalt:(id)salt
{
  v4 = [salt copy];
  pbkdf2OperationInternal = self->_pbkdf2OperationInternal;
  v6 = pbkdf2OperationInternal[3];
  pbkdf2OperationInternal[3] = v4;

  MEMORY[0x2821F96F8]();
}

@end