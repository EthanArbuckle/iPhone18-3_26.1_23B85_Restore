@interface StoryExportActivityPreviewViewController
- (_TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation StoryExportActivityPreviewViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1B38A13C8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1B38A18C4(a3, &selRef_viewDidAppear_, 1);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1B38A18C4(a3, &selRef_viewDidDisappear_, 0);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1B38A19B4();
}

- (_TtC15PhotosUIPrivate40StoryExportActivityPreviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1B3C9C5E8();
  }

  v5 = a4;
  sub_1B38A1FC0();
}

@end