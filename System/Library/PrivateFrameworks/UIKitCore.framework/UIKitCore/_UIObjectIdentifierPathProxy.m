@interface _UIObjectIdentifierPathProxy
- (_UIObjectIdentifierPathProxy)initWithCoder:(id)a3;
- (_UIObjectIdentifierPathProxy)initWithObject:(id)a3;
- (void)dealloc;
@end

@implementation _UIObjectIdentifierPathProxy

- (_UIObjectIdentifierPathProxy)initWithObject:(id)a3
{
  v5 = [_restorationIdentifierPathArrayForObject(a3) componentsJoinedByString:@"/"];
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SInitializingW.isa, "[_UIObjectIdentifierPathProxy initWithObject:]", v5);
  }

  v9.receiver = self;
  v9.super_class = _UIObjectIdentifierPathProxy;
  v6 = [(_UIObjectIdentifierPathProxy *)&v9 init];
  if (v6)
  {
    if (v5)
    {
      v6->_identifierPath = v5;
    }

    else
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SWarningTriedT_0.isa, "[_UIObjectIdentifierPathProxy initWithObject:]", a3);
      }

      v7 = v6;
      return 0;
    }
  }

  return v6;
}

- (_UIObjectIdentifierPathProxy)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kObjectIdentifierPathProxyIdentifierPathKey"];
  v5 = _UIStateRestorationDebugLogEnabled();
  if (v4)
  {
    if (v5)
    {
      NSLog(&cfstr_SDecodedRestor.isa, "[_UIObjectIdentifierPathProxy initWithCoder:]", v4);
    }

    v8 = [UIResponder objectWithRestorationIdentifierPath:v4];
  }

  else
  {
    if (v5)
    {
      NSLog(&cfstr_SWarningCouldn.isa, "[_UIObjectIdentifierPathProxy initWithCoder:]");
    }

    v8 = 0;
  }

  v6 = self;

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIObjectIdentifierPathProxy;
  [(_UIObjectIdentifierPathProxy *)&v3 dealloc];
}

@end