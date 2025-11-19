@interface SSDialogButton
+ (SSDialogButton)buttonWithTitle:(id)a3;
- (NSString)buttonAction;
- (NSString)buttonTitle;
- (SSDialogButton)initWithTitle:(id)a3 actionDictionary:(id)a4;
- (id)actionParameter;
- (id)valueForActionProperty:(id)a3;
- (void)dealloc;
@end

@implementation SSDialogButton

- (SSDialogButton)initWithTitle:(id)a3 actionDictionary:(id)a4
{
  if (![a3 length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Button must have a title"];
  }

  v9.receiver = self;
  v9.super_class = SSDialogButton;
  v7 = [(SSDialogButton *)&v9 init];
  if (v7)
  {
    v7->_actionDictionary = [a4 copy];
    v7->_title = [a3 copy];
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

+ (SSDialogButton)buttonWithTitle:(id)a3
{
  v3 = [[a1 alloc] initWithTitle:a3 actionDictionary:0];

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

- (id)valueForActionProperty:(id)a3
{
  v3 = [(NSDictionary *)self->_actionDictionary objectForKey:a3];

  return v3;
}

@end