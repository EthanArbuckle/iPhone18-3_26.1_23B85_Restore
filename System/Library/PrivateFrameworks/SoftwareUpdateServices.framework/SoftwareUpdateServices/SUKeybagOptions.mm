@interface SUKeybagOptions
- (SUKeybagOptions)init;
- (SUKeybagOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUKeybagOptions

- (SUKeybagOptions)init
{
  v8.receiver = self;
  v8.super_class = SUKeybagOptions;
  v2 = [(SUKeybagOptions *)&v8 init];
  v3 = v2;
  if (v2)
  {
    passcode = v2->_passcode;
    v2->_passcode = 0;

    laContext = v3->_laContext;
    v3->_laContext = 0;

    descriptor = v3->_descriptor;
    v3->_descriptor = 0;

    v3->_keybagType = 0;
  }

  return v3;
}

- (SUKeybagOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SUKeybagOptions;
  v5 = [(SUKeybagOptions *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passcode"];
    [(SUKeybagOptions *)v5 setPasscode:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"laContext"];
    [(SUKeybagOptions *)v5 setLaContext:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    [(SUKeybagOptions *)v5 setDescriptor:v8];

    -[SUKeybagOptions setKeybagType:](v5, "setKeybagType:", [coderCopy decodeIntForKey:@"keybagType"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  passcode = self->_passcode;
  coderCopy = coder;
  [coderCopy encodeObject:passcode forKey:@"passcode"];
  [coderCopy encodeObject:self->_laContext forKey:@"laContext"];
  [coderCopy encodeObject:self->_descriptor forKey:@"descriptor"];
  [coderCopy encodeInt:self->_keybagType forKey:@"keybagType"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setPasscode:self->_passcode];
  [v4 setLaContext:self->_laContext];
  [v4 setDescriptor:self->_descriptor];
  [v4 setKeybagType:self->_keybagType];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  descriptor = [(SUKeybagOptions *)self descriptor];
  keybagType = [(SUKeybagOptions *)self keybagType];
  passcode = [(SUKeybagOptions *)self passcode];
  if (passcode)
  {
    v7 = @"<PRESENT>";
  }

  else
  {
    v7 = @"<NULL>";
  }

  laContext = [(SUKeybagOptions *)self laContext];
  if (laContext)
  {
    v9 = @"<PRESENT>";
  }

  else
  {
    v9 = @"<NULL>";
  }

  v10 = [v3 stringWithFormat:@"\n            descriptor: %@\n            keybagType: %d\n            passcode: %@\n            LAContext:%@", descriptor, keybagType, v7, v9];

  return v10;
}

@end