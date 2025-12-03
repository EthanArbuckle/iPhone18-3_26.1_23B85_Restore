@interface SSDialogButton
+ (SSDialogButton)buttonWithTitle:(id)title;
- (NSString)buttonAction;
- (NSString)buttonTitle;
- (SSDialogButton)initWithTitle:(id)title actionDictionary:(id)dictionary;
- (id)actionParameter;
- (id)valueForActionProperty:(id)property;
- (void)dealloc;
@end

@implementation SSDialogButton

- (SSDialogButton)initWithTitle:(id)title actionDictionary:(id)dictionary
{
  if (![title length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Button must have a title"];
  }

  v9.receiver = self;
  v9.super_class = SSDialogButton;
  v7 = [(SSDialogButton *)&v9 init];
  if (v7)
  {
    v7->_actionDictionary = [dictionary copy];
    v7->_title = [title copy];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDialogButton;
  [(SSDialogButton *)&v3 dealloc];
}

- (NSString)buttonTitle
{
  v2 = self->_title;

  return v2;
}

+ (SSDialogButton)buttonWithTitle:(id)title
{
  v3 = [[self alloc] initWithTitle:title actionDictionary:0];

  return v3;
}

- (id)actionParameter
{
  v8 = SSValueForFirstAvailableKey(self->_actionDictionary, @"buyParams", v2, v3, v4, v5, v6, v7, @"buy-params");

  return v8;
}

- (NSString)buttonAction
{
  v2 = [(SSDialogButton *)self valueForActionProperty:@"kind"];
  if ([(NSString *)v2 caseInsensitiveCompare:@"goback"])
  {
    return v2;
  }

  else
  {
    return @"goback";
  }
}

- (id)valueForActionProperty:(id)property
{
  v3 = [(NSDictionary *)self->_actionDictionary objectForKey:property];

  return v3;
}

@end