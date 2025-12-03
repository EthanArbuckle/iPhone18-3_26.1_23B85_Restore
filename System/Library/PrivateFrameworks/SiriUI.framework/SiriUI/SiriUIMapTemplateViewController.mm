@interface SiriUIMapTemplateViewController
- (void)loadView;
- (void)mapTemplateView:(id)view didModifyPlacemark:(id)placemark;
- (void)mapTemplateViewDidSelectMap:(id)map;
- (void)prepareForDismissal;
@end

@implementation SiriUIMapTemplateViewController

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = SiriUIMapTemplateViewController;
  [(SiriUIBaseTemplateViewController *)&v4 loadView];
  view = [(SiriUIMapTemplateViewController *)self view];
  [view setDelegate:self];
}

- (void)prepareForDismissal
{
  view = [(SiriUIMapTemplateViewController *)self view];
  [view prepareForDismissal];
}

- (void)mapTemplateView:(id)view didModifyPlacemark:(id)placemark
{
  placemarkCopy = placemark;
  delegate = [(SiriUITemplateViewController *)self delegate];
  [delegate mapTemplateViewController:self didModifyPlacemark:placemarkCopy];
}

- (void)mapTemplateViewDidSelectMap:(id)map
{
  delegate = [(SiriUITemplateViewController *)self delegate];
  [delegate presentDetailsForTemplateViewController:self];
}

@end