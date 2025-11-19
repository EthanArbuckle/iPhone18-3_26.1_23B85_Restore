@interface TextInputParameterSummaryEditor
+ (unint64_t)variableResultTypeForParameter:(id)a3;
- (WFVariableProvider)variableProvider;
- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4;
- (void)cancelEditingWithCompletionHandler:(id)a3;
- (void)setVariableProvider:(id)a3;
- (void)textEntryDidFinish;
- (void)textEntryTextDidChange:(id)a3;
- (void)textEntryWillBegin:(id)a3 allowMultipleLines:(BOOL *)a4;
@end

@implementation TextInputParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_27448A194();
}

- (void)cancelEditingWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_2745EA34C(&unk_27465E310, v5);
}

- (WFVariableProvider)variableProvider
{
  v2 = self;
  v3 = sub_2745D1EB0();

  return v3;
}

- (void)setVariableProvider:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_2745D1F58(a3);
}

- (void)textEntryWillBegin:(id)a3 allowMultipleLines:(BOOL *)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_2745D2028(a3, a4);
  swift_unknownObjectRelease();
}

- (void)textEntryTextDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2745D25E0(a3);
}

- (void)textEntryDidFinish
{
  v2 = self;
  sub_2745D2774();
}

+ (unint64_t)variableResultTypeForParameter:(id)a3
{
  v3 = a3;
  v4 = sub_2745D2870();

  return v4;
}

@end