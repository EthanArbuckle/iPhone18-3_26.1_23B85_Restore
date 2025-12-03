@interface _UIOPrototypeMenuBarConfiguration
- (_UIOPrototypeMenuBarConfiguration)initWithCoder:(id)coder;
@end

@implementation _UIOPrototypeMenuBarConfiguration

- (_UIOPrototypeMenuBarConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIOPrototypeMenuBarConfiguration *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"ClientAppIcon"];
    clientAppIcon = v5->_clientAppIcon;
    v5->_clientAppIcon = v7;
  }

  return v5;
}

@end