@interface IntelligenceUI.PromptComposeViewController
- (_TtCO5UIKit14IntelligenceUI27PromptComposeViewController)initWithCoder:(id)coder;
- (_TtCO5UIKit14IntelligenceUI27PromptComposeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation IntelligenceUI.PromptComposeViewController

- (void)loadView
{
  v3 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI27PromptComposeViewController_promptComposeView;
  v4 = *(*(&self->super.super.super.isa + OBJC_IVAR____TtCO5UIKit14IntelligenceUI27PromptComposeViewController_promptComposeView) + OBJC_IVAR____TtCO5UIKit14IntelligenceUI17PromptComposeView_entryView) + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  swift_beginAccess();
  *(v4 + 8) = &protocol witness table for IntelligenceUI.PromptComposeViewController;
  swift_unknownObjectWeakAssign();
  [(UIViewController *)self setView:*(&self->super.super.super.isa + v3)];
}

- (_TtCO5UIKit14IntelligenceUI27PromptComposeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_18A4A7288();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI27PromptComposeViewController_promptComposeView;
  v9 = objc_allocWithZone(type metadata accessor for IntelligenceUI.PromptComposeView());
  bundleCopy = bundle;
  *(&self->super.super.super.isa + v8) = [v9 initWithFrame_];
  if (v7)
  {
    v11 = sub_18A4A7258();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for IntelligenceUI.PromptComposeViewController();
  v12 = [(UIViewController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtCO5UIKit14IntelligenceUI27PromptComposeViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI27PromptComposeViewController_promptComposeView;
  v6 = objc_allocWithZone(type metadata accessor for IntelligenceUI.PromptComposeView());
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 initWithFrame_];
  v10.receiver = self;
  v10.super_class = type metadata accessor for IntelligenceUI.PromptComposeViewController();
  v8 = [(UIViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end