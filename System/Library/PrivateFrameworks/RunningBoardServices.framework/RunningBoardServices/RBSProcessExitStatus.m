@interface RBSProcessExitStatus
+ (RBSProcessExitStatus)statusWithDomain:(unsigned int)a3 code:(unint64_t)a4;
+ (__CFString)_nameForDomain:(int)a3 includeNumber:;
+ (__CFString)_nameForDomain:(uint64_t)a3 code:(int)a4 includeNumber:;
- (BOOL)isCrash;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RBSProcessExitStatus)initWithCoder:(id)a3;
- (RBSProcessExitStatus)initWithRBSXPCCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_initWithDictionaryRepresentation:(id)a3;
- (id)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSProcessExitStatus

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [RBSProcessExitStatus _nameForDomain:1 includeNumber:?];
  v6 = [RBSProcessExitStatus _nameForDomain:self->_code code:1 includeNumber:?];
  v7 = [v3 initWithFormat:@"<%@| domain:%@ code:%@>", v4, v5, v6];

  return v7;
}

- (BOOL)isCrash
{
  if ([(RBSProcessExitStatus *)self isSignal])
  {
    code = self->_code;
    v4 = code > 0xC;
    v5 = 0x1D70u >> code;
    if (v4)
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

+ (RBSProcessExitStatus)statusWithDomain:(unsigned int)a3 code:(unint64_t)a4
{
  v6 = objc_alloc_init(a1);
  v6[2] = a3;
  *(v6 + 2) = a4;

  return v6;
}

- (id)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = [RBSProcessExitStatus _nameForDomain:0 includeNumber:?];
  code = self->_code;
  v11 = *MEMORY[0x1E696A588];
  v6 = [RBSProcessExitStatus _nameForDomain:code code:1 includeNumber:?];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v3 errorWithDomain:v4 code:code userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (__CFString)_nameForDomain:(int)a3 includeNumber:
{
  objc_opt_self();
  if (a2 <= 0x28)
  {
    v5 = off_1E7275F00[a2];
    if (!a3)
    {
      goto LABEL_8;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%u)", off_1E7275F00[a2], a2];
    goto LABEL_6;
  }

  if (a3)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown(%u))", a2, v7];
    v5 = LABEL_6:;
    goto LABEL_8;
  }

  v5 = @"(unknown)";
LABEL_8:

  return v5;
}

+ (__CFString)_nameForDomain:(uint64_t)a3 code:(int)a4 includeNumber:
{
  objc_opt_self();
  v7 = 0;
  v8 = 1;
  if (a2 > 8)
  {
    switch(a2)
    {
      case 23:
        v9 = a3 - 1;
        if ((a3 - 1) < 3)
        {
          v10 = off_1E7276238;
          goto LABEL_20;
        }

        break;
      case 10:
        v7 = 0;
        if (a3 <= 3221229822)
        {
          if (a3 == 732775916)
          {
            v7 = @"security-violation";
          }

          else
          {
            if (a3 != 2343432205)
            {
              goto LABEL_24;
            }

            v7 = @"watchdog";
          }
        }

        else
        {
          switch(a3)
          {
            case 3221229823:
              v7 = @"thermal-pressure";
              break;
            case 3735943697:
              v7 = @"user-quit";
              break;
            case 4227595259:
              v7 = @"force-quit";
              break;
            default:
              goto LABEL_24;
          }
        }

        goto LABEL_21;
      case 9:
        v9 = a3 - 1;
        if (a3 - 1) < 0xE && ((0x3FFDu >> v9))
        {
          v10 = off_1E7276048;
          goto LABEL_20;
        }

        break;
      default:
        goto LABEL_24;
    }

LABEL_23:
    v7 = 0;
    goto LABEL_24;
  }

  if (a2 == 1)
  {
    v9 = a3 - 1;
    if ((a3 - 1) < 0xD)
    {
      v10 = off_1E72760B8;
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (a2 == 2)
  {
    v9 = a3 - 1;
    if (a3 - 1) < 0x1F && ((0x67BFFFBFu >> v9))
    {
      v10 = off_1E7276120;
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (a2 != 3)
  {
    goto LABEL_24;
  }

  v9 = a3 - 1;
  if ((a3 - 1) >= 4)
  {
    goto LABEL_23;
  }

  v10 = off_1E7276218;
LABEL_20:
  v7 = v10[v9];
LABEL_21:
  if (!a4)
  {
    v12 = 0;
    goto LABEL_33;
  }

  v8 = 0;
LABEL_24:
  if (a3 < 0x10000)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a3];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%llx", a3];
  }
  v11 = ;
  v12 = v11;
  if (v8)
  {
    v13 = v11;
    v12 = v13;
  }

  else
  {
    if (!a4)
    {
      goto LABEL_33;
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", v7, v11];
  }

  v7 = v13;
LABEL_33:

  return v7;
}

- (id)_initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RBSProcessExitStatus;
  v5 = [(RBSProcessExitStatus *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"_domain"];
    v5->_domain = [v6 unsignedIntValue];

    v7 = [v4 objectForKeyedSubscript:@"_code"];
    v5->_code = [v7 unsignedLongLongValue];
  }

  return v5;
}

- (id)_dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_domain];
  [v3 setObject:v4 forKeyedSubscript:@"_domain"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_code];
  [v3 setObject:v5 forKeyedSubscript:@"_code"];

  v6 = [v3 copy];

  return v6;
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
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && self->_domain == v4->_domain && self->_code == v4->_code;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = 0xBF58476D1CE4E5B9 * (self->_domain ^ (self->_domain >> 30));
  v3 = self->_code ^ (self->_code >> 30);
  v4 = (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v3) ^ ((0xBF58476D1CE4E5B9 * v3) >> 27))) ^ (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27)));
  return v4 ^ (v4 >> 31);
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  domain = self->_domain;
  v5 = a3;
  [v5 encodeInt64:domain forKey:@"_domain"];
  [v5 encodeInt64:self->_code forKey:@"_code"];
}

- (RBSProcessExitStatus)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSProcessExitStatus;
  v5 = [(RBSProcessExitStatus *)&v7 init];
  if (v5)
  {
    v5->_domain = [v4 decodeInt64ForKey:@"_domain"];
    v5->_code = [v4 decodeInt64ForKey:@"_code"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  domain = self->_domain;
  v5 = a3;
  [v5 encodeInt32:domain forKey:@"_domain"];
  [v5 encodeInt64:self->_code forKey:@"_code"];
}

- (RBSProcessExitStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RBSProcessExitStatus;
  v5 = [(RBSProcessExitStatus *)&v7 init];
  if (v5)
  {
    v5->_domain = [v4 decodeInt32ForKey:@"_domain"];
    v5->_code = [v4 decodeInt64ForKey:@"_code"];
  }

  return v5;
}

@end