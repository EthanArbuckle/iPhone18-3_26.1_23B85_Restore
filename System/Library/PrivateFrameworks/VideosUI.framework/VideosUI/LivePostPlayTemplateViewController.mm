@interface LivePostPlayTemplateViewController
- (NSString)description;
- (void)vuiCollectionView:(id)view orthogonalScrollViewDidScroll:(id)scroll section:(int64_t)section;
- (void)vui_viewDidLoad;
@end

@implementation LivePostPlayTemplateViewController

- (NSString)description
{
  selfCopy = self;
  sub_1E3A586A8();

  v3 = sub_1E4205ED4();

  return v3;
}

- (void)vui_viewDidLoad
{
  selfCopy = self;
  sub_1E3A58AA0();
}

- (void)vuiCollectionView:(id)view orthogonalScrollViewDidScroll:(id)scroll section:(int64_t)section
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E3A58C44(viewCopy, scroll, section);

  swift_unknownObjectRelease();
}

@end