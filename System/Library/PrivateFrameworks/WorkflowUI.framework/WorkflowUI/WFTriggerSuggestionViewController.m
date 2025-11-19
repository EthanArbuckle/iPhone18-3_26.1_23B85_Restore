@interface WFTriggerSuggestionViewController
- (WFTriggerSuggestionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (WFTriggerSuggestionViewController)initWithTrigger:(id)a3 selectedEntryMetadataData:(id)a4 selectedReference:(id)a5;
- (WFTriggerSuggestionViewControllerDelegate)delegate;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (void)loadView;
- (void)setDelegate:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation WFTriggerSuggestionViewController

- (WFTriggerSuggestionViewControllerDelegate)delegate
{
  v2 = sub_27488EFAC();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_27488F01C();
}

- (WFTriggerSuggestionViewController)initWithTrigger:(id)a3 selectedEntryMetadataData:(id)a4 selectedReference:(id)a5
{
  v6 = a4;
  if (a4)
  {
    v8 = a3;
    v9 = a5;
    v10 = v6;
    v6 = sub_2749F9094();
    v12 = v11;
  }

  else
  {
    v13 = a3;
    v14 = a5;
    v12 = 0xF000000000000000;
  }

  return sub_27488F064(a3, v6, v12, a5);
}

- (void)loadView
{
  v2 = self;
  sub_27488F500();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_27488FE78();
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_274890D84(v4);
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v4 = self;
  v5 = sub_274891058(a3);

  return v5;
}

- (WFTriggerSuggestionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v5 = a4;
  sub_2748910E0();
}

@end