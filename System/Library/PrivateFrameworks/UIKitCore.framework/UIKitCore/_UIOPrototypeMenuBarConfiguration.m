@interface _UIOPrototypeMenuBarConfiguration
- (_UIOPrototypeMenuBarConfiguration)initWithCoder:(id)a3;
@end

@implementation _UIOPrototypeMenuBarConfiguration

- (_UIOPrototypeMenuBarConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIOPrototypeMenuBarConfiguration *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"ClientAppIcon"];
    clientAppIcon = v5->_clientAppIcon;
    v5->_clientAppIcon = v7;
  }

  return v5;
}

@end