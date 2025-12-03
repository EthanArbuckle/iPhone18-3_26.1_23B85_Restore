@interface WFTriggerSuggestionViewController
- (WFTriggerSuggestionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (WFTriggerSuggestionViewController)initWithTrigger:(id)trigger selectedEntryMetadataData:(id)data selectedReference:(id)reference;
- (WFTriggerSuggestionViewControllerDelegate)delegate;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (void)loadView;
- (void)setDelegate:(id)delegate;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation WFTriggerSuggestionViewController

- (WFTriggerSuggestionViewControllerDelegate)delegate
{
  v2 = sub_27488EFAC();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_27488F01C();
}

- (WFTriggerSuggestionViewController)initWithTrigger:(id)trigger selectedEntryMetadataData:(id)data selectedReference:(id)reference
{
  dataCopy = data;
  if (data)
  {
    triggerCopy = trigger;
    referenceCopy = reference;
    v10 = dataCopy;
    dataCopy = sub_2749F9094();
    v12 = v11;
  }

  else
  {
    triggerCopy2 = trigger;
    referenceCopy2 = reference;
    v12 = 0xF000000000000000;
  }

  return sub_27488F064(trigger, dataCopy, v12, reference);
}

- (void)loadView
{
  selfCopy = self;
  sub_27488F500();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_27488FE78();
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_274890D84(controllerCopy);
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  selfCopy = self;
  v5 = sub_274891058(edge);

  return v5;
}

- (WFTriggerSuggestionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  bundleCopy = bundle;
  sub_2748910E0();
}

@end