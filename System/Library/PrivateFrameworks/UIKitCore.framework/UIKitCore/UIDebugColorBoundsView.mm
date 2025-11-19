@interface UIDebugColorBoundsView
@end

@implementation UIDebugColorBoundsView

void __37___UIDebugColorBoundsView__nextColor__block_invoke()
{
  v10[8] = *MEMORY[0x1E69E9840];
  v0 = +[UIColor redColor];
  v10[0] = v0;
  v1 = +[UIColor greenColor];
  v10[1] = v1;
  v2 = +[UIColor blueColor];
  v10[2] = v2;
  v3 = +[UIColor cyanColor];
  v10[3] = v3;
  v4 = +[UIColor magentaColor];
  v10[4] = v4;
  v5 = +[UIColor orangeColor];
  v10[5] = v5;
  v6 = +[UIColor purpleColor];
  v10[6] = v6;
  v7 = +[UIColor brownColor];
  v10[7] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:8];
  v9 = _MergedGlobals_1350;
  _MergedGlobals_1350 = v8;
}

@end