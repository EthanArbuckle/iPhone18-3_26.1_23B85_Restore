@interface WTStartupOptions
- (BOOL)editable;
- (BOOL)includesTextListMarkers;
- (BOOL)isForAssistant;
- (BOOL)isForInputDashboard;
- (BOOL)isFromHandoff;
- (BOOL)isQuestionnairePopover;
- (BOOL)isResumingFromModelEnrollment;
- (BOOL)isWebKitView;
- (BOOL)isWindowingModeEnabled;
- (BOOL)requestPromptEntry;
- (BOOL)wantsFormSheetPresentation;
- (BOOL)wantsInlineEditing;
- (NSAttributedString)shareSheetPayload;
- (WTSmartReplyConfiguration)smartReplyConfiguration;
- (id)asBSActionAndReturnError:(id *)a3;
- (int64_t)formSheetUIType;
- (int64_t)handoffOriginatorTool;
- (int64_t)hostingMode;
- (int64_t)requestedTool;
- (int64_t)sourceDataOwnerForCopy;
- (int64_t)sourceDataOwnerForDrag;
- (int64_t)sourceDataOwnerForDrop;
- (int64_t)sourceDataOwnerForPaste;
- (int64_t)sourceResponderHorizontalSizeClass;
- (int64_t)sourceUserInterfaceIdiom;
- (unint64_t)allowedResultOptions;
- (void)setAllowedResultOptions:(unint64_t)a3;
- (void)setEditable:(BOOL)a3;
- (void)setFormSheetUIType:(int64_t)a3;
- (void)setHandoffOriginatorTool:(int64_t)a3;
- (void)setHostingMode:(int64_t)a3;
- (void)setIncludesTextListMarkers:(BOOL)a3;
- (void)setIsForAssistant:(BOOL)a3;
- (void)setIsForInputDashboard:(BOOL)a3;
- (void)setIsFromHandoff:(BOOL)a3;
- (void)setIsQuestionnairePopover:(BOOL)a3;
- (void)setIsResumingFromModelEnrollment:(BOOL)a3;
- (void)setIsWebKitView:(BOOL)a3;
- (void)setIsWindowingModeEnabled:(BOOL)a3;
- (void)setRequestPromptEntry:(BOOL)a3;
- (void)setRequestedTool:(int64_t)a3;
- (void)setSourceDataOwnerForCopy:(int64_t)a3;
- (void)setSourceDataOwnerForDrag:(int64_t)a3;
- (void)setSourceDataOwnerForDrop:(int64_t)a3;
- (void)setSourceDataOwnerForPaste:(int64_t)a3;
- (void)setSourceResponderHorizontalSizeClass:(int64_t)a3;
- (void)setSourceUserInterfaceIdiom:(int64_t)a3;
- (void)setWantsFormSheetPresentation:(BOOL)a3;
- (void)setWantsInlineEditing:(BOOL)a3;
@end

@implementation WTStartupOptions

- (int64_t)requestedTool
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestedTool;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestedTool:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestedTool;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)handoffOriginatorTool
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_handoffOriginatorTool;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHandoffOriginatorTool:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_handoffOriginatorTool;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)editable
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_editable;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEditable:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_editable;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)wantsInlineEditing
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsInlineEditing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWantsInlineEditing:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsInlineEditing;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unint64_t)allowedResultOptions
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_allowedResultOptions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowedResultOptions:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_allowedResultOptions;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (WTSmartReplyConfiguration)smartReplyConfiguration
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_smartReplyConfiguration;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)isForInputDashboard
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForInputDashboard;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsForInputDashboard:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForInputDashboard;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isForAssistant
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForAssistant;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsForAssistant:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForAssistant;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)wantsFormSheetPresentation
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsFormSheetPresentation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWantsFormSheetPresentation:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsFormSheetPresentation;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)formSheetUIType
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_formSheetUIType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormSheetUIType:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_formSheetUIType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSAttributedString)shareSheetPayload
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_shareSheetPayload;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)isQuestionnairePopover
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isQuestionnairePopover;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsQuestionnairePopover:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isQuestionnairePopover;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)sourceResponderHorizontalSizeClass
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceResponderHorizontalSizeClass;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceResponderHorizontalSizeClass:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceResponderHorizontalSizeClass;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isWindowingModeEnabled
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWindowingModeEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsWindowingModeEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWindowingModeEnabled;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)requestPromptEntry
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestPromptEntry;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestPromptEntry:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestPromptEntry;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)sourceUserInterfaceIdiom
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceUserInterfaceIdiom;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceUserInterfaceIdiom:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceUserInterfaceIdiom;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isResumingFromModelEnrollment
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isResumingFromModelEnrollment;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsResumingFromModelEnrollment:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isResumingFromModelEnrollment;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)hostingMode
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_hostingMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHostingMode:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_hostingMode;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isWebKitView
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWebKitView;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsWebKitView:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWebKitView;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isFromHandoff
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isFromHandoff;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsFromHandoff:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isFromHandoff;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)includesTextListMarkers
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_includesTextListMarkers;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIncludesTextListMarkers:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_includesTextListMarkers;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)sourceDataOwnerForCopy
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForCopy;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceDataOwnerForCopy:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForCopy;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)sourceDataOwnerForPaste
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForPaste;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceDataOwnerForPaste:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForPaste;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)sourceDataOwnerForDrag
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrag;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceDataOwnerForDrag:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrag;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)sourceDataOwnerForDrop
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrop;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceDataOwnerForDrop:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrop;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (id)asBSActionAndReturnError:(id *)a3
{
  sub_1D45522CC();
  v4 = self;
  v5 = sub_1D455564C();

  return v5;
}

@end