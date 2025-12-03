@interface VideosExtrasTableView
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation VideosExtrasTableView

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  indexPathForSelectedRow = [(VideosExtrasTableView *)self indexPathForSelectedRow];
  v10.receiver = self;
  v10.super_class = VideosExtrasTableView;
  [(VideosExtrasTableView *)&v10 touchesBegan:beganCopy withEvent:eventCopy];

  if (indexPathForSelectedRow)
  {
    v9 = [(VideosExtrasTableView *)self cellForRowAtIndexPath:indexPathForSelectedRow];
    [v9 setSelected:1 animated:0];
  }
}

@end