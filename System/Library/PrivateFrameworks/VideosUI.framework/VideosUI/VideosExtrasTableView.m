@interface VideosExtrasTableView
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation VideosExtrasTableView

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VideosExtrasTableView *)self indexPathForSelectedRow];
  v10.receiver = self;
  v10.super_class = VideosExtrasTableView;
  [(VideosExtrasTableView *)&v10 touchesBegan:v7 withEvent:v6];

  if (v8)
  {
    v9 = [(VideosExtrasTableView *)self cellForRowAtIndexPath:v8];
    [v9 setSelected:1 animated:0];
  }
}

@end