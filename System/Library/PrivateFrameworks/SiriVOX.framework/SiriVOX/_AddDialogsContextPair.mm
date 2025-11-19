@interface _AddDialogsContextPair
- (_AddDialogsContextPair)initWithCommand:(id)a3 context:(id)a4;
@end

@implementation _AddDialogsContextPair

- (_AddDialogsContextPair)initWithCommand:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _AddDialogsContextPair;
  v9 = [(_AddDialogsContextPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_command, a3);
    objc_storeStrong(&v10->_context, a4);
  }

  return v10;
}

@end