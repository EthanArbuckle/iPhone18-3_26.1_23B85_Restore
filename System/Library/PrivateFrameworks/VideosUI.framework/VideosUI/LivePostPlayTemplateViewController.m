@interface LivePostPlayTemplateViewController
- (NSString)description;
- (void)vuiCollectionView:(id)a3 orthogonalScrollViewDidScroll:(id)a4 section:(int64_t)a5;
- (void)vui_viewDidLoad;
@end

@implementation LivePostPlayTemplateViewController

- (NSString)description
{
  v2 = self;
  sub_1E3A586A8();

  v3 = sub_1E4205ED4();

  return v3;
}

- (void)vui_viewDidLoad
{
  v2 = self;
  sub_1E3A58AA0();
}

- (void)vuiCollectionView:(id)a3 orthogonalScrollViewDidScroll:(id)a4 section:(int64_t)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = self;
  sub_1E3A58C44(v8, a4, a5);

  swift_unknownObjectRelease();
}

@end