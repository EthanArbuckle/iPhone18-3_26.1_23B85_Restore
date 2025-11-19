@interface TSWPHyperlinkAction
+ (id)hyperlinkActionWithHyperlink:(id)a3 inRep:(id)a4 action:(id)a5;
- (TSWPHyperlinkAction)initWithHyperlink:(id)a3 inRep:(id)a4 action:(id)a5;
- (void)dealloc;
@end

@implementation TSWPHyperlinkAction

- (TSWPHyperlinkAction)initWithHyperlink:(id)a3 inRep:(id)a4 action:(id)a5
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__TSWPHyperlinkAction_initWithHyperlink_inRep_action___block_invoke;
  v10[3] = &unk_279D47708;
  v10[4] = a3;
  v10[5] = a4;
  v9.receiver = self;
  v9.super_class = TSWPHyperlinkAction;
  v7 = [(TSWPTwoPartAction *)&v9 initWithStartAction:v10 cancelAction:&__block_literal_global_65 finishAction:a5];
  if (v7)
  {
    v7->_hyperlinkField = a3;
    v7->_hyperlinkRep = a4;
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

+ (id)hyperlinkActionWithHyperlink:(id)a3 inRep:(id)a4 action:(id)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithHyperlink:a3 inRep:a4 action:a5];

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPHyperlinkAction;
  [(TSWPTwoPartAction *)&v3 dealloc];
}

@end