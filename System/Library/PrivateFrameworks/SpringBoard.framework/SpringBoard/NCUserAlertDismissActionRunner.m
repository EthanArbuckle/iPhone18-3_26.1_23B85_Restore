@interface NCUserAlertDismissActionRunner
- (void)executeAction:(id)a3 fromOrigin:(id)a4 endpoint:(id)a5 withParameters:(id)a6 completion:(id)a7;
@end

@implementation NCUserAlertDismissActionRunner

- (void)executeAction:(id)a3 fromOrigin:(id)a4 endpoint:(id)a5 withParameters:(id)a6 completion:(id)a7
{
  v10 = a7;
  v8 = [(NCUserAlertActionRunner *)self alertItem];
  v9 = v8;
  if (v8)
  {
    [v8 deactivate];
  }

  if (v10)
  {
    v10[2](v10, 1);
  }
}

@end