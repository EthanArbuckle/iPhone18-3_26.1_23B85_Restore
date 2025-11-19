@interface PSDisplay
+ (id)builtinDisplay;
+ (id)displayWithHardwareIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PSDisplay)initWithCoder:(id)a3;
- (id)_initWithHardwareIdentifier:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation PSDisplay

+ (id)builtinDisplay
{
  if (builtinDisplay_onceToken != -1)
  {
    +[PSDisplay builtinDisplay];
  }

  v3 = builtinDisplay___builtin;

  return v3;
}

void __27__PSDisplay_builtinDisplay__block_invoke()
{
  v0 = [[PSDisplay alloc] _initWithHardwareIdentifier:0];
  v1 = builtinDisplay___builtin;
  builtinDisplay___builtin = v0;

  *(builtinDisplay___builtin + 8) = 1;
}

+ (id)displayWithHardwareIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [[PSDisplay alloc] _initWithHardwareIdentifier:v3];
  }

  else
  {
    v4 = +[PSDisplay builtinDisplay];
  }

  v5 = v4;

  return v5;
}

- (id)_initWithHardwareIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PSDisplay;
  v5 = [(PSDisplay *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    hardwareIdentifier = v5->_hardwareIdentifier;
    v5->_hardwareIdentifier = v6;
  }

  return v5;
}

- (PSDisplay)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hardwareIdentifier"];

  v6 = [PSDisplay displayWithHardwareIdentifier:v5];

  return v6;
}

- (unint64_t)hash
{
  if (self->_builtin)
  {
    v2 = 102301;
  }

  else
  {
    v2 = 96953;
  }

  return v2 ^ [(NSString *)self->_hardwareIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && self->_builtin == v4->_builtin)
    {
      hardwareIdentifier = self->_hardwareIdentifier;
      v7 = v4->_hardwareIdentifier;
      v8 = BSEqualStrings();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  hardwareIdentifier = self->_hardwareIdentifier;
  if (hardwareIdentifier)
  {
    v4 = hardwareIdentifier;
  }

  else
  {
    if (self->_builtin)
    {
      v4 = @"builtin";
    }

    else
    {
      v4 = @"unknown";
    }
  }

  return v4;
}

@end