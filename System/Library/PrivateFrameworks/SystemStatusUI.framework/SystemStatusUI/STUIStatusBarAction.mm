@interface STUIStatusBarAction
+ (id)actionWithBlock:(id)a3;
- (void)performWithStatusBar:(id)a3 completionHandler:(id)a4;
@end

@implementation STUIStatusBarAction

+ (id)actionWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setBlock:v4];

  [v5 setEnabled:1];

  return v5;
}

- (void)performWithStatusBar:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (![(STUIStatusBarAction *)self isEnabled])
  {
    v7 = 0;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = (*(self->_block + 2))();
  if (v6)
  {
LABEL_5:
    v6[2](v6, v7);
  }

LABEL_6:
}

@end