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
- (id)asBSActionAndReturnError:(id *)error;
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
- (void)setAllowedResultOptions:(unint64_t)options;
- (void)setEditable:(BOOL)editable;
- (void)setFormSheetUIType:(int64_t)type;
- (void)setHandoffOriginatorTool:(int64_t)tool;
- (void)setHostingMode:(int64_t)mode;
- (void)setIncludesTextListMarkers:(BOOL)markers;
- (void)setIsForAssistant:(BOOL)assistant;
- (void)setIsForInputDashboard:(BOOL)dashboard;
- (void)setIsFromHandoff:(BOOL)handoff;
- (void)setIsQuestionnairePopover:(BOOL)popover;
- (void)setIsResumingFromModelEnrollment:(BOOL)enrollment;
- (void)setIsWebKitView:(BOOL)view;
- (void)setIsWindowingModeEnabled:(BOOL)enabled;
- (void)setRequestPromptEntry:(BOOL)entry;
- (void)setRequestedTool:(int64_t)tool;
- (void)setSourceDataOwnerForCopy:(int64_t)copy;
- (void)setSourceDataOwnerForDrag:(int64_t)drag;
- (void)setSourceDataOwnerForDrop:(int64_t)drop;
- (void)setSourceDataOwnerForPaste:(int64_t)paste;
- (void)setSourceResponderHorizontalSizeClass:(int64_t)class;
- (void)setSourceUserInterfaceIdiom:(int64_t)idiom;
- (void)setWantsFormSheetPresentation:(BOOL)presentation;
- (void)setWantsInlineEditing:(BOOL)editing;
@end

@implementation WTStartupOptions

- (int64_t)requestedTool
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestedTool;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestedTool:(int64_t)tool
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestedTool;
  swift_beginAccess();
  *(self + v5) = tool;
}

- (int64_t)handoffOriginatorTool
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_handoffOriginatorTool;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHandoffOriginatorTool:(int64_t)tool
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_handoffOriginatorTool;
  swift_beginAccess();
  *(self + v5) = tool;
}

- (BOOL)editable
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_editable;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEditable:(BOOL)editable
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_editable;
  swift_beginAccess();
  *(self + v5) = editable;
}

- (BOOL)wantsInlineEditing
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsInlineEditing;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWantsInlineEditing:(BOOL)editing
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsInlineEditing;
  swift_beginAccess();
  *(self + v5) = editing;
}

- (unint64_t)allowedResultOptions
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_allowedResultOptions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowedResultOptions:(unint64_t)options
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_allowedResultOptions;
  swift_beginAccess();
  *(self + v5) = options;
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

- (void)setIsForInputDashboard:(BOOL)dashboard
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForInputDashboard;
  swift_beginAccess();
  *(self + v5) = dashboard;
}

- (BOOL)isForAssistant
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForAssistant;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsForAssistant:(BOOL)assistant
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isForAssistant;
  swift_beginAccess();
  *(self + v5) = assistant;
}

- (BOOL)wantsFormSheetPresentation
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsFormSheetPresentation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setWantsFormSheetPresentation:(BOOL)presentation
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_wantsFormSheetPresentation;
  swift_beginAccess();
  *(self + v5) = presentation;
}

- (int64_t)formSheetUIType
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_formSheetUIType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFormSheetUIType:(int64_t)type
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_formSheetUIType;
  swift_beginAccess();
  *(self + v5) = type;
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

- (void)setIsQuestionnairePopover:(BOOL)popover
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isQuestionnairePopover;
  swift_beginAccess();
  *(self + v5) = popover;
}

- (int64_t)sourceResponderHorizontalSizeClass
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceResponderHorizontalSizeClass;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceResponderHorizontalSizeClass:(int64_t)class
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceResponderHorizontalSizeClass;
  swift_beginAccess();
  *(self + v5) = class;
}

- (BOOL)isWindowingModeEnabled
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWindowingModeEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsWindowingModeEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWindowingModeEnabled;
  swift_beginAccess();
  *(self + v5) = enabled;
}

- (BOOL)requestPromptEntry
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestPromptEntry;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRequestPromptEntry:(BOOL)entry
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_requestPromptEntry;
  swift_beginAccess();
  *(self + v5) = entry;
}

- (int64_t)sourceUserInterfaceIdiom
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceUserInterfaceIdiom;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceUserInterfaceIdiom:(int64_t)idiom
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceUserInterfaceIdiom;
  swift_beginAccess();
  *(self + v5) = idiom;
}

- (BOOL)isResumingFromModelEnrollment
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isResumingFromModelEnrollment;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsResumingFromModelEnrollment:(BOOL)enrollment
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isResumingFromModelEnrollment;
  swift_beginAccess();
  *(self + v5) = enrollment;
}

- (int64_t)hostingMode
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_hostingMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHostingMode:(int64_t)mode
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_hostingMode;
  swift_beginAccess();
  *(self + v5) = mode;
}

- (BOOL)isWebKitView
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWebKitView;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsWebKitView:(BOOL)view
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isWebKitView;
  swift_beginAccess();
  *(self + v5) = view;
}

- (BOOL)isFromHandoff
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isFromHandoff;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsFromHandoff:(BOOL)handoff
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_isFromHandoff;
  swift_beginAccess();
  *(self + v5) = handoff;
}

- (BOOL)includesTextListMarkers
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_includesTextListMarkers;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIncludesTextListMarkers:(BOOL)markers
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_includesTextListMarkers;
  swift_beginAccess();
  *(self + v5) = markers;
}

- (int64_t)sourceDataOwnerForCopy
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForCopy;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceDataOwnerForCopy:(int64_t)copy
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForCopy;
  swift_beginAccess();
  *(self + v5) = copy;
}

- (int64_t)sourceDataOwnerForPaste
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForPaste;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceDataOwnerForPaste:(int64_t)paste
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForPaste;
  swift_beginAccess();
  *(self + v5) = paste;
}

- (int64_t)sourceDataOwnerForDrag
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrag;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceDataOwnerForDrag:(int64_t)drag
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrag;
  swift_beginAccess();
  *(self + v5) = drag;
}

- (int64_t)sourceDataOwnerForDrop
{
  v3 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrop;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSourceDataOwnerForDrop:(int64_t)drop
{
  v5 = OBJC_IVAR____TtC14WritingToolsUI16WTStartupOptions_sourceDataOwnerForDrop;
  swift_beginAccess();
  *(self + v5) = drop;
}

- (id)asBSActionAndReturnError:(id *)error
{
  sub_1D45522CC();
  selfCopy = self;
  v5 = sub_1D455564C();

  return v5;
}

@end