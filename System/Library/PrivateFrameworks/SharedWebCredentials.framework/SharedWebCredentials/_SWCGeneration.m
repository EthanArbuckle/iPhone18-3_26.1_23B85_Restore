@interface _SWCGeneration
- (BOOL)isEqual:(id)a3;
- (_SWCGeneration)init;
- (_SWCGeneration)initWithCoder:(id)a3;
- (_SWCGeneration)initWithPID:(int)a3 version:(int)a4 tick:(unint64_t)a5;
- (id)debugDescription;
- (id)description;
- (id)generationByIncrementingSelf;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SWCGeneration

- (_SWCGeneration)init
{
  task_info_outCnt = 8;
  if (task_info(*MEMORY[0x277D85F48], 0xFu, &task_info_out, &task_info_outCnt))
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v6 = task_info_out;
    v3 = audit_token_to_pid(&v6);
    v6 = task_info_out;
    v4 = audit_token_to_pidversion(&v6);
  }

  *task_info_out.val = 0;
  arc4random_buf(&task_info_out, 8uLL);
  return [(_SWCGeneration *)self initWithPID:v3 version:v4 tick:*task_info_out.val];
}

- (id)generationByIncrementingSelf
{
  v2 = [[_SWCGeneration alloc] initWithPID:self->_processIdentifier version:self->_processIdentifierVersion tick:self->_tick + 1];

  return v2;
}

- (_SWCGeneration)initWithPID:(int)a3 version:(int)a4 tick:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = _SWCGeneration;
  result = [(_SWCGeneration *)&v9 init];
  if (result)
  {
    result->_processIdentifier = a3;
    result->_processIdentifierVersion = a4;
    result->_tick = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_processIdentifier == v5->_processIdentifier && self->_processIdentifierVersion == v5->_processIdentifierVersion && self->_tick == v5->_tick;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{ %llu, %llu, %llu }", self->_processIdentifier, self->_processIdentifierVersion, self->_tick];

  return v2;
}

- (id)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<%@ %p> { %llu, %llu, %llu }", objc_opt_class(), self, self->_processIdentifier, self->_processIdentifierVersion, self->_tick];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:self->_processIdentifier forKey:@"processIdentifier"];
  [v4 encodeInt64:self->_processIdentifierVersion forKey:@"processIdentifierVersion"];
  [v4 encodeInt64:self->_tick forKey:@"tick"];
}

- (_SWCGeneration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[_SWCGeneration initWithPID:version:tick:](self, "initWithPID:version:tick:", [v4 decodeInt64ForKey:@"processIdentifier"], objc_msgSend(v4, "decodeIntForKey:", @"processIdentifierVersion"), objc_msgSend(v4, "decodeInt64ForKey:", @"tick"));

  return v5;
}

@end