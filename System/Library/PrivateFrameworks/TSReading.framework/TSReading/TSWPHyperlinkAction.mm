@interface TSWPHyperlinkAction
+ (id)hyperlinkActionWithHyperlink:(id)hyperlink inRep:(id)rep action:(id)action;
- (TSWPHyperlinkAction)initWithHyperlink:(id)hyperlink inRep:(id)rep action:(id)action;
- (void)dealloc;
@end

@implementation TSWPHyperlinkAction

- (TSWPHyperlinkAction)initWithHyperlink:(id)hyperlink inRep:(id)rep action:(id)action
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__TSWPHyperlinkAction_initWithHyperlink_inRep_action___block_invoke;
  v10[3] = &unk_279D47708;
  v10[4] = hyperlink;
  v10[5] = rep;
  v9.receiver = self;
  v9.super_class = TSWPHyperlinkAction;
  v7 = [(TSWPTwoPartAction *)&v9 initWithStartAction:v10 cancelAction:&__block_literal_global_65 finishAction:action];
  if (v7)
  {
    v7->_hyperlinkField = hyperlink;
    v7->_hyperlinkRep = rep;
  }

  return v7;
}

uint64_t __54__TSWPHyperlinkAction_initWithHyperlink_inRep_action___block_invoke(uint64_t a1)
{
  v2 = +[TSWPHyperlinkUIController sharedHyperlinkUIController];
  [v2 endUISession];
  [v2 startUISessionForHyperlinkField:*(a1 + 32) inRep:*(a1 + 40)];

  return [v2 showHyperlinkHighlight];
}

uint64_t __54__TSWPHyperlinkAction_initWithHyperlink_inRep_action___block_invoke_2()
{
  v0 = +[TSWPHyperlinkUIController sharedHyperlinkUIController];

  return [v0 endUISession];
}

+ (id)hyperlinkActionWithHyperlink:(id)hyperlink inRep:(id)rep action:(id)action
{
  v5 = [objc_alloc(objc_opt_class()) initWithHyperlink:hyperlink inRep:rep action:action];

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPHyperlinkAction;
  [(TSWPTwoPartAction *)&v3 dealloc];
}

@end