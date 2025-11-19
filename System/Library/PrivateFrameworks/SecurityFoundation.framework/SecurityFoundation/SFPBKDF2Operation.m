@interface SFPBKDF2Operation
- (NSData)salt;
- (SFPBKDF2Operation)init;
- (SFPBKDF2Operation)initWithCoder:(id)a3;
- (SFPBKDF2Operation)initWithPseudoRandomFunction:(id)a3 iterationCount:(int64_t)a4 salt:(id)a5;
- (SFPseudoRandomFunction)pseudoRandomFunction;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setPseudoRandomFunction:(id)a3;
- (void)setSalt:(id)a3;
@end

@implementation SFPBKDF2Operation

- (SFPBKDF2Operation)init
{
  v3 = _defaultPseudoRandomFunction();
  v4 = [objc_opt_class() _randomSalt];
  v5 = [(SFPBKDF2Operation *)self initWithPseudoRandomFunction:v3 iterationCount:20 salt:v4];

  return v5;
}

- (SFPBKDF2Operation)initWithPseudoRandomFunction:(id)a3 iterationCount:(int64_t)a4 salt:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SFPBKDF2Operation;
  v11 = [(SFPBKDF2Operation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11->_pbkdf2OperationInternal + 2, a3);
    *(v12->_pbkdf2OperationInternal + 1) = a4;
    objc_storeStrong(v12->_pbkdf2OperationInternal + 3, a5);
  }

  return v12;
}

- (SFPBKDF2Operation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFPBKDF2Operation;
  return [(SFPBKDF2Operation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)setPseudoRandomFunction:(id)a3
{
  v4 = [a3 copyWithZone:0];
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

- (void)setSalt:(id)a3
{
  v4 = [a3 copy];
  pbkdf2OperationInternal = self->_pbkdf2OperationInternal;
  v6 = pbkdf2OperationInternal[3];
  pbkdf2OperationInternal[3] = v4;

  MEMORY[0x2821F96F8]();
}

@end