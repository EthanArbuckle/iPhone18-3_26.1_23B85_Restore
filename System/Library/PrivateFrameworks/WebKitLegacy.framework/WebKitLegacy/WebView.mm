@interface WebView
+ (BOOL)_canHandleRequest:(id)request forMainFrame:(BOOL)frame;
+ (BOOL)_isUnderMemoryPressure;
+ (BOOL)_representationExistsForURLScheme:(id)scheme;
+ (BOOL)_viewClass:(Class *)class andRepresentationClass:(Class *)representationClass forMIMEType:(id)type allowingPlugins:(BOOL)plugins;
+ (BOOL)canShowFile:(id)file;
+ (BOOL)canShowMIMETypeAsHTML:(NSString *)MIMEType;
+ (Class)_getPDFRepresentationClass;
+ (Class)_getPDFViewClass;
+ (NSArray)MIMETypesShownAsHTML;
+ (id)_MIMETypeForFile:(id)file;
+ (id)_decodeData:(id)data;
+ (id)_generatedMIMETypeForURLScheme:(id)scheme;
+ (id)_productivityDocumentMIMETypes;
+ (id)_standardUserAgentWithApplicationName:(id)name;
+ (id)_supportedMIMETypes;
+ (unint64_t)_maxCacheModelInAnyInstance;
+ (void)_addOriginAccessAllowListEntryWithSourceOrigin:(id)origin destinationProtocol:(id)protocol destinationHost:(id)host allowDestinationSubdomains:(BOOL)subdomains;
+ (void)_addUserScriptToGroup:(id)group world:(id)world source:(id)source url:(id)url includeMatchPatternStrings:(id)strings excludeMatchPatternStrings:(id)patternStrings injectionTime:(int)time injectedFrames:(int)self0;
+ (void)_addUserStyleSheetToGroup:(id)group world:(id)world source:(id)source url:(id)url includeMatchPatternStrings:(id)strings excludeMatchPatternStrings:(id)patternStrings injectedFrames:(int)frames;
+ (void)_disableRemoteInspector;
+ (void)_enableRemoteInspector;
+ (void)_makeAllWebViewsPerformSelector:(SEL)selector;
+ (void)_preferencesRemovedNotification:(id)notification;
+ (void)_registerPluginMIMEType:(id)type;
+ (void)_registerURLSchemeAsAllowingDatabaseAccessInPrivateBrowsing:(id)browsing;
+ (void)_registerURLSchemeAsSecure:(id)secure;
+ (void)_registerViewClass:(Class)class representationClass:(Class)representationClass forURLScheme:(id)scheme;
+ (void)_removeAllUserContentFromGroup:(id)group;
+ (void)_removeOriginAccessAllowListEntryWithSourceOrigin:(id)origin destinationProtocol:(id)protocol destinationHost:(id)host allowDestinationSubdomains:(BOOL)subdomains;
+ (void)_removeUserScriptFromGroup:(id)group world:(id)world url:(id)url;
+ (void)_removeUserScriptsFromGroup:(id)group world:(id)world;
+ (void)_removeUserStyleSheetFromGroup:(id)group world:(id)world url:(id)url;
+ (void)_removeUserStyleSheetsFromGroup:(id)group world:(id)world;
+ (void)_reportException:(OpaqueJSValue *)exception inContext:(OpaqueJSContext *)context;
+ (void)_setAlwaysUsesComplexTextCodePath:(BOOL)path;
+ (void)_setCacheModel:(unint64_t)model;
+ (void)_setDomainRelaxationForbidden:(BOOL)forbidden forURLScheme:(id)scheme;
+ (void)_setLoadResourcesSerially:(BOOL)serially;
+ (void)_unregisterPluginMIMEType:(id)type;
+ (void)_unregisterViewClassAndRepresentationClassForMIMEType:(id)type;
+ (void)closeAllWebViews;
+ (void)enableWebThread;
+ (void)initialize;
+ (void)registerURLSchemeAsLocal:(NSString *)scheme;
+ (void)registerViewClass:(Class)viewClass representationClass:(Class)representationClass forMIMEType:(NSString *)MIMEType;
+ (void)setMIMETypesShownAsHTML:(NSArray *)MIMETypes;
- (BOOL)_canResetZoom:(BOOL)zoom;
- (BOOL)_canShowMIMEType:(id)type;
- (BOOL)_canZoomIn:(BOOL)in;
- (BOOL)_canZoomOut:(BOOL)out;
- (BOOL)_continuousCheckingAllowed;
- (BOOL)_cookieEnabled;
- (BOOL)_fetchCustomFixedPositionLayoutRect:(CGRect *)rect;
- (BOOL)_flushCompositingChanges;
- (BOOL)_inFastImageScalingMode;
- (BOOL)_isLoading;
- (BOOL)_isSoftwareRenderable;
- (BOOL)_isUsingAcceleratedCompositing;
- (BOOL)_isViewVisible;
- (BOOL)_locked_plugInsAreRunningInFrame:(id)frame;
- (BOOL)_paginationBehavesLikeColumns;
- (BOOL)_pluginsAreRunning;
- (BOOL)_requestStartDataInteraction:(CGPoint)interaction globalPosition:(CGPoint)position;
- (BOOL)_selectionIsAll;
- (BOOL)_selectionIsCaret;
- (BOOL)_setMediaLayer:(id)layer forPluginView:(id)view;
- (BOOL)_shouldChangeSelectedDOMRange:(id)range toDOMRange:(id)mRange affinity:(unint64_t)affinity stillSelecting:(BOOL)selecting;
- (BOOL)_tryToPerformDataInteraction:(id)interaction client:(CGPoint)client global:(CGPoint)global operation:(unint64_t)operation;
- (BOOL)_useDarkAppearance;
- (BOOL)_useElevatedUserInterfaceLevel;
- (BOOL)_useFixedLayout;
- (BOOL)_viewClass:(Class *)class andRepresentationClass:(Class *)representationClass forMIMEType:(id)type;
- (BOOL)_wantsTelephoneNumberParsing;
- (BOOL)_webGLEnabled;
- (BOOL)acceptsFirstResponder;
- (BOOL)becomeFirstResponder;
- (BOOL)canGoBack;
- (BOOL)canGoForward;
- (BOOL)canMakeTextLarger;
- (BOOL)canMakeTextSmaller;
- (BOOL)canMakeTextStandardSize;
- (BOOL)canMarkAllTextMatches;
- (BOOL)defersCallbacks;
- (BOOL)findString:(id)string options:(unint64_t)options;
- (BOOL)goBack;
- (BOOL)goForward;
- (BOOL)goToBackForwardItem:(WebHistoryItem *)item;
- (BOOL)isEditable;
- (BOOL)isTrackingRepaints;
- (BOOL)searchFor:(id)for direction:(BOOL)direction caseSensitive:(BOOL)sensitive wrap:(BOOL)wrap startInSelection:(BOOL)selection;
- (BOOL)shouldClose;
- (BOOL)supportsTextEncoding;
- (BOOL)tabKeyCyclesThroughElements;
- (BOOL)usesPageCache;
- (CGPoint)_convertPointFromRootView:(CGPoint)view;
- (CGRect)_convertRectFromRootView:(CGRect)view;
- (CGRect)_dataInteractionCaretRect;
- (CGRect)_draggedElementBounds;
- (CGSize)_fixedLayoutSize;
- (DOMCSSStyleDeclaration)computedStyleForElement:(DOMElement *)element pseudoElement:(NSString *)pseudoElement;
- (DOMCSSStyleDeclaration)styleDeclarationWithText:(NSString *)text;
- (DOMCSSStyleDeclaration)typingStyle;
- (DOMDocument)mainFrameDocument;
- (DOMRange)editableDOMRangeForPoint:(NSPoint)point;
- (DOMRange)selectedDOMRange;
- (DragData)dragDataForSession:(SEL)session client:(id)client global:(CGPoint)global operation:(CGPoint)operation;
- (NSDictionary)elementAtPoint:(NSPoint)point;
- (NSSelectionAffinity)selectionAffinity;
- (NSString)applicationNameForUserAgent;
- (NSString)customUserAgent;
- (NSString)groupName;
- (NSString)mainFrameTitle;
- (NSString)mainFrameURL;
- (NSString)preferencesIdentifier;
- (NSString)stringByEvaluatingJavaScriptFromString:(NSString *)script;
- (NSString)userAgentForURL:(NSURL *)URL;
- (NSUndoManager)undoManager;
- (NSWindow)hostWindow;
- (String)_userAgentString;
- (Vector<WTF::String,)_dictationAlternatives:()ObjectIdentifierGeneric<WebCore:()WTF:(unsigned long long>)f :ObjectIdentifierMainThreadAccessTraits<uint64_t> :DictationContextType;
- (WebBackForwardList)backForwardList;
- (WebEdgeInsets)_unobscuredSafeAreaInsets;
- (WebFrame)mainFrame;
- (WebFrame)selectedFrame;
- (WebScriptObject)windowScriptObject;
- (double)_gapBetweenPages;
- (double)_pageLength;
- (double)estimatedProgress;
- (float)_zoomMultiplier:(BOOL)multiplier;
- (float)mediaVolume;
- (float)pageSizeMultiplier;
- (float)textSizeMultiplier;
- (id)DOMRangeOfString:(id)string relativeTo:(id)to options:(unint64_t)options;
- (id)_UIDelegateForSelector:(SEL)selector;
- (id)_UIDelegateForwarder;
- (id)_UIKitDelegateForwarder;
- (id)_contentsOfUserInterfaceItem:(id)item;
- (id)_deviceOrientationProvider;
- (id)_displayURL;
- (id)_downloadURL:(id)l;
- (id)_editableElementsInRect:(CGRect)rect;
- (id)_editingDelegateForwarder;
- (id)_elementAtWindowPoint:(CGPoint)point;
- (id)_fixedPositionContent;
- (id)_focusedFrame;
- (id)_formDelegateForSelector:(SEL)selector;
- (id)_formDelegateForwarder;
- (id)_frameLoadDelegateForwarder;
- (id)_frameViewAtWindowPoint:(CGPoint)point;
- (id)_geolocationProvider;
- (id)_initWithArguments:(id)arguments;
- (id)_initWithFrame:(CGRect)frame frameName:(id)name groupName:(id)groupName;
- (id)_mainFrameOverrideEncoding;
- (id)_notificationIDForTesting:(OpaqueJSValue *)testing;
- (id)_notificationProvider;
- (id)_objectForIdentifier:(unint64_t)identifier;
- (id)_openNewWindowWithRequest:(id)request;
- (id)_policyDelegateForwarder;
- (id)_resourceLoadDelegateForwarder;
- (id)_responderForResponderOperations;
- (id)_selectedOrMainFrame;
- (id)_touchEventRegions;
- (id)_webcore_effectiveFirstResponder;
- (id)documentViewAtWindowPoint:(CGPoint)point;
- (id)initSimpleHTMLDocumentWithStyle:(id)style frame:(CGRect)frame preferences:(id)preferences groupName:(id)name;
- (id)inspector;
- (id)mainFrameIconURL;
- (id)previousValidKeyView;
- (id)rectsForTextMatches;
- (id)styleAtSelectionStart;
- (id)textIteratorForRect:(CGRect)rect;
- (id)trackedRepaintRects;
- (id)typingAttributes;
- (int)_keyboardUIMode;
- (int)_paginationMode;
- (int)_visibilityState;
- (unint64_t)_enteredDataInteraction:(id)interaction client:(CGPoint)client global:(CGPoint)global operation:(unint64_t)operation;
- (unint64_t)_layoutMilestones;
- (unint64_t)_pageCount;
- (unint64_t)_renderTreeSize;
- (unint64_t)_updatedDataInteraction:(id)interaction client:(CGPoint)client global:(CGPoint)global operation:(unint64_t)operation;
- (unint64_t)countMatchesForText:(id)text inDOMRange:(id)range options:(unint64_t)options highlight:(BOOL)highlight limit:(unint64_t)limit markMatches:(BOOL)matches;
- (unint64_t)dragDestinationActionMaskForSession:(id)session;
- (void)_addObject:(id)object forIdentifier:(unint64_t)identifier;
- (void)_addToAllWebViewsSet;
- (void)_attachScriptDebuggerToAllFrames;
- (void)_cacheFrameLoadDelegateImplementations;
- (void)_cacheHistoryDelegateImplementations;
- (void)_cacheResourceLoadDelegateImplementations;
- (void)_cacheScriptDebugDelegateImplementations;
- (void)_clearCredentials;
- (void)_clearDelegates;
- (void)_clearMainFrameName;
- (void)_clearNotificationPermissionState;
- (void)_closePluginDatabases;
- (void)_closeWindow;
- (void)_closeWithFastTeardown;
- (void)_commonInitializationWithFrameName:(id)name groupName:(id)groupName;
- (void)_destroyAllPlugIns;
- (void)_detachScriptDebuggerFromAllFrames;
- (void)_didCommitLoadForFrame:(id)frame;
- (void)_didCompleteRenderingFrame;
- (void)_didCompleteRenderingUpdateDisplay;
- (void)_didConcludeEditDrag;
- (void)_didFinishScrollingOrZooming;
- (void)_didScrollDocumentInFrameView:(id)view;
- (void)_dispatchPendingLoadRequests;
- (void)_dispatchTileDidDraw:(id)draw;
- (void)_documentScaleChanged;
- (void)_endedDataInteraction:(CGPoint)interaction global:(CGPoint)global;
- (void)_enterVideoFullscreenForVideoElement:(NakedPtr<WebCore:(unsigned int)element :HTMLVideoElement>)a3 mode:;
- (void)_executeCoreCommandByName:(id)name value:(id)value;
- (void)_exitVideoFullscreen;
- (void)_exitedDataInteraction:(id)interaction client:(CGPoint)client global:(CGPoint)global operation:(unint64_t)operation;
- (void)_forceRepaintForTesting;
- (void)_geolocationDidChangePosition:(id)position;
- (void)_geolocationDidFailWithMessage:(id)message;
- (void)_getWebCoreDictationAlternatives:(void *)alternatives fromTextAlternatives:(const void *)textAlternatives;
- (void)_insertNewlineInQuotedContent;
- (void)_invalidateUserAgentCache;
- (void)_listenForLayoutMilestones:(unint64_t)milestones;
- (void)_loadBackForwardListFromOtherView:(id)view;
- (void)_locked_recursivelyPerformPlugInSelector:(SEL)selector inFrame:(id)frame;
- (void)_mainCoreFrame;
- (void)_mouseDidMoveOverElement:(id)element modifierFlags:(unint64_t)flags;
- (void)_notificationDidClick:(id)click;
- (void)_notificationDidShow:(id)show;
- (void)_notificationsDidClose:(id)close;
- (void)_overflowScrollPositionChangedTo:(CGPoint)to forNode:(id)node isUserScroll:(BOOL)scroll;
- (void)_performResponderOperation:(SEL)operation with:(id)with;
- (void)_preferencesChanged:(id)changed;
- (void)_preferencesChangedGenerated:(id)generated;
- (void)_preferencesChangedNotification:(id)notification;
- (void)_removeFromAllWebViewsSet;
- (void)_removeObjectForIdentifier:(unint64_t)identifier;
- (void)_replaceCurrentHistoryItem:(id)item;
- (void)_replaceSelectionWithNode:(id)node matchStyle:(BOOL)style;
- (void)_resetAllGeolocationPermission;
- (void)_resetZoom:(id)zoom isTextOnly:(BOOL)only;
- (void)_restorePlugInsFromCache;
- (void)_retrieveKeyboardUIModeFromPreferences:(id)preferences;
- (void)_scaleWebView:(float)view atOrigin:(CGPoint)origin;
- (void)_scheduleRenderingUpdateForPendingTileCacheRepaint;
- (void)_scheduleUpdateRendering;
- (void)_setBrowserUserAgentProductVersion:(id)version buildVersion:(id)buildVersion bundleVersion:(id)bundleVersion;
- (void)_setCookieEnabled:(BOOL)enabled;
- (void)_setCustomFixedPositionLayoutRect:(CGRect)rect;
- (void)_setCustomFixedPositionLayoutRectInWebThread:(CGRect)thread synchronize:(BOOL)synchronize;
- (void)_setDeviceOrientationProvider:(id)provider;
- (void)_setFixedLayoutSize:(CGSize)size;
- (void)_setFontFallbackPrefersPictographs:(BOOL)pictographs;
- (void)_setFormDelegate:(id)delegate;
- (void)_setGapBetweenPages:(double)pages;
- (void)_setGeolocationProvider:(id)provider;
- (void)_setHostApplicationProcessIdentifier:(int)identifier auditToken:(id *)token;
- (void)_setIsVisible:(BOOL)visible;
- (void)_setNeedsUnrestrictedGetMatchedCSSRules:(BOOL)rules;
- (void)_setNotificationProvider:(id)provider;
- (void)_setObscuredTopContentInsetForTesting:(float)testing right:(float)right bottom:(float)bottom left:(float)left;
- (void)_setPageLength:(double)length;
- (void)_setPaginationBehavesLikeColumns:(BOOL)columns;
- (void)_setPaginationMode:(int)mode;
- (void)_setPortsForUpgradingInsecureSchemeForTesting:(unsigned __int16)testing withSecurePort:(unsigned __int16)port;
- (void)_setResourceLoadSchedulerSuspended:(BOOL)suspended;
- (void)_setSourceApplicationAuditData:(id)data;
- (void)_setUIKitDelegate:(id)delegate;
- (void)_setUnobscuredSafeAreaInsets:(WebEdgeInsets)insets;
- (void)_setUseDarkAppearance:(BOOL)appearance;
- (void)_setUseDarkAppearance:(BOOL)appearance useElevatedUserInterfaceLevel:(BOOL)level;
- (void)_setUseElevatedUserInterfaceLevel:(BOOL)level;
- (void)_setUseFastImageScalingMode:(BOOL)mode;
- (void)_setUseFixedLayout:(BOOL)layout;
- (void)_setUseSystemAppearance:(BOOL)appearance;
- (void)_setVisibilityState:(int)state isInitialState:(BOOL)initialState;
- (void)_setWantsTelephoneNumberParsing:(BOOL)parsing;
- (void)_setWebGLEnabled:(BOOL)enabled;
- (void)_setZoomMultiplier:(float)multiplier isTextOnly:(BOOL)only;
- (void)_simplifyMarkup:(id)markup endNode:(id)node;
- (void)_startAllPlugIns;
- (void)_startDrag:(const void *)drag;
- (void)_stopAllPlugIns;
- (void)_stopAllPlugInsForPageCache;
- (void)_synchronizeCustomFixedPositionLayoutRect;
- (void)_updateActiveState;
- (void)_updateRendering;
- (void)_updateScreenScaleFromWindow;
- (void)_updateVisibilityState;
- (void)_viewGeometryDidChange;
- (void)_wakWindowVisibilityChanged:(id)changed;
- (void)_willStartRenderingUpdateDisplay;
- (void)_willStartScrollingOrZooming;
- (void)_zoomIn:(id)in isTextOnly:(BOOL)only;
- (void)_zoomOut:(id)out isTextOnly:(BOOL)only;
- (void)addCaretChangeListener:(id)listener;
- (void)addVisitedLinks:(id)links;
- (void)applyStyle:(DOMCSSStyleDeclaration *)style;
- (void)caretChanged;
- (void)close;
- (void)dealloc;
- (void)deleteSelection;
- (void)hideFormValidationMessage;
- (void)insertDictationPhrases:(id)phrases metadata:(id)metadata;
- (void)makeTextLarger:(id)sender;
- (void)makeTextSmaller:(id)sender;
- (void)makeTextStandardSize:(id)sender;
- (void)registerForEditingDelegateNotification:(id)notification selector:(SEL)selector;
- (void)reloadFromOrigin:(id)sender;
- (void)removeVisitedLink:(id)link;
- (void)replaceSelectionWithArchive:(WebArchive *)archive;
- (void)replaceSelectionWithMarkupString:(NSString *)markupString;
- (void)replaceSelectionWithNode:(DOMNode *)node;
- (void)replaceSelectionWithText:(NSString *)text;
- (void)resetTrackedRepaints;
- (void)resumeAllMediaPlayback;
- (void)revealCurrentSelection;
- (void)scheduleInRunLoop:(id)loop forMode:(id)mode;
- (void)scrollDOMRangeToVisible:(id)visible;
- (void)scrollDOMRangeToVisible:(id)visible withInset:(double)inset;
- (void)setApplicationNameForUserAgent:(NSString *)applicationNameForUserAgent;
- (void)setBackgroundColor:(CGColor *)color;
- (void)setContinuousSpellCheckingEnabled:(BOOL)continuousSpellCheckingEnabled;
- (void)setCurrentNodeHighlight:(id)highlight;
- (void)setCustomTextEncodingName:(NSString *)customTextEncodingName;
- (void)setCustomUserAgent:(NSString *)customUserAgent;
- (void)setDefersCallbacks:(BOOL)callbacks;
- (void)setDrawsBackground:(BOOL)drawsBackground;
- (void)setEditable:(BOOL)editable;
- (void)setEditingDelegate:(id)editingDelegate;
- (void)setFrameLoadDelegate:(id)frameLoadDelegate;
- (void)setGroupName:(NSString *)groupName;
- (void)setHostWindow:(NSWindow *)hostWindow;
- (void)setMainFrameURL:(NSString *)mainFrameURL;
- (void)setMaintainsBackForwardList:(BOOL)flag;
- (void)setMediaStyle:(NSString *)mediaStyle;
- (void)setMediaVolume:(float)volume;
- (void)setNextKeyView:(id)view;
- (void)setPolicyDelegate:(id)policyDelegate;
- (void)setPreferences:(WebPreferences *)preferences;
- (void)setPreferencesIdentifier:(NSString *)preferencesIdentifier;
- (void)setResourceLoadDelegate:(id)resourceLoadDelegate;
- (void)setScriptDebugDelegate:(id)delegate;
- (void)setSelectTrailingWhitespaceEnabled:(BOOL)enabled;
- (void)setSelectedDOMRange:(DOMRange *)range affinity:(NSSelectionAffinity)selectionAffinity;
- (void)setShouldUpdateWhileOffscreen:(BOOL)shouldUpdateWhileOffscreen;
- (void)setShowingInspectorIndication:(BOOL)indication;
- (void)setSmartInsertDeleteEnabled:(BOOL)smartInsertDeleteEnabled;
- (void)setTabKeyCyclesThroughElements:(BOOL)elements;
- (void)setTextSizeMultiplier:(float)textSizeMultiplier;
- (void)setTracksRepaints:(BOOL)repaints;
- (void)setTypingStyle:(DOMCSSStyleDeclaration *)typingStyle;
- (void)setUIDelegate:(id)UIDelegate;
- (void)setUsesPageCache:(BOOL)cache;
- (void)stopLoading:(id)sender;
- (void)stopLoadingAndClear;
- (void)suspendAllMediaPlayback;
- (void)takeStringURLFrom:(id)sender;
- (void)toggleContinuousSpellChecking:(id)sender;
- (void)unmarkAllTextMatches;
- (void)unscheduleFromRunLoop:(id)loop forMode:(id)mode;
- (void)viewDidMoveToWindow;
@end

@implementation WebView

+ (void)_makeAllWebViewsPerformSelector:(SEL)selector
{
  if (byte_1ED6A6137)
  {
    if (qword_1ED6A6168)
    {
      [qword_1ED6A6168 makeObjectsPerformSelector:selector];
    }
  }

  else
  {
    qword_1ED6A6168 = 0;
    byte_1ED6A6137 = 1;
  }
}

- (void)_removeFromAllWebViewsSet
{
  if (byte_1ED6A6137)
  {
    if (qword_1ED6A6168)
    {
      CFSetRemoveValue(qword_1ED6A6168, self);
    }
  }

  else
  {
    qword_1ED6A6168 = 0;
    byte_1ED6A6137 = 1;
  }
}

- (void)_addToAllWebViewsSet
{
  if (byte_1ED6A6137)
  {
    Mutable = qword_1ED6A6168;
    if (qword_1ED6A6168)
    {
      goto LABEL_3;
    }
  }

  else
  {
    qword_1ED6A6168 = 0;
    byte_1ED6A6137 = 1;
  }

  Mutable = CFSetCreateMutable(0, 0, &NonRetainingSetCallbacks);
  if (byte_1ED6A6137)
  {
    v5 = qword_1ED6A6168;
    qword_1ED6A6168 = Mutable;
    if (!v5)
    {
LABEL_3:
      selfCopy4 = self;

      goto LABEL_5;
    }

    CFRelease(v5);
    if (byte_1ED6A6137 == 1)
    {
      Mutable = qword_1ED6A6168;
      selfCopy4 = self;
    }

    else
    {
      Mutable = 0;
      qword_1ED6A6168 = 0;
      byte_1ED6A6137 = 1;
      selfCopy4 = self;
    }
  }

  else
  {
    byte_1ED6A6137 = 1;
    qword_1ED6A6168 = Mutable;
    selfCopy4 = self;
  }

LABEL_5:
  CFSetSetValue(Mutable, selfCopy4);
}

+ (id)_standardUserAgentWithApplicationName:(id)name
{
  MEMORY[0x1CCA63A40](&v12, name);
  WebCore::standardUserAgentWithApplicationName();
  v3 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v14, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v14 = &stru_1F472E7E8;
    v11 = &stru_1F472E7E8;
  }

  v5 = v14;
  v14 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v14;
    v14 = 0;
    if (v7)
    {
    }
  }

  v8 = v13;
  v13 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  v9 = v12;
  v12 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

  return v5;
}

- (void)_setBrowserUserAgentProductVersion:(id)version buildVersion:(id)buildVersion bundleVersion:(id)bundleVersion
{
  bundleVersion = [MEMORY[0x1E696AEC0] stringWithFormat:@"Version/%@ Mobile/15E148 Safari/%@", buildVersion, version, bundleVersion];

  [(WebView *)self setApplicationNameForUserAgent:bundleVersion];
}

+ (void)_reportException:(OpaqueJSValue *)exception inContext:(OpaqueJSContext *)context
{
  if (exception && context)
  {
    JSC::JSLockHolder::JSLockHolder();
    v5 = *(16 * (*context & 0xFFFFFFFE) + 0x4C);
    v6 = *(16 * (*context & 0xFFFFFFFE) + 0x4C) != 0;
    v7 = 16 * v5;
    if (v5)
    {
      v8 = v7 == MEMORY[0x1E69E24D8];
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      do
      {
        v7 = *(v7 + 16);
        v6 = v7 != 0;
      }

      while (v7 != MEMORY[0x1E69E24D8] && v7 != 0);
    }

    if (v6)
    {
      WebCore::reportException();
    }

    MEMORY[0x1CCA63200](v10);
  }
}

- (void)_dispatchPendingLoadRequests
{
  v2 = WebCore::platformStrategies(self);
  if (v2[1])
  {
    v3 = v2[1];
  }

  else
  {
    v4 = v2;
    v3 = (*(*v2 + 16))();
    v4[1] = v3;
  }

  WebResourceLoadScheduler::servePendingRequests(v3, 0);
}

- (void)_commonInitializationWithFrameName:(id)name groupName:(id)groupName
{
  v251 = *MEMORY[0x1E69E9840];
  v7 = +[WebPreferences standardPreferences];
  [(WebPreferences *)v7 willAddToWebView];
  v8 = self->_private;
  if (v7)
  {
    v9 = v7;
  }

  m_ptr = v8->preferences.m_ptr;
  v8->preferences.m_ptr = v7;
  if (m_ptr)
  {
  }

  self->_private->mainFrameDocumentReady = 0;
  self->_private->drawsBackground = 1;
  selfCopy = 0x11040000FFFFFFFFLL;
  WebCore::cachedCGColor();
  v12 = self->_private;
  v13 = cf[0];
  cf[0] = 0;
  v14 = v12->backgroundColor.m_ptr;
  v12->backgroundColor.m_ptr = v13;
  if (v14)
  {
    CFRelease(v14);
    v15 = cf[0];
    cf[0] = 0;
    if (v15)
    {
      CFRelease(v15);
    }
  }

  if ((selfCopy & 0x8000000000000) != 0)
  {
    v16 = (selfCopy & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((selfCopy & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v16);
      WTF::fastFree(v16, v11);
    }
  }

  [(WebView *)self frame];
  v19 = [[WebFrameView alloc] initWithFrame:0.0, 0.0, v17, v18];
  [(WebFrameView *)v19 setAutoresizingMask:18];
  [(WebView *)self addSubview:v19];
  updateTouchBar = [(WebView *)self updateTouchBar];
  if ((byte_1ED6A6131 & 1) == 0)
  {
    WTF::logChannels(updateTouchBar);
    LOBYTE(v236) = 0;
    v237 = 0;
    v21 = WTF::LogChannels::initializeLogChannelsIfNecessary();
    WebCore::logChannels(v21);
    LOBYTE(v234) = 0;
    v235 = 0;
    WTF::LogChannels::initializeLogChannelsIfNecessary();
    {
      WTF::NeverDestroyed<WebKit::LogChannels,WTF::AnyThreadsAccessTraits>::NeverDestroyed<>(&WebKit::logChannels(void)::logChannels);
    }

    LOBYTE(v232) = 0;
    v233 = 0;
    v22 = WTF::LogChannels::initializeLogChannelsIfNecessary();
    WebPlatformStrategies::initializeIfNecessary(v22);
    v23 = initializeDOMWrapperHooks();
    WebCore::WebSQLiteDatabaseTrackerClient::sharedWebSQLiteDatabaseTrackerClient(v23);
    WebCore::SQLiteDatabaseTracker::setClient();
    if ([(WebPreferences *)v7 databasesEnabled])
    {
      +[WebDatabaseManager sharedWebDatabaseManager];
    }

    storageTrackerEnabled = [(WebPreferences *)v7 storageTrackerEnabled];
    if (storageTrackerEnabled)
    {
      WebKitInitializeStorageIfNecessary();
    }

    if ((byte_1ED6A6138 & 1) == 0)
    {
      v25 = WebCore::GamepadProvider::singleton(storageTrackerEnabled);
      WebCore::GameControllerGamepadProvider::singleton(v25);
      storageTrackerEnabled = WebCore::GamepadProvider::setSharedProvider();
      byte_1ED6A6138 = 1;
    }

    isMobileSafari = WTF::IOSApplication::isMobileSafari(storageTrackerEnabled);
    if (isMobileSafari)
    {
      isMobileSafari = MEMORY[0x1CCA66A40](1);
    }

    WebCore::AudioSession::enableMediaPlayback(isMobileSafari);
    v27 = NSTemporaryDirectory();
    MEMORY[0x1CCA63A40](&selfCopy, v27);
    WTF::FileSystemImpl::pathByAppendingComponent();
    WebCore::HTMLMediaElement::setMediaCacheDirectory(cf, v28);
    v30 = cf[0];
    cf[0] = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v29);
    }

    v31 = selfCopy;
    selfCopy = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v29);
    }

    byte_1ED6A6131 = 1;
  }

  MEMORY[0x1CCA63A40](&selfCopy, groupName);
  MEMORY[0x1CCA63A40](&v238, [(WebPreferences *)self->_private->preferences.m_ptr _localStorageDatabasePath]);
  WebViewGroup::getOrCreate(&selfCopy, &v238, cf);
  v33 = self->_private;
  v34 = cf[0];
  cf[0] = 0;
  v35 = v33->group.m_ptr;
  v33->group.m_ptr = v34;
  if (v35)
  {
    if (*v35 == 1)
    {
      WebViewGroup::~WebViewGroup(v35, v32);
      WTF::fastFree(v37, v38);
      v36 = v238;
      v238 = 0;
      if (!v36)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    --*v35;
  }

  v36 = v238;
  v238 = 0;
  if (!v36)
  {
    goto LABEL_37;
  }

LABEL_35:
  if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, v32);
  }

LABEL_37:
  v39 = selfCopy;
  selfCopy = 0;
  if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v39, v32);
  }

  v40 = self->_private->group.m_ptr;
  selfCopy = self;
  WTF::HashTable<WebView *,WebView *,WTF::IdentityExtractor,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTraits<WebView *>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v40 + 2, &selfCopy, cf);
  v41 = WTF::fastMalloc(0x18);
  *(v41 + 8) = 1;
  *v41 = &unk_1F472BE10;
  *(v41 + 16) = 0;
  WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  [(WebPreferences *)[(WebView *)self preferences] privateBrowsingEnabled];
  if (WebEditorClient::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebEditorClient::s_heapRef, v42);
  }

  else
  {
    NonCompact = WebEditorClient::operatorNewSlow(0xB8);
  }

  v44 = NonCompact;
  WebEditorClient::WebEditorClient(NonCompact, self);
  v231 = 0;
  v238 = v44;
  v45 = WTF::fastMalloc(0x10);
  *(v45 + 2) = 1;
  *v45 = &unk_1F472AFA8;
  v230 = v45;
  WebCore::WebRTCProvider::create(&v229, v45);
  v46 = WTF::fastMalloc(0x18);
  *(v46 + 16) = 1;
  *v46 = &unk_1F472BE38;
  *(v46 + 8) = 0;
  v47 = *(self->_private->group.m_ptr + 5);
  ++v47[2];
  v227 = v47;
  v228 = v46;
  v48 = WTF::fastMalloc(0x48);
  BackForwardList::BackForwardList(v48, self);
  v226 = v49;
  atomic_fetch_add((v41 + 8), 1u);
  v224 = v41;
  WebCore::CookieJar::create();
  v50 = WTF::fastMalloc(0x10);
  *v50 = &unk_1F472E6A0;
  v50[1] = self;
  v223 = v50;
  v51 = WTF::fastMalloc(0x10);
  *v51 = &unk_1F472C218;
  selfCopy = v51;
  v240 = 0;
  v241 = 0;
  FrameIdentifier = WebCore::generateFrameIdentifier(v51);
  v222 = 0;
  if (qword_1ED6A6198)
  {
    NonCompactSlow = bmalloc::api::tzoneAllocateNonCompact(qword_1ED6A6198, v52);
  }

  else
  {
    NonCompactSlow = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  *NonCompactSlow = &unk_1F472C240;
  NonCompactSlow[1] = 0;
  v220 = 0;
  v221 = NonCompactSlow;
  WebBroadcastChannelRegistry::getOrCreate([(WebPreferences *)[(WebView *)self preferences] privateBrowsingEnabled], &v218);
  v56 = v218;
  v218 = 0;
  v219 = v56;
  if (*MEMORY[0x1E69E2630])
  {
    v57 = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2630], v55);
  }

  else
  {
    v57 = WebCore::DummyStorageProvider::operatorNewSlow(0x18);
  }

  *(v57 + 1) = 0;
  *(v57 + 2) = 0;
  *v57 = &unk_1F472C2B8;
  v216 = 0;
  v217 = v57;
  WebCore::DummyModelPlayerProvider::create(&v214, v57);
  v58 = v214;
  v214 = 0;
  v215 = v58;
  v59 = WTF::fastMalloc(0x10);
  *(v59 + 2) = 1;
  *v59 = &unk_1F472C1A0;
  v213 = v59;
  v61 = LegacyHistoryItemClient::singleton(v59, v60);
  ++*(v61 + 8);
  v212 = v61;
  WebPaymentCoordinatorClient::create(v62, &v210);
  v64 = v210;
  v210 = 0;
  v211 = v64;
  if (WebChromeClientIOS::s_heapRef)
  {
    v65 = bmalloc::api::tzoneAllocateNonCompact(WebChromeClientIOS::s_heapRef, v63);
  }

  else
  {
    v65 = WebChromeClientIOS::operatorNewSlow(0x20);
  }

  v66 = v65;
  WebCore::ChromeClient::ChromeClient(v65);
  *v66 = &unk_1F472C480;
  *(v66 + 8) = 0;
  objc_initWeak(v66 + 2, self);
  *v66 = &unk_1F472CCE0;
  *(v66 + 6) = 0;
  v208 = 0;
  v209 = v66;
  if (WebCryptoClient::s_heapRef)
  {
    v68 = bmalloc::api::tzoneAllocateNonCompact(WebCryptoClient::s_heapRef, v67);
  }

  else
  {
    v68 = WebCryptoClient::operatorNewSlow(0x10);
  }

  v69 = v68;
  *v68 = &unk_1F472D518;
  objc_initWeak((v68 + 8), self);
  v207 = v69;
  if (qword_1ED6A61A0)
  {
    v71 = bmalloc::api::tzoneAllocateNonCompact(qword_1ED6A61A0, v70);
  }

  else
  {
    v71 = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  *v71 = &unk_1F472C330;
  v206 = v71;
  WebCore::DummyCredentialRequestCoordinatorClient::create(&v204, v71);
  v72 = v204;
  v204 = 0;
  v205 = v72;
  v201 = &v219;
  v202 = &v217;
  v199 = &v222;
  v200 = &v221;
  v197 = &selfCopy;
  v198 = FrameIdentifier;
  v195 = &v225;
  v196 = &v223;
  v193 = &v227;
  v194 = &v226;
  WebCore::PageConfiguration::PageConfiguration();
  v74 = v205;
  v205 = 0;
  if (v74)
  {
    if (v74[2] == 1)
    {
      (*(*v74 + 8))(v74);
      v75 = v204;
      v204 = 0;
      if (!v75)
      {
        goto LABEL_63;
      }

      goto LABEL_58;
    }

    --v74[2];
  }

  v75 = v204;
  v204 = 0;
  if (!v75)
  {
    goto LABEL_63;
  }

LABEL_58:
  if (v75[2] == 1)
  {
    (*(*v75 + 8))(v75);
  }

  else
  {
    --v75[2];
  }

LABEL_63:
  v76 = v206;
  v206 = 0;
  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  v77 = v207;
  v207 = 0;
  if (v77)
  {
    (*(*v77 + 8))(v77);
  }

  v78 = v209;
  v209 = 0;
  if (v78)
  {
    (*(*v78 + 2040))(v78);
  }

  v79 = v208;
  v208 = 0;
  if (v79)
  {
    objc_destroyWeak(v79 + 2);
    WebCore::ChromeClient::~ChromeClient(v79);
    bmalloc::api::tzoneFree(v80, v81);
  }

  v82 = v211;
  v211 = 0;
  if (v82)
  {
    (*(*v82 + 8))(v82);
  }

  if (!v210)
  {
LABEL_76:
    v83 = v212;
    v212 = 0;
    if (v83)
    {
      goto LABEL_77;
    }

LABEL_81:
    v84 = v213;
    v213 = 0;
    if (!v84)
    {
      goto LABEL_84;
    }

    goto LABEL_82;
  }

  if (*(v210 + 2) != 1)
  {
    --*(v210 + 2);
    goto LABEL_76;
  }

  bmalloc::api::tzoneFree(v210, v73);
  v83 = v212;
  v212 = 0;
  if (!v83)
  {
    goto LABEL_81;
  }

LABEL_77:
  if (v83[2] == 1)
  {
    (*(*v83 + 8))(v83);
    v84 = v213;
    v213 = 0;
    if (!v84)
    {
LABEL_84:
      v85 = v215;
      v215 = 0;
      if (v85)
      {
        goto LABEL_85;
      }

LABEL_91:
      v86 = v214;
      v214 = 0;
      if (!v86)
      {
        goto LABEL_94;
      }

      goto LABEL_92;
    }
  }

  else
  {
    --v83[2];
    v84 = v213;
    v213 = 0;
    if (!v84)
    {
      goto LABEL_84;
    }
  }

LABEL_82:
  if (*(v84 + 2) != 1)
  {
    --*(v84 + 2);
    goto LABEL_84;
  }

  (*(*v84 + 8))(v84);
  v85 = v215;
  v215 = 0;
  if (!v85)
  {
    goto LABEL_91;
  }

LABEL_85:
  if (v85[4] == 1)
  {
    (*(*v85 + 8))(v85);
    v86 = v214;
    v214 = 0;
    if (!v86)
    {
LABEL_94:
      v87 = v217;
      v217 = 0;
      if (!v87)
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }
  }

  else
  {
    --v85[4];
    v86 = v214;
    v214 = 0;
    if (!v86)
    {
      goto LABEL_94;
    }
  }

LABEL_92:
  if (v86[4] != 1)
  {
    --v86[4];
    goto LABEL_94;
  }

  (*(*v86 + 8))(v86);
  v87 = v217;
  v217 = 0;
  if (v87)
  {
LABEL_95:
    (*(*v87 + 8))(v87);
  }

LABEL_96:
  v88 = v216;
  v216 = 0;
  if (v88)
  {
    v89 = *(v88 + 2);
    *(v88 + 2) = 0;
    if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v89, v73);
    }

    v90 = *(v88 + 1);
    *(v88 + 1) = 0;
    if (v90 && atomic_fetch_add(v90 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v90 + 2);
      (*(*v90 + 8))(v90);
    }

    bmalloc::api::tzoneFree(v88, v73);
  }

  v91 = v219;
  v219 = 0;
  if (v91)
  {
    if (v91[2] == 1)
    {
      (*(*v91 + 8))(v91);
      v92 = v218;
      if (!v218)
      {
        goto LABEL_117;
      }

      goto LABEL_108;
    }

    --v91[2];
  }

  v92 = v218;
  if (!v218)
  {
    goto LABEL_117;
  }

LABEL_108:
  if (v92[2] == 1)
  {
    (*(*v92 + 8))(v92);
  }

  else
  {
    --v92[2];
  }

LABEL_117:
  v93 = v221;
  v221 = 0;
  if (v93)
  {
    (*(*v93 + 8))(v93);
  }

  v94 = v220;
  v220 = 0;
  if (v94)
  {
    v95 = *(v94 + 1);
    *(v94 + 1) = 0;
    if (v95)
    {
      if (v95[2] == 1)
      {
        v96 = v94;
        (*(*v95 + 8))(v95);
        v94 = v96;
      }

      else
      {
        --v95[2];
      }
    }

    bmalloc::api::tzoneFree(v94, v73);
  }

  v97 = v222;
  v222 = 0;
  if (!v97)
  {
LABEL_128:
    v98 = v241;
    if (v241 == 255)
    {
      goto LABEL_136;
    }

    goto LABEL_131;
  }

  if (v97[4] != 1)
  {
    --v97[4];
    goto LABEL_128;
  }

  (*(*v97 + 8))(v97);
  v98 = v241;
  if (v241 == 255)
  {
    goto LABEL_136;
  }

LABEL_131:
  v99 = selfCopy;
  selfCopy = 0;
  if (v98)
  {
    if (!v99)
    {
      goto LABEL_136;
    }
  }

  else if (!v99)
  {
    goto LABEL_136;
  }

  (*(*v99 + 8))(v99);
LABEL_136:
  v100 = v223;
  v223 = 0;
  if (v100)
  {
    (*(*v100 + 8))(v100);
  }

  v101 = v225;
  v225 = 0;
  if (v101)
  {
    if (v101[4] == 1)
    {
      (*(*v101 + 120))(v101);
      v102 = v224;
      v224 = 0;
      if (!v102)
      {
        goto LABEL_144;
      }

      goto LABEL_142;
    }

    --v101[4];
  }

  v102 = v224;
  v224 = 0;
  if (!v102)
  {
    goto LABEL_144;
  }

LABEL_142:
  if (atomic_fetch_add(v102 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v102 + 2);
    (*(*v102 + 16))(v102);
  }

LABEL_144:
  v103 = v226;
  v226 = 0;
  if (!v103)
  {
    goto LABEL_147;
  }

  if (v103[2] != 1)
  {
    --v103[2];
LABEL_147:
    v104 = v227;
    v227 = 0;
    if (v104)
    {
      goto LABEL_148;
    }

LABEL_154:
    v105 = v228;
    v228 = 0;
    if (!v105)
    {
      goto LABEL_157;
    }

    goto LABEL_155;
  }

  (*(*v103 + 8))(v103);
  v104 = v227;
  v227 = 0;
  if (!v104)
  {
    goto LABEL_154;
  }

LABEL_148:
  if (v104[2] == 1)
  {
    (*(*v104 + 8))(v104);
    v105 = v228;
    v228 = 0;
    if (!v105)
    {
      goto LABEL_157;
    }
  }

  else
  {
    --v104[2];
    v105 = v228;
    v228 = 0;
    if (!v105)
    {
      goto LABEL_157;
    }
  }

LABEL_155:
  if (v105[4] == 1)
  {
    (*(*v105 + 16))(v105);
    v106 = v229;
    v229 = 0;
    if (!v106)
    {
      goto LABEL_159;
    }

    goto LABEL_158;
  }

  --v105[4];
LABEL_157:
  v106 = v229;
  v229 = 0;
  if (v106)
  {
LABEL_158:
    (*(*v106 + 8))(v106);
  }

LABEL_159:
  v107 = v230;
  v230 = 0;
  if (!v107 || atomic_fetch_add(v107 + 2, 0xFFFFFFFF) != 1)
  {
    v108 = v238;
    v238 = 0;
    if (!v108)
    {
      goto LABEL_163;
    }

    goto LABEL_162;
  }

  atomic_store(1u, v107 + 2);
  (*(*v107 + 24))(v107);
  v108 = v238;
  v238 = 0;
  if (v108)
  {
LABEL_162:
    (*(*v108 + 8))(v108);
  }

LABEL_163:
  if (v231)
  {
    WebEditorClient::~WebEditorClient(v231);
    bmalloc::api::tzoneFree(v109, v110);
  }

  if (qword_1ED6A6170)
  {
    v111 = bmalloc::api::tzoneAllocateNonCompact(qword_1ED6A6170, v73);
  }

  else
  {
    v111 = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  v112 = v111;
  WebInspectorClient::WebInspectorClient(v111, self);
  v114 = v245;
  v245 = v112;
  if (v114)
  {
    (*(*v114 + 8))(v114);
  }

  if (WebDragClient::s_heapRef)
  {
    v115 = bmalloc::api::tzoneAllocateNonCompact(WebDragClient::s_heapRef, v113);
  }

  else
  {
    v115 = WebDragClient::operatorNewSlow(0x10);
  }

  *v115 = &unk_1F472D918;
  v115[1] = self;
  v117 = v244;
  v244 = v115;
  if (v117)
  {
    (*(*v117 + 80))(v117);
  }

  if (WebAlternativeTextClient::s_heapRef)
  {
    v118 = bmalloc::api::tzoneAllocateNonCompact(WebAlternativeTextClient::s_heapRef, v116);
  }

  else
  {
    v118 = WebAlternativeTextClient::operatorNewSlow(0x18);
  }

  *(v118 + 8) = 0;
  *v118 = &unk_1F472C428;
  *(v118 + 16) = self;
  v121 = v243;
  v243 = v118;
  if (v121)
  {
    (*(*v121 + 8))(v121);
  }

  if (atomic_load_explicit(&qword_1ED6A6178, memory_order_acquire) != -1)
  {
    selfCopy = &v231;
    v238 = &selfCopy;
    std::__call_once(&qword_1ED6A6178, &v238, std::__call_once_proxy[abi:sn200100]<std::tuple<webApplicationCacheStorage(void)::$_0 &&>>);
  }

  if (byte_1ED6A6139 == 1)
  {
    v122 = qword_1ED6A6180;
    ++*qword_1ED6A6180;
    v123 = v246;
    v246 = v122;
    if (!v123)
    {
      goto LABEL_185;
    }
  }

  else
  {
    WebCore::ApplicationCacheStorage::create(&selfCopy, v119, v120);
    v189 = selfCopy;
    selfCopy = 0;
    WTF::Ref<WebCore::ApplicationCacheStorage,WTF::RawPtrTraits<WebCore::ApplicationCacheStorage>,WTF::DefaultRefDerefTraits<WebCore::ApplicationCacheStorage>>::~Ref(&selfCopy, v190);
    qword_1ED6A6180 = v189;
    byte_1ED6A6139 = 1;
    ++*v189;
    v123 = v246;
    v246 = v189;
    if (!v123)
    {
      goto LABEL_185;
    }
  }

  if (*v123 == 1)
  {
    WebCore::ApplicationCacheStorage::~ApplicationCacheStorage(v123, v119);
    WTF::fastFree(v124, v125);
  }

  else
  {
    --*v123;
  }

LABEL_185:
  {
    v126 = WebDatabaseProvider::singleton(void)::databaseProvider;
    ++*(WebDatabaseProvider::singleton(void)::databaseProvider + 8);
    v127 = v247;
    v247 = v126;
    if (!v127)
    {
      goto LABEL_190;
    }
  }

  else
  {
    v191 = WTF::fastMalloc(0x18);
    *(v191 + 8) = 1;
    *v191 = &unk_1F472D5D8;
    *(v191 + 16) = 0;
    WebDatabaseProvider::singleton(void)::databaseProvider = v191;
    *(v191 + 8) = 2;
    v127 = v247;
    v247 = v191;
    if (!v127)
    {
      goto LABEL_190;
    }
  }

  if (v127[2] == 1)
  {
    (*(*v127 + 8))(v127);
  }

  else
  {
    --v127[2];
  }

LABEL_190:
  {
    v128 = WebPluginInfoProvider::singleton(void)::pluginInfoProvider;
    ++*(WebPluginInfoProvider::singleton(void)::pluginInfoProvider + 16);
    v129 = v248;
    v248 = v128;
    if (!v129)
    {
      goto LABEL_195;
    }
  }

  else
  {
    v192 = WTF::fastMalloc(0x28);
    *(v192 + 16) = 1;
    *(v192 + 24) = 0;
    *(v192 + 32) = 0;
    *v192 = &unk_1F472E620;
    *(v192 + 8) = 0;
    WebPluginInfoProvider::singleton(void)::pluginInfoProvider = v192;
    *(v192 + 16) = 2;
    v129 = v248;
    v248 = v192;
    if (!v129)
    {
      goto LABEL_195;
    }
  }

  if (v129[4] == 1)
  {
    (*(*v129 + 8))(v129);
  }

  else
  {
    --v129[4];
  }

LABEL_195:
  v130 = WebViewGroup::storageNamespaceProvider(self->_private->group.m_ptr);
  ++*(v130 + 2);
  v131 = v249;
  v249 = v130;
  if (v131)
  {
    if (*(v131 + 2) == 1)
    {
      (*(*v131 + 8))(v131);
    }

    else
    {
      --*(v131 + 2);
    }
  }

  v132 = *(self->_private->group.m_ptr + 6);
  ++v132[2];
  v133 = v250;
  v250 = v132;
  if (v133)
  {
    if (v133[2] == 1)
    {
      (*(*v133 + 8))(v133);
    }

    else
    {
      --v133[2];
    }
  }

  WebCore::Page::create();
  v141 = self->_private;
  v142 = selfCopy;
  selfCopy = 0;
  v143 = v141->page.m_ptr;
  v141->page.m_ptr = v142;
  if (v143)
  {
    v144 = *(v143 + 2) - 1;
    if (*(v143 + 2) == 1)
    {
      v184 = MEMORY[0x1CCA673C0](v143, v134, v135, v136, v137, v138, v139, v140, &v227, &v226, &v225, &v223, &selfCopy, FrameIdentifier, &v222, &v221, &v219, &v217);
      bmalloc::api::tzoneFree(v184, v185);
      v143 = selfCopy;
      selfCopy = 0;
      if (!v143)
      {
        goto LABEL_206;
      }

      v144 = *(v143 + 2) - 1;
      if (*(v143 + 2) == 1)
      {
        v186 = MEMORY[0x1CCA673C0]();
        bmalloc::api::tzoneFree(v186, v187);
        goto LABEL_206;
      }
    }

    *(v143 + 2) = v144;
  }

LABEL_206:
  v145 = self->_private->page.m_ptr;
  if (!*v145 && (v146 = WTF::fastCompactMalloc(0x10), *v146 = 1, *(v146 + 8) = v145, v147 = *v145, *v145 = v146, v147) && atomic_fetch_add(v147, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v147);
    WTF::fastFree(v147, v134);
    v188 = *v145;
    atomic_fetch_add(*v145, 1u);
    v149 = *(v41 + 16);
    *(v41 + 16) = v188;
    if (!v149)
    {
      goto LABEL_212;
    }
  }

  else
  {
    v148 = *v145;
    atomic_fetch_add(*v145, 1u);
    v149 = *(v41 + 16);
    *(v41 + 16) = v148;
    if (!v149)
    {
      goto LABEL_212;
    }
  }

  if (atomic_fetch_add(v149, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v149);
    WTF::fastFree(v149, v134);
  }

LABEL_212:
  v150 = self->_private->page.m_ptr;
  MEMORY[0x1CCA63A40](&selfCopy, groupName);
  WebCore::Page::setGroupName(v150, &selfCopy);
  v152 = selfCopy;
  selfCopy = 0;
  if (v152 && atomic_fetch_add_explicit(v152, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v152, v151);
  }

  v153 = self->_private->page.m_ptr;
  if (WebGeolocationClient::s_heapRef)
  {
    v154 = bmalloc::api::tzoneAllocateNonCompact(WebGeolocationClient::s_heapRef, v151);
  }

  else
  {
    v154 = WebGeolocationClient::operatorNewSlow(0x18);
  }

  v156 = v154;
  *(v154 + 8) = 1;
  *v154 = &unk_1F472DD60;
  *(v154 + 16) = self;
  WebCore::provideGeolocationTo(v153, v154, v155);
  if (v156[2] == 1)
  {
    (*(*v156 + 24))(v156);
    v158 = self->_private->page.m_ptr;
    v159 = WebNotificationClient::s_heapRef;
    if (WebNotificationClient::s_heapRef)
    {
      goto LABEL_219;
    }
  }

  else
  {
    --v156[2];
    v158 = self->_private->page.m_ptr;
    v159 = WebNotificationClient::s_heapRef;
    if (WebNotificationClient::s_heapRef)
    {
LABEL_219:
      v160 = bmalloc::api::tzoneAllocateNonCompact(v159, v157);
      goto LABEL_220;
    }
  }

  v160 = WebNotificationClient::operatorNewSlow(0x28);
LABEL_220:
  *v160 = &unk_1F472E188;
  *(v160 + 8) = self;
  *(v160 + 16) = 0;
  *(v160 + 24) = 0;
  *(v160 + 32) = 0;
  WebCore::provideNotification(v158, v160, v161);
  {
    WebMediaKeySystemClient::singleton(void)::client = &unk_1F472E088;
    *algn_1EC2613A8 = 0;
  }

  WebCore::provideMediaKeySystemTo();
  WebCore::Page::setInspectable(self->_private->page.m_ptr);
  v162 = self->_private->page.m_ptr;
  [(WebView *)self window];
  WebCore::Page::setCanStartMedia(v162);
  v163 = *(self->_private->page.m_ptr + 15);
  MEMORY[0x1CCA63A40](&selfCopy, [(WebPreferences *)[(WebView *)self preferences] _localStorageDatabasePath]);
  v165 = selfCopy;
  if (selfCopy)
  {
    atomic_fetch_add_explicit(selfCopy, 2u, memory_order_relaxed);
  }

  v166 = *(v163 + 448);
  *(v163 + 448) = v165;
  if (v166 && atomic_fetch_add_explicit(v166, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v166, v164);
  }

  v167 = selfCopy;
  selfCopy = 0;
  if (v167 && atomic_fetch_add_explicit(v167, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v167, v164);
  }

  *(*(self->_private->page.m_ptr + 15) + 552) = 5242880;
  [(WebView *)self _updateScreenScaleFromWindow:v193];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__wakWindowScreenScaleChanged_ name:*MEMORY[0x1E69E21F0] object:0];
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__wakWindowVisibilityChanged_ name:*MEMORY[0x1E69E21F8] object:0];
  v170 = [[WebFixedPositionContent alloc] initWithWebView:self];
  v171 = self->_private;
  v172 = v171->_fixedPositionContent.m_ptr;
  v171->_fixedPositionContent.m_ptr = v170;
  if (v172)
  {
  }

  self->_private->deviceOrientation = [-[WebView _UIKitDelegateForwarder](self "_UIKitDelegateForwarder")];
  if ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
  {
    -[WebView setSmartInsertDeleteEnabled:](self, "setSmartInsertDeleteEnabled:", [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")]);
  }

  v174 = self->_private->page.m_ptr;
  WTF::AtomStringImpl::add(&selfCopy, name, v173);
  v238 = selfCopy;
  [WebFrame _createMainFrameWithPage:v174 frameName:&v238 frameView:v19];
  v176 = v238;
  v238 = 0;
  if (v176 && atomic_fetch_add_explicit(v176, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v176, v175);
  }

  v177 = WebThreadNSRunLoop();
  v178 = overriddenWebKitLinkTimeVersion;
  if (!overriddenWebKitLinkTimeVersion)
  {
    v178 = NSVersionOfLinkTimeLibrary("UIKit");
  }

  v179 = MEMORY[0x1E695E8D0];
  if (HIWORD(v178) <= 0xA68u)
  {
    v179 = MEMORY[0x1E695D918];
  }

  [(WebView *)self scheduleInRunLoop:v177 forMode:*v179];
  [(WebView *)self _addToAllWebViewsSet];
  nextKeyView = [(WebView *)self nextKeyView];
  if (nextKeyView && v19 != nextKeyView)
  {
    [(WebFrameView *)v19 setNextKeyView:nextKeyView];
  }

  v203.receiver = self;
  v203.super_class = WebView;
  [(WebView *)&v203 setNextKeyView:v19];
  if ([objc_opt_class() shouldIncludeInWebKitStatistics])
  {
    ++WebViewCount;
  }

  [(WebView *)self _setIsVisible:[(WebView *)self _isViewVisible]];
  preferences = [(WebView *)self preferences];
  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__preferencesChangedNotification_ name:WebPreferencesChangedInternalNotification[0] object:preferences];
  [(WebView *)self _preferencesChanged:preferences];
  WebCore::Settings::setFontFallbackPrefersPictographs(*(self->_private->page.m_ptr + 15));
  v183 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if ((v183 & 1) == 0)
  {
    WebCore::registerMemoryReleaseNotifyCallbacks(v183);
    if (atomic_load_explicit(&qword_1ED6A6158, memory_order_acquire) != -1)
    {
      selfCopy = &v231;
      v238 = &selfCopy;
      std::__call_once(&qword_1ED6A6158, &v238, std::__call_once_proxy[abi:sn200100]<std::tuple<WebInstallMemoryPressureHandler::$_0 &&>>);
    }
  }

  MEMORY[0x1CCA65F00](cf);
  if (atomic_fetch_add((v41 + 8), 0xFFFFFFFF) != 1)
  {
    if (!v19)
    {
      return;
    }

    goto LABEL_251;
  }

  atomic_store(1u, (v41 + 8));
  (*(*v41 + 16))(v41);
  if (v19)
  {
LABEL_251:
  }
}

- (id)_initWithFrame:(CGRect)frame frameName:(id)name groupName:(id)groupName
{
  v9.receiver = self;
  v9.super_class = WebView;
  v7 = [(WebView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v7)
  {
    v7->_private = objc_alloc_init(WebViewPrivate);
    [(WebView *)v7 _commonInitializationWithFrameName:name groupName:groupName];
    [(WebView *)v7 setMaintainsBackForwardList:1];
  }

  return v7;
}

+ (id)_supportedMIMETypes
{
  +[WebPluginDatabase sharedDatabase];
  v2 = [WebFrameView _viewTypesAllowImageTypeOmission:0];

  return [v2 allKeys];
}

+ (void)enableWebThread
{
  if ((+[WebView(WebPrivate) enableWebThread]::isWebThreadEnabled & 1) == 0)
  {
    objc_opt_class();
    WebCoreObjCDeallocOnWebThread();
    objc_opt_class();
    WebCoreObjCDeallocOnWebThread();
    objc_opt_class();
    WebCoreObjCDeallocOnWebThread();
    objc_opt_class();
    WebCoreObjCDeallocOnWebThread();
    objc_opt_class();
    WebCoreObjCDeallocOnWebThread();
    objc_opt_class();
    WebCoreObjCDeallocOnWebThread();
    objc_opt_class();
    WebCoreObjCDeallocOnWebThread();
    objc_opt_class();
    WebCoreObjCDeallocOnWebThread();
    objc_opt_class();
    WebCoreObjCDeallocOnWebThread();
    objc_opt_class();
    WebCoreObjCDeallocOnWebThread();
    WebThreadEnable();
    +[WebView(WebPrivate) enableWebThread]::isWebThreadEnabled = 1;
  }
}

- (id)initSimpleHTMLDocumentWithStyle:(id)style frame:(CGRect)frame preferences:(id)preferences groupName:(id)name
{
  height = frame.size.height;
  width = frame.size.width;
  v218 = *MEMORY[0x1E69E9840];
  v205.receiver = self;
  v205.super_class = WebView;
  v10 = [(WebView *)&v205 initWithFrame:frame.origin.x, frame.origin.y];
  if (!v10)
  {
    return v10;
  }

  v10->_private = objc_alloc_init(WebViewPrivate);
  if (preferences)
  {
    [preferences willAddToWebView];
    p_m_ptr = &v10->_private->preferences.m_ptr;
  }

  else
  {
    preferences = +[WebPreferences standardPreferences];
    [preferences willAddToWebView];
    p_m_ptr = &v10->_private->preferences.m_ptr;
    if (!preferences)
    {
      goto LABEL_6;
    }
  }

  preferencesCopy = preferences;
LABEL_6:
  v13 = *p_m_ptr;
  *p_m_ptr = preferences;
  if (v13)
  {
  }

  v10->_private->mainFrameDocumentReady = 0;
  v10->_private->drawsBackground = 1;
  v207 = 0x11040000FFFFFFFFLL;
  WebCore::cachedCGColor();
  v15 = v10->_private;
  v16 = cf[0];
  cf[0] = 0;
  m_ptr = v15->backgroundColor.m_ptr;
  v15->backgroundColor.m_ptr = v16;
  if (m_ptr)
  {
    CFRelease(m_ptr);
    v18 = cf[0];
    cf[0] = 0;
    if (v18)
    {
      CFRelease(v18);
    }
  }

  if ((v207 & 0x8000000000000) != 0)
  {
    v19 = (v207 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v207 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v19);
      WTF::fastFree(v19, v14);
    }
  }

  height = [[WebFrameView alloc] initWithFrame:0.0, 0.0, width, height];
  [(WebFrameView *)height setAutoresizingMask:18];
  [(WebView *)v10 addSubview:height];
  MEMORY[0x1CCA63A40](&v207, name);
  MEMORY[0x1CCA63A40](&v206, [(WebPreferences *)v10->_private->preferences.m_ptr _localStorageDatabasePath]);
  WebViewGroup::getOrCreate(&v207, &v206, cf);
  v22 = v10->_private;
  v23 = cf[0];
  cf[0] = 0;
  v24 = v22->group.m_ptr;
  v22->group.m_ptr = v23;
  if (v24)
  {
    if (*v24 == 1)
    {
      WebViewGroup::~WebViewGroup(v24, v21);
      WTF::fastFree(v26, v27);
      v25 = v206;
      v206 = 0;
      if (!v25)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    --*v24;
  }

  v25 = v206;
  v206 = 0;
  if (!v25)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v21);
  }

LABEL_22:
  v28 = v207;
  v207 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v21);
  }

  v29 = v10->_private->group.m_ptr;
  v207 = v10;
  WTF::HashTable<WebView *,WebView *,WTF::IdentityExtractor,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTraits<WebView *>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v29 + 2, &v207, cf);
  v30 = WTF::fastMalloc(0x18);
  *(v30 + 8) = 1;
  *v30 = &unk_1F472BE10;
  *(v30 + 16) = 0;
  WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  [(WebPreferences *)[(WebView *)v10 preferences] privateBrowsingEnabled];
  if (WebEditorClient::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebEditorClient::s_heapRef, v31);
  }

  else
  {
    NonCompact = WebEditorClient::operatorNewSlow(0xB8);
  }

  v33 = NonCompact;
  WebEditorClient::WebEditorClient(NonCompact, v10);
  v204 = 0;
  v206 = v33;
  v34 = WTF::fastMalloc(0x10);
  *(v34 + 2) = 1;
  *v34 = &unk_1F472AFA8;
  v203 = v34;
  WebCore::WebRTCProvider::create(&v202, v34);
  v35 = WTF::fastMalloc(0x18);
  *(v35 + 16) = 1;
  *v35 = &unk_1F472BE38;
  *(v35 + 8) = 0;
  v201 = v35;
  v36 = *(v10->_private->group.m_ptr + 5);
  ++v36[2];
  v200 = v36;
  v37 = WTF::fastMalloc(0x48);
  BackForwardList::BackForwardList(v37, v10);
  v199 = v38;
  atomic_fetch_add((v30 + 8), 1u);
  v197 = v30;
  WebCore::CookieJar::create();
  v39 = WTF::fastMalloc(0x10);
  *v39 = &unk_1F472E6A0;
  v39[1] = v10;
  v196 = v39;
  v40 = WTF::fastMalloc(0x10);
  *v40 = &unk_1F472C360;
  v207 = v40;
  v208 = 0;
  v209 = 0;
  FrameIdentifier = WebCore::generateFrameIdentifier(v40);
  v195 = 0;
  if (qword_1ED6A6198)
  {
    NonCompactSlow = bmalloc::api::tzoneAllocateNonCompact(qword_1ED6A6198, v41);
  }

  else
  {
    NonCompactSlow = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  *NonCompactSlow = &unk_1F472C240;
  NonCompactSlow[1] = 0;
  v193 = 0;
  v194 = NonCompactSlow;
  WebBroadcastChannelRegistry::getOrCreate([(WebPreferences *)[(WebView *)v10 preferences] privateBrowsingEnabled], &v191);
  v45 = v191;
  v191 = 0;
  v192 = v45;
  if (*MEMORY[0x1E69E2630])
  {
    v46 = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2630], v44);
  }

  else
  {
    v46 = WebCore::DummyStorageProvider::operatorNewSlow(0x18);
  }

  *(v46 + 1) = 0;
  *(v46 + 2) = 0;
  *v46 = &unk_1F472C2B8;
  v189 = 0;
  v190 = v46;
  WebCore::DummyModelPlayerProvider::create(&v187, v46);
  v47 = v187;
  v187 = 0;
  v188 = v47;
  v48 = WTF::fastMalloc(0x10);
  *(v48 + 2) = 1;
  *v48 = &unk_1F472C1A0;
  v186 = v48;
  v50 = LegacyHistoryItemClient::singleton(v48, v49);
  ++*(v50 + 8);
  v185 = v50;
  WebPaymentCoordinatorClient::create(v51, &v183);
  v53 = v183;
  v183 = 0;
  v184 = v53;
  if (WebChromeClientIOS::s_heapRef)
  {
    v54 = bmalloc::api::tzoneAllocateNonCompact(WebChromeClientIOS::s_heapRef, v52);
  }

  else
  {
    v54 = WebChromeClientIOS::operatorNewSlow(0x20);
  }

  v55 = v54;
  WebCore::ChromeClient::ChromeClient(v54);
  *v55 = &unk_1F472C480;
  *(v55 + 8) = 0;
  objc_initWeak(v55 + 2, v10);
  *v55 = &unk_1F472CCE0;
  *(v55 + 6) = 0;
  v181 = 0;
  v182 = v55;
  if (WebCryptoClient::s_heapRef)
  {
    v57 = bmalloc::api::tzoneAllocateNonCompact(WebCryptoClient::s_heapRef, v56);
  }

  else
  {
    v57 = WebCryptoClient::operatorNewSlow(0x10);
  }

  v58 = v57;
  *v57 = &unk_1F472D518;
  objc_initWeak((v57 + 8), v10);
  v180 = v58;
  if (qword_1ED6A61A0)
  {
    v60 = bmalloc::api::tzoneAllocateNonCompact(qword_1ED6A61A0, v59);
  }

  else
  {
    v60 = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  *v60 = &unk_1F472C330;
  v179 = v60;
  WebCore::DummyCredentialRequestCoordinatorClient::create(&v177, v60);
  v61 = v177;
  v177 = 0;
  v178 = v61;
  v174 = &v192;
  v175 = &v190;
  v172 = &v195;
  v173 = &v194;
  v170 = &v207;
  v171 = FrameIdentifier;
  v168 = &v198;
  v169 = &v196;
  v166 = &v200;
  v167 = &v199;
  WebCore::PageConfiguration::PageConfiguration();
  v63 = v178;
  v178 = 0;
  if (v63)
  {
    if (v63[2] == 1)
    {
      (*(*v63 + 8))(v63);
      v64 = v177;
      v177 = 0;
      if (!v64)
      {
        goto LABEL_48;
      }

      goto LABEL_43;
    }

    --v63[2];
  }

  v64 = v177;
  v177 = 0;
  if (!v64)
  {
    goto LABEL_48;
  }

LABEL_43:
  if (v64[2] == 1)
  {
    (*(*v64 + 8))(v64);
  }

  else
  {
    --v64[2];
  }

LABEL_48:
  v65 = v179;
  v179 = 0;
  if (v65)
  {
    (*(*v65 + 8))(v65);
  }

  v66 = v180;
  v180 = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  v67 = v182;
  v182 = 0;
  if (v67)
  {
    (*(*v67 + 2040))(v67);
  }

  v68 = v181;
  v181 = 0;
  if (v68)
  {
    objc_destroyWeak(v68 + 2);
    WebCore::ChromeClient::~ChromeClient(v68);
    bmalloc::api::tzoneFree(v69, v70);
  }

  v71 = v184;
  v184 = 0;
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  if (v183)
  {
    if (*(v183 + 2) == 1)
    {
      bmalloc::api::tzoneFree(v183, v62);
      v72 = v185;
      v185 = 0;
      if (!v72)
      {
        goto LABEL_67;
      }

      goto LABEL_62;
    }

    --*(v183 + 2);
  }

  v72 = v185;
  v185 = 0;
  if (!v72)
  {
    goto LABEL_67;
  }

LABEL_62:
  if (v72[2] == 1)
  {
    (*(*v72 + 8))(v72);
  }

  else
  {
    --v72[2];
  }

LABEL_67:
  v73 = v186;
  v186 = 0;
  if (v73)
  {
    if (*(v73 + 2) == 1)
    {
      (*(*v73 + 8))(v73);
      v74 = v188;
      v188 = 0;
      if (!v74)
      {
        goto LABEL_76;
      }

      goto LABEL_71;
    }

    --*(v73 + 2);
  }

  v74 = v188;
  v188 = 0;
  if (!v74)
  {
    goto LABEL_76;
  }

LABEL_71:
  if (v74[4] == 1)
  {
    (*(*v74 + 8))(v74);
  }

  else
  {
    --v74[4];
  }

LABEL_76:
  v75 = v187;
  v187 = 0;
  if (!v75)
  {
    goto LABEL_79;
  }

  if (v75[4] != 1)
  {
    --v75[4];
LABEL_79:
    v76 = v190;
    v190 = 0;
    if (!v76)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  (*(*v75 + 8))(v75);
  v76 = v190;
  v190 = 0;
  if (v76)
  {
LABEL_80:
    (*(*v76 + 8))(v76);
  }

LABEL_81:
  v77 = v189;
  v189 = 0;
  if (v77)
  {
    v78 = *(v77 + 2);
    *(v77 + 2) = 0;
    if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v78, v62);
    }

    v79 = *(v77 + 1);
    *(v77 + 1) = 0;
    if (v79 && atomic_fetch_add(v79 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v79 + 2);
      (*(*v79 + 8))(v79);
    }

    bmalloc::api::tzoneFree(v77, v62);
  }

  v80 = v192;
  v192 = 0;
  if (v80)
  {
    if (v80[2] == 1)
    {
      (*(*v80 + 8))(v80);
      v81 = v191;
      if (!v191)
      {
        goto LABEL_100;
      }

      goto LABEL_93;
    }

    --v80[2];
  }

  v81 = v191;
  if (!v191)
  {
    goto LABEL_100;
  }

LABEL_93:
  if (v81[2] == 1)
  {
    (*(*v81 + 8))(v81);
  }

  else
  {
    --v81[2];
  }

LABEL_100:
  v82 = v194;
  v194 = 0;
  if (v82)
  {
    (*(*v82 + 8))(v82);
  }

  v83 = v193;
  v193 = 0;
  if (v83)
  {
    v84 = *(v83 + 1);
    *(v83 + 1) = 0;
    if (v84)
    {
      if (v84[2] == 1)
      {
        v85 = v83;
        (*(*v84 + 8))(v84);
        v83 = v85;
      }

      else
      {
        --v84[2];
      }
    }

    bmalloc::api::tzoneFree(v83, v62);
  }

  v86 = v195;
  v195 = 0;
  if (!v86)
  {
LABEL_111:
    v87 = v209;
    if (v209 == 255)
    {
      goto LABEL_119;
    }

    goto LABEL_114;
  }

  if (v86[4] != 1)
  {
    --v86[4];
    goto LABEL_111;
  }

  (*(*v86 + 8))(v86);
  v87 = v209;
  if (v209 == 255)
  {
    goto LABEL_119;
  }

LABEL_114:
  v88 = v207;
  v207 = 0;
  if (v87)
  {
    if (!v88)
    {
      goto LABEL_119;
    }
  }

  else if (!v88)
  {
    goto LABEL_119;
  }

  (*(*v88 + 8))(v88);
LABEL_119:
  v89 = v196;
  v196 = 0;
  if (v89)
  {
    (*(*v89 + 8))(v89);
  }

  v90 = v198;
  v198 = 0;
  if (v90)
  {
    if (v90[4] == 1)
    {
      (*(*v90 + 120))(v90);
      v91 = v197;
      v197 = 0;
      if (!v91)
      {
        goto LABEL_127;
      }

      goto LABEL_125;
    }

    --v90[4];
  }

  v91 = v197;
  v197 = 0;
  if (!v91)
  {
    goto LABEL_127;
  }

LABEL_125:
  if (atomic_fetch_add(v91 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v91 + 2);
    (*(*v91 + 16))(v91);
  }

LABEL_127:
  v92 = v199;
  v199 = 0;
  if (v92)
  {
    if (v92[2] == 1)
    {
      (*(*v92 + 8))(v92);
      v93 = v200;
      v200 = 0;
      if (!v93)
      {
        goto LABEL_138;
      }

      goto LABEL_131;
    }

    --v92[2];
  }

  v93 = v200;
  v200 = 0;
  if (!v93)
  {
    goto LABEL_138;
  }

LABEL_131:
  if (v93[2] == 1)
  {
    (*(*v93 + 8))(v93);
  }

  else
  {
    --v93[2];
  }

LABEL_138:
  v94 = v201;
  v201 = 0;
  if (v94)
  {
    if (v94[4] == 1)
    {
      (*(*v94 + 16))(v94);
      v95 = v202;
      v202 = 0;
      if (!v95)
      {
        goto LABEL_143;
      }

      goto LABEL_142;
    }

    --v94[4];
  }

  v95 = v202;
  v202 = 0;
  if (v95)
  {
LABEL_142:
    (*(*v95 + 8))(v95);
  }

LABEL_143:
  v96 = v203;
  v203 = 0;
  if (!v96 || atomic_fetch_add(v96 + 2, 0xFFFFFFFF) != 1)
  {
    v97 = v206;
    v206 = 0;
    if (!v97)
    {
      goto LABEL_147;
    }

    goto LABEL_146;
  }

  atomic_store(1u, v96 + 2);
  (*(*v96 + 24))(v96);
  v97 = v206;
  v206 = 0;
  if (v97)
  {
LABEL_146:
    (*(*v97 + 8))(v97);
  }

LABEL_147:
  if (v204)
  {
    WebEditorClient::~WebEditorClient(v204);
    bmalloc::api::tzoneFree(v98, v99);
  }

  if (WebDragClient::s_heapRef)
  {
    v100 = bmalloc::api::tzoneAllocateNonCompact(WebDragClient::s_heapRef, v62);
  }

  else
  {
    v100 = WebDragClient::operatorNewSlow(0x10);
  }

  *v100 = &unk_1F472D918;
  v100[1] = v10;
  v102 = v211;
  v211 = v100;
  if (v102)
  {
    (*(*v102 + 80))(v102);
  }

  if (qword_1ED6A6170)
  {
    v103 = bmalloc::api::tzoneAllocateNonCompact(qword_1ED6A6170, v101);
  }

  else
  {
    v103 = bmalloc::api::tzoneAllocateNonCompactSlow();
  }

  v104 = v103;
  WebInspectorClient::WebInspectorClient(v103, v10);
  v107 = v212;
  v212 = v104;
  if (v107)
  {
    (*(*v107 + 8))(v107);
  }

  if (atomic_load_explicit(&qword_1ED6A6178, memory_order_acquire) != -1)
  {
    v207 = &v204;
    v206 = &v207;
    std::__call_once(&qword_1ED6A6178, &v206, std::__call_once_proxy[abi:sn200100]<std::tuple<webApplicationCacheStorage(void)::$_0 &&>>);
  }

  if (byte_1ED6A6139 == 1)
  {
    v108 = qword_1ED6A6180;
    ++*qword_1ED6A6180;
    v109 = v213;
    v213 = v108;
    if (!v109)
    {
      goto LABEL_165;
    }
  }

  else
  {
    WebCore::ApplicationCacheStorage::create(&v207, v105, v106);
    v163 = v207;
    v207 = 0;
    WTF::Ref<WebCore::ApplicationCacheStorage,WTF::RawPtrTraits<WebCore::ApplicationCacheStorage>,WTF::DefaultRefDerefTraits<WebCore::ApplicationCacheStorage>>::~Ref(&v207, v164);
    qword_1ED6A6180 = v163;
    byte_1ED6A6139 = 1;
    ++*v163;
    v109 = v213;
    v213 = v163;
    if (!v109)
    {
      goto LABEL_165;
    }
  }

  if (*v109 == 1)
  {
    WebCore::ApplicationCacheStorage::~ApplicationCacheStorage(v109, v105);
    WTF::fastFree(v110, v111);
  }

  else
  {
    --*v109;
  }

LABEL_165:
  {
    v112 = WebDatabaseProvider::singleton(void)::databaseProvider;
    ++*(WebDatabaseProvider::singleton(void)::databaseProvider + 8);
    v113 = v214;
    v214 = v112;
    if (!v113)
    {
      goto LABEL_170;
    }
  }

  else
  {
    v165 = WTF::fastMalloc(0x18);
    *(v165 + 8) = 1;
    *v165 = &unk_1F472D5D8;
    *(v165 + 16) = 0;
    WebDatabaseProvider::singleton(void)::databaseProvider = v165;
    *(v165 + 8) = 2;
    v113 = v214;
    v214 = v165;
    if (!v113)
    {
      goto LABEL_170;
    }
  }

  if (v113[2] == 1)
  {
    (*(*v113 + 8))(v113);
  }

  else
  {
    --v113[2];
  }

LABEL_170:
  v114 = WebViewGroup::storageNamespaceProvider(v10->_private->group.m_ptr);
  ++*(v114 + 2);
  v115 = v216;
  v216 = v114;
  if (v115)
  {
    if (*(v115 + 2) == 1)
    {
      (*(*v115 + 8))(v115);
    }

    else
    {
      --*(v115 + 2);
    }
  }

  v116 = *(v10->_private->group.m_ptr + 6);
  ++v116[2];
  v117 = v217;
  v217 = v116;
  if (!v117)
  {
LABEL_177:
    {
      goto LABEL_178;
    }

LABEL_182:
    v120 = WTF::fastMalloc(0x28);
    *(v120 + 16) = 1;
    *(v120 + 24) = 0;
    *(v120 + 32) = 0;
    *v120 = &unk_1F472E620;
    *(v120 + 8) = 0;
    WebPluginInfoProvider::singleton(void)::pluginInfoProvider = v120;
    *(v120 + 16) = 2;
    v119 = v215;
    v215 = v120;
    if (!v119)
    {
      goto LABEL_185;
    }

    goto LABEL_179;
  }

  if (v117[2] != 1)
  {
    --v117[2];
    goto LABEL_177;
  }

  (*(*v117 + 8))(v117);
  {
    goto LABEL_182;
  }

LABEL_178:
  v118 = WebPluginInfoProvider::singleton(void)::pluginInfoProvider;
  ++*(WebPluginInfoProvider::singleton(void)::pluginInfoProvider + 16);
  v119 = v215;
  v215 = v118;
  if (!v119)
  {
    goto LABEL_185;
  }

LABEL_179:
  if (v119[4] == 1)
  {
    (*(*v119 + 8))(v119);
  }

  else
  {
    --v119[4];
  }

LABEL_185:
  WebCore::Page::create();
  v128 = v10->_private;
  v129 = v207;
  v207 = 0;
  v130 = v128->page.m_ptr;
  v128->page.m_ptr = v129;
  if (v130)
  {
    v131 = *(v130 + 2) - 1;
    if (*(v130 + 2) == 1)
    {
      v158 = MEMORY[0x1CCA673C0](v130, v121, v122, v123, v124, v125, v126, v127, &v200, &v199, &v198, &v196, &v207, FrameIdentifier, &v195, &v194, &v192, &v190);
      bmalloc::api::tzoneFree(v158, v159);
      v130 = v207;
      v207 = 0;
      if (!v130)
      {
        goto LABEL_188;
      }

      v131 = *(v130 + 2) - 1;
      if (*(v130 + 2) == 1)
      {
        v160 = MEMORY[0x1CCA673C0]();
        bmalloc::api::tzoneFree(v160, v161);
        goto LABEL_188;
      }
    }

    *(v130 + 2) = v131;
  }

LABEL_188:
  v132 = v10->_private->page.m_ptr;
  if (!*v132 && (v133 = WTF::fastCompactMalloc(0x10), *v133 = 1, *(v133 + 8) = v132, v134 = *v132, *v132 = v133, v134) && atomic_fetch_add(v134, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v134);
    WTF::fastFree(v134, v121);
    v162 = *v132;
    atomic_fetch_add(*v132, 1u);
    v136 = *(v30 + 16);
    *(v30 + 16) = v162;
    if (v136)
    {
LABEL_192:
      if (atomic_fetch_add(v136, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v136);
        WTF::fastFree(v136, v121);
      }
    }
  }

  else
  {
    v135 = *v132;
    atomic_fetch_add(*v132, 1u);
    v136 = *(v30 + 16);
    *(v30 + 16) = v135;
    if (v136)
    {
      goto LABEL_192;
    }
  }

  [(WebView *)v10 setSmartInsertDeleteEnabled:1, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, &v188, &v186, &v185, &v184, &v182, &v180, &v179, &v178];
  WebCore::Settings::setMinimumLogicalFontSize(*(v10->_private->page.m_ptr + 15), 9.0);
  WebCore::Settings::setDefaultFontSize(*(v10->_private->page.m_ptr + 15), [(WebPreferences *)v10->_private->preferences.m_ptr defaultFontSize]);
  WebCore::Settings::setDefaultFixedFontSize(*(v10->_private->page.m_ptr + 15), 13.0);
  v137 = *(v10->_private->page.m_ptr + 15);
  acceleratedDrawingEnabled = [preferences acceleratedDrawingEnabled];
  v139 = 4;
  if (!acceleratedDrawingEnabled)
  {
    v139 = 0;
  }

  *(v137 + 680) = *(v137 + 680) & 0xFFFFFFFFFFFFFFFBLL | v139;
  WebCore::Settings::setFontFallbackPrefersPictographs(*(v10->_private->page.m_ptr + 15));
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v206 = v207;
  WebCore::SettingsBase::setPictographFontFamily();
  v141 = v206;
  v206 = 0;
  if (v141 && atomic_fetch_add_explicit(v141, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v141, v140);
  }

  v142 = *(v10->_private->page.m_ptr + 15);
  *(v142 + 712) &= ~0x10000uLL;
  v143 = *(v10->_private->page.m_ptr + 15);
  *(v143 + 712) |= 0x8000uLL;
  MEMORY[0x1CCA63A40](&v207, [(WebPreferences *)v10->_private->preferences.m_ptr standardFontFamily]);
  WebCore::SettingsBase::setStandardFontFamily();
  v145 = v207;
  v207 = 0;
  if (v145 && atomic_fetch_add_explicit(v145, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v145, v144);
  }

  WebCore::Settings::setMinimumFontSize(*(v10->_private->page.m_ptr + 15), [(WebPreferences *)v10->_private->preferences.m_ptr minimumFontSize]);
  v146 = v10->_private;
  v147 = *(v146->page.m_ptr + 15);
  httpEquivEnabled = [(WebPreferences *)v146->preferences.m_ptr httpEquivEnabled];
  v149 = 0x20000000;
  if (!httpEquivEnabled)
  {
    v149 = 0;
  }

  *(v147 + 696) = *(v147 + 696) & 0xFFFFFFFFDFFFFFFFLL | v149;
  v150 = v10->_private->page.m_ptr;
  MEMORY[0x1CCA63A40](&v207, name);
  WebCore::Page::setGroupName(v150, &v207);
  v152 = v207;
  v207 = 0;
  if (v152 && atomic_fetch_add_explicit(v152, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v152, v151);
  }

  v153 = v10->_private->page.m_ptr;
  if (byte_1ED6A613B != 1)
  {
    byte_1ED6A613A = MGGetBoolAnswer();
    byte_1ED6A613B = 1;
  }

  WebCore::Page::setInspectable(v153);
  [(WebView *)v10 _updateScreenScaleFromWindow];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v10 selector:sel__wakWindowScreenScaleChanged_ name:*MEMORY[0x1E69E21F0] object:0];
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:v10 selector:sel__wakWindowVisibilityChanged_ name:*MEMORY[0x1E69E21F8] object:0];
  [WebFrame _createMainFrameWithSimpleHTMLDocumentWithPage:v10->_private->page.m_ptr frameView:height style:style];
  [(WebView *)v10 _addToAllWebViewsSet];
  ++WebViewCount;
  WebCore::SecurityPolicy::setLocalLoadPolicy();
  attachmentElementEnabled = [(WebPreferences *)[(WebView *)v10 preferences] attachmentElementEnabled];
  *(WebCore::DeprecatedGlobalSettings::shared(attachmentElementEnabled) + 24) = attachmentElementEnabled;
  MEMORY[0x1CCA65F00](cf);
  if (atomic_fetch_add((v30 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v30 + 8));
    (*(*v30 + 16))(v30);
    if (!height)
    {
      return v10;
    }

    goto LABEL_211;
  }

  if (height)
  {
LABEL_211:
  }

  return v10;
}

- (void)_replaceCurrentHistoryItem:(id)item
{
  if ([(WebView *)self _mainCoreFrame])
  {
    if (item)
    {
      v4 = *(*(item + 1) + 8);
      if (v4)
      {
        ++*(v4 + 8);
      }
    }

    else
    {
      v4 = 0;
    }

    v7 = v4;
    WebCore::HistoryController::replaceCurrentItem();
    if (v7)
    {
      if (*(v7 + 8) == 1)
      {
        v5 = MEMORY[0x1CCA64170]();
        WTF::fastFree(v5, v6);
      }

      else
      {
        --*(v7 + 8);
      }
    }
  }
}

void __64__WebView_WebPrivate__willEnterBackgroundWithCompletionHandler___block_invoke(uint64_t a1)
{
  WTF::RunLoop::mainSingleton(+[WebView _releaseMemoryNow]);
  v2 = _Block_copy(*(a1 + 32));
  v3 = WTF::fastMalloc(0x10);
  *v3 = &unk_1F472C388;
  v3[1] = v2;
  v4 = v3;
  WTF::RunLoop::dispatch();
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Block_release(0);
}

uint64_t __59__WebView_WebPrivate__updateLayoutIgnorePendingStyleSheets__block_invoke(uint64_t a1)
{
  for (result = [*(a1 + 32) _mainCoreFrame]; result; result = WebCore::FrameTree::traverseNext((result + 40), 0))
  {
    if ((*(result + 136) & 1) == 0)
    {
      if (*(result + 224))
      {
        v2 = result;
        WebCore::Document::updateLayout();
        result = v2;
      }
    }
  }

  return result;
}

- (BOOL)_requestStartDataInteraction:(CGPoint)interaction globalPosition:(CGPoint)position
{
  interactionCopy = interaction;
  positionCopy = position;
  WebThreadLock();
  v5 = 0;
  v6 = *(self->_private->page.m_ptr + 22);
  if (!v6 || (*(v6 + 136) & 1) != 0)
  {
    return v5 & 1;
  }

  ++*(v6 + 16);
  v7 = WTF::fastMalloc(8);
  *v7 = 1;
  *(v7 + 4) = 0;
  WebCore::IntPoint::IntPoint(v14, &interactionCopy);
  WebCore::IntPoint::IntPoint(v13, &positionCopy);
  atomic_fetch_add(v7, 1u);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F472C3B0;
  v8[1] = v7;
  v12 = v8;
  WebCore::EventHandler::tryToBeginDragAtPoint();
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (*(v7 + 5) == 1)
  {
    v5 = *(v7 + 4);
  }

  else
  {
    v5 = 0;
  }

  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v9);
    v10 = *(v6 + 16) - 1;
    if (*(v6 + 16) != 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *(v6 + 16) - 1;
    if (*(v6 + 16) != 1)
    {
LABEL_10:
      *(v6 + 16) = v10;
      return v5 & 1;
    }
  }

  (*(*v6 + 8))(v6);
  return v5 & 1;
}

- (void)_startDrag:(const void *)drag
{
  v5 = *drag;
  if (*drag)
  {
    CFRetain(*drag);
    CFRelease(v5);
  }

  v6 = *(drag + 1);
  if (!v6)
  {
    v55 = [[WebUITextIndicatorData alloc] initWithImage:v5 scale:*(self->_private->page.m_ptr + 81)];
    v56 = self->_private;
    m_ptr = v56->textIndicatorData.m_ptr;
    v56->textIndicatorData.m_ptr = v55;
    if (m_ptr)
    {
    }

    goto LABEL_35;
  }

  ++*v6;
  v7 = [WebUITextIndicatorData alloc];
  v8 = *(v6 + 8);
  v9 = *(v6 + 40);
  v58[1] = *(v6 + 24);
  v58[2] = v9;
  v58[0] = v8;
  v10 = *(v6 + 68);
  v59 = 0;
  v60 = 0;
  v61 = v10;
  if (v10)
  {
    if (v10 >> 28)
    {
      __break(0xC471u);
      return;
    }

    v11 = v7;
    v12 = WTF::fastMalloc((16 * v10));
    v60 = v10;
    v59 = v12;
    v13 = *(v6 + 68);
    v7 = v11;
    if (v13)
    {
      v14 = *(v6 + 56);
      v15 = 16 * v13;
      do
      {
        v16 = *v14++;
        *v12 = v16;
        v12 = (v12 + 16);
        v15 -= 16;
      }

      while (v15);
    }
  }

  v62 = *(v6 + 72);
  v17 = *(v6 + 80);
  if (v17)
  {
    ++v17[4];
  }

  v63 = v17;
  v18 = *(v6 + 88);
  if (v18)
  {
    ++v18[4];
  }

  v64 = v18;
  v19 = *(v6 + 96);
  if (v19)
  {
    ++v19[4];
  }

  v20 = *(v6 + 104);
  v65 = v19;
  v66 = v20;
  if ((v20 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v20 & 0xFFFFFFFFFFFFLL), 1u);
  }

  v21 = *(v6 + 112);
  *&v67[9] = *(v6 + 121);
  *v67 = v21;
  v22 = [(WebUITextIndicatorData *)v7 initWithImage:v5 textIndicatorData:v58 scale:*(self->_private->page.m_ptr + 81)];
  v24 = self->_private;
  v25 = v24->textIndicatorData.m_ptr;
  v24->textIndicatorData.m_ptr = v22;
  if (v25)
  {
  }

  if ((v66 & 0x8000000000000) != 0 && (v26 = (v66 & 0xFFFFFFFFFFFFLL), atomic_fetch_add((v66 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1))
  {
    atomic_store(1u, v26);
    WTF::fastFree(v26, v23);
    v27 = v65;
    v65 = 0;
    if (!v27)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = v65;
    v65 = 0;
    if (!v27)
    {
      goto LABEL_25;
    }
  }

  if (v27[4] == 1)
  {
    (*(*v27 + 8))(v27);
  }

  else
  {
    --v27[4];
  }

LABEL_25:
  v28 = v64;
  v64 = 0;
  if (!v28)
  {
    goto LABEL_28;
  }

  if (v28[4] != 1)
  {
    --v28[4];
LABEL_28:
    v29 = v63;
    v63 = 0;
    if (!v29)
    {
LABEL_33:
      v30 = v59;
      if (!v59)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    goto LABEL_31;
  }

  (*(*v28 + 8))(v28);
  v29 = v63;
  v63 = 0;
  if (!v29)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (v29[4] != 1)
  {
    --v29[4];
    goto LABEL_33;
  }

  (*(*v29 + 8))(v29);
  v30 = v59;
  if (v59)
  {
LABEL_34:
    v59 = 0;
    v60 = 0;
    WTF::fastFree(v30, v23);
  }

LABEL_35:
  v31 = *(drag + 17);
  if (!v31)
  {
    goto LABEL_38;
  }

  if (*(v31 + 4))
  {
    WTF::URL::createCFURL(v58, (drag + 136));
    v31 = *&v58[0];
LABEL_38:
    v32 = self->_private;
    *&v58[0] = 0;
    v33 = v32->draggedLinkURL.m_ptr;
    v32->draggedLinkURL.m_ptr = v31;
    if (!v33)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v54 = self->_private;
  *&v58[0] = 0;
  v33 = v54->draggedLinkURL.m_ptr;
  v54->draggedLinkURL.m_ptr = 0;
  if (!v33)
  {
    goto LABEL_41;
  }

LABEL_39:

  v34 = *&v58[0];
  *&v58[0] = 0;
  if (v34)
  {
  }

LABEL_41:
  v35 = *(drag + 16);
  if (v35 && v35[1])
  {
    atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](v58, v35);
    if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v35, v36);
    }

    v37 = *&v58[0];
    p_draggedLinkTitle = &self->_private->draggedLinkTitle;
    if (*&v58[0])
    {
      v39 = *&v58[0];
    }

    v40 = 0;
    v41 = p_draggedLinkTitle->m_ptr;
    p_draggedLinkTitle->m_ptr = v37;
    if (!v41)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v42 = &self->_private->draggedLinkTitle;
    v40 = 1;
    v41 = v42->m_ptr;
    v42->m_ptr = 0;
    if (!v41)
    {
      goto LABEL_51;
    }
  }

LABEL_51:
  if ((v40 & 1) == 0)
  {
    v43 = *&v58[0];
    *&v58[0] = 0;
    if (v43)
    {
    }
  }

  WebCore::IntRect::operator CGRect();
  v44 = self->_private;
  v44->dragPreviewFrameInRootViewCoordinates.origin.x = v45;
  v44->dragPreviewFrameInRootViewCoordinates.origin.y = v46;
  v44->dragPreviewFrameInRootViewCoordinates.size.width = v47;
  v44->dragPreviewFrameInRootViewCoordinates.size.height = v48;
  v49 = *(drag + 48);
  if ((v49 & 0x100) != 0 && (v50 = v49 - 1, v50 <= 7u))
  {
    v51 = qword_1C7B33950[v50];
  }

  else
  {
    v51 = 0;
  }

  self->_private->dragSourceAction = v51;
  if (v6)
  {
    if (*v6 == 1)
    {
      WebCore::TextIndicator::~TextIndicator(v6);
      WTF::fastFree(v52, v53);
    }

    else
    {
      --*v6;
    }
  }
}

- (CGRect)_dataInteractionCaretRect
{
  WebThreadLock();
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    ++*(m_ptr + 2);
    WebCore::DragCaretController::caretRectInRootViewCoordinates(*(m_ptr + 8));
    WebCore::IntRect::operator CGRect();
    if (*(m_ptr + 2) == 1)
    {
      v8 = v7;
      v9 = v6;
      v10 = v5;
      v11 = v4;
      v12 = MEMORY[0x1CCA673C0](m_ptr);
      bmalloc::api::tzoneFree(v12, v13);
      v4 = v11;
      v5 = v10;
      v6 = v9;
      v7 = v8;
    }

    else
    {
      --*(m_ptr + 2);
    }
  }

  else
  {
    v7 = 0.0;
    v6 = 0.0;
    v5 = 0.0;
    v4 = 0.0;
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_draggedElementBounds
{
  v2 = self->_private;
  x = v2->dragPreviewFrameInRootViewCoordinates.origin.x;
  y = v2->dragPreviewFrameInRootViewCoordinates.origin.y;
  width = v2->dragPreviewFrameInRootViewCoordinates.size.width;
  height = v2->dragPreviewFrameInRootViewCoordinates.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (unint64_t)dragDestinationActionMaskForSession:(id)session
{
  _UIDelegateForwarder = [(WebView *)self _UIDelegateForwarder];

  return [_UIDelegateForwarder webView:self dragDestinationActionMaskForSession:session];
}

- (DragData)dragDataForSession:(SEL)session client:(id)client global:(CGPoint)global operation:(CGPoint)operation
{
  globalCopy = global;
  operationCopy = operation;
  [(WebView *)self dragDestinationActionMaskForSession:?];
  WebCore::FloatPoint::FloatPoint(v21, &globalCopy);
  v7 = roundf(v21[0]);
  v8 = 0x7FFFFFFFLL;
  v9 = v7;
  if (v7 <= -2147500000.0)
  {
    v9 = 0x80000000;
  }

  if (v7 < 2147500000.0)
  {
    v8 = v9;
  }

  v10 = roundf(v21[1]);
  v11 = 0x7FFFFFFF00000000;
  v12 = 0x8000000000000000;
  if (v10 > -2147500000.0)
  {
    v12 = v10 << 32;
  }

  if (v10 < 2147500000.0)
  {
    v11 = v12;
  }

  v22 = v11 | v8;
  WebCore::FloatPoint::FloatPoint(v19, &operationCopy);
  v13 = roundf(v19[0]);
  v14 = 0x7FFFFFFFLL;
  v15 = 0x80000000;
  if (v13 > -2147500000.0)
  {
    v15 = v13;
  }

  if (v13 < 2147500000.0)
  {
    v14 = v15;
  }

  v16 = roundf(v19[1]);
  if (v16 >= 2147500000.0)
  {
    v17 = 0x7FFFFFFF00000000;
  }

  else if (v16 <= -2147500000.0)
  {
    v17 = 0x8000000000000000;
  }

  else
  {
    v17 = v16 << 32;
  }

  v20 = v17 | v14;
  return WebCore::DragData::DragData();
}

- (unint64_t)_enteredDataInteraction:(id)interaction client:(CGPoint)client global:(CGPoint)global operation:(unint64_t)operation
{
  y = global.y;
  x = global.x;
  v9 = client.y;
  v10 = client.x;
  _mainCoreFrame = [(WebView *)self _mainCoreFrame];
  if (!_mainCoreFrame)
  {
    return 0;
  }

  v14 = _mainCoreFrame;
  ++_mainCoreFrame[4];
  WebThreadLock();
  if (self)
  {
    [(WebView *)self dragDataForSession:interaction client:operation global:v10 operation:v9, x, y];
  }

  else
  {
    *v25 = 0u;
    *v24 = 0u;
  }

  v15 = WebCore::DragController::dragEnteredOrUpdated();
  if (v23)
  {
    mpark::throw_bad_variant_access(v15);
  }

  if ((v22 & 0x100) == 0)
  {
    goto LABEL_7;
  }

  v17 = v22;
  if (v22 > 7u)
  {
    if (v22 != 16)
    {
LABEL_7:
      v17 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if (v22 == 1)
    {
      goto LABEL_8;
    }

    if (v22 != 4)
    {
      goto LABEL_7;
    }
  }

  v17 = 16;
LABEL_8:
  if (v25[1] && atomic_fetch_add_explicit(v25[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25[1], v16);
  }

  v18 = v24[0];
  if (HIDWORD(v24[1]))
  {
    v19 = 8 * HIDWORD(v24[1]);
    do
    {
      v20 = *v18;
      *v18 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v16);
      }

      v18 = (v18 + 8);
      v19 -= 8;
    }

    while (v19);
    v18 = v24[0];
  }

  if (v18)
  {
    WTF::fastFree(v18, v16);
  }

  if (v14[4] == 1)
  {
    (*(*v14 + 8))(v14);
  }

  else
  {
    --v14[4];
  }

  return v17;
}

- (unint64_t)_updatedDataInteraction:(id)interaction client:(CGPoint)client global:(CGPoint)global operation:(unint64_t)operation
{
  y = global.y;
  x = global.x;
  v9 = client.y;
  v10 = client.x;
  _mainCoreFrame = [(WebView *)self _mainCoreFrame];
  if (!_mainCoreFrame)
  {
    return 0;
  }

  v14 = _mainCoreFrame;
  ++_mainCoreFrame[4];
  WebThreadLock();
  if (self)
  {
    [(WebView *)self dragDataForSession:interaction client:operation global:v10 operation:v9, x, y];
  }

  else
  {
    *v25 = 0u;
    *v24 = 0u;
  }

  v15 = WebCore::DragController::dragEnteredOrUpdated();
  if (v23)
  {
    mpark::throw_bad_variant_access(v15);
  }

  if ((v22 & 0x100) == 0)
  {
    goto LABEL_7;
  }

  v17 = v22;
  if (v22 > 7u)
  {
    if (v22 != 16)
    {
LABEL_7:
      v17 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if (v22 == 1)
    {
      goto LABEL_8;
    }

    if (v22 != 4)
    {
      goto LABEL_7;
    }
  }

  v17 = 16;
LABEL_8:
  if (v25[1] && atomic_fetch_add_explicit(v25[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25[1], v16);
  }

  v18 = v24[0];
  if (HIDWORD(v24[1]))
  {
    v19 = 8 * HIDWORD(v24[1]);
    do
    {
      v20 = *v18;
      *v18 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v16);
      }

      v18 = (v18 + 8);
      v19 -= 8;
    }

    while (v19);
    v18 = v24[0];
  }

  if (v18)
  {
    WTF::fastFree(v18, v16);
  }

  if (v14[4] == 1)
  {
    (*(*v14 + 8))(v14);
  }

  else
  {
    --v14[4];
  }

  return v17;
}

- (void)_exitedDataInteraction:(id)interaction client:(CGPoint)client global:(CGPoint)global operation:(unint64_t)operation
{
  y = global.y;
  x = global.x;
  v9 = client.y;
  v10 = client.x;
  _mainCoreFrame = [(WebView *)self _mainCoreFrame];
  if (_mainCoreFrame)
  {
    v14 = _mainCoreFrame;
    ++_mainCoreFrame[4];
    WebThreadLock();
    if (self)
    {
      [(WebView *)self dragDataForSession:interaction client:operation global:v10 operation:v9, x, y];
    }

    else
    {
      *v20 = 0u;
      *v19 = 0u;
    }

    WebCore::DragController::dragExited();
    if (v20[1] && atomic_fetch_add_explicit(v20[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20[1], v15);
    }

    v16 = v19[0];
    if (HIDWORD(v19[1]))
    {
      v17 = 8 * HIDWORD(v19[1]);
      do
      {
        v18 = *v16;
        *v16 = 0;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v18, v15);
        }

        v16 = (v16 + 8);
        v17 -= 8;
      }

      while (v17);
      v16 = v19[0];
    }

    if (v16)
    {
      WTF::fastFree(v16, v15);
    }

    if (v14[4] == 1)
    {
      (*(*v14 + 8))(v14);
    }

    else
    {
      --v14[4];
    }
  }
}

- (BOOL)_tryToPerformDataInteraction:(id)interaction client:(CGPoint)client global:(CGPoint)global operation:(unint64_t)operation
{
  y = global.y;
  x = global.x;
  v9 = client.y;
  v10 = client.x;
  WebThreadLock();
  if (self)
  {
    [(WebView *)self dragDataForSession:interaction client:operation global:v10 operation:v9, x, y];
  }

  else
  {
    *v20 = 0u;
    *v19 = 0u;
  }

  v14 = WebCore::DragController::performDragOperation();
  if (v20[1] && atomic_fetch_add_explicit(v20[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20[1], v13);
  }

  v15 = v19[0];
  if (HIDWORD(v19[1]))
  {
    v16 = 8 * HIDWORD(v19[1]);
    do
    {
      v17 = *v15;
      *v15 = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v13);
      }

      v15 = (v15 + 8);
      v16 -= 8;
    }

    while (v16);
    v15 = v19[0];
  }

  if (v15)
  {
    WTF::fastFree(v15, v13);
  }

  return v14;
}

- (void)_endedDataInteraction:(CGPoint)interaction global:(CGPoint)global
{
  WebThreadLock();
  WebCore::DragController::dragEnded(*(self->_private->page.m_ptr + 9));
  v5 = self->_private;
  m_ptr = v5->dataOperationTextIndicator.m_ptr;
  v5->dataOperationTextIndicator.m_ptr = 0;
  if (m_ptr)
  {
  }

  p_dragPreviewFrameInRootViewCoordinates = &self->_private->dragPreviewFrameInRootViewCoordinates;
  v8 = *(MEMORY[0x1E695F050] + 16);
  p_dragPreviewFrameInRootViewCoordinates->origin = *MEMORY[0x1E695F050];
  p_dragPreviewFrameInRootViewCoordinates->size = v8;
  self->_private->dragSourceAction = 0;
  v9 = self->_private;
  v10 = v9->draggedLinkTitle.m_ptr;
  v9->draggedLinkTitle.m_ptr = 0;
  if (v10)
  {
  }

  v11 = self->_private;
  v12 = v11->draggedLinkURL.m_ptr;
  v11->draggedLinkURL.m_ptr = 0;
  if (v12)
  {
  }
}

- (void)_didConcludeEditDrag
{
  v3 = self->_private;
  m_ptr = v3->dataOperationTextIndicator.m_ptr;
  v3->dataOperationTextIndicator.m_ptr = 0;
  if (m_ptr)
  {
  }

  v5 = self->_private->page.m_ptr;
  if (v5)
  {
    ++*(v5 + 2);
    v6 = WebCore::FocusController::focusedOrMainFrame(*(v5 + 10));
    v7 = v6;
    if (!v6)
    {
      goto LABEL_57;
    }

    ++*(v6 + 16);
    WebCore::VisibleSelection::toNormalizedRange(&v52, (*(*(v6 + 224) + 3208) + 56));
    if (v54 != 1)
    {
      goto LABEL_55;
    }

    WebCore::TextIndicator::createWithRange();
    if (!v51)
    {
      goto LABEL_41;
    }

    v8 = [WebUITextIndicatorData alloc];
    v9 = v51;
    v10 = *(v51 + 40);
    v11 = *(v51 + 24);
    v41[0] = *(v51 + 8);
    v41[1] = v11;
    v41[2] = v10;
    v12 = *(v51 + 68);
    v42 = 0;
    v43 = 0;
    v44 = v12;
    if (v12)
    {
      if (v12 >> 28)
      {
        __break(0xC471u);
        return;
      }

      v13 = v8;
      v14 = WTF::fastMalloc((16 * v12));
      v43 = v12;
      v42 = v14;
      v15 = *(v51 + 68);
      v8 = v13;
      if (v15)
      {
        v16 = *(v51 + 56);
        v17 = 16 * v15;
        do
        {
          v18 = *v16++;
          *v14 = v18;
          v14 = (v14 + 16);
          v17 -= 16;
        }

        while (v17);
      }
    }

    v45 = *(v9 + 72);
    v19 = *(v9 + 80);
    if (v19)
    {
      ++v19[4];
    }

    v46 = v19;
    v20 = *(v9 + 88);
    if (v20)
    {
      ++v20[4];
    }

    v47 = v20;
    v21 = *(v9 + 96);
    if (v21)
    {
      ++v21[4];
    }

    v22 = *(v9 + 104);
    v48 = v21;
    v49 = v22;
    if ((v22 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v22 & 0xFFFFFFFFFFFFLL), 1u);
    }

    v23 = *(v9 + 112);
    *&v50[9] = *(v9 + 121);
    *v50 = v23;
    v24 = [(WebUITextIndicatorData *)v8 initWithImage:0 textIndicatorData:v41 scale:*(v5 + 81)];
    v26 = self->_private;
    v27 = v26->dataOperationTextIndicator.m_ptr;
    v26->dataOperationTextIndicator.m_ptr = v24;
    if (v27)
    {
    }

    if ((v49 & 0x8000000000000) != 0 && (v28 = (v49 & 0xFFFFFFFFFFFFLL), atomic_fetch_add((v49 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1))
    {
      atomic_store(1u, v28);
      WTF::fastFree(v28, v25);
      v29 = v48;
      v48 = 0;
      if (!v29)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v29 = v48;
      v48 = 0;
      if (!v29)
      {
        goto LABEL_28;
      }
    }

    if (v29[4] == 1)
    {
      (*(*v29 + 8))(v29);
    }

    else
    {
      --v29[4];
    }

LABEL_28:
    v30 = v47;
    v47 = 0;
    if (v30)
    {
      if (v30[4] == 1)
      {
        (*(*v30 + 8))(v30);
        v31 = v46;
        v46 = 0;
        if (!v31)
        {
          goto LABEL_36;
        }

LABEL_34:
        if (v31[4] == 1)
        {
          (*(*v31 + 8))(v31);
          v32 = v42;
          if (!v42)
          {
LABEL_38:
            v33 = v51;
            v51 = 0;
            if (v33)
            {
              if (*v33 == 1)
              {
                WebCore::TextIndicator::~TextIndicator(v33);
                WTF::fastFree(v36, v37);
                if ((v54 & 1) == 0)
                {
                  goto LABEL_55;
                }

                goto LABEL_42;
              }

              --*v33;
            }

LABEL_41:
            if ((v54 & 1) == 0)
            {
              goto LABEL_55;
            }

LABEL_42:
            v34 = v53;
            v53 = 0;
            if (v34)
            {
              if (*(v34 + 7) == 2)
              {
                WebCore::Node::removedLastRef(v34);
                v35 = v52;
                v52 = 0;
                if (v35)
                {
LABEL_46:
                  if (*(v35 + 7) == 2)
                  {
                    WebCore::Node::removedLastRef(v35);
                  }

                  else
                  {
                    *(v35 + 7) -= 2;
                  }
                }

LABEL_55:
                if (v7[4] == 1)
                {
                  (*(*v7 + 8))(v7);
                  v38 = *(v5 + 2) - 1;
                  if (*(v5 + 2) != 1)
                  {
                    goto LABEL_58;
                  }

LABEL_60:
                  v39 = MEMORY[0x1CCA673C0](v5);
                  bmalloc::api::tzoneFree(v39, v40);
                  return;
                }

                --v7[4];
LABEL_57:
                v38 = *(v5 + 2) - 1;
                if (*(v5 + 2) != 1)
                {
LABEL_58:
                  *(v5 + 2) = v38;
                  return;
                }

                goto LABEL_60;
              }

              *(v34 + 7) -= 2;
            }

            v35 = v52;
            v52 = 0;
            if (v35)
            {
              goto LABEL_46;
            }

            goto LABEL_55;
          }

LABEL_37:
          v42 = 0;
          v43 = 0;
          WTF::fastFree(v32, v25);
          goto LABEL_38;
        }

        --v31[4];
LABEL_36:
        v32 = v42;
        if (!v42)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      --v30[4];
    }

    v31 = v46;
    v46 = 0;
    if (!v31)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }
}

+ (void)_registerPluginMIMEType:(id)type
{
  v4 = objc_opt_class();
  [WebView registerViewClass:v4 representationClass:objc_opt_class() forMIMEType:type];
  if (byte_1ED6A613C == 1)
  {
    v5 = qword_1ED6A6188;
    typeCopy2 = type;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    qword_1ED6A6188 = v5;
    byte_1ED6A613C = 1;
    typeCopy2 = type;
  }

  [v5 addObject:typeCopy2];
}

+ (void)_unregisterPluginMIMEType:(id)type
{
  [self _unregisterViewClassAndRepresentationClassForMIMEType:?];
  if (byte_1ED6A613C == 1)
  {
    v4 = qword_1ED6A6188;
    typeCopy2 = type;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    qword_1ED6A6188 = v4;
    byte_1ED6A613C = 1;
    typeCopy2 = type;
  }

  [v4 removeObject:typeCopy2];
}

+ (BOOL)_viewClass:(Class *)class andRepresentationClass:(Class *)representationClass forMIMEType:(id)type allowingPlugins:(BOOL)plugins
{
  pluginsCopy = plugins;
  lowercaseString = [type lowercaseString];
  v10 = [+[WebFrameView _viewTypesAllowImageTypeOmission:](WebFrameView _viewTypesAllowImageTypeOmission:{1), "_webkit_objectForMIMEType:", lowercaseString}];
  v11 = [+[WebDataSource _repTypesAllowImageTypeOmission:](WebDataSource _repTypesAllowImageTypeOmission:{1), "_webkit_objectForMIMEType:", lowercaseString}];
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || (v13 = v11, [-[objc_class supportedMIMETypes](+[WebView _getPDFViewClass](WebView "_getPDFViewClass")]))
  {
    if (pluginsCopy)
    {
      +[WebPluginDatabase sharedDatabase];
    }

    v10 = [+[WebFrameView _viewTypesAllowImageTypeOmission:](WebFrameView _viewTypesAllowImageTypeOmission:{0), "_webkit_objectForMIMEType:", lowercaseString}];
    v13 = [+[WebDataSource _repTypesAllowImageTypeOmission:](WebDataSource _repTypesAllowImageTypeOmission:{0), "_webkit_objectForMIMEType:", lowercaseString}];
  }

  LOBYTE(v14) = 0;
  if (v10 && v13)
  {
    if (v10 == objc_opt_class() && v13 == objc_opt_class())
    {
      if ([+[WebHTMLView unsupportedTextMIMETypes](WebHTMLView "unsupportedTextMIMETypes")])
      {
        LOBYTE(v14) = 0;
        return v14;
      }

      if (!pluginsCopy)
      {
        if (byte_1ED6A613C == 1)
        {
          if ([qword_1ED6A6188 containsObject:lowercaseString])
          {
LABEL_24:
            if (([+[WebHTMLView supportedNonImageMIMETypes](WebHTMLView "supportedNonImageMIMETypes")] & 1) == 0)
            {
              v14 = [+[WebHTMLView supportedMIMETypes](WebHTMLView "supportedMIMETypes")];
              if (!v14)
              {
                return v14;
              }
            }
          }
        }

        else
        {
          qword_1ED6A6188 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          byte_1ED6A613C = 1;
          if ([qword_1ED6A6188 containsObject:lowercaseString])
          {
            goto LABEL_24;
          }
        }
      }
    }

    if (class)
    {
      *class = v10;
    }

    if (representationClass)
    {
      *representationClass = v13;
    }

    LOBYTE(v14) = 1;
  }

  return v14;
}

- (BOOL)_viewClass:(Class *)class andRepresentationClass:(Class *)representationClass forMIMEType:(id)type
{
  v8 = objc_opt_class();

  return [v8 _viewClass:class andRepresentationClass:representationClass forMIMEType:type allowingPlugins:0];
}

+ (void)_setAlwaysUsesComplexTextCodePath:(BOOL)path
{
  if (path)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1EEE542A0](v3, a2);
}

+ (void)closeAllWebViews
{
  v13 = *MEMORY[0x1E69E9840];
  WebCore::LocalDOMWindow::dispatchAllPendingUnloadEvents(self);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  if (byte_1ED6A6137 == 1)
  {
    v2 = qword_1ED6A6168;
  }

  else
  {
    v2 = 0;
    qword_1ED6A6168 = 0;
    byte_1ED6A6137 = 1;
  }

  allObjects = [v2 allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v8 + 1) + 8 * i) close];
      }

      v5 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (BOOL)canShowFile:(id)file
{
  v4 = objc_opt_class();
  v5 = [WebView _MIMETypeForFile:file];

  return [v4 canShowMIMEType:v5];
}

WebCore *__43__WebView_WebPrivate___dispatchUnloadEvent__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) mainFrame];
  if (result)
  {
    v2 = *(*(result + 1) + 8);
    if (v2)
    {
      if (*(v2 + 224))
      {
        v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 736);
        if (!v3 || (result = *(v3 + 96)) == 0)
        {
          result = WebCore::threadGlobalDataSlow(result);
        }

        if (!*(result + 5))
        {
          WebCore::ThreadGlobalData::initializeEventNames(result);
        }

        WebCore::Event::create();
        WebCore::Document::dispatchWindowEvent();
        result = v4;
        if (v4)
        {
          if (*(v4 + 6) == 1)
          {
            return (*(*v4 + 8))();
          }

          else
          {
            --*(v4 + 6);
          }
        }
      }
    }
  }

  return result;
}

- (id)styleAtSelectionStart
{
  result = [(WebView *)self _mainCoreFrame];
  if (result)
  {
    WebCore::EditingStyle::styleAtSelectionStart();
    v3 = v9;
    if (!v9)
    {
      return 0;
    }

    result = *(v9 + 1);
    if (result)
    {
      v4 = WebCore::MutableStyleProperties::ensureCSSStyleProperties(result);
      result = kit(v4);
      v3 = v9;
      v5 = *v9 - 1;
      if (*v9 != 1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = *v9 - 1;
      if (*v9 != 1)
      {
LABEL_6:
        *v3 = v5;
        return result;
      }
    }

    v6 = result;
    WebCore::EditingStyle::~EditingStyle(v3);
    WTF::fastFree(v7, v8);
    return v6;
  }

  return result;
}

- (unint64_t)_renderTreeSize
{
  result = self->_private->page.m_ptr;
  if (result)
  {
    return MEMORY[0x1EEE5DD88](result, a2);
  }

  return result;
}

- (void)_dispatchTileDidDraw:(id)draw
{
  _webMailDelegate = [(WebView *)self _webMailDelegate];
  if (objc_opt_respondsToSelector())
  {

    [_webMailDelegate _webthread_webView:self tileDidDraw:draw];
  }

  else
  {
    v6 = 0;
    atomic_compare_exchange_strong(&self->_private->didDrawTiles, &v6, 1u);
    if (v6 && (v6 & 1) != 0)
    {
      WebThreadLock();
      v7 = [-[WebView _UIKitDelegateForwarder](self "_UIKitDelegateForwarder")];

      [v7 webViewDidDrawTiles:self];
    }
  }
}

- (void)_willStartScrollingOrZooming
{
  v3 = self->_private;
  if (!v3->mainViewIsScrollingOrZooming)
  {
    v3->mainViewIsScrollingOrZooming = 1;
    [(WebView *)self hideFormValidationMessage];
    [(WebFrame *)[(WebView *)self mainFrame] setTimeoutsPaused:1];

    [(WebView *)self setDefersCallbacks:1];
  }
}

- (void)_didFinishScrollingOrZooming
{
  v3 = self->_private;
  if (v3->mainViewIsScrollingOrZooming)
  {
    v3->mainViewIsScrollingOrZooming = 0;
    [(WebView *)self setDefersCallbacks:0];
    [(WebFrame *)[(WebView *)self mainFrame] setTimeoutsPaused:0];
    if (*([(WebView *)self _mainCoreFrame]+ 216))
    {

      MEMORY[0x1EEE55890]();
    }
  }
}

- (void)_setResourceLoadSchedulerSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  v4 = WebCore::platformStrategies(self);
  v5 = v4[1];
  if (v5)
  {
    v6 = *(v5 + 88);
    if (suspendedCopy)
    {
LABEL_3:
      *(v5 + 88) = v6 + 1;
      return;
    }
  }

  else
  {
    v5 = (*(*v4 + 16))(v4);
    v4[1] = v5;
    v6 = *(v5 + 88);
    if (suspendedCopy)
    {
      goto LABEL_3;
    }
  }

  v7 = v6 - 1;
  *(v5 + 88) = v7;
  if (!v7)
  {
    if ((v8 = *(v5 + 16)) != 0 && *(v8 - 12) || (v9 = *(v5 + 24), (v10 = v9[22]) != 0) && *(v10 - 12) || v9[2] != v9[3] || v9[6] != v9[7] || v9[10] != v9[11] || v9[14] != v9[15] || v9[18] != v9[19])
    {
      if ((*(v5 + 64) & 0xFFFFFFFFFFFFLL) == 0 || *((*(v5 + 64) & 0xFFFFFFFFFFFFLL) + 8) == 0.0)
      {

        WebCore::TimerBase::start();
      }
    }
  }
}

+ (BOOL)_isUnderMemoryPressure
{
  v2 = WTF::MemoryPressureHandler::singleton(self);
  v3 = atomic_load((v2 + 4));
  return (v3 == 2) | *(v2 + 7) & 1;
}

- (void)_closePluginDatabases
{
  if (!--pluginDatabaseClientCount && applicationIsTerminating == 1)
  {
    +[WebPluginDatabase closeSharedDatabase];
  }
}

- (void)_closeWithFastTeardown
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  [(WebView *)self _closePluginDatabases];
}

void __29__WebView_WebPrivate___close__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 80);
  if (!v1 || (*(v1 + 736) & 1) != 0)
  {
    return;
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  *(*(*(a1 + 32) + 80) + 736) = 1;
  [*(a1 + 32) _removeFromAllWebViewsSet];
  if (applicationIsTerminating == 1)
  {
    if (byte_1ED6A613E == 1)
    {
      if (byte_1ED6A613D)
      {
LABEL_6:
        v3 = *(a1 + 32);

        [v3 _closeWithFastTeardown];
        return;
      }
    }

    else
    {
      v4 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
      byte_1ED6A613D = v4 ^ 1;
      byte_1ED6A613E = 1;
      if ((v4 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  *(*(*(a1 + 32) + 80) + 737) = 1;
  v5 = [*(a1 + 32) _mainCoreFrame];
  if (v5)
  {
    WebCore::FrameLoader::detachFromParent(*(v5 + 208));
  }

  [*(a1 + 32) setHostWindow:0];
  v6 = *(*(*(a1 + 32) + 80) + 16);
  v16 = *(a1 + 32);
  WTF::HashSet<WebView *,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove((v6 + 16), &v16);
  v7 = *(*(a1 + 32) + 80);
  v8 = *(v7 + 8);
  *(v7 + 8) = 0;
  if (!v8)
  {
LABEL_15:
    v9 = *(a1 + 32);
    v10 = *(v9[10] + 1000);
    if (!v10)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (*(v8 + 8) != 1)
  {
    --*(v8 + 8);
    goto LABEL_15;
  }

  v13 = MEMORY[0x1CCA673C0]();
  bmalloc::api::tzoneFree(v13, v14);
  v9 = *(a1 + 32);
  v10 = *(v9[10] + 1000);
  if (v10)
  {
LABEL_16:
    *(v10 + 16) = 0;
    WebCore::RunLoopObserver::invalidate(*(v10 + 24));
    WebCore::RunLoopObserver::invalidate(*(v10 + 32));
    std::unique_ptr<WebViewRenderingUpdateScheduler>::reset[abi:sn200100]((*(*(a1 + 32) + 80) + 1000), 0);
    v9 = *(a1 + 32);
  }

LABEL_17:
  [objc_msgSend(v9 "_notificationProvider")];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  +[WebPreferences _removeReferenceForIdentifier:](WebPreferences, "_removeReferenceForIdentifier:", [*(a1 + 32) preferencesIdentifier]);
  v11 = *(*(a1 + 32) + 80);
  v12 = *(v11 + 208);
  *(v11 + 208) = 0;
  v15 = v12;
  [v12 didRemoveFromWebView];
  [*(a1 + 32) _closePluginDatabases];
  if (v15)
  {
  }
}

+ (id)_MIMETypeForFile:(id)file
{
  if (![0 length] || (v4 = objc_msgSend(0, "isEqualToString:", @"application/octet-stream"), result = 0, v4))
  {
    v6 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:file];
    v7 = [v6 readDataOfLength:1024];
    [v6 closeFile];
    if ([v7 length])
    {
      _webkit_guessedMIMEType = [v7 _webkit_guessedMIMEType];
    }

    else
    {
      _webkit_guessedMIMEType = 0;
    }

    if ([_webkit_guessedMIMEType length])
    {
      return _webkit_guessedMIMEType;
    }

    else
    {
      return @"application/octet-stream";
    }
  }

  return result;
}

- (id)_downloadURL:(id)l
{
  v4 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:l];
  result = [(NSURLDownload *)WebDownload _downloadWithRequest:v4 delegate:self->_private->downloadDelegate directory:0];
  if (v4)
  {
    v6 = result;

    return v6;
  }

  return result;
}

- (id)_openNewWindowWithRequest:(id)request
{
  _UIDelegateForwarder = [(WebView *)self _UIDelegateForwarder];
  result = [_UIDelegateForwarder webView:self createWebViewWithRequest:0 windowFeatures:MEMORY[0x1E695E0F8]];
  if (result)
  {
    v6 = result;
    CallUIDelegate(result, sel_webViewShow_);
    return v6;
  }

  return result;
}

- (BOOL)_useDarkAppearance
{
  v2 = self->_private;
  if (v2 && (m_ptr = v2->page.m_ptr) != 0)
  {
    return WebCore::Page::useDarkAppearance(m_ptr);
  }

  else
  {
    return 0;
  }
}

- (void)_setUseDarkAppearance:(BOOL)appearance
{
  v3 = self->_private;
  if (v3)
  {
    m_ptr = v3->page.m_ptr;
    if (m_ptr)
    {
      [(WebView *)self _setUseDarkAppearance:appearance useElevatedUserInterfaceLevel:*(m_ptr + 426)];
    }
  }
}

- (BOOL)_useElevatedUserInterfaceLevel
{
  m_ptr = self->_private;
  if (m_ptr)
  {
    m_ptr = m_ptr->page.m_ptr;
    if (m_ptr)
    {
      LOBYTE(m_ptr) = BYTE2(m_ptr->frameLoadDelegateImplementations.didClearWindowObjectForFrameFunc);
    }
  }

  return m_ptr & 1;
}

- (void)_setUseElevatedUserInterfaceLevel:(BOOL)level
{
  v3 = self->_private;
  if (v3)
  {
    m_ptr = v3->page.m_ptr;
    if (m_ptr)
    {
      levelCopy = level;
      v7 = WebCore::Page::useDarkAppearance(m_ptr);

      [(WebView *)self _setUseDarkAppearance:v7 useElevatedUserInterfaceLevel:levelCopy];
    }
  }
}

- (void)_setUseDarkAppearance:(BOOL)appearance useElevatedUserInterfaceLevel:(BOOL)level
{
  v4 = self->_private;
  if (v4)
  {
    if (v4->page.m_ptr)
    {
      MEMORY[0x1EEE5A6E8]();
    }
  }
}

- (id)inspector
{
  if (self->_private->inspector.m_ptr)
  {
    return self->_private->inspector.m_ptr;
  }

  v4 = [[WebInspector alloc] initWithInspectedWebView:self];
  v5 = self->_private;
  m_ptr = v5->inspector.m_ptr;
  v5->inspector.m_ptr = v4;
  if (!m_ptr)
  {
    return self->_private->inspector.m_ptr;
  }

  return self->_private->inspector.m_ptr;
}

+ (void)_enableRemoteInspector
{
  v2 = Inspector::RemoteInspector::singleton(self);

  MEMORY[0x1EEDCB9F8](v2);
}

+ (void)_disableRemoteInspector
{
  v2 = Inspector::RemoteInspector::singleton(self);

  MEMORY[0x1EEDCB9F0](v2);
}

- (void)setShowingInspectorIndication:(BOOL)indication
{
  m_ptr = self->_private->indicateLayer.m_ptr;
  if (indication)
  {
    if (!m_ptr)
    {
      v5 = [[WebIndicateLayer alloc] initWithWebView:self];
      v6 = self->_private;
      v7 = v6->indicateLayer.m_ptr;
      v6->indicateLayer.m_ptr = v5;
      if (v7)
      {
      }

      [(WebIndicateLayer *)self->_private->indicateLayer.m_ptr setNeedsLayout];
      v8 = [-[WebView window](self "window")];
      v9 = self->_private->indicateLayer.m_ptr;

      [v8 addSublayer:v9];
    }
  }

  else
  {
    [(WebIndicateLayer *)m_ptr removeFromSuperlayer];
    v10 = self->_private;
    v11 = v10->indicateLayer.m_ptr;
    v10->indicateLayer.m_ptr = 0;
    if (v11)
    {
    }
  }
}

- (void)_setHostApplicationProcessIdentifier:(int)identifier auditToken:(id *)token
{
  v4 = CFDataCreate(0, token, 32);
  Inspector::RemoteInspector::singleton(v4);
  if (v4)
  {
    CFRetain(v4);
  }

  Inspector::RemoteInspector::setParentProcessInformation();
  if (v4)
  {
    CFRelease(v4);
    CFRelease(v4);
  }
}

- (void)_mouseDidMoveOverElement:(id)element modifierFlags:(unint64_t)flags
{
  if (element)
  {
    CallUIDelegate(self, sel_webView_mouseDidMoveOverElement_modifierFlags_, element, flags);
  }
}

- (void)_loadBackForwardListFromOtherView:(id)view
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr && *(*(view + 10) + 8))
  {
    v6 = *(m_ptr + 19);
    ++*v6;
    v7 = *(*(*(view + 10) + 8) + 152);
    ++*v7;
    WebCore::BackForwardController::currentItem();
    v8 = v24;
    v24 = 0;
    if (v8)
    {
      if (*(v8 + 8) == 1)
      {
        v9 = MEMORY[0x1CCA64170]();
        WTF::fastFree(v9, v10);
      }

      else
      {
        --*(v8 + 8);
      }

      v11 = WebCore::BackForwardController::forwardCount(v7);
      v12 = -WebCore::BackForwardController::backCount(v7);
      if (v11 >= v12)
      {
        v15 = v11 + 1;
        do
        {
          if (!v12)
          {
            v18 = *(*(*(view + 10) + 8) + 176);
            if (v18)
            {
              if ((*(v18 + 136) & 1) == 0)
              {
                WebCore::HistoryController::saveDocumentAndScrollState(*(*(v18 + 208) + 32));
              }
            }
          }

          WebCore::BackForwardController::itemAtIndex();
          WebCore::HistoryItem::copy(&v24, v23);
          v19 = v23;
          v23 = 0;
          if (v19)
          {
            if (*(v19 + 2) == 1)
            {
              v20 = MEMORY[0x1CCA64170]();
              WTF::fastFree(v20, v21);
            }

            else
            {
              --*(v19 + 2);
            }
          }

          (*(**(v6 + 16) + 16))(*(v6 + 16), &v24);
          v22 = v24;
          v24 = 0;
          if (v22)
          {
            if (*(v22 + 8) == 1)
            {
              v16 = MEMORY[0x1CCA64170]();
              WTF::fastFree(v16, v17);
            }

            else
            {
              --*(v22 + 8);
            }
          }

          ++v12;
        }

        while (v15 != v12);
      }

      v13 = *(self->_private->page.m_ptr + 22);
      if (v13)
      {
        if ((*(v13 + 136) & 1) == 0)
        {
          ++*(v13 + 16);
          WebCore::Page::goToItem();
          if (*(v13 + 16) == 1)
          {
            (*(*v13 + 8))(v13);
            v14 = *v7;
            if (!*v7)
            {
              goto LABEL_31;
            }

LABEL_13:
            *v7 = v14 - 1;
            if (*v6)
            {
              --*v6;
              return;
            }

LABEL_31:
            __break(0xC471u);
            JUMPOUT(0x1C7A91128);
          }

          --*(v13 + 16);
        }
      }
    }

    v14 = *v7;
    if (!*v7)
    {
      goto LABEL_31;
    }

    goto LABEL_13;
  }
}

- (void)_setFormDelegate:(id)delegate
{
  self->_private->formDelegate = delegate;
  [self->_private->formDelegateForwarder.m_ptr clearTarget];
  v4 = self->_private;
  m_ptr = v4->formDelegateForwarder.m_ptr;
  v4->formDelegateForwarder.m_ptr = 0;
  if (m_ptr)
  {
  }
}

- (id)_formDelegateForwarder
{
  v2 = self->_private;
  if (v2->closing)
  {
    return 0;
  }

  if (v2->formDelegateForwarder.m_ptr)
  {
    return self->_private->formDelegateForwarder.m_ptr;
  }

  v5 = [[_WebSafeForwarder alloc] initWithTarget:[(WebView *)self _formDelegate] defaultTarget:+[WebDefaultFormDelegate sharedFormDelegate]];
  v6 = self->_private;
  m_ptr = v6->formDelegateForwarder.m_ptr;
  v6->formDelegateForwarder.m_ptr = v5;
  if (!m_ptr)
  {
    return self->_private->formDelegateForwarder.m_ptr;
  }

  return self->_private->formDelegateForwarder.m_ptr;
}

- (id)_formDelegateForSelector:(SEL)selector
{
  formDelegate = self->_private->formDelegate;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    formDelegate = +[WebDefaultFormDelegate sharedFormDelegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return 0;
    }
  }

  return formDelegate;
}

- (void)_preferencesChangedNotification:(id)notification
{
  if ((WebThreadIsLocked() & 1) == 0)
  {
    WebThreadLock();
  }

  if ([(WebFrame *)[(WebView *)self mainFrame] _loadsSynchronously])
  {
    object = [notification object];

    [(WebView *)self _preferencesChanged:object];
  }

  else
  {
    WebThreadRun();
  }
}

uint64_t __55__WebView_WebPrivate___preferencesChangedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  result = [*(a1 + 40) preferences];
  if (v2 == result)
  {
    v4 = *(a1 + 40);

    return [v4 _preferencesChanged:v2];
  }

  return result;
}

- (void)_preferencesChanged:(id)changed
{
  v5 = self->_private;
  if (!v5->userAgentOverridden)
  {
    [(WebView *)self _invalidateUserAgentCache];
    v5 = self->_private;
  }

  if (v5->page.m_ptr)
  {
    if (byte_1ED6A6131 == 1)
    {
      if ([changed databasesEnabled])
      {
        +[WebDatabaseManager sharedWebDatabaseManager];
      }

      if ([changed storageTrackerEnabled])
      {
        WebKitInitializeStorageIfNecessary();
      }
    }

    additionalSupportedImageTypes = [changed additionalSupportedImageTypes];
    v52 = &additionalSupportedImageTypes;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v49, [additionalSupportedImageTypes count], &v52, 0);
    WebCore::setAdditionalSupportedImageTypes();
    v7 = v49;
    if (v51)
    {
      v8 = 8 * v51;
      do
      {
        v9 = *v7;
        *v7 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v6);
        }

        v7 = (v7 + 8);
        v8 -= 8;
      }

      while (v8);
      v7 = v49;
    }

    if (v7)
    {
      v49 = 0;
      v50 = 0;
      WTF::fastFree(v7, v6);
    }

    [(WebView *)self _preferencesChangedGenerated:changed];
    v10 = *(self->_private->page.m_ptr + 15);
    interactiveFormValidationEnabled = [(WebView *)self interactiveFormValidationEnabled];
    v12 = 0x2000000000000;
    if (!interactiveFormValidationEnabled)
    {
      v12 = 0;
    }

    *(v10 + 696) = *(v10 + 696) & 0xFFFDFFFFFFFFFFFFLL | v12;
    *(v10 + 616) = [(WebView *)self validationMessageTimerMagnification];
    [changed storageBlockingPolicy];
    WebCore::Settings::setStorageBlockingPolicy();
    editableLinkBehavior = [changed editableLinkBehavior];
    if (editableLinkBehavior >= 5)
    {
      v14 = 0;
    }

    else
    {
      v14 = editableLinkBehavior;
    }

    *(v10 + 369) = v14;
    *(v10 + 432) = [changed javaScriptRuntimeFlags];
    textDirectionSubmenuInclusionBehavior = [changed textDirectionSubmenuInclusionBehavior];
    if (textDirectionSubmenuInclusionBehavior == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = textDirectionSubmenuInclusionBehavior == 1;
    }

    *(v10 + 558) = v16;
    [changed _backForwardCacheExpirationInterval];
    *(v10 + 312) = v17;
    *(v10 + 528) = [changed _pitchCorrectionAlgorithm];
    developerExtrasEnabled = [changed developerExtrasEnabled];
    v19 = 0x10000000000000;
    if (!developerExtrasEnabled)
    {
      v19 = 0;
    }

    *(v10 + 688) = *(v10 + 688) & 0xFFEFFFFFFFFFFFFFLL | v19;
    if ([changed mediaPlaybackRequiresUserGesture])
    {
      v20 = *(v10 + 712) | 0x40;
      *(v10 + 712) = v20;
    }

    else
    {
      videoPlaybackRequiresUserGesture = [changed videoPlaybackRequiresUserGesture];
      v22 = 64;
      if (!videoPlaybackRequiresUserGesture)
      {
        v22 = 0;
      }

      *(v10 + 712) = *(v10 + 712) & 0xFFFFFFFFFFFFFFBFLL | v22;
      audioPlaybackRequiresUserGesture = [changed audioPlaybackRequiresUserGesture];
      v24 = 0;
      v20 = *(v10 + 712);
      if (!audioPlaybackRequiresUserGesture)
      {
        goto LABEL_34;
      }
    }

    v24 = 32;
LABEL_34:
    *(v10 + 712) = v24 | v20 & 0xFFFFFFFFFFFFFFDFLL;
    webSQLEnabled = [changed webSQLEnabled];
    v26 = webSQLEnabled;
    v27 = WebCore::DeprecatedGlobalSettings::shared(webSQLEnabled);
    *(v27 + 23) = v26;
    v28 = WebCore::DatabaseManager::singleton(v27);
    [changed databasesEnabled];
    WebCore::DatabaseManager::setIsAvailable(v28);
    MEMORY[0x1CCA63A40](&v49, [changed _localStorageDatabasePath]);
    v30 = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
    }

    v31 = *(v10 + 448);
    *(v10 + 448) = v30;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v29);
    }

    v32 = v49;
    v49 = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, v29);
    }

    m_ptr = self->_private->page.m_ptr;
    if ([changed privateBrowsingEnabled])
    {
      v34.m_identifier = 0x8000000000000001;
    }

    else
    {
      v34.m_identifier = 1;
    }

    WebCore::Page::setSessionID(m_ptr, v34);
    WebBroadcastChannelRegistry::getOrCreate([changed privateBrowsingEnabled], &additionalSupportedImageTypes);
    v49 = additionalSupportedImageTypes;
    WebCore::Page::setBroadcastChannelRegistry();
    v35 = v49;
    v49 = 0;
    if (v35)
    {
      if (*(v35 + 2) == 1)
      {
        (*(*v35 + 8))(v35);
      }

      else
      {
        --*(v35 + 2);
      }
    }

    v36 = WebViewGroup::storageNamespaceProvider(self->_private->group.m_ptr);
    if ([changed privateBrowsingEnabled])
    {
      v37.m_identifier = 0x8000000000000001;
    }

    else
    {
      v37.m_identifier = 1;
    }

    WebCore::StorageNamespaceProvider::setSessionIDForTesting(v36, v37);
    WebCore::DeprecatedGlobalSettings::setAudioSessionCategoryOverride([changed audioSessionCategoryOverride]);
    MEMORY[0x1CCA63A40](&v49, [changed networkInterfaceName]);
    WebCore::DeprecatedGlobalSettings::setNetworkInterfaceName(&v49, v38);
    v40 = v49;
    v49 = 0;
    if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v40, v39);
    }

    v41 = self->_private->page.m_ptr;
    MEMORY[0x1CCA63A40](&v49, [changed mediaKeysStorageDirectory]);
    WebCore::Page::setMediaKeysStorageDirectory(v41, &v49);
    v43 = v49;
    v49 = 0;
    if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v43, v42);
    }

    WebCore::DeprecatedGlobalSettings::setTrackingPreventionEnabled([changed resourceLoadStatisticsEnabled]);
    zoomsTextOnly = [changed zoomsTextOnly];
    v46 = self->_private;
    if (v46->zoomsTextOnly != zoomsTextOnly)
    {
      *&v45 = v46->zoomMultiplier;
      [(WebView *)self _setZoomMultiplier:zoomsTextOnly isTextOnly:v45];
    }

    v47 = [-[WebView window](self "window")];
    if (v47)
    {
      v48 = v47;
      [changed showDebugBorders];
      WebCore::LegacyTileCache::setTileBordersVisible(v48);
      [changed showRepaintCounter];
      WebCore::LegacyTileCache::setTilePaintCountersVisible(v48);
      *(v48 + 74) = [changed acceleratedDrawingEnabled];
    }

    [MEMORY[0x1E69E2180] _setInterpolationQuality:{objc_msgSend(changed, "_interpolationQuality")}];
    WebCore::Page::settingsDidChange(self->_private->page.m_ptr);
  }
}

- (id)_UIKitDelegateForwarder
{
  v2 = self->_private;
  if (v2->closing)
  {
    return 0;
  }

  if (v2->UIKitDelegateForwarder.m_ptr)
  {
    return self->_private->UIKitDelegateForwarder.m_ptr;
  }

  v5 = [[_WebSafeForwarder alloc] initWithTarget:self->_private->UIKitDelegate defaultTarget:+[WebDefaultUIKitDelegate sharedUIKitDelegate]];
  v6 = self->_private;
  m_ptr = v6->UIKitDelegateForwarder.m_ptr;
  v6->UIKitDelegateForwarder.m_ptr = v5;
  if (!m_ptr)
  {
    return self->_private->UIKitDelegateForwarder.m_ptr;
  }

  return self->_private->UIKitDelegateForwarder.m_ptr;
}

- (void)_cacheResourceLoadDelegateImplementations
{
  v2 = self->_private;
  resourceProgressDelegate = v2->resourceProgressDelegate;
  if (resourceProgressDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [resourceProgressDelegate methodForSelector:sel_webView_resource_didFailLoadingWithError_fromDataSource_];
    }

    else
    {
      v4 = 0;
    }

    v2->resourceLoadDelegateImplementations.didFailLoadingWithErrorFromDataSourceFunc = v4;
    if (objc_opt_respondsToSelector())
    {
      v5 = [resourceProgressDelegate methodForSelector:sel_webView_resource_didFinishLoadingFromDataSource_];
    }

    else
    {
      v5 = 0;
    }

    v2->resourceLoadDelegateImplementations.didFinishLoadingFromDataSourceFunc = v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = [resourceProgressDelegate methodForSelector:sel_webView_didLoadResourceFromMemoryCache_response_length_fromDataSource_];
    }

    else
    {
      v6 = 0;
    }

    v2->resourceLoadDelegateImplementations.didLoadResourceFromMemoryCacheFunc = v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = [resourceProgressDelegate methodForSelector:sel_webView_resource_didReceiveAuthenticationChallenge_fromDataSource_];
    }

    else
    {
      v7 = 0;
    }

    v2->resourceLoadDelegateImplementations.didReceiveAuthenticationChallengeFunc = v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = [resourceProgressDelegate methodForSelector:sel_webView_resource_canAuthenticateAgainstProtectionSpace_forDataSource_];
    }

    else
    {
      v8 = 0;
    }

    v2->resourceLoadDelegateImplementations.canAuthenticateAgainstProtectionSpaceFunc = v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = [resourceProgressDelegate methodForSelector:sel_webView_connectionPropertiesForResource_dataSource_];
    }

    else
    {
      v9 = 0;
    }

    v2->resourceLoadDelegateImplementations.connectionPropertiesFunc = v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = [resourceProgressDelegate methodForSelector:sel_webThreadWebView_resource_didFinishLoadingFromDataSource_];
    }

    else
    {
      v10 = 0;
    }

    v2->resourceLoadDelegateImplementations.webThreadDidFinishLoadingFromDataSourceFunc = v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = [resourceProgressDelegate methodForSelector:sel_webThreadWebView_resource_didFailLoadingWithError_fromDataSource_];
    }

    else
    {
      v11 = 0;
    }

    v2->resourceLoadDelegateImplementations.webThreadDidFailLoadingWithErrorFromDataSourceFunc = v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = [resourceProgressDelegate methodForSelector:sel_webThreadWebView_identifierForInitialRequest_fromDataSource_];
    }

    else
    {
      v12 = 0;
    }

    v2->resourceLoadDelegateImplementations.webThreadIdentifierForRequestFunc = v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = [resourceProgressDelegate methodForSelector:sel_webThreadWebView_didLoadResourceFromMemoryCache_response_length_fromDataSource_];
    }

    else
    {
      v13 = 0;
    }

    v2->resourceLoadDelegateImplementations.webThreadDidLoadResourceFromMemoryCacheFunc = v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = [resourceProgressDelegate methodForSelector:sel_webThreadWebView_resource_willSendRequest_redirectResponse_fromDataSource_];
    }

    else
    {
      v14 = 0;
    }

    v2->resourceLoadDelegateImplementations.webThreadWillSendRequestFunc = v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = [resourceProgressDelegate methodForSelector:sel_webThreadWebView_resource_didReceiveResponse_fromDataSource_];
    }

    else
    {
      v15 = 0;
    }

    v2->resourceLoadDelegateImplementations.webThreadDidReceiveResponseFunc = v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = [resourceProgressDelegate methodForSelector:sel_webThreadWebView_resource_didReceiveContentLength_fromDataSource_];
    }

    else
    {
      v16 = 0;
    }

    v2->resourceLoadDelegateImplementations.webThreadDidReceiveContentLengthFunc = v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = [resourceProgressDelegate methodForSelector:sel_webThreadWebView_resource_willCacheResponse_fromDataSource_];
    }

    else
    {
      v17 = 0;
    }

    v2->resourceLoadDelegateImplementations.webThreadWillCacheResponseFunc = v17;
    if (objc_opt_respondsToSelector())
    {
      v18 = [resourceProgressDelegate methodForSelector:sel_webView_resource_didReceiveContentLength_fromDataSource_];
    }

    else
    {
      v18 = 0;
    }

    v2->resourceLoadDelegateImplementations.didReceiveContentLengthFunc = v18;
    if (objc_opt_respondsToSelector())
    {
      v19 = [resourceProgressDelegate methodForSelector:sel_webView_resource_didReceiveResponse_fromDataSource_];
    }

    else
    {
      v19 = 0;
    }

    v2->resourceLoadDelegateImplementations.didReceiveResponseFunc = v19;
    if (objc_opt_respondsToSelector())
    {
      v20 = [resourceProgressDelegate methodForSelector:sel_webView_identifierForInitialRequest_fromDataSource_];
    }

    else
    {
      v20 = 0;
    }

    v2->resourceLoadDelegateImplementations.identifierForRequestFunc = v20;
    if (objc_opt_respondsToSelector())
    {
      v21 = [resourceProgressDelegate methodForSelector:sel_webView_plugInFailedWithError_dataSource_];
    }

    else
    {
      v21 = 0;
    }

    v2->resourceLoadDelegateImplementations.plugInFailedWithErrorFunc = v21;
    if (objc_opt_respondsToSelector())
    {
      v22 = [resourceProgressDelegate methodForSelector:sel_webView_resource_willCacheResponse_fromDataSource_];
    }

    else
    {
      v22 = 0;
    }

    v2->resourceLoadDelegateImplementations.willCacheResponseFunc = v22;
    if (objc_opt_respondsToSelector())
    {
      v23 = [resourceProgressDelegate methodForSelector:sel_webView_resource_willSendRequest_redirectResponse_fromDataSource_];
    }

    else
    {
      v23 = 0;
    }

    v2->resourceLoadDelegateImplementations.willSendRequestFunc = v23;
    if (objc_opt_respondsToSelector())
    {
      v24 = [resourceProgressDelegate methodForSelector:sel_webView_resource_shouldUseCredentialStorageForDataSource_];
    }

    else
    {
      v24 = 0;
    }

    v2->resourceLoadDelegateImplementations.shouldUseCredentialStorageFunc = v24;
    if (objc_opt_respondsToSelector())
    {
      v2->resourceLoadDelegateImplementations.shouldPaintBrokenImageForURLFunc = [resourceProgressDelegate methodForSelector:sel_webView_shouldPaintBrokenImageForURL_];
    }

    else
    {
      v2->resourceLoadDelegateImplementations.shouldPaintBrokenImageForURLFunc = 0;
    }
  }

  else
  {

    bzero(&v2->resourceLoadDelegateImplementations, 0xB0uLL);
  }
}

- (void)_cacheFrameLoadDelegateImplementations
{
  v2 = self->_private;
  frameLoadDelegate = v2->frameLoadDelegate;
  if (frameLoadDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [frameLoadDelegate methodForSelector:sel_webView_didCancelClientRedirectForFrame_];
    }

    else
    {
      v5 = 0;
    }

    v2->frameLoadDelegateImplementations.didCancelClientRedirectForFrameFunc = v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = [frameLoadDelegate methodForSelector:sel_webView_didChangeLocationWithinPageForFrame_];
    }

    else
    {
      v6 = 0;
    }

    v2->frameLoadDelegateImplementations.didChangeLocationWithinPageForFrameFunc = v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = [frameLoadDelegate methodForSelector:sel_webView_didPushStateWithinPageForFrame_];
    }

    else
    {
      v7 = 0;
    }

    v2->frameLoadDelegateImplementations.didPushStateWithinPageForFrameFunc = v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = [frameLoadDelegate methodForSelector:sel_webView_didReplaceStateWithinPageForFrame_];
    }

    else
    {
      v8 = 0;
    }

    v2->frameLoadDelegateImplementations.didReplaceStateWithinPageForFrameFunc = v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = [frameLoadDelegate methodForSelector:sel_webView_didPopStateWithinPageForFrame_];
    }

    else
    {
      v9 = 0;
    }

    v2->frameLoadDelegateImplementations.didPopStateWithinPageForFrameFunc = v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = [frameLoadDelegate methodForSelector:sel_webView_didCreateJavaScriptContext_forFrame_];
    }

    else
    {
      v10 = 0;
    }

    v2->frameLoadDelegateImplementations.didCreateJavaScriptContextForFrameFunc = v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = [frameLoadDelegate methodForSelector:sel_webView_didClearWindowObject_forFrame_];
    }

    else
    {
      v11 = 0;
    }

    v2->frameLoadDelegateImplementations.didClearWindowObjectForFrameFunc = v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = [frameLoadDelegate methodForSelector:sel_webView_didClearWindowObjectForFrame_inScriptWorld_];
    }

    else
    {
      v12 = 0;
    }

    v2->frameLoadDelegateImplementations.didClearWindowObjectForFrameInScriptWorldFunc = v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = [frameLoadDelegate methodForSelector:sel_webView_didClearInspectorWindowObject_forFrame_];
    }

    else
    {
      v13 = 0;
    }

    v2->frameLoadDelegateImplementations.didClearInspectorWindowObjectForFrameFunc = v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = [frameLoadDelegate methodForSelector:sel_webView_didCommitLoadForFrame_];
    }

    else
    {
      v14 = 0;
    }

    v2->frameLoadDelegateImplementations.didCommitLoadForFrameFunc = v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = [frameLoadDelegate methodForSelector:sel_webView_didFailLoadWithError_forFrame_];
    }

    else
    {
      v15 = 0;
    }

    v2->frameLoadDelegateImplementations.didFailLoadWithErrorForFrameFunc = v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = [frameLoadDelegate methodForSelector:sel_webView_didFailProvisionalLoadWithError_forFrame_];
    }

    else
    {
      v16 = 0;
    }

    v2->frameLoadDelegateImplementations.didFailProvisionalLoadWithErrorForFrameFunc = v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = [frameLoadDelegate methodForSelector:sel_webView_didFinishDocumentLoadForFrame_];
    }

    else
    {
      v17 = 0;
    }

    v2->frameLoadDelegateImplementations.didFinishDocumentLoadForFrameFunc = v17;
    if (objc_opt_respondsToSelector())
    {
      v18 = [frameLoadDelegate methodForSelector:sel_webView_didFinishLoadForFrame_];
    }

    else
    {
      v18 = 0;
    }

    v2->frameLoadDelegateImplementations.didFinishLoadForFrameFunc = v18;
    if (objc_opt_respondsToSelector())
    {
      v19 = [frameLoadDelegate methodForSelector:sel_webView_didFirstLayoutInFrame_];
    }

    else
    {
      v19 = 0;
    }

    v2->frameLoadDelegateImplementations.didFirstLayoutInFrameFunc = v19;
    if (objc_opt_respondsToSelector())
    {
      v20 = [frameLoadDelegate methodForSelector:sel_webView_didFirstVisuallyNonEmptyLayoutInFrame_];
    }

    else
    {
      v20 = 0;
    }

    v2->frameLoadDelegateImplementations.didFirstVisuallyNonEmptyLayoutInFrameFunc = v20;
    if (objc_opt_respondsToSelector())
    {
      v21 = [frameLoadDelegate methodForSelector:sel_webView_didLayout_];
    }

    else
    {
      v21 = 0;
    }

    v2->frameLoadDelegateImplementations.didLayoutFunc = v21;
    if (objc_opt_respondsToSelector())
    {
      v22 = [frameLoadDelegate methodForSelector:sel_webView_didHandleOnloadEventsForFrame_];
    }

    else
    {
      v22 = 0;
    }

    v2->frameLoadDelegateImplementations.didHandleOnloadEventsForFrameFunc = v22;
    if (objc_opt_respondsToSelector())
    {
      v23 = [frameLoadDelegate methodForSelector:sel_webView_didReceiveServerRedirectForProvisionalLoadForFrame_];
    }

    else
    {
      v23 = 0;
    }

    v2->frameLoadDelegateImplementations.didReceiveServerRedirectForProvisionalLoadForFrameFunc = v23;
    if (objc_opt_respondsToSelector())
    {
      v24 = [frameLoadDelegate methodForSelector:sel_webView_didReceiveTitle_forFrame_];
    }

    else
    {
      v24 = 0;
    }

    v2->frameLoadDelegateImplementations.didReceiveTitleForFrameFunc = v24;
    if (objc_opt_respondsToSelector())
    {
      v25 = [frameLoadDelegate methodForSelector:sel_webView_didStartProvisionalLoadForFrame_];
    }

    else
    {
      v25 = 0;
    }

    v2->frameLoadDelegateImplementations.didStartProvisionalLoadForFrameFunc = v25;
    if (objc_opt_respondsToSelector())
    {
      v26 = [frameLoadDelegate methodForSelector:sel_webView_willCloseFrame_];
    }

    else
    {
      v26 = 0;
    }

    v2->frameLoadDelegateImplementations.willCloseFrameFunc = v26;
    if (objc_opt_respondsToSelector())
    {
      v27 = [frameLoadDelegate methodForSelector:sel_webView_willPerformClientRedirectToURL_delay_fireDate_forFrame_];
    }

    else
    {
      v27 = 0;
    }

    v2->frameLoadDelegateImplementations.willPerformClientRedirectToURLDelayFireDateForFrameFunc = v27;
    if (objc_opt_respondsToSelector())
    {
      v28 = [frameLoadDelegate methodForSelector:sel_webView_windowScriptObjectAvailable_];
    }

    else
    {
      v28 = 0;
    }

    v2->frameLoadDelegateImplementations.windowScriptObjectAvailableFunc = v28;
    if (objc_opt_respondsToSelector())
    {
      v29 = [frameLoadDelegate methodForSelector:sel_webViewDidDisplayInsecureContent_];
    }

    else
    {
      v29 = 0;
    }

    v2->frameLoadDelegateImplementations.didDisplayInsecureContentFunc = v29;
    if (objc_opt_respondsToSelector())
    {
      v30 = [frameLoadDelegate methodForSelector:sel_webView_didRunInsecureContent_];
    }

    else
    {
      v30 = 0;
    }

    v2->frameLoadDelegateImplementations.didRunInsecureContentFunc = v30;
    if (objc_opt_respondsToSelector())
    {
      v31 = [frameLoadDelegate methodForSelector:sel_webView_didDetectXSS_];
    }

    else
    {
      v31 = 0;
    }

    v2->frameLoadDelegateImplementations.didDetectXSSFunc = v31;
    if (objc_opt_respondsToSelector())
    {
      v32 = [frameLoadDelegate methodForSelector:sel_webView_didRemoveFrameFromHierarchy_];
    }

    else
    {
      v32 = 0;
    }

    v2->frameLoadDelegateImplementations.didRemoveFrameFromHierarchyFunc = v32;
    if (objc_opt_respondsToSelector())
    {
      v2->frameLoadDelegateImplementations.webThreadDidLayoutFunc = [frameLoadDelegate methodForSelector:sel_webThreadWebView_didLayout_];
      [(WebView *)self page];
      if (!v33)
      {
        return;
      }
    }

    else
    {
      v2->frameLoadDelegateImplementations.webThreadDidLayoutFunc = 0;
      [(WebView *)self page];
      if (!v33)
      {
        return;
      }
    }

    WebCore::Page::addLayoutMilestones();
    return;
  }

  bzero(&v2->frameLoadDelegateImplementations, 0xF0uLL);
}

- (void)_cacheScriptDebugDelegateImplementations
{
  v2 = self->_private;
  scriptDebugDelegate = v2->scriptDebugDelegate;
  if (!scriptDebugDelegate)
  {

    bzero(&v2->scriptDebugDelegateImplementations, 0x20uLL);
    return;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    p_didParseSourceFunc = &v2->scriptDebugDelegateImplementations.didParseSourceFunc;
    v2->scriptDebugDelegateImplementations.didParseSourceFunc = 0;
    goto LABEL_11;
  }

  v4 = [scriptDebugDelegate methodForSelector:sel_webView_didParseSource_baseLineNumber_fromURL_sourceId_forWebFrame_];
  v2->scriptDebugDelegateImplementations.didParseSourceFunc = v4;
  if (!v4)
  {
    p_didParseSourceFunc = &v2->scriptDebugDelegateImplementations.didParseSourceFunc;
LABEL_11:
    v2->scriptDebugDelegateImplementations.didParseSourceExpectsBaseLineNumber = 0;
    if (objc_opt_respondsToSelector())
    {
      v7 = [scriptDebugDelegate methodForSelector:sel_webView_didParseSource_fromURL_sourceId_forWebFrame_];
    }

    else
    {
      v7 = 0;
    }

    *p_didParseSourceFunc = v7;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    v5 = [scriptDebugDelegate methodForSelector:sel_webView_failedToParseSource_baseLineNumber_fromURL_withError_forWebFrame_];
    goto LABEL_16;
  }

  v2->scriptDebugDelegateImplementations.didParseSourceExpectsBaseLineNumber = 1;
  if (objc_opt_respondsToSelector())
  {
    goto LABEL_15;
  }

LABEL_5:
  v5 = 0;
LABEL_16:
  v2->scriptDebugDelegateImplementations.failedToParseSourceFunc = v5;
  if (objc_opt_respondsToSelector())
  {
    v8 = [scriptDebugDelegate methodForSelector:sel_webView_exceptionWasRaised_hasHandler_sourceId_line_forWebFrame_];
    v2->scriptDebugDelegateImplementations.exceptionWasRaisedFunc = v8;
    if (v8)
    {
      v2->scriptDebugDelegateImplementations.exceptionWasRaisedExpectsHasHandlerFlag = 1;
      return;
    }

    p_exceptionWasRaisedFunc = &v2->scriptDebugDelegateImplementations.exceptionWasRaisedFunc;
  }

  else
  {
    p_exceptionWasRaisedFunc = &v2->scriptDebugDelegateImplementations.exceptionWasRaisedFunc;
    v2->scriptDebugDelegateImplementations.exceptionWasRaisedFunc = 0;
  }

  v2->scriptDebugDelegateImplementations.exceptionWasRaisedExpectsHasHandlerFlag = 0;
  if (objc_opt_respondsToSelector())
  {
    *p_exceptionWasRaisedFunc = [scriptDebugDelegate methodForSelector:sel_webView_exceptionWasRaised_sourceId_line_forWebFrame_];
  }

  else
  {
    *p_exceptionWasRaisedFunc = 0;
  }
}

- (void)_cacheHistoryDelegateImplementations
{
  v2 = self->_private;
  historyDelegate = v2->historyDelegate;
  if (historyDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [historyDelegate methodForSelector:sel_webView_didNavigateWithNavigationData_inFrame_];
    }

    else
    {
      v4 = 0;
    }

    v2->historyDelegateImplementations.navigatedFunc = v4;
    if (objc_opt_respondsToSelector())
    {
      v5 = [historyDelegate methodForSelector:sel_webView_didPerformClientRedirectFromURL_toURL_inFrame_];
    }

    else
    {
      v5 = 0;
    }

    v2->historyDelegateImplementations.clientRedirectFunc = v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = [historyDelegate methodForSelector:sel_webView_didPerformServerRedirectFromURL_toURL_inFrame_];
    }

    else
    {
      v6 = 0;
    }

    v2->historyDelegateImplementations.serverRedirectFunc = v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = [historyDelegate methodForSelector:sel_webView_updateHistoryTitle_forURL_];
    }

    else
    {
      v7 = 0;
    }

    v2->historyDelegateImplementations.deprecatedSetTitleFunc = v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = [historyDelegate methodForSelector:sel_webView_updateHistoryTitle_forURL_inFrame_];
    }

    else
    {
      v8 = 0;
    }

    v2->historyDelegateImplementations.setTitleFunc = v8;
    if (objc_opt_respondsToSelector())
    {
      v2->historyDelegateImplementations.populateVisitedLinksFunc = [historyDelegate methodForSelector:sel_populateVisitedLinksForWebView_];
    }

    else
    {
      v2->historyDelegateImplementations.populateVisitedLinksFunc = 0;
    }
  }

  else
  {

    bzero(&v2->historyDelegateImplementations, 0x30uLL);
  }
}

- (id)_policyDelegateForwarder
{
  v2 = self->_private;
  if (v2->closing)
  {
    return 0;
  }

  if (v2->policyDelegateForwarder.m_ptr)
  {
    return self->_private->policyDelegateForwarder.m_ptr;
  }

  v5 = [[_WebSafeForwarder alloc] initWithTarget:self->_private->policyDelegate defaultTarget:+[WebDefaultPolicyDelegate sharedPolicyDelegate]];
  v6 = self->_private;
  m_ptr = v6->policyDelegateForwarder.m_ptr;
  v6->policyDelegateForwarder.m_ptr = v5;
  if (!m_ptr)
  {
    return self->_private->policyDelegateForwarder.m_ptr;
  }

  return self->_private->policyDelegateForwarder.m_ptr;
}

- (id)_UIDelegateForwarder
{
  v2 = self->_private;
  if (v2->closing)
  {
    return 0;
  }

  if (v2->UIDelegateForwarder.m_ptr)
  {
    return self->_private->UIDelegateForwarder.m_ptr;
  }

  v5 = [[_WebSafeForwarder alloc] initWithTarget:self->_private->UIDelegate defaultTarget:+[WebDefaultUIDelegate sharedUIDelegate]];
  v6 = self->_private;
  m_ptr = v6->UIDelegateForwarder.m_ptr;
  v6->UIDelegateForwarder.m_ptr = v5;
  if (!m_ptr)
  {
    return self->_private->UIDelegateForwarder.m_ptr;
  }

  return self->_private->UIDelegateForwarder.m_ptr;
}

- (id)_UIDelegateForSelector:(SEL)selector
{
  UIDelegate = self->_private->UIDelegate;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    UIDelegate = +[WebDefaultUIDelegate sharedUIDelegate];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return 0;
    }
  }

  return UIDelegate;
}

- (id)_editingDelegateForwarder
{
  result = 0;
  v4 = self->_private;
  if (v4 && !v4->closing)
  {
    if (!v4->editingDelegateForwarder.m_ptr)
    {
      v5 = [[_WebSafeForwarder alloc] initWithTarget:self->_private->editingDelegate defaultTarget:+[WebDefaultEditingDelegate sharedEditingDelegate]];
      v6 = self->_private;
      m_ptr = v6->editingDelegateForwarder.m_ptr;
      v6->editingDelegateForwarder.m_ptr = v5;
      if (m_ptr)
      {
      }
    }

    return self->_private->editingDelegateForwarder.m_ptr;
  }

  return result;
}

+ (void)_unregisterViewClassAndRepresentationClassForMIMEType:(id)type
{
  [+[WebFrameView _viewTypesAllowImageTypeOmission:](WebFrameView _viewTypesAllowImageTypeOmission:{0), "removeObjectForKey:", type}];
  v4 = WebCore::MIMETypeRegistry::supportedNonImageMIMETypes([+[WebDataSource _repTypesAllowImageTypeOmission:](WebDataSource _repTypesAllowImageTypeOmission:{0), "removeObjectForKey:", type}]);
  MEMORY[0x1CCA63A40](&v17, type);
  v6 = v17;
  v7 = *v4;
  if (*v4)
  {
    if (v17 == -1 || !v17)
    {
      __break(0xC471u);
      JUMPOUT(0x1C7A92D5CLL);
    }

    v8 = *(v7 - 8);
    v9 = WTF::IdentityHashTranslator<WTF::HashTraits<WTF::String>,WTF::ASCIICaseInsensitiveHash>::hash<WTF::String>(v17);
    for (i = 0; ; v9 = i + v11)
    {
      v11 = v9 & v8;
      v12 = *(v7 + 8 * v11);
      if (v12 != -1)
      {
        if (!v12)
        {
          goto LABEL_18;
        }

        if (WTF::equalIgnoringASCIICaseCommon<WTF::StringImpl,WTF::StringImpl>(*(v7 + 8 * v11), v6))
        {
          break;
        }
      }

      ++i;
    }

    if (v11 != *(v7 - 4))
    {
      *(v7 + 8 * v11) = -1;
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v5);
      }

      v13 = *v4;
      v14 = vadd_s32(*(*v4 - 16), 0xFFFFFFFF00000001);
      *(v13 - 16) = v14;
      v15 = *(v13 - 4);
      if (6 * v14.i32[1] < v15 && v15 >= 9)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v4, v15 >> 1, 0);
      }
    }

LABEL_18:
    v6 = v17;
  }

  v17 = 0;
  if (v6)
  {
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }
  }
}

+ (void)_registerViewClass:(Class)class representationClass:(Class)representationClass forURLScheme:(id)scheme
{
  v9 = [self _generatedMIMETypeForURLScheme:scheme];
  [self registerViewClass:class representationClass:representationClass forMIMEType:v9];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  if (v10 == v11)
  {
    v12 = WebCore::MIMETypeRegistry::supportedNonImageMIMETypes(v11);
    MEMORY[0x1CCA63A40](&v20, v9);
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v19, v12, &v20);
    v14 = v20;
    v20 = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }
    }
  }

  if (byte_1ED6A613F)
  {
    v15 = qword_1ED6A6190;
    if (qword_1ED6A6190)
    {
      goto LABEL_11;
    }

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v17 = qword_1ED6A6190;
    qword_1ED6A6190 = v16;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    qword_1ED6A6190 = 0;
    byte_1ED6A613F = 1;
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v17 = qword_1ED6A6190;
    qword_1ED6A6190 = v16;
    if (v17)
    {
LABEL_8:

      v15 = qword_1ED6A6190;
      goto LABEL_11;
    }
  }

  v15 = v16;
LABEL_11:
  v18 = [objc_msgSend(scheme "lowercaseString")];
  [v15 addObject:v18];
  if (v18)
  {
  }
}

+ (id)_generatedMIMETypeForURLScheme:(id)scheme
{
  lowercaseString = [scheme lowercaseString];

  return [@"x-apple-web-kit/" stringByAppendingString:lowercaseString];
}

+ (BOOL)_representationExistsForURLScheme:(id)scheme
{
  if (byte_1ED6A613F == 1)
  {
    v3 = qword_1ED6A6190;
  }

  else
  {
    v3 = 0;
    qword_1ED6A6190 = 0;
    byte_1ED6A613F = 1;
  }

  lowercaseString = [scheme lowercaseString];

  return [v3 containsObject:lowercaseString];
}

+ (BOOL)_canHandleRequest:(id)request forMainFrame:(BOOL)frame
{
  if (request)
  {
    frameCopy = frame;
    v7 = [request URL];
    if (v7)
    {
      if ([MEMORY[0x1E695AC40] canHandleRequest:request] & 1) != 0 || (v8 = objc_msgSend(objc_msgSend(request, "URL"), "scheme"), frameCopy) && (objc_msgSend(self, "_representationExistsForURLScheme:", v8) & 1) != 0 || (objc_msgSend(v8, "_webkit_isCaseInsensitiveEqualToString:", @"applewebdata"))
      {
        LOBYTE(v7) = 1;
      }

      else
      {

        LOBYTE(v7) = [v8 _webkit_isCaseInsensitiveEqualToString:@"blob"];
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (id)_decodeData:(id)data
{
  WebCore::HTMLNames::init(self);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v16[0] = &unk_1F472B448;
  memset(&v16[1], 0, 24);
  WebCore::TextResourceDecoder::create(&v17, v16, 0);
  if (data)
  {
    [data bytes];
    [data length];
  }

  WebCore::TextResourceDecoder::decodeAndFlush();
  v4 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v20, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v20 = &stru_1F472E7E8;
    v15 = &stru_1F472E7E8;
  }

  v6 = v20;
  v20 = 0;
  if (v6)
  {
    v7 = v6;
    v8 = v20;
    v20 = 0;
    if (v8)
    {
    }
  }

  v9 = v19;
  v19 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  v10 = v18;
  v18 = 0;
  if (!v10)
  {
LABEL_15:
    v11 = v17;
    v17 = 0;
    if (!v11)
    {
      return v6;
    }

    goto LABEL_16;
  }

  if (*v10 != 1)
  {
    --*v10;
    goto LABEL_15;
  }

  WebCore::TextResourceDecoder::~TextResourceDecoder(v10);
  WTF::fastFree(v13, v14);
  v11 = v17;
  v17 = 0;
  if (!v11)
  {
    return v6;
  }

LABEL_16:
  if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v5);
  }

  return v6;
}

- (void)_didCommitLoadForFrame:(id)frame
{
  if ([(WebView *)self mainFrame]== frame)
  {
    atomic_store(0, &self->_private->didDrawTiles);
  }
}

- (void)_setUIKitDelegate:(id)delegate
{
  self->_private->UIKitDelegate = delegate;
  [self->_private->UIKitDelegateForwarder.m_ptr clearTarget];
  v4 = self->_private;
  m_ptr = v4->UIKitDelegateForwarder.m_ptr;
  v4->UIKitDelegateForwarder.m_ptr = 0;
  if (m_ptr)
  {
  }
}

- (void)addCaretChangeListener:(id)listener
{
  if (!self->_private->_caretChangeListeners.m_ptr)
  {
    listenerCopy = listener;
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    listener = listenerCopy;
    v6 = self->_private;
    m_ptr = v6->_caretChangeListeners.m_ptr;
    v6->_caretChangeListeners.m_ptr = v5;
    if (m_ptr)
    {

      listener = listenerCopy;
    }
  }

  v8 = self->_private->_caretChangeListeners.m_ptr;

  [(NSMutableSet *)v8 addObject:listener];
}

- (void)caretChanged
{
  v12 = *MEMORY[0x1E69E9840];
  [(WebCaretChangeListener *)self->_private->_caretChangeListener caretChanged];
  v3 = [(NSMutableSet *)self->_private->_caretChangeListeners.m_ptr copy];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) caretChanged];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  if (v3)
  {
  }
}

- (void)_clearDelegates
{
  [(WebView *)self _setFormDelegate:0];
  [(WebView *)self _setUIKitDelegate:0];
  [(WebView *)self setCaretChangeListener:0];
  [(WebView *)self removeAllCaretChangeListeners];
  [(WebView *)self setWebMailDelegate:0];
  [(WebView *)self setDownloadDelegate:0];
  [(WebView *)self setEditingDelegate:0];
  [(WebView *)self setFrameLoadDelegate:0];
  [(WebView *)self setPolicyDelegate:0];
  [(WebView *)self setResourceLoadDelegate:0];
  [(WebView *)self setScriptDebugDelegate:0];

  [(WebView *)self setUIDelegate:0];
}

- (id)_displayURL
{
  WebThreadLock();
  mainFrame = [(WebView *)self mainFrame];
  provisionalDataSource = [(WebFrame *)mainFrame provisionalDataSource];
  dataSource = provisionalDataSource;
  if (provisionalDataSource)
  {
    unreachableURL = [(WebDataSource *)provisionalDataSource unreachableURL];
    if (unreachableURL)
    {
LABEL_3:
      v7 = unreachableURL;
      v8 = unreachableURL;
      v9 = unreachableURL;
      goto LABEL_7;
    }
  }

  else
  {
    dataSource = [(WebFrame *)mainFrame dataSource];
    unreachableURL = [(WebDataSource *)dataSource unreachableURL];
    if (unreachableURL)
    {
      goto LABEL_3;
    }
  }

  v10 = [(NSMutableURLRequest *)[(WebDataSource *)dataSource request] URL];
  v9 = v10;
  if (!v10)
  {
    return v9;
  }

  v11 = v10;
LABEL_7:
  v12 = v9;
  if (unreachableURL)
  {
  }

  return v9;
}

- (void)_setUseFastImageScalingMode:(BOOL)mode
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr && WebCore::Page::inLowQualityImageInterpolationMode(m_ptr) != mode)
  {
    WebCore::Page::setInLowQualityImageInterpolationMode(self->_private->page.m_ptr);

    [(WebView *)self setNeedsDisplay:1];
  }
}

- (BOOL)_inFastImageScalingMode
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    LOBYTE(m_ptr) = WebCore::Page::inLowQualityImageInterpolationMode(m_ptr);
  }

  return m_ptr;
}

- (BOOL)_cookieEnabled
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    return (*(*(m_ptr + 15) + 687) >> 5) & 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)_setCookieEnabled:(BOOL)enabled
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    v4 = *(m_ptr + 15);
    v5 = 0x2000000000000000;
    if (!enabled)
    {
      v5 = 0;
    }

    *(v4 + 680) = *(v4 + 680) & 0xDFFFFFFFFFFFFFFFLL | v5;
  }
}

- (BOOL)_locked_plugInsAreRunningInFrame:(id)frame
{
  v5 = [objc_msgSend(frame "frameView")];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v6 "_pluginController")])
    {
      return 1;
    }
  }

  childFrames = [frame childFrames];
  v9 = [childFrames count];
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  v11 = v9 - 1;
  do
  {
    result = -[WebView _locked_plugInsAreRunningInFrame:](self, "_locked_plugInsAreRunningInFrame:", [childFrames objectAtIndex:v10]);
    if (result)
    {
      break;
    }
  }

  while (v11 != v10++);
  return result;
}

- (BOOL)_pluginsAreRunning
{
  WebThreadLock();
  mainFrame = [(WebView *)self mainFrame];

  return [(WebView *)self _locked_plugInsAreRunningInFrame:mainFrame];
}

- (void)_locked_recursivelyPerformPlugInSelector:(SEL)selector inFrame:(id)frame
{
  v7 = [objc_msgSend(frame "frameView")];
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(v8 "_pluginController")];
    }
  }

  childFrames = [frame childFrames];
  v10 = [childFrames count];
  v11 = v10;
  if (v10)
  {
    v12 = 0;
    do
    {
      -[WebView _locked_recursivelyPerformPlugInSelector:inFrame:](self, "_locked_recursivelyPerformPlugInSelector:inFrame:", selector, [childFrames objectAtIndex:v12++]);
    }

    while (v11 != v12);
  }
}

- (void)_destroyAllPlugIns
{
  WebThreadLock();
  mainFrame = [(WebView *)self mainFrame];

  [(WebView *)self _locked_recursivelyPerformPlugInSelector:sel_destroyAllPlugins inFrame:mainFrame];
}

- (void)_startAllPlugIns
{
  WebThreadLock();
  mainFrame = [(WebView *)self mainFrame];

  [(WebView *)self _locked_recursivelyPerformPlugInSelector:sel_startAllPlugins inFrame:mainFrame];
}

- (void)_stopAllPlugIns
{
  WebThreadLock();
  mainFrame = [(WebView *)self mainFrame];

  [(WebView *)self _locked_recursivelyPerformPlugInSelector:sel_stopAllPlugins inFrame:mainFrame];
}

- (void)_stopAllPlugInsForPageCache
{
  WebThreadLock();
  mainFrame = [(WebView *)self mainFrame];

  [(WebView *)self _locked_recursivelyPerformPlugInSelector:sel_stopPluginsForPageCache inFrame:mainFrame];
}

- (void)_restorePlugInsFromCache
{
  WebThreadLock();
  mainFrame = [(WebView *)self mainFrame];

  [(WebView *)self _locked_recursivelyPerformPlugInSelector:sel_restorePluginsFromCache inFrame:mainFrame];
}

- (BOOL)_setMediaLayer:(id)layer forPluginView:(id)view
{
  WebThreadLock();
  _mainCoreFrame = [(WebView *)self _mainCoreFrame];
  if (_mainCoreFrame)
  {
    v8 = _mainCoreFrame;
    v9 = _mainCoreFrame;
    while (1)
    {
      v10 = *(v9 + 27);
      if (v10)
      {
        v11 = WebCore::LocalFrameView::graphicsLayerForPlatformWidget(v10, view);
        if (v11)
        {
          v12 = v11;
          if ((*(*v11 + 544))(v11) != layer)
          {
            break;
          }
        }
      }

      _mainCoreFrame = WebCore::FrameTree::traverseNext((v9 + 40), 0);
      if (!_mainCoreFrame)
      {
        return _mainCoreFrame;
      }

      v9 = _mainCoreFrame;
      if (_mainCoreFrame[136] == 1)
      {
        LOBYTE(_mainCoreFrame) = 0;
        return _mainCoreFrame;
      }
    }

    (*(*v12 + 560))(v12, layer, 2);
    v13 = *(v8 + 27);
    if (v13)
    {
      WebCore::LocalFrameView::flushCompositingStateIncludingSubframes(v13);
    }

    LOBYTE(_mainCoreFrame) = 1;
  }

  return _mainCoreFrame;
}

- (void)_setNeedsUnrestrictedGetMatchedCSSRules:(BOOL)rules
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    v4 = *(m_ptr + 15);
    v5 = 8;
    if (!rules)
    {
      v5 = 0;
    }

    *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFFFFF7 | v5;
  }
}

- (void)_attachScriptDebuggerToAllFrames
{
  _mainCoreFrame = [(WebView *)self _mainCoreFrame];
  if (_mainCoreFrame)
  {
    v3 = _mainCoreFrame;
    do
    {
      if ((*(v3 + 136) & 1) == 0)
      {
        v5 = *(*(v3 + 208) + 16);
        if ((*(*v5 + 1032))(v5))
        {
          v4 = 0;
        }

        else
        {
          v4 = v5[3];
        }

        [v4 _attachScriptDebugger];
      }

      v3 = WebCore::FrameTree::traverseNext((v3 + 40), 0);
    }

    while (v3);
  }
}

- (void)_detachScriptDebuggerFromAllFrames
{
  _mainCoreFrame = [(WebView *)self _mainCoreFrame];
  if (_mainCoreFrame)
  {
    v3 = _mainCoreFrame;
    do
    {
      if ((*(v3 + 136) & 1) == 0)
      {
        v5 = *(*(v3 + 208) + 16);
        if ((*(*v5 + 1032))(v5))
        {
          v4 = 0;
        }

        else
        {
          v4 = v5[3];
        }

        [v4 _detachScriptDebugger];
      }

      v3 = WebCore::FrameTree::traverseNext((v3 + 40), 0);
    }

    while (v3);
  }
}

- (void)setBackgroundColor:(CGColor *)color
{
  if (color && !CFEqual(self->_private->backgroundColor.m_ptr, color))
  {
    v5 = self->_private;
    CFRetain(color);
    m_ptr = v5->backgroundColor.m_ptr;
    v5->backgroundColor.m_ptr = color;
    if (m_ptr)
    {
      CFRelease(m_ptr);
    }

    mainFrame = [(WebView *)self mainFrame];

    [(WebFrame *)mainFrame _updateBackgroundAndUpdatesWhileOffscreen];
  }
}

- (BOOL)defersCallbacks
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    LOBYTE(m_ptr) = *(m_ptr + 299);
  }

  return m_ptr & 1;
}

- (void)setDefersCallbacks:(BOOL)callbacks
{
  if (self->_private->page.m_ptr)
  {
    MEMORY[0x1EEE5A5D0]();
  }
}

+ (id)_productivityDocumentMIMETypes
{
  SupportedMIMETypesSet = WebCore::QLPreviewGetSupportedMIMETypesSet(self);

  return [SupportedMIMETypesSet allObjects];
}

- (void)_setFixedLayoutSize:(CGSize)size
{
  sizeCopy = size;
  self->_private->fixedLayoutSize = size;
  mainFrame = [(WebView *)self mainFrame];
  if (mainFrame)
  {
    m_ptr = mainFrame->_private->coreFrame.m_ptr;
    if (m_ptr)
    {
      WebCore::IntSize::IntSize(&v6, &sizeCopy);
      WebCore::ScrollView::setFixedLayoutSize();
      WebCore::ScrollView::setUseFixedLayout(*(m_ptr + 27));
      [(WebView *)self setNeedsDisplay:1];
    }
  }
}

- (CGSize)_fixedLayoutSize
{
  v2 = self->_private;
  width = v2->fixedLayoutSize.width;
  height = v2->fixedLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_synchronizeCustomFixedPositionLayoutRect
{
  v3 = 0;
  p_pendingFixedPositionLayoutRectMutex = &self->_private->pendingFixedPositionLayoutRectMutex;
  atomic_compare_exchange_strong_explicit(p_pendingFixedPositionLayoutRectMutex, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x1CCA63990](p_pendingFixedPositionLayoutRectMutex, a2);
  }

  if (CGRectIsNull(self->_private->pendingFixedPositionLayoutRect))
  {
    v6 = 1;
    atomic_compare_exchange_strong_explicit(p_pendingFixedPositionLayoutRectMutex, &v6, 0, memory_order_release, memory_order_relaxed);
    if (v6 != 1)
    {

      WTF::Lock::unlockSlow(p_pendingFixedPositionLayoutRectMutex);
    }
  }

  else
  {
    v11 = WebCore::enclosingIntRect(&self->_private->pendingFixedPositionLayoutRect, v5);
    v12 = v7;
    p_pendingFixedPositionLayoutRect = &self->_private->pendingFixedPositionLayoutRect;
    v9 = *(MEMORY[0x1E695F050] + 16);
    p_pendingFixedPositionLayoutRect->origin = *MEMORY[0x1E695F050];
    p_pendingFixedPositionLayoutRect->size = v9;
    LODWORD(p_pendingFixedPositionLayoutRect) = 1;
    atomic_compare_exchange_strong_explicit(p_pendingFixedPositionLayoutRectMutex, &p_pendingFixedPositionLayoutRect, 0, memory_order_release, memory_order_relaxed);
    if (p_pendingFixedPositionLayoutRect == 1)
    {
      v10 = [(WebView *)self mainFrame:v11];
      if (!v10)
      {
        return;
      }
    }

    else
    {
      WTF::Lock::unlockSlow(p_pendingFixedPositionLayoutRectMutex);
      v10 = [(WebView *)self mainFrame:v11];
      if (!v10)
      {
        return;
      }
    }

    if (v10->_private->coreFrame.m_ptr)
    {
      WebCore::LocalFrameView::setCustomFixedPositionLayoutRect();
    }
  }
}

- (void)_setCustomFixedPositionLayoutRectInWebThread:(CGRect)thread synchronize:(BOOL)synchronize
{
  v4 = 0;
  p_pendingFixedPositionLayoutRectMutex = &self->_private->pendingFixedPositionLayoutRectMutex;
  v6 = 1;
  atomic_compare_exchange_strong_explicit(p_pendingFixedPositionLayoutRectMutex, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    selfCopy = self;
    synchronizeCopy = synchronize;
    height = thread.size.height;
    width = thread.size.width;
    y = thread.origin.y;
    x = thread.origin.x;
    MEMORY[0x1CCA63990](p_pendingFixedPositionLayoutRectMutex, a2);
    thread.origin.x = x;
    thread.origin.y = y;
    thread.size.width = width;
    thread.size.height = height;
    *&synchronize = synchronizeCopy;
    self = selfCopy;
  }

  self->_private->pendingFixedPositionLayoutRect = thread;
  atomic_compare_exchange_strong_explicit(p_pendingFixedPositionLayoutRectMutex, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (!synchronize)
    {
      return;
    }
  }

  else
  {
    v13 = p_pendingFixedPositionLayoutRectMutex;
    synchronizeCopy2 = synchronize;
    WTF::Lock::unlockSlow(v13);
    if (!synchronizeCopy2)
    {
      return;
    }
  }

  WebThreadRun();
}

- (void)_setCustomFixedPositionLayoutRect:(CGRect)rect
{
  v3 = 0;
  p_pendingFixedPositionLayoutRectMutex = &self->_private->pendingFixedPositionLayoutRectMutex;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(p_pendingFixedPositionLayoutRectMutex, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    selfCopy = self;
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    MEMORY[0x1CCA63990](p_pendingFixedPositionLayoutRectMutex, a2);
    rect.origin.x = x;
    rect.origin.y = y;
    rect.size.width = width;
    rect.size.height = height;
    self = selfCopy;
  }

  self->_private->pendingFixedPositionLayoutRect = rect;
  atomic_compare_exchange_strong_explicit(p_pendingFixedPositionLayoutRectMutex, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != 1)
  {
    selfCopy2 = self;
    WTF::Lock::unlockSlow(p_pendingFixedPositionLayoutRectMutex);
    self = selfCopy2;
  }

  [(WebView *)self _synchronizeCustomFixedPositionLayoutRect];
}

- (BOOL)_fetchCustomFixedPositionLayoutRect:(CGRect *)rect
{
  v5 = 0;
  p_pendingFixedPositionLayoutRectMutex = &self->_private->pendingFixedPositionLayoutRectMutex;
  atomic_compare_exchange_strong_explicit(p_pendingFixedPositionLayoutRectMutex, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x1CCA63990](p_pendingFixedPositionLayoutRectMutex, a2);
  }

  IsNull = CGRectIsNull(self->_private->pendingFixedPositionLayoutRect);
  if (IsNull)
  {
    v8 = 1;
    atomic_compare_exchange_strong_explicit(p_pendingFixedPositionLayoutRectMutex, &v8, 0, memory_order_release, memory_order_relaxed);
    if (v8 == 1)
    {
      return !IsNull;
    }
  }

  else
  {
    size = self->_private->pendingFixedPositionLayoutRect.size;
    rect->origin = self->_private->pendingFixedPositionLayoutRect.origin;
    rect->size = size;
    p_pendingFixedPositionLayoutRect = &self->_private->pendingFixedPositionLayoutRect;
    v12 = *(MEMORY[0x1E695F050] + 16);
    p_pendingFixedPositionLayoutRect->origin = *MEMORY[0x1E695F050];
    p_pendingFixedPositionLayoutRect->size = v12;
    LODWORD(p_pendingFixedPositionLayoutRect) = 1;
    atomic_compare_exchange_strong_explicit(p_pendingFixedPositionLayoutRectMutex, &p_pendingFixedPositionLayoutRect, 0, memory_order_release, memory_order_relaxed);
    if (p_pendingFixedPositionLayoutRect == 1)
    {
      return !IsNull;
    }
  }

  v13 = IsNull;
  WTF::Lock::unlockSlow(p_pendingFixedPositionLayoutRectMutex);
  return !v13;
}

- (void)_viewGeometryDidChange
{
  if ([(WebView *)self _mainCoreFrame])
  {

    MEMORY[0x1EEE53E98]();
  }
}

- (void)_overflowScrollPositionChangedTo:(CGPoint)to forNode:(id)node isUserScroll:(BOOL)scroll
{
  toCopy = to;
  v5 = *(node + 2);
  v6 = *(*(*(v5 + 48) + 8) + 552);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      WebCore::FloatPoint::FloatPoint(v14, &toCopy);
      v8 = roundf(v14[0]);
      v9 = 0x7FFFFFFFLL;
      v10 = v8;
      if (v8 <= -2147500000.0)
      {
        v10 = 0x80000000;
      }

      if (v8 < 2147500000.0)
      {
        v9 = v10;
      }

      v11 = roundf(v14[1]);
      v12 = 0x7FFFFFFF00000000;
      v13 = 0x8000000000000000;
      if (v11 > -2147500000.0)
      {
        v13 = v11 << 32;
      }

      if (v11 < 2147500000.0)
      {
        v12 = v13;
      }

      v15 = (v12 | v9);
      WebCore::LocalFrame::overflowScrollPositionChangedForNode(v7, &v15, v5);
    }
  }
}

- (id)_touchEventRegions
{
  _mainCoreFrame = [(WebView *)self _mainCoreFrame];
  if (_mainCoreFrame && _mainCoreFrame[28])
  {
    WebCore::Document::getTouchRects();
  }

  return 0;
}

- (BOOL)usesPageCache
{
  if (!self->_private->usesPageCache)
  {
    return 0;
  }

  preferences = [(WebView *)self preferences];

  return [(WebPreferences *)preferences usesPageCache];
}

- (void)setUsesPageCache:(BOOL)cache
{
  self->_private->usesPageCache = cache;
  [(WebView *)self _preferencesChanged:[(WebView *)self preferences]];
  preferences = [(WebView *)self preferences];

  [(WebPreferences *)preferences _postPreferencesChangedAPINotification];
}

- (id)textIteratorForRect:(CGRect)rect
{
  rectCopy = rect;
  result = [(WebView *)self _mainCoreFrame];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = WebCore::enclosingIntRect(&rectCopy, v4);
  v8 = v7;
  v19 = v6;
  WebCore::LocalFrame::visiblePositionForPoint(&v20, v5, &v19);
  v17 = ((v8 & 0xFFFFFFFF00000000) + v6) & 0xFFFFFFFF00000000 | (v8 + v6);
  WebCore::LocalFrame::visiblePositionForPoint(&v18, v5, &v17);
  WebCore::VisibleSelection::VisibleSelection();
  WebCore::VisibleSelection::toNormalizedRange(&v22, v21);
  WebCore::VisibleSelection::~VisibleSelection(v21);
  v9 = v18;
  v18 = 0;
  if (!v9)
  {
LABEL_5:
    v10 = v20;
    v20 = 0;
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (*(v9 + 7) != 2)
  {
    *(v9 + 7) -= 2;
    goto LABEL_5;
  }

  WebCore::Node::removedLastRef(v9);
  v10 = v20;
  v20 = 0;
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (*(v10 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v10);
  }

  else
  {
    *(v10 + 7) -= 2;
  }

LABEL_11:
  result = [[WebTextIterator alloc] initWithRange:kit()];
  if (result)
  {
    v11 = result;
    v12 = result;
    result = v11;
  }

  if (v24 == 1)
  {
    v13 = v23;
    v23 = 0;
    if (v13)
    {
      if (*(v13 + 7) == 2)
      {
        v15 = result;
        WebCore::Node::removedLastRef(v13);
        result = v15;
        v14 = v22;
        v22 = 0;
        if (!v14)
        {
          return result;
        }

        goto LABEL_18;
      }

      *(v13 + 7) -= 2;
    }

    v14 = v22;
    v22 = 0;
    if (!v14)
    {
      return result;
    }

LABEL_18:
    if (*(v14 + 7) == 2)
    {
      v16 = result;
      WebCore::Node::removedLastRef(v14);
      return v16;
    }

    else
    {
      *(v14 + 7) -= 2;
    }
  }

  return result;
}

- (void)_executeCoreCommandByName:(id)name value:(id)value
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    ++*(m_ptr + 2);
    v7 = WebCore::FocusController::focusedOrMainFrame(*(m_ptr + 10));
    v8 = v7;
    if (!v7)
    {
      goto LABEL_22;
    }

    ++*(v7 + 16);
    v9 = *(v7 + 224);
    if (v9)
    {
      *(v9 + 7) += 2;
    }

    v10 = WebCore::Document::editor(v9);
    if (v9)
    {
      if (*(v9 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v9);
      }

      else
      {
        *(v9 + 7) -= 2;
      }
    }

    MEMORY[0x1CCA63A40](&v19, name);
    WebCore::Editor::command(&v20, v10, &v19);
    MEMORY[0x1CCA63A40](&v18, value);
    WebCore::Editor::Command::execute();
    v12 = v18;
    v18 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v21;
    v21 = 0;
    if (v13)
    {
      if (*(v13 + 7) == 2)
      {
        WebCore::Node::removedLastRef(v13);
        v14 = v19;
        v19 = 0;
        if (!v14)
        {
LABEL_20:
          if (v8[4] == 1)
          {
            (*(*v8 + 8))(v8);
            v15 = *(m_ptr + 2) - 1;
            if (*(m_ptr + 2) != 1)
            {
              goto LABEL_23;
            }

            goto LABEL_26;
          }

          --v8[4];
LABEL_22:
          v15 = *(m_ptr + 2) - 1;
          if (*(m_ptr + 2) != 1)
          {
LABEL_23:
            *(m_ptr + 2) = v15;
            return;
          }

LABEL_26:
          v16 = MEMORY[0x1CCA673C0](m_ptr);
          bmalloc::api::tzoneFree(v16, v17);
          return;
        }

LABEL_18:
        if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v11);
        }

        goto LABEL_20;
      }

      *(v13 + 7) -= 2;
    }

    v14 = v19;
    v19 = 0;
    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }
}

- (void)_clearMainFrameName
{
  v2 = *(self->_private->page.m_ptr + 22);
  if (v2)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      MEMORY[0x1EEE5B938](v2 + 40, a2);
    }
  }
}

- (void)setSelectTrailingWhitespaceEnabled:(BOOL)enabled
{
  v3 = *(self->_private->page.m_ptr + 15);
  v4 = *(v3 + 712);
  if (v4 < 0 != enabled)
  {
    v5 = 0x80000000;
    if (!enabled)
    {
      v5 = 0;
    }

    *(v3 + 712) = v4 & 0xFFFFFFFF7FFFFFFFLL | v5;
    [(WebView *)self setSmartInsertDeleteEnabled:!enabled];
  }
}

- (BOOL)_isUsingAcceleratedCompositing
{
  _mainCoreFrame = [(WebView *)self _mainCoreFrame];
  if (_mainCoreFrame)
  {
    v3 = _mainCoreFrame;
    v4 = _mainCoreFrame;
    while (1)
    {
      if ((*(v4 + 136) & 1) == 0)
      {
        v5 = *(*(v4 + 26) + 16);
        v6 = ((*(*v5 + 1032))(v5) & 1) != 0 ? 0 : v5[3];
        v7 = [objc_msgSend(v6 "frameView")];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 _isUsingAcceleratedCompositing])
        {
          break;
        }
      }

      _mainCoreFrame = WebCore::FrameTree::traverseNext((v4 + 40), v3);
      v4 = _mainCoreFrame;
      if (!_mainCoreFrame)
      {
        return _mainCoreFrame;
      }
    }

    LOBYTE(_mainCoreFrame) = 1;
  }

  return _mainCoreFrame;
}

- (id)_contentsOfUserInterfaceItem:(id)item
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (![item isEqualToString:@"validationBubble"])
  {
    return 0;
  }

  m_ptr = self->_private->formValidationBubble.m_ptr;
  v6 = (m_ptr + 16);
  if (!m_ptr)
  {
    v6 = MEMORY[0x1E696EBA8];
  }

  v7 = *v6;
  if (*v6)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
  }

  if (m_ptr)
  {
    v8 = *(m_ptr + 3);
    itemCopy2 = item;
    v17 = @"message";
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0.0;
    itemCopy2 = item;
    v17 = @"message";
    if (v7)
    {
LABEL_8:
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v16, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v9);
      }

      goto LABEL_10;
    }
  }

  v16 = &stru_1F472E7E8;
  v15 = &stru_1F472E7E8;
LABEL_10:
  v18[1] = [MEMORY[0x1E696AD98] numberWithDouble:{v8, v16, v17, @"fontSize", v16}];
  v20[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:2];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&itemCopy2 count:1];
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    v13 = result;

    result = v13;
  }

  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v14 = result;
      WTF::StringImpl::destroy(v7, v11);
      return v14;
    }
  }

  return result;
}

- (void)_setObscuredTopContentInsetForTesting:(float)testing right:(float)right bottom:(float)bottom left:(float)left
{
  v6 = self->_private;
  if (v6)
  {
    if (v6->page.m_ptr)
    {
      WebCore::Page::setObscuredContentInsets();
    }
  }
}

- (BOOL)_isSoftwareRenderable
{
  _mainCoreFrame = [(WebView *)self _mainCoreFrame];
  if (!_mainCoreFrame)
  {
    return 1;
  }

  v3 = _mainCoreFrame;
  while (1)
  {
    if ((_mainCoreFrame[17] & 1) == 0)
    {
      if (_mainCoreFrame[27])
      {
        v4 = _mainCoreFrame;
        isSoftwareRenderable = WebCore::LocalFrameView::isSoftwareRenderable(_mainCoreFrame[27]);
        _mainCoreFrame = v4;
        if (!isSoftwareRenderable)
        {
          break;
        }
      }
    }

    _mainCoreFrame = WebCore::FrameTree::traverseNext((_mainCoreFrame + 5), v3);
    if (!_mainCoreFrame)
    {
      return 1;
    }
  }

  return 0;
}

- (void)setTracksRepaints:(BOOL)repaints
{
  if (*([(WebView *)self _mainCoreFrame]+ 216))
  {

    MEMORY[0x1EEE55718]();
  }
}

- (BOOL)isTrackingRepaints
{
  v2 = *([(WebView *)self _mainCoreFrame]+ 216);
  if (v2)
  {
    LOBYTE(v2) = *(v2 + 1478);
  }

  return v2 & 1;
}

- (void)resetTrackedRepaints
{
  if (*([(WebView *)self _mainCoreFrame]+ 216))
  {

    MEMORY[0x1EEE55750]();
  }
}

- (id)trackedRepaintRects
{
  v2 = *([(WebView *)self _mainCoreFrame]+ 216);
  if (!v2 || *(v2 + 1478) != 1)
  {
    return 0;
  }

  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v2 + 1164)];
  v4 = *(v2 + 1164);
  if (v4)
  {
    v5 = *(v2 + 1152);
    v6 = 16 * v4;
    do
    {
      v7 = MEMORY[0x1E696B098];
      WebCore::LayoutRect::LayoutRect(&v24, v5);
      v9 = v24 - (v8 & 0xFFFFFFC0);
      v10 = (v9 + 32) >> 6;
      v12 = v25 - (v11 & 0xFFFFFFC0);
      v13 = (v12 + 32) >> 6;
      v14 = (v10 + v24 / 64) | ((v13 + v25 / 64) << 32);
      v15 = __OFADD__(v9, v26);
      v16 = v9 + v26;
      v17 = (v9 >> 31) + 0x7FFFFFFF;
      if (!v15)
      {
        v17 = v16;
      }

      v18 = (v17 / 64 - v10 + ((v17 - (v16 & 0xFFFFFFC0) + 32) >> 6));
      v15 = __OFADD__(v12, v27);
      v19 = v12 + v27;
      v20 = (v12 >> 31) + 0x7FFFFFFF;
      if (!v15)
      {
        v20 = v19;
      }

      v28 = v14;
      v29 = v18 | ((v20 / 64 - v13 + ((v20 - (v19 & 0xFFFFFFC0) + 32) >> 6)) << 32);
      WebCore::IntRect::operator CGRect();
      v21 = [v7 valueWithRect:?];
      if (v21)
      {
        [v3 addObject:v21];
      }

      ++v5;
      v6 -= 16;
    }

    while (v6);
  }

  if (v3)
  {
    v22 = v3;
  }

  return v3;
}

+ (void)_addOriginAccessAllowListEntryWithSourceOrigin:(id)origin destinationProtocol:(id)protocol destinationHost:(id)host allowDestinationSubdomains:(BOOL)subdomains
{
  subdomainsCopy = subdomains;
  MEMORY[0x1CCA63A40](&v20, origin);
  WebCore::SecurityOrigin::createFromString(&v21, &v20, v9);
  v10 = v21;
  MEMORY[0x1CCA63A40](&v19, protocol);
  MEMORY[0x1CCA63A40](&v18, host);
  WebCore::SecurityPolicy::addOriginAccessAllowlistEntry(v10, &v19, &v18, subdomainsCopy);
  v12 = v18;
  v18 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v11);
  }

  v14 = v21;
  v21 = 0;
  if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WebCore::SecurityOrigin::~SecurityOrigin(v14, v11);
    WTF::fastFree(v16, v17);
    v15 = v20;
    v20 = 0;
    if (!v15)
    {
      return;
    }
  }

  else
  {
    v15 = v20;
    v20 = 0;
    if (!v15)
    {
      return;
    }
  }

  if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v11);
  }
}

+ (void)_removeOriginAccessAllowListEntryWithSourceOrigin:(id)origin destinationProtocol:(id)protocol destinationHost:(id)host allowDestinationSubdomains:(BOOL)subdomains
{
  subdomainsCopy = subdomains;
  MEMORY[0x1CCA63A40](&v20, origin);
  WebCore::SecurityOrigin::createFromString(&v21, &v20, v9);
  v10 = v21;
  MEMORY[0x1CCA63A40](&v19, protocol);
  MEMORY[0x1CCA63A40](&v18, host);
  WebCore::SecurityPolicy::removeOriginAccessAllowlistEntry(v10, &v19, &v18, subdomainsCopy);
  v12 = v18;
  v18 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v11);
  }

  v13 = v19;
  v19 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v11);
  }

  v14 = v21;
  v21 = 0;
  if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WebCore::SecurityOrigin::~SecurityOrigin(v14, v11);
    WTF::fastFree(v16, v17);
    v15 = v20;
    v20 = 0;
    if (!v15)
    {
      return;
    }
  }

  else
  {
    v15 = v20;
    v20 = 0;
    if (!v15)
    {
      return;
    }
  }

  if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v11);
  }
}

- (BOOL)_isViewVisible
{
  window = [(WebView *)self window];
  if (window)
  {
    LODWORD(window) = [window isVisible];
    if (window)
    {
      LOBYTE(window) = [(WebView *)self isHiddenOrHasHiddenAncestor]^ 1;
    }
  }

  return window;
}

- (void)_updateVisibilityState
{
  v2 = self->_private;
  if (v2 && v2->page.m_ptr)
  {
    _isViewVisible = [(WebView *)self _isViewVisible];

    [(WebView *)self _setIsVisible:_isViewVisible];
  }
}

- (void)_updateActiveState
{
  v2 = self->_private;
  if (v2)
  {
    m_ptr = v2->page.m_ptr;
    if (m_ptr)
    {
      v4 = *(m_ptr + 10);
      v5 = [-[WebView window](self "window")];

      MEMORY[0x1EEE55E30](v4, v5);
    }
  }
}

+ (void)_addUserScriptToGroup:(id)group world:(id)world source:(id)source url:(id)url includeMatchPatternStrings:(id)strings excludeMatchPatternStrings:(id)patternStrings injectionTime:(int)time injectedFrames:(int)self0
{
  MEMORY[0x1CCA63A40](&v45, group);
  v17 = v45;
  if (v45)
  {
    if (!*(v45 + 1))
    {
      v45 = 0;
LABEL_42:
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v16);
      }

      return;
    }

    MEMORY[0x1CCA63A40](v46, group);
    v40 = 0;
    WebViewGroup::getOrCreate(v46, &v40, &v44);
    v18 = v46[0];
    v46[0] = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v16);
    }

    if (world)
    {
      v46[0] = strings;
      v37 = v46;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v40, [strings count], &v37, 0);
      v46[0] = patternStrings;
      v19 = [patternStrings count];
      v47 = v46;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v37, v19, &v47, 0);
      if (*MEMORY[0x1E69E24C0])
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E24C0], v20);
      }

      else
      {
        NonCompact = WebCore::UserScript::operatorNewSlow(0x58);
      }

      v22 = NonCompact;
      MEMORY[0x1CCA63A40](&v47, source);
      MEMORY[0x1CCA63960](v46, url);
      MEMORY[0x1CCA63E90](v22, &v47, v46, &v40, &v37, time != 0, frames != 0, 0);
      v43 = v22;
      v24 = v46[0];
      v46[0] = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v23);
      }

      v25 = v47;
      v47 = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v23);
      }

      v26 = v37;
      if (v39)
      {
        v27 = 8 * v39;
        do
        {
          v28 = *v26;
          *v26 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v23);
          }

          v26 = (v26 + 8);
          v27 -= 8;
        }

        while (v27);
        v26 = v37;
      }

      if (v26)
      {
        v37 = 0;
        v38 = 0;
        WTF::fastFree(v26, v23);
      }

      v29 = v40;
      if (v42)
      {
        v30 = 8 * v42;
        do
        {
          v31 = *v29;
          *v29 = 0;
          if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v31, v23);
          }

          v29 = (v29 + 8);
          v30 -= 8;
        }

        while (v30);
        v29 = v40;
      }

      if (v29)
      {
        v40 = 0;
        v41 = 0;
        WTF::fastFree(v29, v23);
      }

      v32 = v44;
      v43 = 0;
      WebCore::UserContentController::addUserScript();
      if (v22)
      {
        WebCore::UserScript::~UserScript(v22, v16);
        bmalloc::api::tzoneFree(v33, v34);
      }
    }

    else
    {
      v32 = v44;
      if (!v44)
      {
LABEL_39:
        v17 = v45;
        v45 = 0;
        if (!v17)
        {
          return;
        }

        goto LABEL_42;
      }
    }

    if (*v32 == 1)
    {
      WebViewGroup::~WebViewGroup(v32, v16);
      WTF::fastFree(v35, v36);
      v17 = v45;
      v45 = 0;
      if (!v17)
      {
        return;
      }

      goto LABEL_42;
    }

    --*v32;
    goto LABEL_39;
  }
}

+ (void)_addUserStyleSheetToGroup:(id)group world:(id)world source:(id)source url:(id)url includeMatchPatternStrings:(id)strings excludeMatchPatternStrings:(id)patternStrings injectedFrames:(int)frames
{
  MEMORY[0x1CCA63A40](&v44, group);
  v16 = v44;
  if (v44)
  {
    if (!*(v44 + 1))
    {
      v44 = 0;
LABEL_42:
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v15);
      }

      return;
    }

    MEMORY[0x1CCA63A40](v45, group);
    v39 = 0;
    WebViewGroup::getOrCreate(v45, &v39, &v43);
    v17 = v45[0];
    v45[0] = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v15);
    }

    if (world)
    {
      v45[0] = strings;
      v36 = v45;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v39, [strings count], &v36, 0);
      v45[0] = patternStrings;
      v18 = [patternStrings count];
      v46 = v45;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v36, v18, &v46, 0);
      if (*MEMORY[0x1E69E2550])
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2550], v19);
      }

      else
      {
        NonCompact = WebCore::UserStyleSheet::operatorNewSlow(0x68);
      }

      v21 = NonCompact;
      MEMORY[0x1CCA63A40](&v46, source);
      MEMORY[0x1CCA63960](v45, url);
      WebCore::UserStyleSheet::UserStyleSheet();
      v42 = v21;
      v23 = v45[0];
      v45[0] = 0;
      if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v22);
      }

      v24 = v46;
      v46 = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v22);
      }

      v25 = v36;
      if (v38)
      {
        v26 = 8 * v38;
        do
        {
          v27 = *v25;
          *v25 = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v22);
          }

          v25 = (v25 + 8);
          v26 -= 8;
        }

        while (v26);
        v25 = v36;
      }

      if (v25)
      {
        v36 = 0;
        v37 = 0;
        WTF::fastFree(v25, v22);
      }

      v28 = v39;
      if (v41)
      {
        v29 = 8 * v41;
        do
        {
          v30 = *v28;
          *v28 = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v22);
          }

          v28 = (v28 + 8);
          v29 -= 8;
        }

        while (v29);
        v28 = v39;
      }

      if (v28)
      {
        v39 = 0;
        v40 = 0;
        WTF::fastFree(v28, v22);
      }

      v31 = v43;
      v42 = 0;
      WebCore::UserContentController::addUserStyleSheet();
      if (v21)
      {
        WebCore::UserScript::~UserScript(v21, v15);
        bmalloc::api::tzoneFree(v32, v33);
      }
    }

    else
    {
      v31 = v43;
      if (!v43)
      {
LABEL_39:
        v16 = v44;
        v44 = 0;
        if (!v16)
        {
          return;
        }

        goto LABEL_42;
      }
    }

    if (*v31 == 1)
    {
      WebViewGroup::~WebViewGroup(v31, v15);
      WTF::fastFree(v34, v35);
      v16 = v44;
      v44 = 0;
      if (!v16)
      {
        return;
      }

      goto LABEL_42;
    }

    --*v31;
    goto LABEL_39;
  }
}

+ (void)_removeUserScriptFromGroup:(id)group world:(id)world url:(id)url
{
  MEMORY[0x1CCA63A40](&v15, group);
  if (v15)
  {
    if (*(v15 + 1))
    {
      v9 = WebViewGroup::get(&v15, v7, v8);
      if (world)
      {
        if (v9)
        {
          v10 = *(v9 + 5);
          v11 = *(*(world + 1) + 8);
          MEMORY[0x1CCA63960](v14, url);
          WebCore::UserContentController::removeUserScript(v10, v11, v14);
          v12 = v14[0];
          v14[0] = 0;
          if (v12)
          {
            if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v12, v7);
            }
          }
        }
      }
    }

    v13 = v15;
    v15 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v7);
      }
    }
  }
}

+ (void)_removeUserStyleSheetFromGroup:(id)group world:(id)world url:(id)url
{
  MEMORY[0x1CCA63A40](&v15, group);
  if (v15)
  {
    if (*(v15 + 1))
    {
      v9 = WebViewGroup::get(&v15, v7, v8);
      if (world)
      {
        if (v9)
        {
          v10 = *(v9 + 5);
          v11 = *(*(world + 1) + 8);
          MEMORY[0x1CCA63960](v14, url);
          WebCore::UserContentController::removeUserStyleSheet(v10, v11, v14);
          v12 = v14[0];
          v14[0] = 0;
          if (v12)
          {
            if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v12, v7);
            }
          }
        }
      }
    }

    v13 = v15;
    v15 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v7);
      }
    }
  }
}

+ (void)_removeUserScriptsFromGroup:(id)group world:(id)world
{
  MEMORY[0x1CCA63A40](&v9, group);
  if (v9)
  {
    if (*(v9 + 1))
    {
      v7 = WebViewGroup::get(&v9, v5, v6);
      if (world)
      {
        if (v7)
        {
          WebCore::UserContentController::removeUserScripts(*(v7 + 5), *(*(world + 1) + 8));
        }
      }
    }

    v8 = v9;
    v9 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v5);
      }
    }
  }
}

+ (void)_removeUserStyleSheetsFromGroup:(id)group world:(id)world
{
  MEMORY[0x1CCA63A40](&v9, group);
  if (v9)
  {
    if (*(v9 + 1))
    {
      v7 = WebViewGroup::get(&v9, v5, v6);
      if (world)
      {
        if (v7)
        {
          WebCore::UserContentController::removeUserStyleSheets(*(v7 + 5), *(*(world + 1) + 8));
        }
      }
    }

    v8 = v9;
    v9 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v5);
      }
    }
  }
}

+ (void)_removeAllUserContentFromGroup:(id)group
{
  MEMORY[0x1CCA63A40](&v7, group);
  if (v7)
  {
    if (*(v7 + 1))
    {
      v5 = WebViewGroup::get(&v7, v3, v4);
      if (v5)
      {
        WebCore::UserContentController::removeAllUserContent(*(v5 + 5));
      }
    }

    v6 = v7;
    v7 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v3);
      }
    }
  }
}

- (void)_forceRepaintForTesting
{
  [(WebView *)self _updateRendering];
  [MEMORY[0x1E6979518] flush];
  v2 = MEMORY[0x1E6979518];

  [v2 synchronize];
}

+ (void)_setDomainRelaxationForbidden:(BOOL)forbidden forURLScheme:(id)scheme
{
  forbiddenCopy = forbidden;
  MEMORY[0x1CCA63A40](&v8, scheme);
  WebCore::LegacySchemeRegistry::setDomainRelaxationForbiddenForURLScheme(forbiddenCopy, &v8, v5);
  v7 = v8;
  v8 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v6);
    }
  }
}

+ (void)_registerURLSchemeAsSecure:(id)secure
{
  MEMORY[0x1CCA63A40](&v6, secure);
  WebCore::LegacySchemeRegistry::registerURLSchemeAsSecure(&v6, v3);
  v5 = v6;
  v6 = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }
}

+ (void)_registerURLSchemeAsAllowingDatabaseAccessInPrivateBrowsing:(id)browsing
{
  MEMORY[0x1CCA63A40](&v6, browsing);
  WebCore::LegacySchemeRegistry::registerURLSchemeAsAllowingDatabaseAccessInPrivateBrowsing(&v6, v3);
  v5 = v6;
  v6 = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }
}

- (void)_scaleWebView:(float)view atOrigin:(CGPoint)origin
{
  originCopy = origin;
  [(WebView *)self hideFormValidationMessage];
  m_ptr = self->_private->page.m_ptr;
  WebCore::IntPoint::IntPoint(&v7, &originCopy);
  WebCore::Page::setPageScaleFactor(m_ptr, view, &v7);
}

- (void)_setUseFixedLayout:(BOOL)layout
{
  _mainCoreFrame = [(WebView *)self _mainCoreFrame];
  if (_mainCoreFrame && _mainCoreFrame[27])
  {
    WebCore::ScrollView::setUseFixedLayout(_mainCoreFrame[27]);
    if (!layout)
    {
      WebCore::ScrollView::setFixedLayoutSize();
    }
  }
}

- (BOOL)_useFixedLayout
{
  _mainCoreFrame = [(WebView *)self _mainCoreFrame];
  if (!_mainCoreFrame)
  {
    return 0;
  }

  v3 = _mainCoreFrame[27];
  if (!v3)
  {
    return 0;
  }

  return WebCore::ScrollView::useFixedLayout(v3);
}

- (void)_setPaginationMode:(int)mode
{
  if (self)
  {
    [(WebView *)self page];
    if (v4)
    {
      if (mode <= 1)
      {
        if (mode > 1)
        {
          return;
        }

        goto LABEL_9;
      }

      if (mode == 2 || mode == 3 || mode == 4)
      {
LABEL_9:
        WebCore::Page::setPagination();
      }
    }
  }
}

- (int)_paginationMode
{
  if (self)
  {
    [(WebView *)self page];
    if (v3)
    {
      if (*(v3 + 444) - 1 >= 4)
      {
        LODWORD(self) = 0;
      }

      else
      {
        LODWORD(self) = *(v3 + 444);
      }
    }

    else
    {
      LODWORD(self) = 0;
    }
  }

  return self;
}

- (void)_listenForLayoutMilestones:(unint64_t)milestones
{
  if (self)
  {
    [(WebView *)self page];
    if (v3)
    {

      WebCore::Page::addLayoutMilestones();
    }
  }
}

- (unint64_t)_layoutMilestones
{
  if (self)
  {
    [self page];
    if (v2)
    {
      return *(v2 + 652) & 7;
    }

    else
    {
      return 0;
    }
  }

  return self;
}

- (int)_visibilityState
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    LODWORD(m_ptr) = WebCore::Page::visibilityState(m_ptr) ^ 1;
  }

  return m_ptr;
}

- (void)_setIsVisible:(BOOL)visible
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    WebCore::Page::setIsVisible(m_ptr);
  }
}

- (void)_setVisibilityState:(int)state isInitialState:(BOOL)initialState
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    WebCore::Page::setIsVisible(m_ptr);
    if (state == 2)
    {
      v7 = self->_private->page.m_ptr;

      MEMORY[0x1EEE5A580](v7);
    }
  }
}

- (void)_setPaginationBehavesLikeColumns:(BOOL)columns
{
  if (self)
  {
    [(WebView *)self page];
    v4 = v5;
    if (v5)
    {
      v5 = *(v5 + 444);
      v6 = *(v4 + 452);
      BYTE1(v5) = columns;
      WebCore::Page::setPagination();
    }
  }
}

- (BOOL)_paginationBehavesLikeColumns
{
  if (!self)
  {
    return 0;
  }

  [(WebView *)self page];
  v2 = v4;
  if (v4)
  {
    v2 = *(v4 + 445);
  }

  return v2 & 1;
}

- (void)_setPageLength:(double)length
{
  if (self)
  {
    [(WebView *)self page];
    if (v3)
    {
      WebCore::Page::setPagination();
    }
  }
}

- (double)_pageLength
{
  if (!self)
  {
    return 1.0;
  }

  [(WebView *)self page];
  if (!v4)
  {
    return 1.0;
  }

  LODWORD(v2) = *(v4 + 448);
  return v2;
}

- (void)_setGapBetweenPages:(double)pages
{
  if (self)
  {
    [(WebView *)self page];
    if (v3)
    {
      WebCore::Page::setPagination();
    }
  }
}

- (double)_gapBetweenPages
{
  if (!self)
  {
    return 0.0;
  }

  [(WebView *)self page];
  if (!v4)
  {
    return 0.0;
  }

  LODWORD(v2) = *(v4 + 452);
  return v2;
}

- (unint64_t)_pageCount
{
  if (self)
  {
    [self page];
    self = v2;
    if (v2)
    {
      return WebCore::Page::pageCount(v2);
    }
  }

  return self;
}

- (BOOL)searchFor:(id)for direction:(BOOL)direction caseSensitive:(BOOL)sensitive wrap:(BOOL)wrap startInSelection:(BOOL)selection
{
  v7 = 8;
  if (direction)
  {
    v7 = 0;
  }

  v8 = 16;
  if (!wrap)
  {
    v8 = 0;
  }

  v9 = v7 | v8 | !sensitive;
  v10 = 32;
  if (!selection)
  {
    v10 = 0;
  }

  return [(WebView *)self findString:for options:v9 | v10];
}

+ (void)_setLoadResourcesSerially:(BOOL)serially
{
  v4 = WebThreadLock();
  if (!WebPlatformStrategies::initializeIfNecessary(void)::platformStrategies)
  {
    operator new();
  }

  v5 = WebCore::platformStrategies(v4);
  v6 = v5[1];
  if (v6)
  {
    *(v6 + 92) = serially;
  }

  else
  {
    v7 = v5;
    v8 = (*(*v5 + 16))();
    v7[1] = v8;
    *(v8 + 92) = serially;
  }
}

- (void)_setPortsForUpgradingInsecureSchemeForTesting:(unsigned __int16)testing withSecurePort:(unsigned __int16)port
{
  if (self)
  {
    [(WebView *)self page];
    if (v4)
    {

      MEMORY[0x1EEE5A968]();
    }
  }
}

- (void)_didScrollDocumentInFrameView:(id)view
{
  [(WebView *)self hideFormValidationMessage];
  _UIDelegateForwarder = [(WebView *)self _UIDelegateForwarder];

  [_UIDelegateForwarder webView:self didScrollDocumentInFrameView:view];
}

- (id)_fixedPositionContent
{
  v2 = self->_private;
  if (v2)
  {
    return v2->_fixedPositionContent.m_ptr;
  }

  else
  {
    return 0;
  }
}

- (void)_documentScaleChanged
{
  currentNodeHighlight = [(WebView *)self currentNodeHighlight];
  if (currentNodeHighlight)
  {
    [currentNodeHighlight setNeedsDisplay];
  }

  m_ptr = self->_private->indicateLayer.m_ptr;
  if (m_ptr)
  {
    [(WebIndicateLayer *)m_ptr setNeedsLayout];
    v5 = self->_private->indicateLayer.m_ptr;

    [(WebIndicateLayer *)v5 setNeedsDisplay];
  }
}

- (BOOL)_wantsTelephoneNumberParsing
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    return (*(*(m_ptr + 15) + 722) >> 3) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_setWantsTelephoneNumberParsing:(BOOL)parsing
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    v4 = *(m_ptr + 15);
    v5 = 0x80000;
    if (!parsing)
    {
      v5 = 0;
    }

    *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFF7FFFFLL | v5;
  }
}

- (BOOL)_webGLEnabled
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    return *(*(m_ptr + 15) + 720) >> 63;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_setWebGLEnabled:(BOOL)enabled
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    v4 = *(m_ptr + 15);
    v5 = 0x8000000000000000;
    if (!enabled)
    {
      v5 = 0;
    }

    *(v4 + 720) = v5 & 0x8000000000000000 | *(v4 + 720) & 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)_setUnobscuredSafeAreaInsets:(WebEdgeInsets)insets
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    ++*(m_ptr + 2);
    WebCore::Page::setUnobscuredSafeAreaInsets();
    if (*(m_ptr + 2) == 1)
    {
      v4 = MEMORY[0x1CCA673C0](m_ptr);
      bmalloc::api::tzoneFree(v4, v5);
    }

    else
    {
      --*(m_ptr + 2);
    }
  }
}

- (WebEdgeInsets)_unobscuredSafeAreaInsets
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    v3 = *(m_ptr + 2);
    *(m_ptr + 2) = v3 + 1;
    v4 = *(m_ptr + 91);
    v5 = *(m_ptr + 94);
    v6 = *(m_ptr + 93);
    v7 = *(m_ptr + 92);
    if (v3)
    {
      *(m_ptr + 2) = v3;
    }

    else
    {
      v8 = *(m_ptr + 91);
      v9 = *(m_ptr + 94);
      v10 = *(m_ptr + 93);
      v11 = *(m_ptr + 92);
      v12 = MEMORY[0x1CCA673C0]();
      bmalloc::api::tzoneFree(v12, v13);
      v7 = v11;
      v6 = v10;
      v5 = v9;
      v4 = v8;
    }
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (void)_setUseSystemAppearance:(BOOL)appearance
{
  v3 = self->_private;
  if (v3)
  {
    [(WebPreferences *)v3->preferences.m_ptr _setUseSystemAppearance:appearance];
  }
}

- (void)_setSourceApplicationAuditData:(id)data
{
  if (self->_private->sourceApplicationAuditData.m_ptr != data)
  {
    v4 = [data copy];
    v5 = self->_private;
    m_ptr = v5->sourceApplicationAuditData.m_ptr;
    v5->sourceApplicationAuditData.m_ptr = v4;
    if (m_ptr)
    {
    }
  }
}

- (void)_setFontFallbackPrefersPictographs:(BOOL)pictographs
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    WebCore::Settings::setFontFallbackPrefersPictographs(*(m_ptr + 15));
  }
}

+ (void)initialize
{
  if ((byte_1ED6A6132 & 1) == 0)
  {
    byte_1ED6A6132 = 1;
    shouldOSFaultLogForAppleApplicationUsingWebKit1 = WTF::CocoaApplication::shouldOSFaultLogForAppleApplicationUsingWebKit1(self);
    if (shouldOSFaultLogForAppleApplicationUsingWebKit1)
    {
      shouldOSFaultLogForAppleApplicationUsingWebKit1 = os_fault_with_payload();
    }

    WTF::allPrivileges(shouldOSFaultLogForAppleApplicationUsingWebKit1);
    WTF::setProcessPrivileges();
    WebCore::NetworkStorageSession::permitProcessToUseCookieAPI(1);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__cacheModelChangedNotification_ name:WebPreferencesCacheModelChangedInternalNotification object:0];
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__preferencesRemovedNotification_ name:WebPreferencesRemovedNotification[0] object:0];
    byte_1ED6A6133 = 0;
  }
}

- (BOOL)_canShowMIMEType:(id)type
{
  v4 = objc_opt_class();

  return [v4 _canShowMIMEType:type allowingPlugins:0];
}

+ (BOOL)canShowMIMETypeAsHTML:(NSString *)MIMEType
{
  if ([(NSString *)MIMEType isEqualToString:@"text/html"])
  {
    return 1;
  }

  return [WebFrameView _canShowMIMETypeAsHTML:MIMEType];
}

+ (NSArray)MIMETypesShownAsHTML
{
  v2 = [WebFrameView _viewTypesAllowImageTypeOmission:1];
  keyEnumerator = [v2 keyEnumerator];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  while (1)
  {
    nextObject = [keyEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    v6 = [v2 objectForKey:nextObject];
    if (v6 == objc_opt_class())
    {
      [(NSArray *)v4 addObject:nextObject];
    }
  }

  if (v4)
  {
    v7 = v4;
  }

  return v4;
}

+ (void)setMIMETypesShownAsHTML:(NSArray *)MIMETypes
{
  v11 = [+[WebFrameView _viewTypesAllowImageTypeOmission:](WebFrameView _viewTypesAllowImageTypeOmission:{1), "copy"}];
  keyEnumerator = [v11 keyEnumerator];
  while (1)
  {
    nextObject = [keyEnumerator nextObject];
    if (!nextObject)
    {
      break;
    }

    v6 = [v11 objectForKey:nextObject];
    if (v6 == objc_opt_class())
    {
      [WebView _unregisterViewClassAndRepresentationClassForMIMEType:nextObject];
    }
  }

  v7 = [(NSArray *)MIMETypes count];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = v7 & 0x7FFFFFFF;
    do
    {
      v10 = objc_opt_class();
      [WebView registerViewClass:v10 representationClass:objc_opt_class() forMIMEType:[(NSArray *)MIMETypes objectAtIndex:v8++]];
    }

    while (v9 != v8);
  }

  if (v11)
  {
  }
}

+ (void)registerURLSchemeAsLocal:(NSString *)scheme
{
  MEMORY[0x1CCA63A40](&v6, scheme);
  WebCore::LegacySchemeRegistry::registerURLSchemeAsLocal(&v6, v3);
  v5 = v6;
  v6 = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }
}

- (id)_initWithArguments:(id)arguments
{
  v5 = [arguments objectForKey:@"frame"];
  if (v5)
  {
    [v5 rectValue];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E696AA80];
    v9 = *(MEMORY[0x1E696AA80] + 8);
    v11 = *(MEMORY[0x1E696AA80] + 16);
    v13 = *(MEMORY[0x1E696AA80] + 24);
  }

  v14 = [arguments objectForKey:@"frameName"];
  v15 = [arguments objectForKey:@"groupName"];

  return [(WebView *)self initWithFrame:v14 frameName:v15 groupName:v7, v9, v11, v13];
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainThread(v3, self) & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self->_private;
    if (v5)
    {
      [(WebGeolocationProvider *)v5->_geolocationProvider stopTrackingWebView:self];
    }

    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [(WebView *)self close];
    if ([objc_opt_class() shouldIncludeInWebKitStatistics])
    {
      --WebViewCount;
    }

    self->_private = 0;
    objc_autoreleasePoolPop(v4);
    v6.receiver = self;
    v6.super_class = WebView;
    [(WebView *)&v6 dealloc];
  }
}

- (void)close
{
  [(WebView *)self _close];
  ptr = self->_private->renderingUpdateScheduler.__ptr_;
  if (ptr)
  {
    *(ptr + 2) = 0;
    WebCore::RunLoopObserver::invalidate(*(ptr + 3));
    WebCore::RunLoopObserver::invalidate(*(ptr + 4));
    p_renderingUpdateScheduler = &self->_private->renderingUpdateScheduler;

    std::unique_ptr<WebViewRenderingUpdateScheduler>::reset[abi:sn200100](p_renderingUpdateScheduler, 0);
  }
}

- (void)viewDidMoveToWindow
{
  v2 = self->_private;
  if (v2 && !v2->closed)
  {
    window = [(WebView *)self window];
    v5 = self->_private;
    if (window)
    {
      WebCore::Page::setCanStartMedia(v5->page.m_ptr);
      WebCore::Page::setIsInWindow(self->_private->page.m_ptr);
      preferences = [(WebView *)self preferences];
      v7 = [-[WebView window](self "window")];
      if (v7)
      {
        v8 = v7;
        [(WebPreferences *)preferences showDebugBorders];
        WebCore::LegacyTileCache::setTileBordersVisible(v8);
        [(WebPreferences *)preferences showRepaintCounter];
        WebCore::LegacyTileCache::setTilePaintCountersVisible(v8);
        *(v8 + 74) = [(WebPreferences *)preferences acceleratedDrawingEnabled];
      }
    }

    else
    {
      [(WebVideoFullscreenController *)v5->fullscreenController.m_ptr requestHideAndExitFullscreen];
    }

    [(WebView *)self _updateActiveState];

    [(WebView *)self _updateVisibilityState];
  }
}

- (void)_wakWindowVisibilityChanged:(id)changed
{
  object = [changed object];
  if (object == [(WebView *)self window])
  {

    [(WebView *)self _updateVisibilityState];
  }
}

- (void)_updateScreenScaleFromWindow
{
  window = [(WebView *)self window];
  if (window)
  {
    [window screenScale];
    v5.n128_f32[0] = v5.n128_f64[0];
  }

  else
  {
    WebCore::screenScaleFactor(0, v4);
  }

  m_ptr = self->_private->page.m_ptr;

  MEMORY[0x1EEE5A698](m_ptr, v5);
}

- (void)setPreferences:(WebPreferences *)preferences
{
  v3 = preferences;
  if (preferences)
  {
    if (self->_private->preferences.m_ptr == preferences)
    {
      return;
    }
  }

  else
  {
    v3 = +[WebPreferences standardPreferences];
    if (self->_private->preferences.m_ptr == v3)
    {
      return;
    }
  }

  [(WebPreferences *)v3 willAddToWebView];
  v5 = self->_private;
  m_ptr = v5->preferences.m_ptr;
  v5->preferences.m_ptr = 0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:WebPreferencesChangedInternalNotification[0] object:{-[WebView preferences](self, "preferences")}];
  [WebPreferences _removeReferenceForIdentifier:[(WebPreferences *)m_ptr identifier]];
  v7 = self->_private;
  if (v3)
  {
    v8 = v3;
  }

  v9 = v7->preferences.m_ptr;
  v7->preferences.m_ptr = v3;
  if (v9)
  {
  }

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__preferencesChangedNotification_ name:WebPreferencesChangedInternalNotification[0] object:{-[WebView preferences](self, "preferences")}];
  [(WebView *)self _preferencesChanged:[(WebView *)self preferences]];
  [(WebPreferences *)[(WebView *)self preferences] _postPreferencesChangedAPINotification];
  [(WebPreferences *)m_ptr didRemoveFromWebView];
  if (m_ptr)
  {
  }
}

- (void)setPreferencesIdentifier:(NSString *)preferencesIdentifier
{
  if (!self->_private->closed && ([(NSString *)preferencesIdentifier isEqual:[(WebPreferences *)[(WebView *)self preferences] identifier]]& 1) == 0)
  {
    v5 = [[WebPreferences alloc] initWithIdentifier:preferencesIdentifier];
    [(WebView *)self setPreferences:?];
    if (v5)
    {
    }
  }
}

- (NSString)preferencesIdentifier
{
  preferences = [(WebView *)self preferences];

  return [(WebPreferences *)preferences identifier];
}

- (void)setUIDelegate:(id)UIDelegate
{
  self->_private->UIDelegate = UIDelegate;
  [self->_private->UIDelegateForwarder.m_ptr clearTarget];
  v4 = self->_private;
  m_ptr = v4->UIDelegateForwarder.m_ptr;
  v4->UIDelegateForwarder.m_ptr = 0;
  if (m_ptr)
  {
  }
}

- (id)_resourceLoadDelegateForwarder
{
  v2 = self->_private;
  if (v2->closing)
  {
    return 0;
  }

  if (v2->resourceProgressDelegateForwarder.m_ptr)
  {
    return self->_private->resourceProgressDelegateForwarder.m_ptr;
  }

  v5 = [[_WebSafeForwarder alloc] initWithTarget:[(WebView *)self resourceLoadDelegate] defaultTarget:+[WebDefaultResourceLoadDelegate sharedResourceLoadDelegate]];
  v6 = self->_private;
  m_ptr = v6->resourceProgressDelegateForwarder.m_ptr;
  v6->resourceProgressDelegateForwarder.m_ptr = v5;
  if (!m_ptr)
  {
    return self->_private->resourceProgressDelegateForwarder.m_ptr;
  }

  return self->_private->resourceProgressDelegateForwarder.m_ptr;
}

- (void)setResourceLoadDelegate:(id)resourceLoadDelegate
{
  [self->_private->resourceProgressDelegateForwarder.m_ptr clearTarget];
  v5 = self->_private;
  m_ptr = v5->resourceProgressDelegateForwarder.m_ptr;
  v5->resourceProgressDelegateForwarder.m_ptr = 0;
  if (m_ptr)
  {
  }

  self->_private->resourceProgressDelegate = resourceLoadDelegate;

  [(WebView *)self _cacheResourceLoadDelegateImplementations];
}

- (void)setPolicyDelegate:(id)policyDelegate
{
  self->_private->policyDelegate = policyDelegate;
  [self->_private->policyDelegateForwarder.m_ptr clearTarget];
  v4 = self->_private;
  m_ptr = v4->policyDelegateForwarder.m_ptr;
  v4->policyDelegateForwarder.m_ptr = 0;
  if (m_ptr)
  {
  }
}

- (id)_frameLoadDelegateForwarder
{
  v2 = self->_private;
  if (v2->closing)
  {
    return 0;
  }

  if (v2->frameLoadDelegateForwarder.m_ptr)
  {
    return self->_private->frameLoadDelegateForwarder.m_ptr;
  }

  v5 = [[_WebSafeForwarder alloc] initWithTarget:[(WebView *)self frameLoadDelegate] defaultTarget:+[WebDefaultFrameLoadDelegate sharedFrameLoadDelegate]];
  v6 = self->_private;
  m_ptr = v6->frameLoadDelegateForwarder.m_ptr;
  v6->frameLoadDelegateForwarder.m_ptr = v5;
  if (!m_ptr)
  {
    return self->_private->frameLoadDelegateForwarder.m_ptr;
  }

  return self->_private->frameLoadDelegateForwarder.m_ptr;
}

- (void)setFrameLoadDelegate:(id)frameLoadDelegate
{
  [self->_private->frameLoadDelegateForwarder.m_ptr clearTarget];
  v5 = self->_private;
  m_ptr = v5->frameLoadDelegateForwarder.m_ptr;
  v5->frameLoadDelegateForwarder.m_ptr = 0;
  if (m_ptr)
  {
  }

  self->_private->frameLoadDelegate = frameLoadDelegate;

  [(WebView *)self _cacheFrameLoadDelegateImplementations];
}

- (WebFrame)mainFrame
{
  v2 = self->_private;
  if (!v2)
  {
    return 0;
  }

  m_ptr = v2->page.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  result = 0;
  v5 = *(m_ptr + 22);
  if (v5 && (*(v5 + 136) & 1) == 0)
  {
    v6 = *(*(v5 + 208) + 16);
    if (((*v6)[64]._private)(v6, a2))
    {
      return 0;
    }

    else
    {
      return v6[3];
    }
  }

  return result;
}

- (WebFrame)selectedFrame
{
  result = [(WebView *)self _focusedFrame];
  if (!result)
  {
    mainFrame = [(WebView *)self mainFrame];

    return [(WebFrame *)mainFrame _findFrameWithSelection];
  }

  return result;
}

- (WebBackForwardList)backForwardList
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr && (v3 = *(*(m_ptr + 19) + 16), *(v3 + 65) == 1))
  {
    return kit(v3);
  }

  else
  {
    return 0;
  }
}

- (void)setMaintainsBackForwardList:(BOOL)flag
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    v4 = *(*(m_ptr + 19) + 16);
    *(v4 + 65) = flag;
    if (!flag)
    {
      v5 = *(v4 + 60);
      BackForwardList::setCapacity(v4, 0);

      BackForwardList::setCapacity(v4, v5);
    }
  }
}

- (BOOL)goBack
{
  if (!self->_private->page.m_ptr)
  {
    return 0;
  }

  if ((WebThreadIsCurrent() & 1) != 0 || (WebThreadIsEnabled() & 1) == 0)
  {
    v4 = *(self->_private->page.m_ptr + 19);

    return MEMORY[0x1EEE57C28](v4);
  }

  else
  {
    WebThreadRun();
    return 1;
  }
}

- (BOOL)goForward
{
  if (!self->_private->page.m_ptr)
  {
    return 0;
  }

  if ((WebThreadIsCurrent() & 1) != 0 || (WebThreadIsEnabled() & 1) == 0)
  {
    v4 = *(self->_private->page.m_ptr + 19);

    return MEMORY[0x1EEE57C30](v4);
  }

  else
  {
    WebThreadRun();
    return 1;
  }
}

- (BOOL)goToBackForwardItem:(WebHistoryItem *)item
{
  m_ptr = self->_private->page.m_ptr;
  if (!m_ptr)
  {
    return m_ptr != 0;
  }

  v4 = *(m_ptr + 22);
  if (!v4 || (*(v4 + 136) & 1) != 0)
  {
    return m_ptr != 0;
  }

  ++*(v4 + 16);
  WebCore::Page::goToItem();
  if (*(v4 + 16) != 1)
  {
    --*(v4 + 16);
    return m_ptr != 0;
  }

  (*(*v4 + 8))(v4);
  return m_ptr != 0;
}

- (void)setTextSizeMultiplier:(float)textSizeMultiplier
{
  v5 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")] ^ 1;
  *&v6 = textSizeMultiplier;

  [(WebView *)self _setZoomMultiplier:v5 isTextOnly:v6];
}

- (float)textSizeMultiplier
{
  _realZoomMultiplierIsTextOnly = [(WebView *)self _realZoomMultiplierIsTextOnly];
  result = 1.0;
  if (_realZoomMultiplierIsTextOnly)
  {
    return self->_private->zoomMultiplier;
  }

  return result;
}

- (void)_setZoomMultiplier:(float)multiplier isTextOnly:(BOOL)only
{
  self->_private->zoomMultiplier = multiplier;
  self->_private->zoomsTextOnly = only;
  [(WebView *)self hideFormValidationMessage];
  if ([(WebView *)self _mainCoreFrame])
  {
    if (self->_private->zoomsTextOnly)
    {
      v6.n128_u32[0] = 1.0;
      v7.n128_f32[0] = multiplier;
    }

    else
    {
      v7.n128_u32[0] = 1.0;
      v6.n128_f32[0] = multiplier;
    }

    MEMORY[0x1EEE53EB8](v6, v7);
  }
}

- (float)_zoomMultiplier:(BOOL)multiplier
{
  multiplierCopy = multiplier;
  _realZoomMultiplierIsTextOnly = [(WebView *)self _realZoomMultiplierIsTextOnly];
  result = 1.0;
  if (_realZoomMultiplierIsTextOnly == multiplierCopy)
  {
    return self->_private->zoomMultiplier;
  }

  return result;
}

- (BOOL)_canZoomOut:(BOOL)out
{
  outCopy = out;
  documentView = [(WebFrameView *)[(WebFrame *)[(WebView *)self mainFrame] frameView] documentView];
  if ([(NSView *)documentView conformsToProtocol:&unk_1F4773998])
  {

    return [(NSView *)documentView _canZoomOut];
  }

  else
  {
    [(WebView *)self _zoomMultiplier:outCopy];
    return (v7 / 1.2) > 0.5;
  }
}

- (BOOL)_canZoomIn:(BOOL)in
{
  inCopy = in;
  documentView = [(WebFrameView *)[(WebFrame *)[(WebView *)self mainFrame] frameView] documentView];
  if ([(NSView *)documentView conformsToProtocol:&unk_1F4773998])
  {

    return [(NSView *)documentView _canZoomIn];
  }

  else
  {
    [(WebView *)self _zoomMultiplier:inCopy];
    return (v7 * 1.2) < 3.0;
  }
}

- (void)_zoomOut:(id)out isTextOnly:(BOOL)only
{
  onlyCopy = only;
  documentView = [(WebFrameView *)[(WebFrame *)[(WebView *)self mainFrame] frameView] documentView];
  if ([(NSView *)documentView conformsToProtocol:&unk_1F4773998])
  {

    [(NSView *)documentView _zoomOut:out];
  }

  else
  {
    [(WebView *)self _zoomMultiplier:onlyCopy];
    if ((v8 / 1.2) > 0.5)
    {

      [(WebView *)self _setZoomMultiplier:onlyCopy isTextOnly:?];
    }
  }
}

- (void)_zoomIn:(id)in isTextOnly:(BOOL)only
{
  onlyCopy = only;
  documentView = [(WebFrameView *)[(WebFrame *)[(WebView *)self mainFrame] frameView] documentView];
  if ([(NSView *)documentView conformsToProtocol:&unk_1F4773998])
  {

    [(NSView *)documentView _zoomIn:in];
  }

  else
  {
    [(WebView *)self _zoomMultiplier:onlyCopy];
    if ((v8 * 1.2) < 3.0)
    {

      [(WebView *)self _setZoomMultiplier:onlyCopy isTextOnly:?];
    }
  }
}

- (BOOL)_canResetZoom:(BOOL)zoom
{
  zoomCopy = zoom;
  documentView = [(WebFrameView *)[(WebFrame *)[(WebView *)self mainFrame] frameView] documentView];
  if ([(NSView *)documentView conformsToProtocol:&unk_1F4773998])
  {

    return [(NSView *)documentView _canResetZoom];
  }

  else
  {
    [(WebView *)self _zoomMultiplier:zoomCopy];
    return v7 != 1.0;
  }
}

- (void)_resetZoom:(id)zoom isTextOnly:(BOOL)only
{
  onlyCopy = only;
  documentView = [(WebFrameView *)[(WebFrame *)[(WebView *)self mainFrame] frameView] documentView];
  if ([(NSView *)documentView conformsToProtocol:&unk_1F4773998])
  {

    [(NSView *)documentView _resetZoom:zoom];
  }

  else
  {
    [(WebView *)self _zoomMultiplier:onlyCopy];
    if (*&v8 != 1.0)
    {
      LODWORD(v8) = 1.0;

      [(WebView *)self _setZoomMultiplier:onlyCopy isTextOnly:v8];
    }
  }
}

- (void)setApplicationNameForUserAgent:(NSString *)applicationNameForUserAgent
{
  v4 = [(NSString *)applicationNameForUserAgent copy];
  v5 = self->_private;
  m_ptr = v5->applicationNameForUserAgent.m_ptr;
  v5->applicationNameForUserAgent.m_ptr = v4;
  if (m_ptr)
  {
  }

  if (!self->_private->userAgentOverridden)
  {

    [(WebView *)self _invalidateUserAgentCache];
  }
}

- (void)_invalidateUserAgentCache
{
  v2 = self->_private;
  m_ptr = v2->userAgent.m_impl.m_ptr;
  if (m_ptr)
  {
    v2->userAgent.m_impl.m_ptr = 0;
    if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      selfCopy = self;
      WTF::StringImpl::destroy(m_ptr, a2);
      self = selfCopy;
    }

    if (self->_private->page.m_ptr)
    {

      MEMORY[0x1EEE5A5E0]();
    }
  }
}

- (NSString)applicationNameForUserAgent
{
  m_ptr = self->_private->applicationNameForUserAgent.m_ptr;
  if (m_ptr)
  {
    v3 = m_ptr;
    v4 = m_ptr;
  }

  return m_ptr;
}

- (void)setCustomUserAgent:(NSString *)customUserAgent
{
  [(WebView *)self _invalidateUserAgentCache];
  MEMORY[0x1CCA63A40](&v10, customUserAgent);
  v6 = self->_private;
  v7 = v10;
  v10 = 0;
  m_ptr = v6->userAgent.m_impl.m_ptr;
  v6->userAgent.m_impl.m_ptr = v7;
  if (m_ptr)
  {
    if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(m_ptr, v5);
    }

    v9 = v10;
    v10 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v5);
    }
  }

  self->_private->userAgentOverridden = customUserAgent != 0;
}

- (NSString)customUserAgent
{
  v2 = self->_private;
  if (!v2->userAgentOverridden)
  {
    return 0;
  }

  m_ptr = v2->userAgent.m_impl.m_ptr;
  if (!m_ptr)
  {
    v9 = &stru_1F472E7E8;
    result = &stru_1F472E7E8;
    v10 = 0;
LABEL_6:
    v6 = result;
    v7 = result;
    v8 = v10;
    v10 = 0;
    if (v8)
    {
    }

    return v6;
  }

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v10, m_ptr, a2);
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v4);
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

- (void)setMediaStyle:(NSString *)mediaStyle
{
  if (self->_private->mediaStyle.m_ptr != mediaStyle)
  {
    v4 = [(NSString *)mediaStyle copy];
    v5 = self->_private;
    m_ptr = v5->mediaStyle.m_ptr;
    v5->mediaStyle.m_ptr = v4;
    if (m_ptr)
    {
    }
  }
}

- (BOOL)supportsTextEncoding
{
  documentView = [(WebFrameView *)[(WebFrame *)[(WebView *)self mainFrame] frameView] documentView];
  v3 = [(NSView *)documentView conformsToProtocol:&unk_1F475AAC0];
  if (v3)
  {

    LOBYTE(v3) = [(NSView *)documentView supportsTextEncoding];
  }

  return v3;
}

- (void)setCustomTextEncodingName:(NSString *)customTextEncodingName
{
  customTextEncodingName = [(WebView *)self customTextEncodingName];
  if (customTextEncodingName != customTextEncodingName && ![(NSString *)customTextEncodingName isEqualToString:customTextEncodingName])
  {
    _mainCoreFrame = [(WebView *)self _mainCoreFrame];
    if (_mainCoreFrame)
    {
      v7 = _mainCoreFrame[26];
      MEMORY[0x1CCA63A40](&v10, customTextEncodingName);
      WebCore::FrameLoader::reloadWithOverrideEncoding(v7, &v10);
      v9 = v10;
      v10 = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }
      }
    }
  }
}

- (id)_mainFrameOverrideEncoding
{
  result = [(WebFrame *)[(WebView *)self mainFrame] provisionalDataSource];
  if (result || (result = [(WebFrame *)[(WebView *)self mainFrame] _dataSource]) != 0)
  {
    [result _documentLoader];
    result = *(v4 + 1640);
    if (result)
    {
      if (*(result + 1))
      {
        return WTF::StringImpl::operator NSString *();
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (NSString)stringByEvaluatingJavaScriptFromString:(NSString *)script
{
  mainFrame = [(WebView *)self mainFrame];

  return [(WebFrame *)mainFrame _stringByEvaluatingJavaScriptFromString:script];
}

- (WebScriptObject)windowScriptObject
{
  result = [(WebView *)self _mainCoreFrame];
  if (result)
  {
    v3 = result[14]._private;

    return WebCore::ScriptController::windowScriptObject(v3);
  }

  return result;
}

- (String)_userAgentString
{
  v3 = v2;
  m_ptr = self->_private->userAgent.m_impl.m_ptr;
  if (m_ptr)
  {
    goto LABEL_9;
  }

  selfCopy = self;
  v6 = [objc_opt_class() _standardUserAgentWithApplicationName:self->_private->applicationNameForUserAgent.m_ptr];
  MEMORY[0x1CCA63A40](&v10, v6);
  v8 = selfCopy->_private;
  v9 = v10;
  v10 = 0;
  self = v8->userAgent.m_impl.m_ptr;
  v8->userAgent.m_impl.m_ptr = v9;
  if (self)
  {
    if (atomic_fetch_add_explicit(self, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(self, v7);
    }

    self = v10;
    v10 = 0;
    if (self && atomic_fetch_add_explicit(self, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      self = WTF::StringImpl::destroy(self, v7);
    }
  }

  m_ptr = selfCopy->_private->userAgent.m_impl.m_ptr;
  if (m_ptr)
  {
LABEL_9:
    atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  }

  *v3 = m_ptr;
  return self;
}

- (NSString)userAgentForURL:(NSURL *)URL
{
  if (!self)
  {
    v9 = 0;
    goto LABEL_6;
  }

  [(WebView *)self _userAgentString];
  if (!v9)
  {
LABEL_6:
    v10 = &stru_1F472E7E8;
    v4 = &stru_1F472E7E8;
    goto LABEL_7;
  }

  atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  MEMORY[0x1CCA63450](&v10);
  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v3);
  }

LABEL_7:
  v5 = v10;
  v10 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }
  }

  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v3);
  }

  return v5;
}

- (void)setHostWindow:(NSWindow *)hostWindow
{
  v4 = self->_private;
  if ((!hostWindow || !v4->closed) && v4->hostWindow.m_ptr != hostWindow)
  {
    _mainCoreFrame = [(WebView *)self _mainCoreFrame];
    v7 = self->_private;
    if (hostWindow)
    {
      v8 = hostWindow;
    }

    m_ptr = v7->hostWindow.m_ptr;
    v7->hostWindow.m_ptr = hostWindow;
    if (m_ptr)
    {
    }

    if (_mainCoreFrame)
    {
      v10 = _mainCoreFrame;
      do
      {
        if ((*(v10 + 136) & 1) == 0)
        {
          v12 = *(*(v10 + 208) + 16);
          if ((*(*v12 + 1032))(v12))
          {
            v11 = 0;
          }

          else
          {
            v11 = v12[3];
          }

          [objc_msgSend(objc_msgSend(v11 "frameView")];
        }

        v10 = WebCore::FrameTree::traverseNext((v10 + 40), _mainCoreFrame);
      }

      while (v10);
    }
  }
}

- (NSWindow)hostWindow
{
  v2 = self->_private;
  if (v2)
  {
    return v2->hostWindow.m_ptr;
  }

  else
  {
    return 0;
  }
}

- (id)documentViewAtWindowPoint:(CGPoint)point
{
  v3 = [(WebView *)self _frameViewAtWindowPoint:point.x, point.y];

  return [v3 documentView];
}

- (id)_elementAtWindowPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v9[1] = *MEMORY[0x1E69E9840];
  result = [(WebView *)self _frameViewAtWindowPoint:?];
  if (result)
  {
    v6 = result;
    documentView = [result documentView];
    if ([documentView conformsToProtocol:&unk_1F475A7A8])
    {
      [documentView convertPoint:0 fromView:{x, y}];

      return [documentView elementAtPoint:?];
    }

    else
    {
      v8 = WebElementFrameKey;
      v9[0] = [v6 webFrame];
      return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    }
  }

  return result;
}

- (NSDictionary)elementAtPoint:(NSPoint)point
{
  [(WebView *)self convertPoint:0 toView:point.x, point.y];

  return [(WebView *)self _elementAtWindowPoint:?];
}

- (BOOL)acceptsFirstResponder
{
  frameView = [(WebFrame *)[(WebView *)self mainFrame] frameView];

  return [(WebFrameView *)frameView acceptsFirstResponder];
}

- (BOOL)becomeFirstResponder
{
  if (self->_private->becomingFirstResponder)
  {
    return 0;
  }

  frameView = [(WebFrame *)[(WebView *)self mainFrame] frameView];

  return [(WebFrameView *)frameView acceptsFirstResponder];
}

- (id)_webcore_effectiveFirstResponder
{
  frameView = [(WebFrame *)[(WebView *)self mainFrame] frameView];
  if (frameView)
  {

    return [(WebFrameView *)frameView _webcore_effectiveFirstResponder];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WebView;
    return [(WebView *)&v5 _webcore_effectiveFirstResponder];
  }
}

- (void)setNextKeyView:(id)view
{
  frameView = [(WebFrame *)[(WebView *)self mainFrame] frameView];
  if (frameView)
  {

    [(WebFrameView *)frameView setNextKeyView:view];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WebView;
    [(WebView *)&v6 setNextKeyView:view];
  }
}

+ (void)registerViewClass:(Class)viewClass representationClass:(Class)representationClass forMIMEType:(NSString *)MIMEType
{
  [+[WebFrameView _viewTypesAllowImageTypeOmission:](WebFrameView _viewTypesAllowImageTypeOmission:{1), "setObject:forKey:", viewClass, MIMEType}];
  [+[WebDataSource _repTypesAllowImageTypeOmission:](WebDataSource _repTypesAllowImageTypeOmission:{1), "setObject:forKey:", representationClass, MIMEType}];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  if (v7 == v8)
  {
    v9 = WebCore::MIMETypeRegistry::supportedNonImageMIMETypes(v8);
    MEMORY[0x1CCA63A40](&v13, MIMEType);
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v12, v9, &v13);
    v11 = v13;
    v13 = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
      }
    }
  }
}

- (void)setGroupName:(NSString *)groupName
{
  m_ptr = self->_private->group.m_ptr;
  if (m_ptr)
  {
    v23[0] = self;
    WTF::HashSet<WebView *,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::remove(m_ptr + 2, v23);
  }

  MEMORY[0x1CCA63A40](&selfCopy, groupName);
  MEMORY[0x1CCA63A40](&v22, [(WebPreferences *)self->_private->preferences.m_ptr _localStorageDatabasePath]);
  WebViewGroup::getOrCreate(&selfCopy, &v22, v23);
  v7 = self->_private;
  v8 = v7->group.m_ptr;
  v7->group.m_ptr = v23[0];
  if (v8)
  {
    if (*v8 == 1)
    {
      WebViewGroup::~WebViewGroup(v8, v6);
      WTF::fastFree(v10, v11);
      v9 = v22;
      v22 = 0;
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    --*v8;
  }

  v9 = v22;
  v22 = 0;
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

LABEL_11:
  v12 = selfCopy;
  selfCopy = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v6);
  }

  v13 = self->_private->group.m_ptr;
  selfCopy = self;
  WTF::HashTable<WebView *,WebView *,WTF::IdentityExtractor,WTF::DefaultHash<WebView *>,WTF::HashTraits<WebView *>,WTF::HashTraits<WebView *>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v13 + 2, &selfCopy, v23);
  v14 = self->_private;
  if (v14->page.m_ptr)
  {
    v15 = *(v14->group.m_ptr + 5);
    ++*(v15 + 2);
    v23[0] = v15;
    WebCore::Page::setUserContentProvider();
    v16 = v23[0];
    v23[0] = 0;
    if (v16)
    {
      if (*(v16 + 2) == 1)
      {
        (*(*v16 + 8))(v16);
      }

      else
      {
        --*(v16 + 2);
      }
    }

    v17 = *(self->_private->group.m_ptr + 6);
    ++*(v17 + 2);
    v23[0] = v17;
    WebCore::Page::setVisitedLinkStore();
    v18 = v23[0];
    v23[0] = 0;
    if (v18)
    {
      if (*(v18 + 2) == 1)
      {
        (*(*v18 + 8))(v18);
      }

      else
      {
        --*(v18 + 2);
      }
    }

    v19 = self->_private->page.m_ptr;
    MEMORY[0x1CCA63A40](v23, groupName);
    WebCore::Page::setGroupName(v19, v23);
    v21 = v23[0];
    v23[0] = 0;
    if (v21)
    {
      if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v20);
      }
    }
  }
}

- (NSString)groupName
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    v3 = *WebCore::Page::groupName(m_ptr);
    if (v3)
    {
      atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
      MEMORY[0x1CCA63450](&v10, v3);
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, v4);
      }

      v5 = v10;
      v10 = 0;
      if (!v5)
      {
        return &v5->isa;
      }
    }

    else
    {
      v5 = &stru_1F472E7E8;
      v9 = &stru_1F472E7E8;
      v10 = 0;
    }

    v6 = v5;
    v7 = v10;
    v10 = 0;
    if (v7)
    {
    }

    return &v5->isa;
  }

  return 0;
}

- (double)estimatedProgress
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    return *(*(m_ptr + 17) + 128);
  }

  else
  {
    return 0.0;
  }
}

- (void)setMainFrameURL:(NSString *)mainFrameURL
{
  if ([(NSString *)mainFrameURL hasPrefix:@"/"])
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:mainFrameURL isDirectory:0];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFF8] _web_URLWithDataAsString:mainFrameURL];
  }

  v6 = v5;
  mainFrame = [(WebView *)self mainFrame];
  v8 = [MEMORY[0x1E695AC68] requestWithURL:v6];

  [(WebFrame *)mainFrame loadRequest:v8];
}

- (NSString)mainFrameURL
{
  provisionalDataSource = [(WebFrame *)[(WebView *)self mainFrame] provisionalDataSource];
  if (provisionalDataSource)
  {
    v4 = [(NSMutableURLRequest *)[(WebDataSource *)provisionalDataSource request] URL];
  }

  else
  {
    v4 = [objc_msgSend(-[WebFrame _dataSource](-[WebView mainFrame](self "mainFrame")];
  }

  return [(NSURL *)v4 _web_originalDataAsString];
}

- (NSString)mainFrameTitle
{
  result = [-[WebFrame _dataSource](-[WebView mainFrame](self "mainFrame")];
  if (!result)
  {
    return &stru_1F472E7E8;
  }

  return result;
}

- (id)mainFrameIconURL
{
  result = [(WebView *)self mainFrame];
  if (result)
  {
    v3 = *(*(result + 1) + 8);
    if (v3 && (v4 = *(*(v3 + 208) + 96)) != 0 && *(v4 + 2844))
    {
      WTF::URL::createCFURL(&v8, *(v4 + 2832));
      result = v8;
      v8 = 0;
      if (result)
      {
        v5 = result;
        v6 = result;
        v7 = v8;
        v8 = 0;
        result = v5;
        if (v7)
        {

          return v5;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (DOMDocument)mainFrameDocument
{
  if (!self->_private->mainFrameDocumentReady)
  {
    return 0;
  }

  mainFrame = [(WebView *)self mainFrame];

  return [(WebFrame *)mainFrame DOMDocument];
}

- (void)setDrawsBackground:(BOOL)drawsBackground
{
  v5 = self->_private;
  if (v5->drawsBackground != drawsBackground)
  {
    v5->drawsBackground = drawsBackground;
    mainFrame = [(WebView *)self mainFrame];

    [(WebFrame *)mainFrame _updateBackgroundAndUpdatesWhileOffscreen];
  }
}

- (void)setShouldUpdateWhileOffscreen:(BOOL)shouldUpdateWhileOffscreen
{
  v5 = self->_private;
  if (v5->shouldUpdateWhileOffscreen != shouldUpdateWhileOffscreen)
  {
    v5->shouldUpdateWhileOffscreen = shouldUpdateWhileOffscreen;
    mainFrame = [(WebView *)self mainFrame];

    [(WebFrame *)mainFrame _updateBackgroundAndUpdatesWhileOffscreen];
  }
}

- (void)setCurrentNodeHighlight:(id)highlight
{
  v4 = self->_private;
  if (highlight)
  {
    highlightCopy = highlight;
  }

  m_ptr = v4->currentNodeHighlight.m_ptr;
  v4->currentNodeHighlight.m_ptr = highlight;
  if (m_ptr)
  {
  }
}

- (id)previousValidKeyView
{
  selfCopy = self;
  v6.receiver = self;
  v6.super_class = WebView;
  previousValidKeyView = [(WebView *)&v6 previousValidKeyView];
  if ([previousValidKeyView isDescendantOf:selfCopy])
  {
    Mutable = CFSetCreateMutable(0, 0, 0);
    CFSetAddValue(Mutable, previousValidKeyView);
    while (1)
    {
      CFSetAddValue(Mutable, selfCopy);
      selfCopy = [(WebView *)selfCopy previousKeyView];
      if (!selfCopy || CFSetGetValue(Mutable, selfCopy))
      {
        break;
      }

      if (([previousValidKeyView isDescendantOf:selfCopy] & 1) == 0)
      {
        previousValidKeyView = [(WebView *)selfCopy previousValidKeyView];
        break;
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return previousValidKeyView;
}

+ (unint64_t)_maxCacheModelInAnyInstance
{
  if (byte_1ED6A6137 == 1)
  {
    v6 = qword_1ED6A6168;
  }

  else
  {
    v6 = 0;
    qword_1ED6A6168 = 0;
    byte_1ED6A6137 = 1;
  }

  objectEnumerator = [v6 objectEnumerator];
  v8 = [objc_msgSend(objectEnumerator "nextObject")];
  for (i = 0; v8; v8 = [objc_msgSend(objectEnumerator "nextObject")])
  {
    cacheModel = [v8 cacheModel];
    if (i <= cacheModel)
    {
      i = cacheModel;
    }
  }

  return i;
}

unint64_t __42__WebView__cacheModelChangedNotification___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "object")];
  if (![*(a1 + 40) _didSetCacheModel] || v2 > objc_msgSend(*(a1 + 40), "_cacheModel"))
  {
    v3 = *(a1 + 40);
    v4 = v2;

    return [v3 _setCacheModel:v4];
  }

  result = [*(a1 + 40) _cacheModel];
  if (v2 < result)
  {
    v6 = *(a1 + 40);
    v7 = [+[WebPreferences standardPreferences](WebPreferences cacheModel];
    v8 = [*(a1 + 40) _maxCacheModelInAnyInstance];
    if (v7 <= v8)
    {
      v4 = v8;
    }

    else
    {
      v4 = v7;
    }

    v3 = v6;

    return [v3 _setCacheModel:v4];
  }

  return result;
}

+ (void)_preferencesRemovedNotification:(id)notification
{
  v4 = [objc_msgSend(notification "object")];
  if (v4 == [self _cacheModel])
  {
    cacheModel = [+[WebPreferences standardPreferences](WebPreferences cacheModel];
    _maxCacheModelInAnyInstance = [self _maxCacheModelInAnyInstance];
    if (cacheModel <= _maxCacheModelInAnyInstance)
    {
      v7 = _maxCacheModelInAnyInstance;
    }

    else
    {
      v7 = cacheModel;
    }

    [self _setCacheModel:v7];
  }
}

- (id)_focusedFrame
{
  v3 = [-[WebView window](self "window")];
  if (!v3)
  {
    return 0;
  }

  superview = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![superview isDescendantOf:{-[WebFrame frameView](-[WebView mainFrame](self, "mainFrame"), "frameView")}])
  {
    return 0;
  }

  do
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    superview = [superview superview];
  }

  while (superview);

  return [superview webFrame];
}

- (BOOL)_isLoading
{
  mainFrame = [(WebView *)self mainFrame];
  if ([-[WebFrame _dataSource](mainFrame "_dataSource")])
  {
    return 1;
  }

  provisionalDataSource = [(WebFrame *)mainFrame provisionalDataSource];

  return [(WebDataSource *)provisionalDataSource isLoading];
}

- (id)_frameViewAtWindowPoint:(CGPoint)point
{
  if (self->_private->closed)
  {
    return 0;
  }

  v5 = [(WebView *)self hitTest:point.x, point.y];
  v6 = [v5 isDescendantOf:{-[WebFrame frameView](-[WebView mainFrame](self, "mainFrame"), "frameView")}];
  result = 0;
  if (v6 && v5)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      result = [v5 superview];
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

- (BOOL)_continuousCheckingAllowed
{
  if (([WebView _continuousCheckingAllowed]::readAllowContinuousSpellCheckingDefault & 1) == 0)
  {
    if ([objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
    {
      -[WebView _continuousCheckingAllowed]::allowContinuousSpellChecking = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    }

    [WebView _continuousCheckingAllowed]::readAllowContinuousSpellCheckingDefault = 1;
  }

  return [WebView _continuousCheckingAllowed]::allowContinuousSpellChecking;
}

- (id)_responderForResponderOperations
{
  v3 = [-[WebView window](self "window")];
  frameView = [(WebFrame *)[(WebView *)self mainFrame] frameView];
  if (v3 != self)
  {
    v5 = frameView;
    if (![(WAKView *)frameView _web_firstResponderIsSelfOrDescendantView])
    {
      documentView = [(WebFrameView *)v5 documentView];
      if (documentView)
      {
        return documentView;
      }

      else
      {
        return v5;
      }
    }
  }

  return v3;
}

- (void)takeStringURLFrom:(id)sender
{
  stringValue = [sender stringValue];
  mainFrame = [(WebView *)self mainFrame];
  v6 = [MEMORY[0x1E695AC68] requestWithURL:{objc_msgSend(MEMORY[0x1E695DFF8], "_web_URLWithDataAsString:", stringValue)}];

  [(WebFrame *)mainFrame loadRequest:v6];
}

- (BOOL)canGoBack
{
  WebThreadLock();
  m_ptr = self->_private->page.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v4 = *(m_ptr + 19);

  return MEMORY[0x1EEE5D778](v4, 0xFFFFFFFFLL);
}

- (BOOL)canGoForward
{
  WebThreadLock();
  m_ptr = self->_private->page.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v4 = *(m_ptr + 19);

  return MEMORY[0x1EEE5D778](v4, 1);
}

- (void)stopLoading:(id)sender
{
  if (WebThreadNotCurrent())
  {
    self->_private->isStopping = 1;
    *MEMORY[0x1E69E2EC8] = 1;
  }

  WebThreadRun();
}

uint64_t __37__WebView_WebIBActions__stopLoading___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 80) + 792) = 0;
  v1 = [*(a1 + 32) mainFrame];

  return [v1 stopLoading];
}

- (void)stopLoadingAndClear
{
  if (WebThreadNotCurrent() && (WebThreadIsLocked() & 1) == 0)
  {
    self->_private->isStopping = 1;
    *MEMORY[0x1E69E2EC8] = 1;
  }

  WebThreadRun();
}

void __44__WebView_WebIBActions__stopLoadingAndClear__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 80) + 792) = 0;
  v1 = [*(a1 + 32) mainFrame];
  [v1 stopLoading];
  v2 = WebCore::Document::loader(*(*(v1[1] + 8) + 224));
  WebCore::DocumentWriter::end((v2 + 112));
  v3 = [v1 frameView];
  [objc_msgSend(v3 "documentView")];
  v5 = v4;
  v6 = [WebPlainWhiteView alloc];
  v8 = [(WebPlainWhiteView *)v6 initWithFrame:*MEMORY[0x1E696AA80], *(MEMORY[0x1E696AA80] + 8), *(MEMORY[0x1E696AA80] + 16), *(MEMORY[0x1E696AA80] + 24)];
  LODWORD(v7) = v5;
  [(WebPlainWhiteView *)v8 setScale:v7];
  [v3 bounds];
  [(WebPlainWhiteView *)v8 setFrame:?];
  [v3 _setDocumentView:v8];
  [(WebPlainWhiteView *)v8 setNeedsDisplay:1];
  if (v8)
  {
  }
}

uint64_t __32__WebView_WebIBActions__reload___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mainFrame];

  return [v1 reload];
}

- (void)reloadFromOrigin:(id)sender
{
  mainFrame = [(WebView *)self mainFrame];

  [(WebFrame *)mainFrame reloadFromOrigin];
}

- (BOOL)canMakeTextSmaller
{
  v3 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")] ^ 1;

  return [(WebView *)self _canZoomOut:v3];
}

- (void)makeTextSmaller:(id)sender
{
  v5 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")] ^ 1;

  [(WebView *)self _zoomOut:sender isTextOnly:v5];
}

- (BOOL)canMakeTextLarger
{
  v3 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")] ^ 1;

  return [(WebView *)self _canZoomIn:v3];
}

- (void)makeTextLarger:(id)sender
{
  v5 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")] ^ 1;

  [(WebView *)self _zoomIn:sender isTextOnly:v5];
}

- (BOOL)canMakeTextStandardSize
{
  v3 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")] ^ 1;

  return [(WebView *)self _canResetZoom:v3];
}

- (void)makeTextStandardSize:(id)sender
{
  v5 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")] ^ 1;

  [(WebView *)self _resetZoom:sender isTextOnly:v5];
}

- (void)toggleContinuousSpellChecking:(id)sender
{
  v4 = [(WebView *)self isContinuousSpellCheckingEnabled]^ 1;

  [(WebView *)self setContinuousSpellCheckingEnabled:v4];
}

- (void)scheduleInRunLoop:(id)loop forMode:(id)mode
{
  if (loop && mode)
  {
    if (self)
    {
      [(WebView *)self page];
    }

    v6 = WTF::fastMalloc(0x20);
    MEMORY[0x1CCA63530](v6, loop, mode);
    WebCore::Page::addSchedulePair();
    if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      v8 = *(v6 + 24);
      *(v6 + 24) = 0;
      if (v8)
      {
        CFRelease(v8);
      }

      v9 = *(v6 + 16);
      *(v6 + 16) = 0;
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = *(v6 + 8);
      *(v6 + 8) = 0;
      if (v10)
      {
      }

      WTF::fastFree(v6, v7);
    }
  }
}

- (void)unscheduleFromRunLoop:(id)loop forMode:(id)mode
{
  if (loop && mode)
  {
    if (self)
    {
      [(WebView *)self page];
    }

    v6 = WTF::fastMalloc(0x20);
    MEMORY[0x1CCA63530](v6, loop, mode);
    WebCore::Page::removeSchedulePair();
    if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      v8 = *(v6 + 24);
      *(v6 + 24) = 0;
      if (v8)
      {
        CFRelease(v8);
      }

      v9 = *(v6 + 16);
      *(v6 + 16) = 0;
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = *(v6 + 8);
      *(v6 + 8) = 0;
      if (v10)
      {
      }

      WTF::fastFree(v6, v7);
    }
  }
}

- (BOOL)findString:(id)string options:(unint64_t)options
{
  if (self->_private->closed)
  {
LABEL_2:
    LOBYTE(v4) = 0;
    return v4;
  }

  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];
  v7 = 0;
  v8 = _selectedOrMainFrame;
  do
  {
    if (v8)
    {
      if ((options & 8) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((options & 8) == 0)
    {
LABEL_6:
      v9 = WebCore::FrameTree::traverseNext();
      if (!v9)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v9 = WebCore::FrameTree::traversePrevious();
    if (!v9)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (*(v9 + 136) & 1) != 0 || (v10 = *(*(v9 + 208) + 16), ((*(*v10 + 1032))(v10)))
    {
LABEL_12:
      v11 = 0;
      goto LABEL_13;
    }

    v11 = v10[3];
LABEL_13:
    v12 = [objc_msgSend(v8 "frameView")];
    if ([v12 conformsToProtocol:&unk_1F475ADE0])
    {
      if (v8 == _selectedOrMainFrame)
      {
        v7 = v12;
      }

      if (v8 == v11)
      {
        optionsCopy = options;
      }

      else
      {
        optionsCopy = options & 0xFFFFFFFFFFFFFFEFLL;
      }

      if ([v12 conformsToProtocol:&unk_1F475A968])
      {
        if ([v12 _findString:string options:optionsCopy])
        {
          goto LABEL_35;
        }
      }

      else
      {
        v14 = [v12 conformsToProtocol:&unk_1F475AC60];
        v15 = (optionsCopy >> 4) & 1;
        v16 = (optionsCopy & 1) == 0;
        if (v14)
        {
          if ([v12 searchFor:string direction:(optionsCopy & 8) == 0 caseSensitive:v16 wrap:v15 startInSelection:(optionsCopy >> 5) & 1])
          {
            goto LABEL_35;
          }
        }

        else if ([v12 searchFor:string direction:(optionsCopy & 8) == 0 caseSensitive:v16 wrap:v15])
        {
LABEL_35:
          if (v8 != _selectedOrMainFrame)
          {
            [_selectedOrMainFrame _clearSelection];
          }

          window = [(WebView *)self window];
          v18 = v12;
LABEL_43:
          [window makeFirstResponder:v18];
          LOBYTE(v4) = 1;
          return v4;
        }
      }

      if (v8 == v11)
      {
        goto LABEL_2;
      }
    }

    if (!v11)
    {
      break;
    }

    v8 = v11;
  }

  while (v11 != _selectedOrMainFrame);
  LOBYTE(v4) = 0;
  if ((options & 0x10) != 0 && v7)
  {
    if ([v7 conformsToProtocol:&unk_1F475A968])
    {
      if (([v7 _findString:string options:options] & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v19 = [v7 conformsToProtocol:&unk_1F475AC60];
      v20 = (options & 1) == 0;
      if (v19)
      {
        if (([v7 searchFor:string direction:(options & 8) == 0 caseSensitive:v20 wrap:1 startInSelection:(options >> 5) & 1] & 1) == 0)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v4 = [v7 searchFor:string direction:(options & 8) == 0 caseSensitive:v20 wrap:1];
        if (!v4)
        {
          return v4;
        }
      }
    }

    window = [(WebView *)self window];
    v18 = v7;
    goto LABEL_43;
  }

  return v4;
}

- (id)DOMRangeOfString:(id)string relativeTo:(id)to options:(unint64_t)options
{
  if (!self->_private->page.m_ptr)
  {
    return 0;
  }

  MEMORY[0x1CCA63A40](&v19, string);
  WebCore::makeSimpleRange();
  WebCore::Page::rangeOfString();
  result = kit();
  if (v22 == 1)
  {
    v7 = v21;
    v21 = 0;
    if (v7)
    {
      if (*(v7 + 7) == 2)
      {
        v9 = result;
        WebCore::Node::removedLastRef(v7);
        result = v9;
        v8 = v20;
        v20 = 0;
        if (!v8)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *(v7 + 7) -= 2;
    }

    v8 = v20;
    v20 = 0;
    if (!v8)
    {
      goto LABEL_15;
    }

LABEL_10:
    if (*(v8 + 7) == 2)
    {
      v10 = result;
      WebCore::Node::removedLastRef(v8);
      result = v10;
    }

    else
    {
      *(v8 + 7) -= 2;
    }
  }

LABEL_15:
  if (v18 != 1)
  {
    goto LABEL_25;
  }

  if (v17)
  {
    if (*(v17 + 7) == 2)
    {
      v12 = result;
      WebCore::Node::removedLastRef(v17);
      result = v12;
      v11 = v16;
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }

    *(v17 + 7) -= 2;
  }

  v11 = v16;
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (*(v11 + 7) == 2)
  {
    v13 = result;
    WebCore::Node::removedLastRef(v11);
    result = v13;
  }

  else
  {
    *(v11 + 7) -= 2;
  }

LABEL_25:
  v14 = v19;
  v19 = 0;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v15 = result;
      WTF::StringImpl::destroy(v14, v6);
      return v15;
    }
  }

  return result;
}

- (void)setTabKeyCyclesThroughElements:(BOOL)elements
{
  self->_private->tabKeyCyclesThroughElementsChanged = 1;
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    *(m_ptr + 298) = elements;
  }
}

- (BOOL)tabKeyCyclesThroughElements
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    LOBYTE(m_ptr) = *(m_ptr + 298);
  }

  return m_ptr & 1;
}

- (void)setScriptDebugDelegate:(id)delegate
{
  self->_private->scriptDebugDelegate = delegate;
  [(WebView *)self _cacheScriptDebugDelegateImplementations];
  if (delegate)
  {

    [(WebView *)self _attachScriptDebuggerToAllFrames];
  }

  else
  {

    [(WebView *)self _detachScriptDebuggerFromAllFrames];
  }
}

- (BOOL)shouldClose
{
  _mainCoreFrame = [(WebView *)self _mainCoreFrame];
  if (!_mainCoreFrame)
  {
    return 1;
  }

  v3 = _mainCoreFrame[26];

  return MEMORY[0x1EEE542C0](v3);
}

- (BOOL)canMarkAllTextMatches
{
  if (self->_private->closed)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    mainFrame = [(WebView *)self mainFrame];
    while (1)
    {
      documentView = [(WebFrameView *)[(WebFrame *)mainFrame frameView] documentView];
      if (documentView)
      {
        v2 = [(NSView *)documentView conformsToProtocol:&unk_1F475A8E8];
        if (!v2)
        {
          break;
        }
      }

      v5 = WebCore::FrameTree::traverseNext();
      if (v5)
      {
        if ((*(v5 + 136) & 1) == 0)
        {
          v6 = *(*(v5 + 208) + 16);
          if (((*(*v6 + 1032))(v6) & 1) == 0)
          {
            mainFrame = v6[3];
            if (mainFrame)
            {
              continue;
            }
          }
        }
      }

      LOBYTE(v2) = 1;
      return v2;
    }
  }

  return v2;
}

- (unint64_t)countMatchesForText:(id)text inDOMRange:(id)range options:(unint64_t)options highlight:(BOOL)highlight limit:(unint64_t)limit markMatches:(BOOL)matches
{
  if (self->_private->closed)
  {
    return 0;
  }

  matchesCopy = matches;
  highlightCopy = highlight;
  mainFrame = [(WebView *)self mainFrame];
  v16 = limit - 1;
  LODWORD(v17) = 0;
  if (matchesCopy)
  {
    if (limit)
    {
      do
      {
        documentView = [(WebFrameView *)[(WebFrame *)mainFrame frameView] documentView];
        if ([(NSView *)documentView conformsToProtocol:&unk_1F475A8E8])
        {
          [(NSView *)documentView setMarkedTextMatchesAreHighlighted:highlightCopy];
          v17 = v17 + [(NSView *)documentView countMatchesForText:text inDOMRange:range options:options limit:limit - v17 markMatches:1];
          if (v16 < v17)
          {
            break;
          }
        }

        v19 = WebCore::FrameTree::traverseNext();
        if (!v19)
        {
          break;
        }

        if (*(v19 + 136))
        {
          break;
        }

        v20 = *(*(v19 + 208) + 16);
        if ((*(*v20 + 1032))(v20))
        {
          break;
        }

        mainFrame = v20[3];
      }

      while (mainFrame);
    }

    else
    {
      do
      {
        documentView2 = [(WebFrameView *)[(WebFrame *)mainFrame frameView] documentView];
        if ([(NSView *)documentView2 conformsToProtocol:&unk_1F475A8E8])
        {
          [(NSView *)documentView2 setMarkedTextMatchesAreHighlighted:highlightCopy];
          v17 = v17 + [(NSView *)documentView2 countMatchesForText:text inDOMRange:range options:options limit:0 markMatches:1];
          if (v16 < v17)
          {
            break;
          }
        }

        v25 = WebCore::FrameTree::traverseNext();
        if (!v25)
        {
          break;
        }

        if (*(v25 + 136))
        {
          break;
        }

        v26 = *(*(v25 + 208) + 16);
        if ((*(*v26 + 1032))(v26))
        {
          break;
        }

        mainFrame = v26[3];
      }

      while (mainFrame);
    }
  }

  else if (limit)
  {
    do
    {
      documentView3 = [(WebFrameView *)[(WebFrame *)mainFrame frameView] documentView];
      if ([(NSView *)documentView3 conformsToProtocol:&unk_1F475A8E8])
      {
        v17 = v17 + [(NSView *)documentView3 countMatchesForText:text inDOMRange:range options:options limit:limit - v17 markMatches:0];
        if (v16 < v17)
        {
          break;
        }
      }

      v22 = WebCore::FrameTree::traverseNext();
      if (!v22)
      {
        break;
      }

      if (*(v22 + 136))
      {
        break;
      }

      v23 = *(*(v22 + 208) + 16);
      if ((*(*v23 + 1032))(v23))
      {
        break;
      }

      mainFrame = v23[3];
    }

    while (mainFrame);
  }

  else
  {
    do
    {
      documentView4 = [(WebFrameView *)[(WebFrame *)mainFrame frameView] documentView];
      if ([(NSView *)documentView4 conformsToProtocol:&unk_1F475A8E8])
      {
        v17 = v17 + [(NSView *)documentView4 countMatchesForText:text inDOMRange:range options:options limit:0 markMatches:0];
        if (v16 < v17)
        {
          break;
        }
      }

      v28 = WebCore::FrameTree::traverseNext();
      if (!v28)
      {
        break;
      }

      if (*(v28 + 136))
      {
        break;
      }

      v29 = *(*(v28 + 208) + 16);
      if ((*(*v29 + 1032))(v29))
      {
        break;
      }

      mainFrame = v29[3];
    }

    while (mainFrame);
  }

  return v17;
}

- (void)unmarkAllTextMatches
{
  if (!self->_private->closed)
  {
    mainFrame = [(WebView *)self mainFrame];
    do
    {
      documentView = [(WebFrameView *)[(WebFrame *)mainFrame frameView] documentView];
      if ([(NSView *)documentView conformsToProtocol:&unk_1F475A8E8])
      {
        [(NSView *)documentView unmarkAllTextMatches];
      }

      v4 = WebCore::FrameTree::traverseNext();
      if (!v4)
      {
        break;
      }

      if (*(v4 + 136))
      {
        break;
      }

      v5 = *(*(v4 + 208) + 16);
      if ((*(*v5 + 1032))(v5))
      {
        break;
      }

      mainFrame = v5[3];
    }

    while (mainFrame);
  }
}

- (id)rectsForTextMatches
{
  v32 = *MEMORY[0x1E69E9840];
  if (self->_private->closed)
  {
    return MEMORY[0x1E695E0F0];
  }

  array = [MEMORY[0x1E695DF70] array];
  mainFrame = [(WebView *)self mainFrame];
  do
  {
    documentView = [(WebFrameView *)[(WebFrame *)mainFrame frameView] documentView];
    if ([(NSView *)documentView conformsToProtocol:&unk_1F475A8E8])
    {
      [(NSView *)documentView visibleRect];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      rectsForTextMatches = [(NSView *)documentView rectsForTextMatches];
      v16 = [rectsForTextMatches countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v28;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(rectsForTextMatches);
            }

            [*(*(&v27 + 1) + 8 * i) rectValue];
            v35.origin.x = v8;
            v35.origin.y = v10;
            v35.size.width = v12;
            v35.size.height = v14;
            v34 = NSIntersectionRect(v33, v35);
            x = v34.origin.x;
            y = v34.origin.y;
            width = v34.size.width;
            height = v34.size.height;
            if (!NSIsEmptyRect(v34))
            {
              v24 = objc_autoreleasePoolPush();
              [(NSView *)documentView convertRect:self toView:x, y, width, height];
              [array addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRect:")}];
              objc_autoreleasePoolPop(v24);
            }
          }

          v17 = [rectsForTextMatches countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v17);
      }
    }

    v25 = WebCore::FrameTree::traverseNext();
    if (!v25)
    {
      break;
    }

    if (*(v25 + 136))
    {
      break;
    }

    v26 = *(*(v25 + 208) + 16);
    if ((*(*v26 + 1032))(v26))
    {
      break;
    }

    mainFrame = v26[3];
  }

  while (mainFrame);
  return array;
}

- (void)scrollDOMRangeToVisible:(id)visible
{
  v4 = [objc_msgSend(objc_msgSend(visible "startContainer")];

  [v4 _scrollDOMRangeToVisible:visible];
}

- (void)scrollDOMRangeToVisible:(id)visible withInset:(double)inset
{
  v6 = [objc_msgSend(objc_msgSend(visible "startContainer")];

  [v6 _scrollDOMRangeToVisible:visible withInset:inset];
}

- (float)pageSizeMultiplier
{
  _realZoomMultiplierIsTextOnly = [(WebView *)self _realZoomMultiplierIsTextOnly];
  result = 1.0;
  if (!_realZoomMultiplierIsTextOnly)
  {
    return self->_private->zoomMultiplier;
  }

  return result;
}

- (void)setMediaVolume:(float)volume
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    MEMORY[0x1EEE5A588](m_ptr, a2, volume);
  }
}

- (float)mediaVolume
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    return *(m_ptr + 77);
  }

  else
  {
    return 0.0;
  }
}

- (void)suspendAllMediaPlayback
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    MEMORY[0x1EEE5A740](m_ptr, a2);
  }
}

- (void)resumeAllMediaPlayback
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    MEMORY[0x1EEE5A700](m_ptr, a2);
  }
}

- (void)addVisitedLinks:(id)links
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(self->_private->group.m_ptr + 6);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [links countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(links);
        }

        WebVisitedLinkStore::addVisitedLink(v4, *(*(&v9 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [links countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeVisitedLink:(id)link
{
  v3 = *(self->_private->group.m_ptr + 6);
  MEMORY[0x1CCA63960](&v10, link);
  v4 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v11, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v11 = &stru_1F472E7E8;
    v9 = &stru_1F472E7E8;
  }

  WebVisitedLinkStore::removeVisitedLink(v3, &v11->isa);
  p_isa = &v11->isa;
  v11 = 0;
  if (p_isa)
  {
  }

  v8 = v10;
  v10 = 0;
  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }
  }
}

- (DOMCSSStyleDeclaration)computedStyleForElement:(DOMElement *)element pseudoElement:(NSString *)pseudoElement
{
  if (pseudoElement)
  {
    v5 = pseudoElement;
  }

  else
  {
    v5 = &stru_1F472E7E8;
  }

  ownerDocument = [(DOMNode *)element ownerDocument];

  return [(DOMDocument *)ownerDocument getComputedStyle:element pseudoElement:v5];
}

- (DOMRange)editableDOMRangeForPoint:(NSPoint)point
{
  if (self)
  {
    y = point.y;
    x = point.x;
    selfCopy = self;
    [(DOMRange *)self page];
    if (!v17)
    {
      return 0;
    }

    self = 0;
    v6 = *(v17 + 22);
    if (v6)
    {
      if ((*(v6 + 136) & 1) == 0)
      {
        v7 = *(v6 + 224);
        if (v7)
        {
          *(v7 + 7) += 2;
        }

        v8 = WebCore::Document::editor(v7);
        if (v7)
        {
          if (*(v7 + 7) == 2)
          {
            WebCore::Node::removedLastRef(v7);
          }

          else
          {
            *(v7 + 7) -= 2;
          }
        }

        [(DOMRange *)selfCopy convertPoint:0 toView:x, y];
        v15.x = v9;
        v15.y = v10;
        WebCore::IntPoint::IntPoint(&v16, &v15);
        WebCore::Editor::rangeForPoint(&v17, v8, &v16);
        self = kit();
        if (v19 == 1)
        {
          v11 = v18;
          v18 = 0;
          if (v11)
          {
            if (*(v11 + 7) == 2)
            {
              selfCopy2 = self;
              WebCore::Node::removedLastRef(v11);
              self = selfCopy2;
              v12 = v17;
              v17 = 0;
              if (!v12)
              {
                return self;
              }

              goto LABEL_18;
            }

            *(v11 + 7) -= 2;
          }

          v12 = v17;
          v17 = 0;
          if (!v12)
          {
            return self;
          }

LABEL_18:
          if (*(v12 + 7) == 2)
          {
            selfCopy3 = self;
            WebCore::Node::removedLastRef(v12);
            return selfCopy3;
          }

          else
          {
            *(v12 + 7) -= 2;
          }
        }
      }
    }
  }

  return self;
}

- (BOOL)_shouldChangeSelectedDOMRange:(id)range toDOMRange:(id)mRange affinity:(unint64_t)affinity stillSelecting:(BOOL)selecting
{
  selectingCopy = selecting;
  _editingDelegateForwarder = [(WebView *)self _editingDelegateForwarder];

  return [_editingDelegateForwarder webView:self shouldChangeSelectedDOMRange:range toDOMRange:mRange affinity:affinity stillSelecting:selectingCopy];
}

- (void)setSelectedDOMRange:(DOMRange *)range affinity:(NSSelectionAffinity)selectionAffinity
{
  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];
  if (_selectedOrMainFrame)
  {
    v6 = *(_selectedOrMainFrame[1] + 8);
    if (v6)
    {
      if (range)
      {
        v7 = *(*(*([(DOMRange *)range startContainer][16] + 48) + 8) + 552);
        if (v7 && *(v7 + 8))
        {
          WebCore::makeSimpleRange();
          WebCore::FrameSelection::setSelectedRange();
          if (v10)
          {
            if (*(v10 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v10);
            }

            else
            {
              *(v10 + 7) -= 2;
            }
          }

          if (v9)
          {
            if (*(v9 + 7) == 2)
            {
              WebCore::Node::removedLastRef(v9);
            }

            else
            {
              *(v9 + 7) -= 2;
            }
          }
        }
      }

      else
      {
        v8 = *(*(v6 + 224) + 3208);

        MEMORY[0x1EEE55630](v8);
      }
    }
  }
}

- (DOMRange)selectedDOMRange
{
  result = [(WebView *)self _selectedOrMainFrame];
  if (result)
  {
    v3 = *(result->super.super._private + 1);
    if (!v3)
    {
      return 0;
    }

    WebCore::VisibleSelection::toNormalizedRange(&v8, (*(*(v3 + 224) + 3208) + 56));
    result = kit();
    if (v10 == 1)
    {
      v4 = v9;
      v9 = 0;
      if (v4)
      {
        if (*(v4 + 7) == 2)
        {
          v6 = result;
          WebCore::Node::removedLastRef(v4);
          result = v6;
          v5 = v8;
          v8 = 0;
          if (!v5)
          {
            return result;
          }

          goto LABEL_8;
        }

        *(v4 + 7) -= 2;
      }

      v5 = v8;
      v8 = 0;
      if (!v5)
      {
        return result;
      }

LABEL_8:
      if (*(v5 + 7) == 2)
      {
        v7 = result;
        WebCore::Node::removedLastRef(v5);
        return v7;
      }

      else
      {
        *(v5 + 7) -= 2;
      }
    }
  }

  return result;
}

- (NSSelectionAffinity)selectionAffinity
{
  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];
  if (_selectedOrMainFrame && (v3 = *(_selectedOrMainFrame[1] + 8)) != 0)
  {
    return *(*(*(v3 + 224) + 3208) + 152);
  }

  else
  {
    return 1;
  }
}

- (void)setEditable:(BOOL)editable
{
  v3 = editable;
  if ([(WebView *)self isEditable]!= editable)
  {
    m_ptr = self->_private->page.m_ptr;
    if (m_ptr)
    {
      WebCore::Page::setEditable(m_ptr);
      v6 = self->_private;
      if (!v6->tabKeyCyclesThroughElementsChanged)
      {
        *(v6->page.m_ptr + 298) = !v3;
      }

      _mainCoreFrame = [(WebView *)self _mainCoreFrame];
      if (_mainCoreFrame)
      {
        if (v3)
        {
          v8 = _mainCoreFrame;
          v9 = _mainCoreFrame[28];
          if (v9)
          {
            *(v9 + 7) += 2;
          }

          v10 = WebCore::Document::editor(v9);
          if (v9)
          {
            if (*(v9 + 7) == 2)
            {
              v12 = v10;
              WebCore::Node::removedLastRef(v9);
              WebCore::Editor::applyEditingStyleToBodyElement(v12);
              if ([(WebView *)self selectedDOMRange])
              {
                return;
              }

              goto LABEL_15;
            }

            *(v9 + 7) -= 2;
          }

          WebCore::Editor::applyEditingStyleToBodyElement(v10);
          if ([(WebView *)self selectedDOMRange])
          {
            return;
          }

LABEL_15:
          v13 = *(v8[28] + 3208);

          MEMORY[0x1EEE555F0](v13, v11);
        }
      }
    }
  }
}

- (BOOL)isEditable
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    LOBYTE(m_ptr) = *(m_ptr + 648);
  }

  return m_ptr & 1;
}

- (void)setTypingStyle:(DOMCSSStyleDeclaration *)typingStyle
{
  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];

  [_selectedOrMainFrame _setTypingStyle:typingStyle withUndoAction:59];
}

- (DOMCSSStyleDeclaration)typingStyle
{
  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];

  return [_selectedOrMainFrame _typingStyle];
}

- (void)setSmartInsertDeleteEnabled:(BOOL)smartInsertDeleteEnabled
{
  v3 = *(self->_private->page.m_ptr + 15);
  v4 = *(v3 + 720);
  if (((v4 >> 4) & 1) != smartInsertDeleteEnabled)
  {
    v5 = 16;
    if (!smartInsertDeleteEnabled)
    {
      v5 = 0;
    }

    *(v3 + 720) = v4 & 0xFFFFFFFFFFFFFFEFLL | v5;
    v7 = smartInsertDeleteEnabled;
    [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];

    [(WebView *)self setSelectTrailingWhitespaceEnabled:!v7];
  }
}

- (void)setContinuousSpellCheckingEnabled:(BOOL)continuousSpellCheckingEnabled
{
  if (byte_1ED6A6133 != continuousSpellCheckingEnabled)
  {
    byte_1ED6A6133 = continuousSpellCheckingEnabled;
    if ([(WebView *)self isContinuousSpellCheckingEnabled])
    {
      v4 = objc_opt_class();

      [v4 _preflightSpellChecker];
    }

    else
    {
      mainFrame = [(WebView *)self mainFrame];

      [(WebFrame *)mainFrame _unmarkAllMisspellings];
    }
  }
}

- (NSUndoManager)undoManager
{
  if (!self->_private->allowsUndo)
  {
    return 0;
  }

  _editingDelegateForwarder = [(WebView *)self _editingDelegateForwarder];

  return [_editingDelegateForwarder undoManagerForWebView:self];
}

- (void)registerForEditingDelegateNotification:(id)notification selector:(SEL)selector
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  if (objc_opt_respondsToSelector())
  {
    editingDelegate = self->_private->editingDelegate;

    [defaultCenter addObserver:editingDelegate selector:selector name:notification object:self];
  }
}

- (void)setEditingDelegate:(id)editingDelegate
{
  if (self->_private->editingDelegate != editingDelegate)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_private->editingDelegate name:@"WebViewDidBeginEditingNotification" object:self];
    [defaultCenter removeObserver:self->_private->editingDelegate name:@"WebViewDidChangeNotification" object:self];
    [defaultCenter removeObserver:self->_private->editingDelegate name:@"WebViewDidEndEditingNotification" object:self];
    [defaultCenter removeObserver:self->_private->editingDelegate name:@"WebViewDidChangeTypingStyleNotification" object:self];
    [defaultCenter removeObserver:self->_private->editingDelegate name:@"WebViewDidChangeSelectionNotification" object:self];
    self->_private->editingDelegate = editingDelegate;
    v6 = self->_private;
    m_ptr = v6->editingDelegateForwarder.m_ptr;
    v6->editingDelegateForwarder.m_ptr = 0;
    if (m_ptr)
    {
    }

    [(WebView *)self registerForEditingDelegateNotification:@"WebViewDidBeginEditingNotification" selector:sel_webViewDidBeginEditing_];
    [(WebView *)self registerForEditingDelegateNotification:@"WebViewDidChangeNotification" selector:sel_webViewDidChange_];
    [(WebView *)self registerForEditingDelegateNotification:@"WebViewDidEndEditingNotification" selector:sel_webViewDidEndEditing_];
    [(WebView *)self registerForEditingDelegateNotification:@"WebViewDidChangeTypingStyleNotification" selector:sel_webViewDidChangeTypingStyle_];

    [(WebView *)self registerForEditingDelegateNotification:@"WebViewDidChangeSelectionNotification" selector:sel_webViewDidChangeSelection_];
  }
}

- (DOMCSSStyleDeclaration)styleDeclarationWithText:(NSString *)text
{
  v4 = [objc_msgSend(-[WebView _selectedOrMainFrame](self "_selectedOrMainFrame")];
  [(DOMCSSStyleDeclaration *)v4 setCssText:text];
  return v4;
}

- (void)replaceSelectionWithNode:(DOMNode *)node
{
  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];

  [_selectedOrMainFrame _replaceSelectionWithNode:node selectReplacement:1 smartReplace:0 matchStyle:0];
}

- (void)replaceSelectionWithText:(NSString *)text
{
  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];

  [_selectedOrMainFrame _replaceSelectionWithText:text selectReplacement:1 smartReplace:0];
}

- (void)replaceSelectionWithMarkupString:(NSString *)markupString
{
  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];

  [_selectedOrMainFrame _replaceSelectionWithMarkupString:markupString baseURLString:0 selectReplacement:1 smartReplace:0];
}

- (void)replaceSelectionWithArchive:(WebArchive *)archive
{
  v4 = [-[WebView _selectedOrMainFrame](self "_selectedOrMainFrame")];

  [v4 _replaceSelectionWithArchive:archive selectReplacement:1];
}

- (void)deleteSelection
{
  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];
  if (_selectedOrMainFrame)
  {
    v3 = _selectedOrMainFrame;
    v4 = *(_selectedOrMainFrame[1] + 8);
    if (v4)
    {
      v5 = *(v4 + 224);
      if (v5)
      {
        *(v5 + 7) += 2;
      }

      v6 = WebCore::Document::editor(v5);
      if (v5)
      {
        if (*(v5 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v5);
        }

        else
        {
          *(v5 + 7) -= 2;
        }
      }

      v7 = [objc_msgSend(objc_msgSend(v3 "frameView")];

      MEMORY[0x1EEE5AD28](v6, v7, 9);
    }
  }
}

- (void)applyStyle:(DOMCSSStyleDeclaration *)style
{
  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];
  if (_selectedOrMainFrame)
  {
    if (style)
    {
      v5 = *(_selectedOrMainFrame[1] + 8);
      if (v5)
      {
        internal = style->super._internal;
        if (internal)
        {
          if (!(*(*internal + 32))(internal))
          {
            (**internal)(internal);
            (*(*internal + 184))(&v11, internal);
            v7 = *(v5 + 224);
            if (v7)
            {
              *(v7 + 7) += 2;
            }

            WebCore::Document::editor(v7);
            if (v7)
            {
              if (*(v7 + 7) == 2)
              {
                WebCore::Node::removedLastRef(v7);
              }

              else
              {
                *(v7 + 7) -= 2;
              }
            }

            WebCore::Editor::applyStyle();
            v8 = v11;
            v11 = 0;
            if (v8)
            {
              if (*v8 == 1)
              {
                WebCore::MutableStyleProperties::~MutableStyleProperties(v8);
                WTF::fastFree(v9, v10);
              }

              else
              {
                --*v8;
              }
            }

            (*(*internal + 8))(internal);
          }
        }
      }
    }
  }
}

- (void)_performResponderOperation:(SEL)operation with:(id)with
{
  if ([WebView(WebViewEditingActions) _performResponderOperation:with:]::reentered == 1)
  {
    nextResponder = [(WAKResponder *)self nextResponder];

    [nextResponder tryToPerform:operation with:with];
  }

  else
  {
    _responderForResponderOperations = [(WebView *)self _responderForResponderOperations];
    [WebView(WebViewEditingActions) _performResponderOperation:with:]::reentered = 1;
    [_responderForResponderOperations tryToPerform:operation with:with];
    [WebView(WebViewEditingActions) _performResponderOperation:with:]::reentered = 0;
  }
}

- (void)insertDictationPhrases:(id)phrases metadata:(id)metadata
{
  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];
  if (_selectedOrMainFrame)
  {
    v6 = *(_selectedOrMainFrame[1] + 8);
    if (v6)
    {
      v7 = *(v6 + 224);
      if (v7)
      {
        *(v7 + 7) += 2;
      }

      WebCore::Document::editor(v7);
      if (v7)
      {
        if (*(v7 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v7);
        }

        else
        {
          *(v7 + 7) -= 2;
        }
      }

      vectorForDictationPhrasesArray(phrases, &v15);
      WebCore::Editor::insertDictationPhrases();
      v9 = v15;
      if (v17)
      {
        v10 = (v15 + 16 * v17);
        do
        {
          v11 = *(v9 + 3);
          v12 = *v9;
          if (v11)
          {
            v13 = 8 * v11;
            do
            {
              v14 = *v12;
              *v12 = 0;
              if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v14, v8);
              }

              v12 = (v12 + 8);
              v13 -= 8;
            }

            while (v13);
            v12 = *v9;
          }

          if (v12)
          {
            *v9 = 0;
            *(v9 + 2) = 0;
            WTF::fastFree(v12, v8);
          }

          v9 = (v9 + 16);
        }

        while (v9 != v10);
        v9 = v15;
      }

      if (v9)
      {
        v15 = 0;
        v16 = 0;
        WTF::fastFree(v9, v8);
      }
    }
  }
}

- (id)typingAttributes
{
  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];
  if (!_selectedOrMainFrame)
  {
    return 0;
  }

  v3 = *(_selectedOrMainFrame[1] + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 224);
  if (v4)
  {
    *(v4 + 7) += 2;
  }

  v5 = WebCore::Document::editor(v4);
  if (v4)
  {
    if (*(v4 + 7) == 2)
    {
      v7 = v5;
      WebCore::Node::removedLastRef(v4);
      v5 = v7;
    }

    else
    {
      *(v4 + 7) -= 2;
    }
  }

  WebCore::Editor::fontAttributesAtSelectionStart(v12, v5);
  WebCore::FontAttributes::createDictionary(&v13, v12);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    v10 = v9;
    v11 = v13;
    v13 = 0;
    if (v11)
    {
    }
  }

  WebCore::FontAttributes::~FontAttributes(v12, v8);
  return v9;
}

- (void)_insertNewlineInQuotedContent
{
  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];

  [_selectedOrMainFrame _insertParagraphSeparatorInQuotedContent];
}

- (void)_replaceSelectionWithNode:(id)node matchStyle:(BOOL)style
{
  styleCopy = style;
  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];

  [_selectedOrMainFrame _replaceSelectionWithNode:node selectReplacement:1 smartReplace:0 matchStyle:styleCopy];
}

- (BOOL)_selectionIsCaret
{
  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];
  if (_selectedOrMainFrame)
  {
    v3 = *(_selectedOrMainFrame[1] + 8);
    if (v3)
    {
      LOBYTE(_selectedOrMainFrame) = *(*(*(v3 + 224) + 3208) + 153) == 1;
    }

    else
    {
      LOBYTE(_selectedOrMainFrame) = 0;
    }
  }

  return _selectedOrMainFrame;
}

- (BOOL)_selectionIsAll
{
  _selectedOrMainFrame = [(WebView *)self _selectedOrMainFrame];
  if (!_selectedOrMainFrame)
  {
    return 0;
  }

  v3 = *(_selectedOrMainFrame[1] + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(*(v3 + 224) + 3208) + 56;

  return MEMORY[0x1EEE5D110](v4, 0);
}

- (void)_simplifyMarkup:(id)markup endNode:(id)node
{
  mainFrame = [(WebView *)self mainFrame];
  if (!mainFrame)
  {
    return;
  }

  if (!markup)
  {
    return;
  }

  m_ptr = mainFrame->_private->coreFrame.m_ptr;
  if (!m_ptr)
  {
    return;
  }

  v8 = *(markup + 2);
  v9 = *(*(v8 + 48) + 8);
  v10 = *(m_ptr + 28);
  if (v9 != v10)
  {
    return;
  }

  if (v9)
  {
    *(v10 + 7) += 2;
  }

  v11 = WebCore::Document::editor(v10);
  if (v9)
  {
    if (*(v10 + 7) == 2)
    {
      v13 = v11;
      WebCore::Node::removedLastRef(v10);
      v11 = v13;
      if (node)
      {
        goto LABEL_12;
      }

LABEL_14:
      v12 = 0;
      goto LABEL_15;
    }

    *(v10 + 7) -= 2;
  }

  if (!node)
  {
    goto LABEL_14;
  }

LABEL_12:
  v12 = *(node + 2);
LABEL_15:

  MEMORY[0x1EEE5AC18](v11, v8, v12);
}

+ (void)_setCacheModel:(unint64_t)model
{
  if (byte_1ED6A6134 == 1 && qword_1ED6A6148 == model)
  {
    return;
  }

  [objc_msgSend(MEMORY[0x1E695AC38] "sharedURLCache")];
  v5 = _CFURLCacheCopyCacheDirectory();
  if (!v5)
  {
    v5 = NSHomeDirectory();
    if (v5)
    {
      v6 = v5;
      CFRetain(v5);
      v5 = v6;
    }
  }

  cf = v5;
  if ((byte_1ED6A6135 & 1) == 0)
  {
    qword_1ED6A6150 = WTF::ramSize(v5) >> 20;
    byte_1ED6A6135 = 1;
  }

  v7 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  v8 = [objc_msgSend(v7 objectForKey:{*MEMORY[0x1E696A3C0]), "unsignedLongLongValue"}];
  mEMORY[0x1E695AC38] = [MEMORY[0x1E695AC38] sharedURLCache];
  v10 = mEMORY[0x1E695AC38];
  v11 = 0;
  if (model)
  {
    if (model != 1)
    {
      if (model == 2)
      {
        if (qword_1ED6A6150 <= 0x3FF)
        {
          v17 = 0x800000;
        }

        else
        {
          v17 = 0x1000000;
        }

        if (v8 >> 27 <= 0x7C)
        {
          if (v8 >> 26 <= 0x7C)
          {
            if (v8 >> 25 <= 0x7C)
            {
              if (v8 >> 24 <= 0x7C)
              {
                if (v8 >> 23 <= 0x7C)
                {
                  diskCapacity = 52428800;
                }

                else
                {
                  diskCapacity = 78643200;
                }
              }

              else
              {
                diskCapacity = 104857600;
              }
            }

            else
            {
              diskCapacity = 131072000;
            }
          }

          else
          {
            diskCapacity = 157286400;
          }
        }

        else
        {
          diskCapacity = 183500800;
        }

        if (qword_1ED6A6150 <= 0x3FF)
        {
          v13 = 25165824;
        }

        else
        {
          v13 = 50331648;
        }

        v11 = 0x404E000000000000;
      }

      else
      {
        v17 = 0;
        diskCapacity = 0;
        v13 = 0;
      }

      goto LABEL_53;
    }

    v12 = qword_1ED6A6150;
    if (qword_1ED6A6150 <= 0xFFF && qword_1ED6A6150 <= 0x7FF)
    {
      if (qword_1ED6A6150 <= 0x3FF)
      {
        if (qword_1ED6A6150 <= 0x1FF)
        {
          v17 = 0x80000;
        }

        else
        {
          v17 = 0x100000;
        }
      }

      else
      {
        v17 = 0x200000;
      }
    }

    else
    {
      v17 = 0x400000;
    }

    v14 = 41943040;
    v15 = 20971520;
    if (v8 >> 25 > 0x7C)
    {
      v15 = 31457280;
    }

    if (v8 >> 26 <= 0x7C)
    {
      v14 = v15;
    }

    if (v8 >> 27 <= 0x7C)
    {
      diskCapacity = v14;
    }

    else
    {
      diskCapacity = 52428800;
    }
  }

  else
  {
    diskCapacity = [mEMORY[0x1E695AC38] diskCapacity];
    v17 = 0;
    v12 = qword_1ED6A6150;
  }

  if (v12 <= 0x3FF)
  {
    v13 = 12582912;
  }

  else
  {
    v13 = 25165824;
  }

LABEL_53:
  diskCapacity2 = [v10 diskCapacity];
  if (diskCapacity <= diskCapacity2)
  {
    diskCapacity = diskCapacity2;
  }

  v19 = WebCore::MemoryCache::singleton(diskCapacity2);
  v20 = WebCore::MemoryCache::setCapacities(v19);
  *(v19 + 2) = v11;
  v21 = WebCore::BackForwardCache::singleton(v20);
  WebCore::BackForwardCache::setMaxSize(v21);
  memoryCapacity = [v10 memoryCapacity];
  if (v17 <= memoryCapacity)
  {
    v17 = memoryCapacity;
  }

  if ([v10 _CFURLCache])
  {
    CFURLCacheSetMemoryCapacity();
  }

  else
  {
    [v10 setMemoryCapacity:v17];
  }

  [v10 setDiskCapacity:diskCapacity];
  [WebView _setTileCacheLayerPoolCapacity:v13];
  qword_1ED6A6148 = model;
  byte_1ED6A6134 = 1;
  if (cf)
  {

    CFRelease(cf);
  }
}

- (void)_addObject:(id)object forIdentifier:(unint64_t)identifier
{
  v6 = self->_private;
  m_table = v6->identifierMap.m_impl.m_table;
  if (!m_table || !*(m_table - 3))
  {
    CFRetain(self);
    v6 = self->_private;
  }

  if (identifier == -1 || !identifier)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7A9EA60);
  }

  p_identifierMap = &v6->identifierMap;
  v10 = v6->identifierMap.m_impl.m_table;
  if (!v10)
  {
    WTF::HashTable<unsigned long,WTF::KeyValuePair<unsigned long,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<unsigned long>,WTF::HashMap<unsigned long,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<unsigned long>,WTF::HashTraits<unsigned long>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long>,WTF::FastMalloc>::rehash(p_identifierMap, 8u);
    v10 = *p_identifierMap;
  }

  v11 = *(v10 - 8);
  v12 = (~(identifier << 32) + identifier) ^ ((~(identifier << 32) + identifier) >> 22);
  v13 = 9 * ((v12 + ~(v12 << 13)) ^ ((v12 + ~(v12 << 13)) >> 8));
  v14 = (v13 ^ (v13 >> 15)) + ~((v13 ^ (v13 >> 15)) << 27);
  v15 = v11 & ((v14 >> 31) ^ v14);
  v16 = (v10 + 16 * v15);
  v17 = *v16;
  if (!*v16)
  {
LABEL_16:
    *v16 = identifier;
    if (object)
    {
      objectCopy = object;
    }

    v21 = v16[1];
    v16[1] = object;
    if (v21)
    {
    }

    v22 = *p_identifierMap;
    if (*p_identifierMap)
    {
      v23 = *(v22 - 16);
      v24 = *(v22 - 12) + 1;
      *(v22 - 12) = v24;
      v25 = (v23 + v24);
      v26 = *(v22 - 4);
      if (v26 <= 0x400)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v24 = 1;
      MEMORY[0xFFFFFFFFFFFFFFF4] = 1;
      v25 = (MEMORY[0xFFFFFFFFFFFFFFF0] + 1);
      v26 = MEMORY[0xFFFFFFFFFFFFFFFC];
      if (MEMORY[0xFFFFFFFFFFFFFFFC] <= 0x400u)
      {
LABEL_22:
        if (3 * v26 > 4 * v25)
        {
          return;
        }

        if (!v26)
        {
          v27 = 8;
LABEL_35:

          WTF::HashTable<unsigned long,WTF::KeyValuePair<unsigned long,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<unsigned long>,WTF::HashMap<unsigned long,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<unsigned long>,WTF::HashTraits<unsigned long>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long>,WTF::FastMalloc>::rehash(p_identifierMap, v27);
          return;
        }

LABEL_34:
        v27 = v26 << (6 * v24 >= (2 * v26));
        goto LABEL_35;
      }
    }

    if (v26 > 2 * v25)
    {
      return;
    }

    goto LABEL_34;
  }

  v18 = 0;
  v19 = 1;
  while (v17 != identifier)
  {
    if (v17 == -1)
    {
      v18 = v16;
    }

    v15 = (v15 + v19) & v11;
    v16 = (v10 + 16 * v15);
    v17 = *v16;
    ++v19;
    if (!*v16)
    {
      if (v18)
      {
        *v18 = 0;
        v18[1] = 0;
        --*(*p_identifierMap - 16);
        v16 = v18;
      }

      goto LABEL_16;
    }
  }

  if (object)
  {
    objectCopy2 = object;
  }

  v29 = v16[1];
  v16[1] = object;
  if (v29)
  {
  }
}

- (id)_objectForIdentifier:(unint64_t)identifier
{
  if (identifier == -1 || !identifier)
  {
    __break(0xC471u);
    JUMPOUT(0x1C7A9EB78);
  }

  m_table = self->_private->identifierMap.m_impl.m_table;
  if (!m_table)
  {
    return 0;
  }

  v4 = *(m_table - 2);
  v5 = (~(identifier << 32) + identifier) ^ ((~(identifier << 32) + identifier) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *&m_table[4 * v8];
  if (v9 != identifier)
  {
    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *&m_table[4 * v8];
      ++v10;
      if (v9 == identifier)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v11 = *&m_table[4 * v8 + 2];
  if (v11)
  {
    v12 = v11;
  }

  return v11;
}

- (void)_removeObjectForIdentifier:(unint64_t)identifier
{
  v3 = self->_private;
  m_table = v3->identifierMap.m_impl.m_table;
  if (m_table)
  {
    if (identifier == -1 || !identifier)
    {
      __break(0xC471u);
      JUMPOUT(0x1C7A9ED30);
    }

    v5 = *(m_table - 2);
    v6 = (~(identifier << 32) + identifier) ^ ((~(identifier << 32) + identifier) >> 22);
    v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
    v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
    v9 = v5 & ((v8 >> 31) ^ v8);
    v10 = *&m_table[4 * v9];
    if (v10 == identifier)
    {
LABEL_8:
      if (v9 != *(m_table - 1))
      {
        p_identifierMap = &v3->identifierMap;
        v13 = &m_table[4 * v9];
        v14 = v13[1];
        *v13 = -1;
        v13[1] = 0;
        if (v14)
        {
          selfCopy = self;

          self = selfCopy;
        }

        v16 = *p_identifierMap;
        v17 = vadd_s32(*(*p_identifierMap - 16), 0xFFFFFFFF00000001);
        *(v16 - 16) = v17;
        v18 = *(v16 - 4);
        if (6 * v17.i32[1] < v18 && v18 >= 9)
        {
          selfCopy2 = self;
          WTF::HashTable<unsigned long,WTF::KeyValuePair<unsigned long,WTF::RetainPtr<objc_object *>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long,WTF::RetainPtr<objc_object *>>>,WTF::DefaultHash<unsigned long>,WTF::HashMap<unsigned long,WTF::RetainPtr<objc_object *>,WTF::DefaultHash<unsigned long>,WTF::HashTraits<unsigned long>,WTF::HashTraits<WTF::RetainPtr<objc_object *>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long>,WTF::FastMalloc>::rehash(p_identifierMap, v18 >> 1);
          self = selfCopy2;
        }
      }
    }

    else
    {
      v11 = 1;
      while (v10)
      {
        v9 = (v9 + v11) & v5;
        v10 = *&m_table[4 * v9];
        ++v11;
        if (v10 == identifier)
        {
          goto LABEL_8;
        }
      }
    }
  }

  v21 = self->_private->identifierMap.m_impl.m_table;
  if (!v21 || !*(v21 - 3))
  {

    selfCopy3 = self;
  }
}

- (void)_retrieveKeyboardUIModeFromPreferences:(id)preferences
{
  v4 = *MEMORY[0x1E695E8A8];
  CFPreferencesAppSynchronize(*MEMORY[0x1E695E8A8]);
  keyExistsAndHasValidFormat = 0;
  self->_private->_keyboardUIMode = (CFPreferencesGetAppIntegerValue(@"AppleKeyboardUIMode", v4, &keyExistsAndHasValidFormat) >> 1) & 1;
}

- (int)_keyboardUIMode
{
  v2 = self->_private;
  if (!v2->_keyboardUIModeAccessed)
  {
    v2->_keyboardUIModeAccessed = 1;
    [(WebView *)self _retrieveKeyboardUIModeFromPreferences:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__retrieveKeyboardUIModeFromPreferences_ name:WebPreferencesChangedInternalNotification[0] object:0];
    v2 = self->_private;
  }

  return v2->_keyboardUIMode;
}

- (void)_mainCoreFrame
{
  v2 = self->_private;
  if (!v2)
  {
    return 0;
  }

  m_ptr = v2->page.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v4 = *(m_ptr + 22);
  if (v4[136])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (id)_selectedOrMainFrame
{
  result = [(WebView *)self selectedFrame];
  if (!result)
  {

    return [(WebView *)self mainFrame];
  }

  return result;
}

- (void)_clearCredentials
{
  _mainCoreFrame = [(WebView *)self _mainCoreFrame];
  if (_mainCoreFrame)
  {
    v3 = WebCore::FrameLoader::networkingContext(_mainCoreFrame[26]);
    if (v3)
    {
      v4 = (**v3)(v3) + 112;

      MEMORY[0x1EEE56AA0](v4);
    }
  }
}

- (void)_scheduleUpdateRendering
{
  v2 = self->_private;
  if (v2->closing)
  {
    return;
  }

  ptr = v2->renderingUpdateScheduler.__ptr_;
  if (!ptr)
  {
    if (WebViewRenderingUpdateScheduler::s_heapRef)
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebViewRenderingUpdateScheduler::s_heapRef, a2);
    }

    else
    {
      NonCompact = WebViewRenderingUpdateScheduler::operatorNewSlow(0);
    }

    v8 = NonCompact;
    *NonCompact = 0;
    *(NonCompact + 8) = 0;
    *(NonCompact + 16) = self;
    *(NonCompact + 24) = 0;
    v9 = (NonCompact + 24);
    *(NonCompact + 32) = 0;
    v10 = (NonCompact + 32);
    *(NonCompact + 39) = 0;
    v12 = WTF::fastCompactMalloc(0x10);
    *v12 = 1;
    *(v12 + 8) = v8;
    v13 = *v8;
    *v8 = v12;
    if (v13)
    {
      if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13);
        WTF::fastFree(v13, v11);
        v12 = *v8;
        if (!*v8)
        {
LABEL_14:
          v14 = MEMORY[0x1E69E2578];
          if (*MEMORY[0x1E69E2578])
          {
            v15 = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2578], v11);
          }

          else
          {
            v15 = WebCore::RunLoopObserver::operatorNewSlow(0x18);
          }

          v16 = v15;
          v17 = WTF::fastMalloc(0x10);
          *v17 = &unk_1F472C1C8;
          v17[1] = v12;
          *v16 = v17;
          *(v16 + 8) = 256;
          *(v16 + 16) = 0;
          v19 = *v9;
          *v9 = v16;
          if (v19)
          {
            v20 = MEMORY[0x1CCA653D0]();
            bmalloc::api::tzoneFree(v20, v21);
          }

          v22 = *v8;
          if (!*v8)
          {
            v22 = WTF::fastCompactMalloc(0x10);
            *v22 = 1;
            *(v22 + 8) = v8;
            v23 = *v8;
            *v8 = v22;
            if (v23)
            {
              if (atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v23);
                WTF::fastFree(v23, v18);
                v22 = *v8;
                if (!*v8)
                {
LABEL_23:
                  if (*v14)
                  {
                    v24 = bmalloc::api::tzoneAllocateNonCompact(*v14, v18);
                  }

                  else
                  {
                    v24 = WebCore::RunLoopObserver::operatorNewSlow(0x18);
                  }

                  v25 = v24;
                  v26 = WTF::fastMalloc(0x10);
                  *v26 = &unk_1F472C1F0;
                  v26[1] = v22;
                  *v25 = v26;
                  *(v25 + 8) = 1280;
                  *(v25 + 16) = 0;
                  v27 = *v10;
                  *v10 = v25;
                  if (v27)
                  {
                    v28 = MEMORY[0x1CCA653D0]();
                    bmalloc::api::tzoneFree(v28, v29);
                  }

                  v30 = self->_private;
                  v31 = 0;
                  std::unique_ptr<WebViewRenderingUpdateScheduler>::reset[abi:sn200100](&v30->renderingUpdateScheduler, v8);
                  std::unique_ptr<WebViewRenderingUpdateScheduler>::reset[abi:sn200100](&v31, 0);
                  ptr = self->_private->renderingUpdateScheduler.__ptr_;
                  v4 = *(ptr + 40);
                  if (v4 != 1)
                  {
                    goto LABEL_5;
                  }

                  goto LABEL_4;
                }
              }

              else
              {
                v22 = *v8;
                if (!*v8)
                {
                  goto LABEL_23;
                }
              }
            }
          }

          atomic_fetch_add(v22, 1u);
          goto LABEL_23;
        }
      }

      else
      {
        v12 = *v8;
        if (!*v8)
        {
          goto LABEL_14;
        }
      }
    }

    atomic_fetch_add(v12, 1u);
    goto LABEL_14;
  }

  v4 = *(ptr + 40);
  if (v4 == 1)
  {
LABEL_4:
    *(ptr + 41) = v4;
  }

LABEL_5:
  v5 = *(ptr + 3);

  MEMORY[0x1EEE55FF0](v5, 0, 5);
}

- (void)_updateRendering
{
  [(WebView *)self _synchronizeCustomFixedPositionLayoutRect];
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    WebCore::Page::updateRendering(m_ptr);
    v4 = self->_private->page.m_ptr;

    MEMORY[0x1EEE5A720](v4, 0);
  }
}

- (void)_willStartRenderingUpdateDisplay
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    MEMORY[0x1EEE5A8A8](m_ptr, a2);
  }
}

- (void)_didCompleteRenderingUpdateDisplay
{
  v3 = self->_private;
  m_ptr = v3->page.m_ptr;
  if (m_ptr)
  {
    WebCore::Page::didUpdateRendering(m_ptr);
    WebCore::Page::didCompleteRenderingUpdateDisplay(self->_private->page.m_ptr);
    v3 = self->_private;
  }

  ptr = v3->renderingUpdateScheduler.__ptr_;
  if (ptr)
  {
    *(ptr + 42) = 0;
    v6 = *(ptr + 4);

    MEMORY[0x1EEE55FF0](v6, 0, 5);
  }
}

- (void)_didCompleteRenderingFrame
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    MEMORY[0x1EEE5A788](m_ptr, a2);
  }
}

- (BOOL)_flushCompositingChanges
{
  _mainCoreFrame = [(WebView *)self _mainCoreFrame];
  if (!_mainCoreFrame)
  {
    return 1;
  }

  v3 = _mainCoreFrame[27];
  if (!v3)
  {
    return 1;
  }

  return WebCore::LocalFrameView::flushCompositingStateIncludingSubframes(v3);
}

- (void)_scheduleRenderingUpdateForPendingTileCacheRepaint
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    ++*(m_ptr + 2);
    WebCore::Page::scheduleRenderingUpdate();
    if (*(m_ptr + 2) == 1)
    {
      v3 = MEMORY[0x1CCA673C0](m_ptr);

      bmalloc::api::tzoneFree(v3, v4);
    }

    else
    {
      --*(m_ptr + 2);
    }
  }
}

- (void)_enterVideoFullscreenForVideoElement:(NakedPtr<WebCore:(unsigned int)element :HTMLVideoElement>)a3 mode:
{
  v4 = *&element;
  m_ptr = self->_private->fullscreenController.m_ptr;
  if (m_ptr)
  {
    [(WebVideoFullscreenController *)m_ptr videoElement];
    v8 = *a3.var0;
    if (v23 == *a3.var0)
    {
      v10 = self->_private->fullscreenController.m_ptr;
LABEL_12:
      v23 = v8;
      [(WebVideoFullscreenController *)v10 setVideoElement:&v23];
      return;
    }

    v9 = self->_private->fullscreenController.m_ptr;
    if (v9)
    {
      [(WebVideoFullscreenController *)v9 videoElement];
      v9 = v23;
    }

    else
    {
      v23 = 0;
    }

    WebCore::HTMLMediaElement::exitFullscreen(v9);
    v11 = self->_private;
    v12 = v11->fullscreenController.m_ptr;
    v23 = v12;
    v11->fullscreenController.m_ptr = 0;
    m_size = v11->fullscreenControllersExiting.m_size;
    if (m_size == v11->fullscreenControllersExiting.m_capacity)
    {
      v14 = WTF::Vector<WTF::RetainPtr<WebVideoFullscreenController>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v11->fullscreenControllersExiting, m_size + 1, &v23);
      v15 = v11->fullscreenControllersExiting.m_size;
      m_buffer = v11->fullscreenControllersExiting.m_buffer;
      v17 = *v14;
      *v14 = 0;
      m_buffer[v15] = v17;
      v18 = v23;
      ++v11->fullscreenControllersExiting.m_size;
      v23 = 0;
      if (v18)
      {
      }

      v10 = self->_private->fullscreenController.m_ptr;
      if (v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *(v11->fullscreenControllersExiting.m_buffer + m_size) = v12;
      v11->fullscreenControllersExiting.m_size = m_size + 1;
      v10 = self->_private->fullscreenController.m_ptr;
      if (v10)
      {
LABEL_11:
        v8 = *a3.var0;
        goto LABEL_12;
      }
    }
  }

  v19 = objc_alloc_init(MEMORY[0x1E69E21D0]);
  v20 = self->_private;
  v21 = v20->fullscreenController.m_ptr;
  v20->fullscreenController.m_ptr = v19;
  if (v21)
  {
  }

  v22 = self->_private->fullscreenController.m_ptr;
  v23 = *a3.var0;
  [(WebVideoFullscreenController *)v22 setVideoElement:&v23];
  -[WebVideoFullscreenController enterFullscreen:mode:](self->_private->fullscreenController.m_ptr, "enterFullscreen:mode:", [objc_msgSend(-[WebView window](self "window")], v4);
}

- (void)_exitVideoFullscreen
{
  v3 = self->_private;
  m_ptr = v3->fullscreenController.m_ptr;
  m_size = v3->fullscreenControllersExiting.m_size;
  if (m_ptr)
  {
    if (!m_size)
    {
      v22 = v3->fullscreenController.m_ptr;
      v6 = m_ptr;
      v7 = self->_private;
      v8 = v7->fullscreenController.m_ptr;
      v7->fullscreenController.m_ptr = 0;
      if (v8)
      {
      }

      [(WebVideoFullscreenController *)v22 exitFullscreen];
      v9 = v22;

LABEL_7:

      return;
    }
  }

  else if (!m_size)
  {
    return;
  }

  p_fullscreenControllersExiting = &v3->fullscreenControllersExiting;
  m_buffer = v3->fullscreenControllersExiting.m_buffer;
  v12 = *m_buffer;
  v23 = *m_buffer;
  if (*m_buffer)
  {
    v13 = v12;
    v14 = self->_private;
    if (!v14->fullscreenControllersExiting.m_size)
    {
      __break(1u);
      return;
    }

    p_m_size = &v14->fullscreenControllersExiting.m_size;
    v16 = &v14->fullscreenControllersExiting;
    v17 = v14->fullscreenControllersExiting.m_buffer;
    v18 = *v17;
    *v17 = 0;
    if (v18)
    {
    }

    v12 = v23;
    v19 = v17 + 1;
    v20 = *p_m_size;
    v21 = v16->m_buffer + 8 * v20;
    if (v17 + 1 == v21)
    {
      goto LABEL_18;
    }
  }

  else
  {
    p_m_size = &v3->fullscreenControllersExiting.m_size;
    v19 = m_buffer + 1;
    v20 = *p_m_size;
    v21 = p_fullscreenControllersExiting->m_buffer + 8 * v20;
    if (m_buffer + 1 == v21)
    {
      goto LABEL_18;
    }
  }

  do
  {
    *(v19 - 1) = *v19;
    *v19++ = 0;
  }

  while (v19 != v21);
  LODWORD(v20) = *p_m_size;
LABEL_18:
  *p_m_size = v20 - 1;
  [v12 exitFullscreen];
  v9 = v23;
  if (v23)
  {

    goto LABEL_7;
  }
}

- (void)_getWebCoreDictationAlternatives:(void *)alternatives fromTextAlternatives:(const void *)textAlternatives
{
  v4 = *(textAlternatives + 3);
  if (v4)
  {
    v6 = *textAlternatives + 16;
    v7 = 24 * v4;
    do
    {
      v12 = WebCore::AlternativeTextUIController::addAlternatives();
      if (v13)
      {
        v15 = *(v6 - 16);
        v16 = v12;
        v14 = *(alternatives + 3);
        if (v14 == *(alternatives + 2))
        {
          v8 = WTF::Vector<WebCore::DictationAlternative,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(alternatives, v14 + 1, &v15);
          v9 = *alternatives + 24 * *(alternatives + 3);
          v10 = *v8;
          v11 = *(v8 + 2);
        }

        else
        {
          v9 = *alternatives + 24 * v14;
          v10 = v15;
          v11 = v16;
        }

        *(v9 + 16) = v11;
        *v9 = v10;
        ++*(alternatives + 3);
      }

      v6 += 24;
      v7 -= 24;
    }

    while (v7);
  }
}

- (Vector<WTF::String,)_dictationAlternatives:()ObjectIdentifierGeneric<WebCore:()WTF:(unsigned long long>)f :ObjectIdentifierMainThreadAccessTraits<uint64_t> :DictationContextType
{
  v4 = v3;
  alternativeStrings = [WebCore::AlternativeTextUIController::alternativesForContext() alternativeStrings];
  v7 = &alternativeStrings;
  v5 = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v4, [alternativeStrings count], &v7, 0);
  result.var1 = v6;
  result.var2 = HIDWORD(v6);
  result.var0 = v5;
  return result;
}

- (CGPoint)_convertPointFromRootView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  [(WebView *)self bounds];
  v6 = v5 - y;
  v7 = x;
  result.y = v6;
  result.x = v7;
  return result;
}

- (CGRect)_convertRectFromRootView:(CGRect)view
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  [(WebView *)self bounds];
  v8 = v7 - y - height;
  v9 = x;
  v10 = width;
  v11 = height;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v9;
  return result;
}

- (void)hideFormValidationMessage
{
  v3 = self->_private;
  m_ptr = v3->formValidationBubble.m_ptr;
  v3->formValidationBubble.m_ptr = 0;
  if (m_ptr)
  {
    if (*m_ptr == 1)
    {
      v5 = MEMORY[0x1CCA65C00](m_ptr);

      WTF::fastFree(v5, v6);
    }

    else
    {
      --*m_ptr;
    }
  }
}

- (void)_closeWindow
{
  _UIDelegateForwarder = [(WebView *)self _UIDelegateForwarder];

  [_UIDelegateForwarder webViewClose:self];
}

- (void)_setDeviceOrientationProvider:(id)provider
{
  v3 = self->_private;
  if (v3)
  {
    v3->m_deviceOrientationProvider = provider;
  }
}

- (id)_deviceOrientationProvider
{
  v2 = self->_private;
  if (v2)
  {
    return v2->m_deviceOrientationProvider;
  }

  else
  {
    return 0;
  }
}

- (void)_setGeolocationProvider:(id)provider
{
  v3 = self->_private;
  if (v3)
  {
    v3->_geolocationProvider = provider;
  }
}

- (id)_geolocationProvider
{
  v2 = self->_private;
  if (v2)
  {
    return v2->_geolocationProvider;
  }

  else
  {
    return 0;
  }
}

- (void)_geolocationDidChangePosition:(id)position
{
  v3 = self->_private;
  if (v3)
  {
    m_ptr = v3->page.m_ptr;
    if (m_ptr)
    {
      v5 = WebCore::GeolocationController::supplementName(self);
      WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebCore::Supplement<WebCore::Page>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebCore::Supplement<WebCore::Page>>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebCore::Supplement<WebCore::Page>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebCore::Supplement<WebCore::Page>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebCore::Supplement<WebCore::Page>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebCore::Supplement<WebCore::Page>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebCore::Supplement<WebCore::Page>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebCore::Supplement<WebCore::Page>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral>(m_ptr + 2, v5, v6);
      WebCore::GeolocationController::positionChanged();
    }
  }
}

- (void)_geolocationDidFailWithMessage:(id)message
{
  v3 = self->_private;
  if (v3 && v3->page.m_ptr)
  {
    MEMORY[0x1CCA63A40](&v14, message);
    v5 = WTF::fastMalloc(0x10);
    v7 = v5;
    *v5 = 0x100000001;
    v8 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      v5 = v14;
      *(v7 + 1) = v8;
      v14 = 0;
      v15 = v7;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v5 = WTF::StringImpl::destroy(v5, v6);
      }
    }

    else
    {
      *(v5 + 1) = 0;
      v15 = v5;
    }

    m_ptr = self->_private->page.m_ptr;
    v10 = WebCore::GeolocationController::supplementName(v5);
    if (m_ptr)
    {
      WTF::HashTable<WTF::ASCIILiteral,WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebCore::Supplement<WebCore::Page>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ASCIILiteral,std::unique_ptr<WebCore::Supplement<WebCore::Page>>>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebCore::Supplement<WebCore::Page>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebCore::Supplement<WebCore::Page>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ASCIILiteral>,WTF::FastMalloc>::lookup<WTF::HashMapTranslatorAdapter<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebCore::Supplement<WebCore::Page>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebCore::Supplement<WebCore::Page>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ASCIILiteral,std::unique_ptr<WebCore::Supplement<WebCore::Page>>,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<std::unique_ptr<WebCore::Supplement<WebCore::Page>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ASCIILiteral>>>,(WTF::ShouldValidateKey)1,WTF::ASCIILiteral>(m_ptr + 2, v10, v11);
    }

    WebCore::GeolocationController::errorOccurred();
    if (*v7 == 1)
    {
      v13 = *(v7 + 1);
      *(v7 + 1) = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }

      if (*v7 == 1)
      {
        WTF::fastFree(v7, v12);
      }

      else
      {
        __break(0xC471u);
      }
    }

    else
    {
      --*v7;
    }
  }
}

- (void)_resetAllGeolocationPermission
{
  if ([(WebView *)self _mainCoreFrame])
  {

    MEMORY[0x1EEE53EF0]();
  }
}

- (void)_setNotificationProvider:(id)provider
{
  v3 = self->_private;
  if (v3)
  {
    if (!v3->_notificationProvider)
    {
      v3->_notificationProvider = provider;
      [(WebNotificationProvider *)self->_private->_notificationProvider registerWebView:self];
    }
  }
}

- (id)_notificationProvider
{
  v2 = self->_private;
  if (v2)
  {
    return v2->_notificationProvider;
  }

  else
  {
    return 0;
  }
}

- (void)_notificationDidShow:(id)show
{
  _notificationProvider = [(WebView *)self _notificationProvider];

  [_notificationProvider webView:self didShowNotification:show];
}

- (void)_notificationDidClick:(id)click
{
  _notificationProvider = [(WebView *)self _notificationProvider];

  [_notificationProvider webView:self didClickNotification:click];
}

- (void)_notificationsDidClose:(id)close
{
  _notificationProvider = [(WebView *)self _notificationProvider];

  [_notificationProvider webView:self didCloseNotifications:close];
}

- (id)_notificationIDForTesting:(OpaqueJSValue *)testing
{
  m_ptr = self->_private->page.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  ++*(m_ptr + 2);
  [(WebFrame *)[(WebView *)self mainFrame] globalContext];
  v4 = WebCore::JSNotification::toWrapped();
  v5 = *(v4 + 72);
  v16[0] = *(v4 + 64);
  v16[1] = v5;
  WTF::UUID::toString(&v17, v16);
  v6 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v18, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  else
  {
    v18 = &stru_1F472E7E8;
    v15 = &stru_1F472E7E8;
  }

  v8 = v18;
  v18 = 0;
  if (v8)
  {
    v9 = v8;
    v10 = v18;
    v18 = 0;
    if (v10)
    {
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v7);
  }

  if (*(m_ptr + 2) == 1)
  {
    v13 = MEMORY[0x1CCA673C0](m_ptr);
    bmalloc::api::tzoneFree(v13, v14);
  }

  else
  {
    --*(m_ptr + 2);
  }

  return v8;
}

- (void)_clearNotificationPermissionState
{
  m_ptr = self->_private->page.m_ptr;
  if (m_ptr)
  {
    ++*(m_ptr + 2);
    v3 = WebCore::NotificationController::clientFrom(m_ptr, a2);
    v5 = *(v3 + 24);
    if (v5)
    {
      *(v3 + 24) = 0;
      WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v5, v4);
    }

    if (*(m_ptr + 2) == 1)
    {
      v6 = MEMORY[0x1CCA673C0](m_ptr);

      bmalloc::api::tzoneFree(v6, v7);
    }

    else
    {
      --*(m_ptr + 2);
    }
  }
}

+ (Class)_getPDFRepresentationClass
{
  result = s_pdfRepresentationClass;
  if (!s_pdfRepresentationClass)
  {
    return objc_opt_class();
  }

  return result;
}

+ (Class)_getPDFViewClass
{
  result = s_pdfViewClass;
  if (!s_pdfViewClass)
  {
    return objc_opt_class();
  }

  return result;
}

- (id)_editableElementsInRect:(CGRect)rect
{
  rectCopy = rect;
  if (!self)
  {
    return MEMORY[0x1E695E0F0];
  }

  [(WebView *)self page];
  v3 = v16;
  if (!v16)
  {
    return MEMORY[0x1E695E0F0];
  }

  WebCore::FloatRect::FloatRect(v15, &rectCopy);
  WebCore::Page::editableElementsInRect(&v16, v3, v15);
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [v4 initWithCapacity:v18];
  if (v18)
  {
    v7 = v16;
    v8 = 8 * v18;
    do
    {
      v9 = kit(*v7);
      if (v9)
      {
        [v6 addObject:v9];
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  if (v6)
  {
    v11 = v6;
  }

  v12 = v16;
  if (v18)
  {
    v13 = 8 * v18;
    do
    {
      v14 = *v12;
      *v12 = 0;
      if (v14)
      {
        if (*(v14 + 7) == 2)
        {
          WebCore::Node::removedLastRef(v14);
        }

        else
        {
          *(v14 + 7) -= 2;
        }
      }

      v12 = (v12 + 8);
      v13 -= 8;
    }

    while (v13);
    v12 = v16;
  }

  if (!v12)
  {
    return v6;
  }

  v16 = 0;
  v17 = 0;
  WTF::fastFree(v12, v5);
  return v6;
}

- (void)revealCurrentSelection
{
  if (self)
  {
    [(WebView *)self page];
    if (v2)
    {

      MEMORY[0x1EEE5A708]();
    }
  }
}

- (void)_preferencesChangedGenerated:(id)generated
{
  v4 = *(self->_private->page.m_ptr + 15);
  if ([generated _BOOLValueForKey:@"WebKitPictureInPictureAPIEnabled"])
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFEFFFFFFLL | v5;
  [generated _BOOLValueForKey:@"WebKitAcceleratedCompositingEnabled"];
  WebCore::Settings::setAcceleratedCompositingEnabled(v4);
  v6 = [generated _BOOLValueForKey:@"WebKitAcceleratedCompositingForFixedPositionEnabled"];
  v7 = 2;
  if (!v6)
  {
    v7 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFFFFFDLL | v7;
  if ([generated _BOOLValueForKey:@"WebKitWirelessPlaybackTargetAPIEnabled"])
  {
    v8 = 0x20000;
  }

  else
  {
    v8 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFDFFFFLL | v8;
  v9 = [generated _BOOLValueForKey:@"WebKitAggressiveTileRetentionEnabled"];
  v10 = 32;
  if (!v9)
  {
    v10 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFFFFDFLL | v10;
  v11 = [generated _BOOLValueForKey:@"WebKitAllowContentSecurityPolicySourceStarToMatchAnyProtocol"];
  v12 = 128;
  if (!v11)
  {
    v12 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFFFF7FLL | v12;
  if ([generated _BOOLValueForKey:@"WebKitAllowDisplayOfInsecureContent"])
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFFFEFFLL | v13;
  v14 = [generated _BOOLValueForKey:@"WebKitAllowFileAccessFromFileURLs"];
  v15 = 512;
  if (!v14)
  {
    v15 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFFFDFFLL | v15;
  if ([generated _BOOLValueForKey:@"WebKitAllowMultiElementImplicitFormSubmissionPreferenceKey"])
  {
    v16 = 2048;
  }

  else
  {
    v16 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFFF7FFLL | v16;
  v17 = [generated _BOOLValueForKey:@"WebKitAllowRunningOfInsecureContent"];
  v18 = 0x2000;
  if (!v17)
  {
    v18 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFFDFFFLL | v18;
  if ([generated _BOOLValueForKey:@"WebKitMediaPlaybackAllowsAirPlay"])
  {
    v19 = 1024;
  }

  else
  {
    v19 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFFFBFF | v19;
  if ([generated _BOOLValueForKey:@"WebKitMediaPlaybackAllowsInline"])
  {
    v20 = 0x10000;
  }

  else
  {
    v20 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFEFFFFLL | v20;
  if ([generated _BOOLValueForKey:@"WebKitAllowsInlineMediaPlaybackAfterFullscreen"])
  {
    v21 = 0x20000;
  }

  else
  {
    v21 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFDFFFFLL | v21;
  v22 = [generated _BOOLValueForKey:@"WebKitAllowsPictureInPictureMediaPlayback"];
  v23 = 0x40000;
  if (!v22)
  {
    v23 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFBFFFFLL | v23;
  if ([generated _BOOLValueForKey:@"WebKitAlternateFullScreenControlDesignEnabled"])
  {
    v24 = 0x200000;
  }

  else
  {
    v24 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFDFFFFF | v24;
  if ([generated _BOOLValueForKey:@"WebKitWindowFocusRestricted"])
  {
    v25 = 0x10000;
  }

  else
  {
    v25 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFEFFFFLL | v25;
  if ([generated _BOOLValueForKey:@"WebKitAnimatedImageAsyncDecodingEnabled"])
  {
    v26 = 0x100000;
  }

  else
  {
    v26 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFEFFFFFLL | v26;
  v27 = [generated _BOOLValueForKey:@"WebKitAppleMailPaginationQuirkEnabled"];
  v28 = 0x800000;
  if (!v27)
  {
    v28 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFF7FFFFFLL | v28;
  if ([generated _BOOLValueForKey:@"WebKitApplePayCapabilityDisclosureAllowed"])
  {
    v29 = 0x100000;
  }

  else
  {
    v29 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFEFFFFFLL | v29;
  if ([generated _BOOLValueForKey:@"WebKitApplePayEnabled"])
  {
    v30 = 0x200000;
  }

  else
  {
    v30 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFDFFFFFLL | v30;
  v31 = [generated _BOOLValueForKey:@"WebKitAsynchronousSpellCheckingEnabled"];
  v32 = 0x8000000;
  if (!v31)
  {
    v32 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFF7FFFFFFLL | v32;
  v33 = [generated _BOOLValueForKey:@"WebKitAudioControlsScaleWithPageZoom"];
  v34 = 0x10000000;
  if (!v33)
  {
    v34 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFEFFFFFFFLL | v34;
  [generated _BOOLValueForKey:@"WebKitAuthorAndUserStylesEnabledPreferenceKey"];
  WebCore::Settings::setAuthorAndUserStylesEnabled(v4);
  if ([generated _BOOLValueForKey:@"WebKitWebSocketEnabled"])
  {
    v35 = 2048;
  }

  else
  {
    v35 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFFF7FFLL | v35;
  v36 = [generated _BOOLValueForKey:@"WebKitBackspaceKeyNavigationEnabled"];
  v37 = 0x1000000000;
  if (!v36)
  {
    v37 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFEFFFFFFFFFLL | v37;
  if ([generated _BOOLValueForKey:@"WebKitWebSecurityEnabled"])
  {
    v38 = 256;
  }

  else
  {
    v38 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFFFEFFLL | v38;
  v39 = [generated _BOOLValueForKey:@"WebKitCaretBrowsingEnabled"];
  v40 = 0x800000000000;
  if (!v39)
  {
    v40 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFF7FFFFFFFFFFFLL | v40;
  [generated _BOOLValueForKey:@"WebKitColorFilterEnabled"];
  WebCore::Settings::setColorFilterEnabled(v4);
  if ([generated _BOOLValueForKey:@"WebKitContentChangeObserverEnabled"])
  {
    v41 = 0x1000000;
  }

  else
  {
    v41 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFEFFFFFFLL | v41;
  v42 = [generated _BOOLValueForKey:@"WebKitContentDispositionAttachmentSandboxEnabled"];
  v43 = 0x400000000000000;
  if (!v42)
  {
    v43 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFBFFFFFFFFFFFFFFLL | v43;
  MEMORY[0x1CCA63A40](&v730, [generated _stringValueForKey:@"WebKitCursiveFont"]);
  WebCore::SettingsBase::setCursiveFontFamily();
  v45 = v730;
  v730 = 0;
  if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v45, v44);
  }

  v46 = [generated _BOOLValueForKey:@"WebKitDOMPasteAllowedPreferenceKey"];
  v47 = 0x400000000000000;
  if (!v46)
  {
    v47 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFBFFFFFFFFFFFFFFLL | v47;
  *(v4 + 624) = [generated _integerValueForKey:@"WebKitDataDetectorTypes"];
  [generated _floatValueForKey:@"WebKitDefaultFixedFontSize"];
  WebCore::Settings::setDefaultFixedFontSize(v4, v48);
  [generated _floatValueForKey:@"WebKitDefaultFontSize"];
  WebCore::Settings::setDefaultFontSize(v4, v49);
  MEMORY[0x1CCA63A40](&v730, [generated _stringValueForKey:@"WebKitDefaultTextEncodingName"]);
  v51 = v730;
  if (v730)
  {
    atomic_fetch_add_explicit(v730, 2u, memory_order_relaxed);
  }

  v52 = *(v4 + 344);
  *(v4 + 344) = v51;
  if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v52, v50);
  }

  v53 = v730;
  v730 = 0;
  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v53, v50);
  }

  *(v4 + 360) = [generated _integerValueForKey:@"WebKitDeviceHeight"];
  v54 = [generated _BOOLValueForKey:@"WebKitDeviceOrientationEventEnabled"];
  v55 = 0x10000000;
  if (!v54)
  {
    v55 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFEFFFFFFFLL | v55;
  v56 = [generated _BOOLValueForKey:@"WebKitDeviceOrientationPermissionAPIEnabled"];
  v57 = 0x20000000;
  if (!v56)
  {
    v57 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFDFFFFFFFLL | v57;
  *(v4 + 364) = [generated _integerValueForKey:@"WebKitDeviceWidth"];
  v58 = [generated _BOOLValueForKey:@"WebKitDisabledAdaptationsMetaTagEnabled"];
  v59 = 0x100000000000000;
  if (!v58)
  {
    v59 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFEFFFFFFFFFFFFFFLL | v59;
  v60 = [generated _BOOLValueForKey:@"WebKitDownloadAttributeEnabled"];
  v61 = 0x2000000000000000;
  if (!v60)
  {
    v61 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xDFFFFFFFFFFFFFFFLL | v61;
  *(v4 + 369) = [generated _integerValueForKey:@"WebKitEditableLinkBehavior"];
  if ([generated _BOOLValueForKey:@"WebKitEnableInheritURIQueryComponent"])
  {
    v62 = 2;
  }

  else
  {
    v62 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFFFFFFDLL | v62;
  v63 = [generated _BOOLValueForKey:@"WebKitWebAudioEnabled"];
  v64 = 0x10000000000000;
  if (!v63)
  {
    v64 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFEFFFFFFFFFFFFFLL | v64;
  v65 = [generated _BOOLValueForKey:@"WebKitEncryptedMediaAPIEnabled"];
  v66 = 0x100000000;
  if (!v65)
  {
    v66 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFEFFFFFFFFLL | v66;
  MEMORY[0x1CCA63A40](&v730, [generated _stringValueForKey:@"WebKitFTPDirectoryTemplatePath"]);
  v68 = v730;
  if (v730)
  {
    atomic_fetch_add_explicit(v730, 2u, memory_order_relaxed);
  }

  v69 = *(v4 + 384);
  *(v4 + 384) = v68;
  if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v69, v67);
  }

  v70 = v730;
  v730 = 0;
  if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v70, v67);
  }

  MEMORY[0x1CCA63A40](&v730, [generated _stringValueForKey:@"WebKitFantasyFont"]);
  WebCore::SettingsBase::setFantasyFontFamily();
  v72 = v730;
  v730 = 0;
  if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v72, v71);
  }

  MEMORY[0x1CCA63A40](&v730, [generated _stringValueForKey:@"WebKitFixedFont"]);
  WebCore::SettingsBase::setFixedFontFamily();
  v74 = v730;
  v730 = 0;
  if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v74, v73);
  }

  v75 = [generated _BOOLValueForKey:@"WebKitWantsBalancedSetDefersLoadingBehavior"];
  v76 = 0x40000000000000;
  if (!v75)
  {
    v76 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFBFFFFFFFFFFFFFLL | v76;
  if ([generated _BOOLValueForKey:@"WebKitForceFTPDirectoryListings"])
  {
    v77 = 0x4000;
  }

  else
  {
    v77 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFFFBFFFLL | v77;
  if ([generated _BOOLValueForKey:@"WebKitForceWebGLUsesLowPower"])
  {
    v78 = 0x10000;
  }

  else
  {
    v78 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFFEFFFFLL | v78;
  [generated _BOOLValueForKey:@"WebKitVisualViewportEnabled"];
  WebCore::Settings::setVisualViewportEnabled(v4);
  *(v4 + 620) = [generated _integerValueForKey:@"WebKitVisibleDebugOverlayRegions"];
  if ([generated _BOOLValueForKey:@"WebKitVideoQualityIncludesDisplayCompositingEnabled"])
  {
    v79 = 0x100000000000;
  }

  else
  {
    v79 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFEFFFFFFFFFFFLL | v79;
  if ([generated _BOOLValueForKey:@"WebKitVideoPresentationModeAPIEnabled"])
  {
    v80 = 0x1000000000000;
  }

  else
  {
    v80 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFEFFFFFFFFFFFFLL | v80;
  v81 = [generated _BOOLValueForKey:@"WebKitVideoPresentationManagerEnabled"];
  v82 = 0x800000000000;
  if (!v81)
  {
    v82 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFF7FFFFFFFFFFFLL | v82;
  if ([generated _BOOLValueForKey:@"WebKitVideoFullscreenRequiresElementFullscreen"])
  {
    v83 = 0x4000000000;
  }

  else
  {
    v83 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFBFFFFFFFFFLL | v83;
  [generated _BOOLValueForKey:@"WebKitHiddenPageCSSAnimationSuspensionEnabled"];
  WebCore::Settings::setHiddenPageCSSAnimationSuspensionEnabled(v4);
  v84 = [generated _BOOLValueForKey:@"WebKitVP9DecoderEnabled"];
  v85 = 0x200000000000;
  if (!v84)
  {
    v85 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFDFFFFFFFFFFFLL | v85;
  if ([generated _BOOLValueForKey:@"WebKitUsesEncodingDetector"])
  {
    v86 = 0x100000000000;
  }

  else
  {
    v86 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFEFFFFFFFFFFFLL | v86;
  if ([generated _BOOLValueForKey:@"WebKitIncompleteImageBorderEnabled"])
  {
    v87 = 0x4000000000;
  }

  else
  {
    v87 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFBFFFFFFFFFLL | v87;
  if ([generated _BOOLValueForKey:@"WebKitIncrementalPDFLoadingEnabled"])
  {
    v88 = 0x4000;
  }

  else
  {
    v88 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFFBFFF | v88;
  [generated _floatValueForKey:@"WebKitIncrementalRenderingSuppressionTimeoutInSeconds"];
  *(v4 + 400) = v89;
  v90 = [generated _BOOLValueForKey:@"WebKitInlineMediaPlaybackRequiresPlaysInlineAttribute"];
  v91 = 0x10000000000;
  if (!v90)
  {
    v91 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFEFFFFFFFFFFLL | v91;
  [generated _BOOLValueForKey:@"WebKitUsesPageCachePreferenceKey"];
  WebCore::Settings::setUsesBackForwardCache(v4);
  *(v4 + 568) = [generated _integerValueForKey:@"WebKitUserInterfaceDirectionPolicy"] != 0;
  [generated _BOOLValueForKey:@"WebKitUseSystemAppearance"];
  WebCore::Settings::setUseSystemAppearance(v4);
  v92 = [generated _BOOLValueForKey:@"WebKitUsePreHTML5ParserQuirks"];
  v93 = 0x8000000000;
  if (!v92)
  {
    v93 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFF7FFFFFFFFFLL | v93;
  *(v4 + 408) = [generated _integerValueForKey:@"WebKitInspectorMaximumResourcesContentSize"];
  if ([generated _BOOLValueForKey:@"WebKitInspectorSupportsShowingCertificate"])
  {
    v94 = 0x1000000000000;
  }

  else
  {
    v94 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFEFFFFFFFFFFFFLL | v94;
  [generated _floatValueForKey:@"WebKitInteractionRegionInlinePadding"];
  *(v4 + 416) = v95;
  [generated _floatValueForKey:@"WebKitInteractionRegionMinimumCornerRadius"];
  *(v4 + 424) = v96;
  if ([generated _BOOLValueForKey:@"WebKitUseImageDocumentForSubframePDF"])
  {
    v97 = 0x4000000000;
  }

  else
  {
    v97 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFBFFFFFFFFFLL | v97;
  v98 = [generated _BOOLValueForKey:@"WebKitInterruptAudioOnPageVisibilityChangeEnabled"];
  v99 = 16;
  if (!v98)
  {
    v99 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFFFFFFEFLL | v99;
  v100 = [generated _BOOLValueForKey:@"WebKitInterruptVideoOnPageVisibilityChangeEnabled"];
  v101 = 32;
  if (!v100)
  {
    v101 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFFFFFFDFLL | v101;
  v102 = [generated _BOOLValueForKey:@"InvisibleAutoplayNotPermitted"];
  v103 = 0x4000000000000;
  if (!v102)
  {
    v103 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFBFFFFFFFFFFFFLL | v103;
  v104 = [generated _BOOLValueForKey:@"WebKitTreatsAnyTextCSSLinkAsStylesheet"];
  v105 = 0x8000000;
  if (!v104)
  {
    v105 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFF7FFFFFFLL | v105;
  v106 = [generated _BOOLValueForKey:@"WebKitJavaScriptCanAccessClipboard"];
  v107 = 0x4000000000000000;
  if (!v106)
  {
    v107 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xBFFFFFFFFFFFFFFFLL | v107;
  v108 = [generated _BOOLValueForKey:@"WebKitJavaScriptCanOpenWindowsAutomatically"];
  v109 = 0x8000000000000000;
  if (!v108)
  {
    v109 = 0;
  }

  *(v4 + 696) = v109 & 0x8000000000000000 | *(v4 + 696) & 0x7FFFFFFFFFFFFFFFLL;
  if ([generated _BOOLValueForKey:@"WebKitJavaScriptMarkupEnabled"])
  {
    v110 = 0x10000;
  }

  else
  {
    v110 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFEFFFFLL | v110;
  *(v4 + 432) = [generated _integerValueForKey:@"WebKitJavaScriptRuntimeFlagsPreferenceKey"];
  v111 = [generated _BOOLValueForKey:@"WebKitLargeImageAsyncDecodingEnabled"];
  v112 = 2;
  if (!v111)
  {
    v112 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFFFFFFDLL | v112;
  v113 = [generated _BOOLValueForKey:@"WebKitTextInteractionEnabled"];
  v114 = 0x400000;
  if (!v113)
  {
    v114 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFBFFFFFLL | v114;
  *(v4 + 436) = [generated _integerValueForKey:@"WebKitLayoutFallbackWidth"];
  [generated _floatValueForKey:@"WebKitLayoutViewportHeightExpansionFactor"];
  WebCore::Settings::setLayoutViewportHeightExpansionFactor(v4, v115);
  [generated _BOOLValueForKey:@"WebKitTextAutosizingEnabled"];
  WebCore::Settings::setTextAutosizingEnabled(v4);
  [generated _BOOLValueForKey:@"WebKitTextAreasAreResizable"];
  WebCore::Settings::setTextAreasAreResizable(v4);
  v116 = [generated _BOOLValueForKey:@"WebKitTemporaryTileCohortRetentionEnabled"];
  v117 = 0x100000;
  if (!v116)
  {
    v117 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFEFFFFFLL | v117;
  v118 = [generated _BOOLValueForKey:@"WebKitTelephoneParsingEnabledPreferenceKey"];
  v119 = 0x80000;
  if (!v118)
  {
    v119 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFF7FFFFLL | v119;
  if ([generated _BOOLValueForKey:@"WebKitSystemPreviewEnabled"])
  {
    v120 = 0x80000000;
  }

  else
  {
    v120 = 0;
  }

  *(v4 + 744) = v120 & 0x80000000 | *(v4 + 744) & 0x7FFFFFFF;
  v121 = [generated _BOOLValueForKey:@"WebKitLinkPreconnect"];
  v122 = 512;
  if (!v121)
  {
    v122 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFFFFDFFLL | v122;
  *(v4 + 557) = [generated _integerValueForKey:@"WebKitSystemLayoutDirection"] != 0;
  v123 = [generated _BOOLValueForKey:@"WebKitLinkPreloadEnabled"];
  v124 = 2048;
  if (!v123)
  {
    v124 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFFFF7FFLL | v124;
  if ([generated _BOOLValueForKey:@"WebKitSuppressesIncrementalRendering"])
  {
    v125 = 0x10000;
  }

  else
  {
    v125 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFFEFFFFLL | v125;
  v126 = [generated _BOOLValueForKey:@"WebKitLoadDeferringEnabled"];
  v127 = 0x2000;
  if (!v126)
  {
    v127 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFFFDFFFLL | v127;
  MEMORY[0x1CCA63A40](&v730, [generated _stringValueForKey:@"WebKitStandardFont"]);
  WebCore::SettingsBase::setStandardFontFamily();
  v129 = v730;
  v730 = 0;
  if (v129 && atomic_fetch_add_explicit(v129, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v129, v128);
  }

  [generated _BOOLValueForKey:@"WebKitDisplayImagesKey"];
  WebCore::Settings::setLoadsImagesAutomatically(v4);
  v130 = [generated _BOOLValueForKey:@"WebKitStandalonePreferenceKey"];
  v131 = 512;
  if (!v130)
  {
    v131 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFFFFDFFLL | v131;
  v132 = [generated _BOOLValueForKey:@"WebKitSpatialNavigationEnabled"];
  v133 = 32;
  if (!v132)
  {
    v133 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFFFFFDFLL | v133;
  v134 = [generated _BOOLValueForKey:@"WebKitSourceBufferChangeTypeEnabled"];
  v135 = 0x200000000000000;
  if (!v134)
  {
    v135 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFDFFFFFFFFFFFFFFLL | v135;
  v136 = [generated _BOOLValueForKey:@"WebKitShrinksStandaloneImagesToFit"];
  v137 = 2;
  if (!v136)
  {
    v137 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFFFFFFDLL | v137;
  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFFFFFFELL | [generated _BOOLValueForKey:@"WebKitShowsURLsInToolTips"];
  v138 = [generated _BOOLValueForKey:@"WebKitShowsToolTipOverTruncatedText"];
  v139 = 0x8000000000000000;
  if (!v138)
  {
    v139 = 0;
  }

  *(v4 + 712) = v139 & 0x8000000000000000 | *(v4 + 712) & 0x7FFFFFFFFFFFFFFFLL;
  v140 = [generated _BOOLValueForKey:@"WebKitShouldUseServiceWorkerShortTimeout"];
  v141 = 0x100000000000000;
  if (!v140)
  {
    v141 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFEFFFFFFFFFFFFFFLL | v141;
  v142 = [generated _BOOLValueForKey:@"WebKitShouldSuppressTextInputFromEditingDuringProvisionalNavigation"];
  v143 = 0x40000000000000;
  if (!v142)
  {
    v143 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFBFFFFFFFFFFFFFLL | v143;
  v144 = [generated _BOOLValueForKey:@"WebKitMathMLEnabled"];
  v145 = 0x2000000000000;
  if (!v144)
  {
    v145 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFDFFFFFFFFFFFFLL | v145;
  [generated _floatValueForKey:@"WebKitMaxParseDurationPreferenceKey"];
  *(v4 + 456) = v146;
  v147 = [generated _BOOLValueForKey:@"WebKitMediaCapabilitiesEnabled"];
  v148 = 0x1000000;
  if (!v147)
  {
    v148 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFEFFFFFFLL | v148;
  v149 = [generated _BOOLValueForKey:@"WebKitShouldRestrictBaseURLSchemes"];
  v150 = 0x20000000000000;
  if (!v149)
  {
    v150 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFDFFFFFFFFFFFFFLL | v150;
  v151 = [generated _BOOLValueForKey:@"WebKitShouldRespectImageOrientation"];
  v152 = 0x10000000000000;
  if (!v151)
  {
    v152 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFEFFFFFFFFFFFFFLL | v152;
  v153 = [generated _BOOLValueForKey:@"WebKitShouldPrintBackgroundsPreferenceKey"];
  v154 = 0x8000000000000;
  if (!v153)
  {
    v154 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFF7FFFFFFFFFFFFLL | v154;
  MEMORY[0x1CCA63A40](&v730, [generated _stringValueForKey:@"WebKitMediaContentTypesRequiringHardwareSupport"]);
  WebCore::SettingsBase::setMediaContentTypesRequiringHardwareSupport(v4, &v730);
  v156 = v730;
  v730 = 0;
  if (v156 && atomic_fetch_add_explicit(v156, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v156, v155);
  }

  v157 = [generated _BOOLValueForKey:@"WebKitMediaControlsContextMenusEnabled"];
  v158 = 0x4000000000000;
  if (!v157)
  {
    v158 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFBFFFFFFFFFFFFLL | v158;
  v159 = [generated _BOOLValueForKey:@"WebKitMediaControlsScaleWithPageZoom"];
  v160 = 0x4000000;
  if (!v159)
  {
    v160 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFBFFFFFFLL | v160;
  v161 = [generated _BOOLValueForKey:@"WebKitMediaDataLoadsAutomatically"];
  v162 = 0x8000000;
  if (!v161)
  {
    v162 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFF7FFFFFFLL | v162;
  v163 = [generated _BOOLValueForKey:@"WebKitShouldIgnoreMetaViewport"];
  v164 = 0x2000000000000;
  if (!v163)
  {
    v164 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFDFFFFFFFFFFFFLL | v164;
  [generated _BOOLValueForKey:@"WebKitShouldEnableTextAutosizingBoost"];
  WebCore::Settings::setShouldEnableTextAutosizingBoost(v4);
  [generated _floatValueForKey:@"WebKitMediaPreferredFullscreenWidth"];
  *(v4 + 480) = v165;
  v166 = [generated _BOOLValueForKey:@"WebKitMediaPreloadingEnabled"];
  v167 = 0x20000000;
  if (!v166)
  {
    v167 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFDFFFFFFFLL | v167;
  if ([generated _BOOLValueForKey:@"WebKitShouldDisplayTextDescriptions"])
  {
    v168 = 0x80000000000;
  }

  else
  {
    v168 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFF7FFFFFFFFFFLL | v168;
  if ([generated _BOOLValueForKey:@"WebKitShouldDisplaySubtitles"])
  {
    v169 = 0x40000000000;
  }

  else
  {
    v169 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFBFFFFFFFFFFLL | v169;
  if ([generated _BOOLValueForKey:@"WebKitShouldDisplayCaptions"])
  {
    v170 = 0x20000000000;
  }

  else
  {
    v170 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFDFFFFFFFFFFLL | v170;
  if ([generated _BOOLValueForKey:@"WebKitShouldDecidePolicyBeforeLoadingQuickLookPreview"])
  {
    v171 = 0x80000000000;
  }

  else
  {
    v171 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFF7FFFFFFFFFFLL | v171;
  if ([generated _BOOLValueForKey:@"WebKitShouldConvertPositionStyleOnCopy"])
  {
    v172 = 0x40000000000;
  }

  else
  {
    v172 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFBFFFFFFFFFFLL | v172;
  if ([generated _BOOLValueForKey:@"WebKitShouldConvertInvalidURLsToBlank"])
  {
    v173 = 0x20000000000;
  }

  else
  {
    v173 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFDFFFFFFFFFFLL | v173;
  v174 = [generated _BOOLValueForKey:@"WebKitMediaUserGestureInheritsFromDocument"];
  v175 = 0x100000000;
  if (!v174)
  {
    v175 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFEFFFFFFFFLL | v175;
  [generated _floatValueForKey:@"WebKitMinimumFontSize"];
  WebCore::Settings::setMinimumFontSize(v4, v176);
  [generated _floatValueForKey:@"WebKitMinimumLogicalFontSize"];
  WebCore::Settings::setMinimumLogicalFontSize(v4, v177);
  [generated _floatValueForKey:@"WebKitMinimumZoomFontSizePreferenceKey"];
  *(v4 + 656) = v178;
  v179 = [generated _BOOLValueForKey:@"WebKitMockScrollbarsControllerEnabled"];
  v180 = 0x200000000;
  if (!v179)
  {
    v180 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFDFFFFFFFFLL | v180;
  [generated _BOOLValueForKey:@"WebKitShouldAllowUserInstalledFonts"];
  WebCore::Settings::setShouldAllowUserInstalledFonts(v4);
  MEMORY[0x1CCA63A40](&v730, [generated _stringValueForKey:@"WebKitSerifFont"]);
  WebCore::SettingsBase::setSerifFontFamily();
  v182 = v730;
  v730 = 0;
  if (v182 && atomic_fetch_add_explicit(v182, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v182, v181);
  }

  MEMORY[0x1CCA63A40](&v730, [generated _stringValueForKey:@"WebKitSansSerifFont"]);
  WebCore::SettingsBase::setSansSerifFontFamily();
  v184 = v730;
  v730 = 0;
  if (v184 && atomic_fetch_add_explicit(v184, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v184, v183);
  }

  v185 = [generated _BOOLValueForKey:@"WebKitNeedsAdobeFrameReloadingQuirk"];
  v186 = 0x4000000000;
  if (!v185)
  {
    v186 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFBFFFFFFFFFLL | v186;
  v187 = [generated _BOOLValueForKey:@"WebKitNeedsFrameNameFallbackToIdQuirk"];
  v188 = 0x10000000000;
  if (!v187)
  {
    v188 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFEFFFFFFFFFFLL | v188;
  v189 = [generated _BOOLValueForKey:@"WebKitNeedsKeyboardEventDisambiguationQuirks"];
  v190 = 0x20000000000;
  if (!v189)
  {
    v190 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFDFFFFFFFFFFLL | v190;
  [generated _floatValueForKey:@"WebKitSampledPageTopColorMinHeight"];
  *(v4 + 544) = v191;
  [generated _floatValueForKey:@"WebKitSampledPageTopColorMaxDifference"];
  *(v4 + 536) = v192;
  v193 = [generated _BOOLValueForKey:@"WebKitRequiresUserGestureToLoadVideo"];
  v194 = 128;
  if (!v193)
  {
    v194 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFFFF7FLL | v194;
  v195 = [generated _BOOLValueForKey:@"WebKitVideoPlaybackRequiresUserGesture"];
  v196 = 64;
  if (!v195)
  {
    v196 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFFFFBFLL | v196;
  v197 = [generated _BOOLValueForKey:@"WebKitAudioPlaybackRequiresUserGesture"];
  v198 = 32;
  if (!v197)
  {
    v198 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFFFFDFLL | v198;
  v199 = [generated _BOOLValueForKey:@"WebKitRequiresPageVisibilityToPlayAudio"];
  v200 = 16;
  if (!v199)
  {
    v200 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFFFFEFLL | v200;
  *(v4 + 744) &= ~0x20000u;
  if ([generated _BOOLValueForKey:@"WebKitPDFPluginHUDEnabled"])
  {
    v201 = 0x40000;
  }

  else
  {
    v201 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFBFFFF | v201;
  v202 = [generated _BOOLValueForKey:@"WebKitPDFPluginPageNumberIndicatorEnabled"];
  v203 = 0x800000;
  if (!v202)
  {
    v203 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFF7FFFFFLL | v203;
  v204 = [generated _BOOLValueForKey:@"WebKitPassiveTouchListenersAsDefaultOnDocument"];
  v205 = 0x2000000000000;
  if (!v204)
  {
    v205 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFDFFFFFFFFFFFFLL | v205;
  [generated _BOOLValueForKey:@"WebKitPunchOutWhiteBackgroundsInDarkMode"];
  WebCore::Settings::setPunchOutWhiteBackgroundsInDarkMode(v4);
  [generated _floatValueForKey:@"WebKitPasswordEchoDurationPreferenceKey"];
  *(v4 + 520) = v206;
  v207 = [generated _BOOLValueForKey:@"WebKitEnablePasswordEchoPreferenceKey"];
  v208 = 0x8000000000000;
  if (!v207)
  {
    v208 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFF7FFFFFFFFFFFFLL | v208;
  *(v4 + 528) = [generated _integerValueForKey:@"WebKitPitchCorrectionAlgorithm"];
  MEMORY[0x1CCA63A40](&v730, [generated _stringValueForKey:@"WebKitPictographFont"]);
  WebCore::SettingsBase::setPictographFontFamily();
  v210 = v730;
  v730 = 0;
  if (v210 && atomic_fetch_add_explicit(v210, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v210, v209);
  }

  v211 = [generated _BOOLValueForKey:@"WebKitTargetTextPseudoElementEnabled"];
  v212 = 0x40000;
  if (!v211)
  {
    v212 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFFBFFFFLL | v212;
  v213 = [generated _BOOLValueForKey:@"WebKitThumbAndTrackPseudoElementsEnabled"];
  v214 = 0x800000;
  if (!v213)
  {
    v214 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFF7FFFFFLL | v214;
  v215 = [generated _BOOLValueForKey:@"WebKitLinkDNSPrefetchEnabled"];
  v216 = 128;
  if (!v215)
  {
    v216 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFFFFF7FLL | v216;
  v217 = [generated _BOOLValueForKey:@"WebKitSelectShowPickerEnabled"];
  v218 = 0x40000000;
  if (!v217)
  {
    v218 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFBFFFFFFFLL | v218;
  v219 = [generated _BOOLValueForKey:@"WebKitPageAtRuleMarginDescriptorsEnabled"];
  v220 = 0x1000000000000;
  if (!v219)
  {
    v220 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFEFFFFFFFFFFFFLL | v220;
  [generated _BOOLValueForKey:@"WebKitAcceleratedFiltersEnabled"];
  WebCore::Settings::setAcceleratedFiltersEnabled(v4);
  v221 = [generated _BOOLValueForKey:@"WebKitAccessHandleEnabled"];
  v222 = 16;
  if (!v221)
  {
    v222 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFFFFEFLL | v222;
  v223 = [generated _BOOLValueForKey:@"WebKitDOMTestingAPIsEnabled"];
  v224 = 0x800000000000000;
  if (!v223)
  {
    v224 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xF7FFFFFFFFFFFFFFLL | v224;
  v225 = [generated _BOOLValueForKey:@"WebKitAllowMediaContentTypesRequiringHardwareSupportAsFallback"];
  v226 = 1024;
  if (!v225)
  {
    v226 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFFFBFFLL | v226;
  v227 = [generated _BOOLValueForKey:@"WebKitAllowPrivacySensitiveOperationsInNonPersistentDataStores"];
  v228 = 4096;
  if (!v227)
  {
    v228 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFFEFFFLL | v228;
  if ([generated _BOOLValueForKey:@"WebKitAllowViewportShrinkToFitContent"])
  {
    v229 = 0x100000;
  }

  else
  {
    v229 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFEFFFFF | v229;
  v230 = [generated _BOOLValueForKey:@"WebKitAllowWebGLInWorkers"];
  v231 = 0x800000000000;
  if (!v230)
  {
    v231 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFF7FFFFFFFFFFFLL | v231;
  v232 = [generated _BOOLValueForKey:@"WebKitAllowTopNavigationToDataURLs"];
  v233 = 0x4000;
  if (!v232)
  {
    v233 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFFBFFFLL | v233;
  v234 = [generated _BOOLValueForKey:@"WebKitAllowUniversalAccessFromFileURLs"];
  v235 = 0x8000;
  if (!v234)
  {
    v235 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFF7FFFLL | v235;
  if ([generated _BOOLValueForKey:@"WebKitAlwaysAllowLocalWebarchive"])
  {
    v236 = 0x1000000000000;
  }

  else
  {
    v236 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFEFFFFFFFFFFFFLL | v236;
  v237 = [generated _BOOLValueForKey:@"WebKitAppBadgeEnabled"];
  v238 = 0x400000;
  if (!v237)
  {
    v238 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFBFFFFFLL | v238;
  if ([generated _BOOLValueForKey:@"WebKitAppHighlightsEnabled"])
  {
    v239 = 0x400000;
  }

  else
  {
    v239 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFBFFFFFLL | v239;
  WebCore::Settings::setAsyncFrameScrollingEnabled(v4);
  WebCore::Settings::setAsyncOverflowScrollingEnabled(v4);
  if ([generated _BOOLValueForKey:@"WebKitUseAsyncUIKitInteractions"])
  {
    v240 = 0x800000;
  }

  else
  {
    v240 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFF7FFFFF | v240;
  v241 = [generated _BOOLValueForKey:@"WebKitAsyncClipboardAPIEnabled"];
  v242 = 0x1000000;
  if (!v241)
  {
    v242 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFEFFFFFFLL | v242;
  if ([generated _BOOLValueForKey:@"WebKitAttachmentWideLayoutEnabled"])
  {
    v243 = 0x800000;
  }

  else
  {
    v243 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFF7FFFFFLL | v243;
  v244 = [generated _BOOLValueForKey:@"WebKitExtendedAudioDescriptionsEnabled"];
  v245 = 0x4000000000;
  if (!v244)
  {
    v245 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFBFFFFFFFFFLL | v245;
  v246 = [generated _BOOLValueForKey:@"WebKitAudioDescriptionsEnabled"];
  v247 = 0x2000000000;
  if (!v246)
  {
    v247 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFDFFFFFFFFFLL | v247;
  if ([generated _BOOLValueForKey:@"WebKitDOMAudioSessionEnabled"])
  {
    v248 = 0x40000000;
  }

  else
  {
    v248 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFBFFFFFFFLL | v248;
  v249 = [generated _BOOLValueForKey:@"WebKitDOMAudioSessionFullEnabled"];
  v250 = 0x80000000;
  if (!v249)
  {
    v250 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFF7FFFFFFFLL | v250;
  if ([generated _BOOLValueForKey:@"WebKitAutomaticallyAdjustsViewScaleUsingMinimumEffectiveDeviceWidth"])
  {
    v251 = 0x40000000;
  }

  else
  {
    v251 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFBFFFFFFFLL | v251;
  if ([generated _BOOLValueForKey:@"WebKitBeaconAPIEnabled"])
  {
    v252 = 0x2000000000;
  }

  else
  {
    v252 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFDFFFFFFFFFLL | v252;
  if ([generated _BOOLValueForKey:@"WebKitBidiContentAwarePasteEnabled"])
  {
    v253 = 0x4000000000;
  }

  else
  {
    v253 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFBFFFFFFFFFLL | v253;
  v254 = [generated _BOOLValueForKey:@"WebKitBroadcastChannelEnabled"];
  v255 = 0x10000000000;
  if (!v254)
  {
    v255 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFEFFFFFFFFFFLL | v255;
  v256 = [generated _BOOLValueForKey:@"WebKitCSS3DTransformBackfaceVisibilityInteroperabilityEnabled"];
  v257 = 64;
  if (!v256)
  {
    v257 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFFFFBFLL | v257;
  v258 = [generated _BOOLValueForKey:@"WebKitCSSCounterStyleAtRuleImageSymbolsEnabled"];
  v259 = 0x10000;
  if (!v258)
  {
    v259 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFEFFFFLL | v259;
  v260 = [generated _BOOLValueForKey:@"WebKitAccentColorEnabled"];
  v261 = 8;
  if (!v260)
  {
    v261 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFFFFF7 | v261;
  if ([generated _BOOLValueForKey:@"WebKitCSSAnchorPositioningEnabled"])
  {
    v262 = 128;
  }

  else
  {
    v262 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFFFF7FLL | v262;
  v263 = [generated _BOOLValueForKey:@"WebKitCSSAnchorPositioningPositionVisibilityEnabled"];
  v264 = 256;
  if (!v263)
  {
    v264 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFFFEFFLL | v264;
  v265 = [generated _BOOLValueForKey:@"WebKitDevolvableWidgetsEnabled"];
  v266 = 0x20000000000000;
  if (!v265)
  {
    v266 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFDFFFFFFFFFFFFFLL | v266;
  v267 = [generated _BOOLValueForKey:@"WebKitCSSInputSecurityEnabled"];
  v268 = 0x200000;
  if (!v267)
  {
    v268 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFDFFFFFLL | v268;
  if ([generated _BOOLValueForKey:@"WebKitMasonryEnabled"])
  {
    v269 = 0x800000;
  }

  else
  {
    v269 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFF7FFFFFLL | v269;
  if ([generated _BOOLValueForKey:@"WebKitOverscrollBehaviorEnabled"])
  {
    v270 = 0x800000000000;
  }

  else
  {
    v270 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFF7FFFFFFFFFFFLL | v270;
  if ([generated _BOOLValueForKey:@"WebKitCSSPaintingAPIEnabled"])
  {
    v271 = 0x1000000;
  }

  else
  {
    v271 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFEFFFFFFLL | v271;
  v272 = [generated _BOOLValueForKey:@"WebKitCSSRhythmicSizingEnabled"];
  v273 = 0x8000000;
  if (!v272)
  {
    v273 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFF7FFFFFFLL | v273;
  if ([generated _BOOLValueForKey:@"WebKitCSSScrollAnchoringEnabled"])
  {
    v274 = 0x40000000;
  }

  else
  {
    v274 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFBFFFFFFFLL | v274;
  if ([generated _BOOLValueForKey:@"WebKitSpringTimingFunctionEnabled"])
  {
    v275 = 256;
  }

  else
  {
    v275 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFFFFEFFLL | v275;
  v276 = [generated _BOOLValueForKey:@"WebKitCSSTreeCountingFunctionsEnabled"];
  v277 = 0x40000000000;
  if (!v276)
  {
    v277 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFBFFFFFFFFFFLL | v277;
  v278 = [generated _BOOLValueForKey:@"WebKitCSSTypedOMColorEnabled"];
  v279 = 0x80000000000;
  if (!v278)
  {
    v279 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFF7FFFFFFFFFFLL | v279;
  v280 = [generated _BOOLValueForKey:@"WebKitCSSURLModifiersEnabled"];
  v281 = 0x100000000000;
  if (!v280)
  {
    v281 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFEFFFFFFFFFFFLL | v281;
  v282 = [generated _BOOLValueForKey:@"WebKitCSSUnprefixedBackdropFilterEnabled"];
  v283 = 0x200000000000;
  if (!v282)
  {
    v283 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFDFFFFFFFFFFFLL | v283;
  v284 = [generated _BOOLValueForKey:@"WebKitCSSAppearanceBaseEnabled"];
  v285 = 512;
  if (!v284)
  {
    v285 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFFFDFFLL | v285;
  v286 = [generated _BOOLValueForKey:@"WebKitCSSAxisRelativePositionKeywordsEnabled"];
  v287 = 1024;
  if (!v286)
  {
    v287 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFFFBFFLL | v287;
  v288 = [generated _BOOLValueForKey:@"WebKitCSSBackgroundClipBorderAreaEnabled"];
  v289 = 2048;
  if (!v288)
  {
    v289 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFFF7FFLL | v289;
  v290 = [generated _BOOLValueForKey:@"WebKitCSSColorLayersEnabled"];
  v291 = 4096;
  if (!v290)
  {
    v291 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFFEFFFLL | v291;
  v292 = [generated _BOOLValueForKey:@"WebKitCSSContrastColorEnabled"];
  v293 = 0x4000;
  if (!v292)
  {
    v293 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFFBFFFLL | v293;
  if ([generated _BOOLValueForKey:@"WebKitCSSCornerShapeEnabled"])
  {
    v294 = 0x8000;
  }

  else
  {
    v294 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFF7FFFLL | v294;
  v295 = [generated _BOOLValueForKey:@"WebKitCSSDPropertyEnabled"];
  v296 = 0x20000;
  if (!v295)
  {
    v296 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFDFFFFLL | v296;
  v297 = [generated _BOOLValueForKey:@"WebKitCSSDynamicRangeLimitMixEnabled"];
  v298 = 0x40000;
  if (!v297)
  {
    v298 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFBFFFFLL | v298;
  v299 = [generated _BOOLValueForKey:@"WebKitCSSConstrainedDynamicRangeLimitEnabled"];
  v300 = 0x2000;
  if (!v299)
  {
    v300 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFFDFFFLL | v300;
  v301 = [generated _BOOLValueForKey:@"WebKitCSSFieldSizingEnabled"];
  v302 = 0x80000;
  if (!v301)
  {
    v302 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFF7FFFFLL | v302;
  v303 = [generated _BOOLValueForKey:@"WebKitCSSFontVariantEmojiEnabled"];
  v304 = 0x100000;
  if (!v303)
  {
    v304 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFEFFFFFLL | v304;
  v305 = [generated _BOOLValueForKey:@"WebKitCSSLineClampEnabled"];
  v306 = 0x400000;
  if (!v305)
  {
    v306 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFBFFFFFLL | v306;
  if ([generated _BOOLValueForKey:@"WebKitCSSLineFitEdgeEnabled"])
  {
    v307 = 0x800000;
  }

  else
  {
    v307 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFF7FFFFFLL | v307;
  v308 = [generated _BOOLValueForKey:@"WebKitCSSProgressFunctionEnabled"];
  v309 = 0x2000000;
  if (!v308)
  {
    v309 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFDFFFFFFLL | v309;
  v310 = [generated _BOOLValueForKey:@"WebKitCSSRandomFunctionEnabled"];
  v311 = 0x4000000;
  if (!v310)
  {
    v311 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFBFFFFFFLL | v311;
  v312 = [generated _BOOLValueForKey:@"WebKitCSSRubyAlignEnabled"];
  v313 = 0x10000000;
  if (!v312)
  {
    v313 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFEFFFFFFFLL | v313;
  v314 = [generated _BOOLValueForKey:@"WebKitCSSRubyOverhangEnabled"];
  v315 = 0x20000000;
  if (!v314)
  {
    v315 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFDFFFFFFFLL | v315;
  v316 = [generated _BOOLValueForKey:@"WebKitCSSScrollbarColorEnabled"];
  v317 = 0x80000000;
  if (!v316)
  {
    v317 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFF7FFFFFFFLL | v317;
  v318 = [generated _BOOLValueForKey:@"WebKitCSSScrollbarGutterEnabled"];
  v319 = 0x100000000;
  if (!v318)
  {
    v319 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFEFFFFFFFFLL | v319;
  v320 = [generated _BOOLValueForKey:@"WebKitCSSScrollbarWidthEnabled"];
  v321 = 0x200000000;
  if (!v320)
  {
    v321 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFDFFFFFFFFLL | v321;
  v322 = [generated _BOOLValueForKey:@"WebKitCSSShapeFunctionEnabled"];
  v323 = 0x400000000;
  if (!v322)
  {
    v323 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFBFFFFFFFFLL | v323;
  v324 = [generated _BOOLValueForKey:@"WebKitCSSTextAutospaceEnabled"];
  v325 = 0x800000000;
  if (!v324)
  {
    v325 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFF7FFFFFFFFLL | v325;
  v326 = [generated _BOOLValueForKey:@"WebKitCSSTextBoxTrimEnabled"];
  v327 = 0x1000000000;
  if (!v326)
  {
    v327 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFEFFFFFFFFFLL | v327;
  if ([generated _BOOLValueForKey:@"WebKitCSSTextGroupAlignEnabled"])
  {
    v328 = 0x2000000000;
  }

  else
  {
    v328 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFDFFFFFFFFFLL | v328;
  v329 = [generated _BOOLValueForKey:@"WebKitCSSTextJustifyEnabled"];
  v330 = 0x4000000000;
  if (!v329)
  {
    v330 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFBFFFFFFFFFLL | v330;
  v331 = [generated _BOOLValueForKey:@"WebKitCSSTextSpacingTrimEnabled"];
  v332 = 0x8000000000;
  if (!v331)
  {
    v332 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFF7FFFFFFFFFLL | v332;
  v333 = [generated _BOOLValueForKey:@"WebKitCSSTextUnderlinePositionLeftRightEnabled"];
  v334 = 0x10000000000;
  if (!v333)
  {
    v334 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFEFFFFFFFFFFLL | v334;
  v335 = [generated _BOOLValueForKey:@"WebKitCSSTextWrapPrettyEnabled"];
  v336 = 0x20000000000;
  if (!v335)
  {
    v336 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFDFFFFFFFFFFLL | v336;
  if ([generated _BOOLValueForKey:@"WebKitCacheAPIEnabled"])
  {
    v337 = 0x20000000000;
  }

  else
  {
    v337 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFDFFFFFFFFFFLL | v337;
  if ([generated _BOOLValueForKey:@"WebKitCanvasColorSpaceEnabled"])
  {
    v338 = 0x40000000000;
  }

  else
  {
    v338 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFBFFFFFFFFFFLL | v338;
  [generated _BOOLValueForKey:@"WebKitCanvasFiltersEnabled"];
  WebCore::Settings::setCanvasFiltersEnabled(v4);
  if ([generated _BOOLValueForKey:@"WebKitCanvasLayersEnabled"])
  {
    v339 = 0x200000000000;
  }

  else
  {
    v339 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFDFFFFFFFFFFFLL | v339;
  if ([generated _BOOLValueForKey:@"WebKitCanvasUsesAcceleratedDrawing"])
  {
    v340 = 0x2000000;
  }

  else
  {
    v340 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFDFFFFFF | v340;
  v341 = [generated _BOOLValueForKey:@"WebKitCanvasPixelFormatEnabled"];
  v342 = 0x400000000000;
  if (!v341)
  {
    v342 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFDBFFFFFFFFFFFLL | v342;
  v343 = [generated _BOOLValueForKey:@"WebKitClearSiteDataHTTPHeaderEnabled"];
  v344 = 0x8000000000000;
  if (!v343)
  {
    v344 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFF7FFFFFFFFFFFFLL | v344;
  v345 = [generated _BOOLValueForKey:@"WebKitClearSiteDataExecutionContextsSupportEnabled"];
  v346 = 0x4000000000000;
  if (!v345)
  {
    v346 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFBFFFFFFFFFFFFLL | v346;
  if ([generated _BOOLValueForKey:@"WebKitCloseWatcherEnabled"])
  {
    v347 = 0x20000000000000;
  }

  else
  {
    v347 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFDFFFFFFFFFFFFFLL | v347;
  if ([generated _BOOLValueForKey:@"WebKitInputTypeColorEnabled"])
  {
    v348 = 0x20000000000;
  }

  else
  {
    v348 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFDFFFFFFFFFFLL | v348;
  [generated _BOOLValueForKey:@"WebKitShowDebugBorders"];
  WebCore::Settings::setShowDebugBorders(v4);
  [generated _BOOLValueForKey:@"WebKitShowRepaintCounter"];
  WebCore::Settings::setShowRepaintCounter(v4);
  v349 = [generated _BOOLValueForKey:@"WebKitCompressionStreamEnabled"];
  v350 = 0x100000000000000;
  if (!v349)
  {
    v350 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFEFFFFFFFFFFFFFFLL | v350;
  v351 = [generated _BOOLValueForKey:@"WebKitContactPickerAPIEnabled"];
  v352 = 0x200000000000000;
  if (!v351)
  {
    v352 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFDFFFFFFFFFFFFFFLL | v352;
  v353 = [generated _BOOLValueForKey:@"WebKitContentInsetBackgroundFillEnabled"];
  v354 = 0x800000000000000;
  if (!v353)
  {
    v354 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xE7FFFFFFFFFFFFFFLL | v354;
  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFFFFFELL | [generated _BOOLValueForKey:@"WebKitCookieStoreManagerEnabled"];
  v355 = [generated _BOOLValueForKey:@"WebKitCookieStoreAPIExtendedAttributesEnabled"];
  v356 = 0x8000000000000000;
  if (!v355)
  {
    v356 = 0;
  }

  *(v4 + 680) = v356 & 0x8000000000000000 | *(v4 + 680) & 0x7FFFFFFFFFFFFFFFLL;
  v357 = [generated _BOOLValueForKey:@"WebKitCookieStoreAPIEnabled"];
  v358 = 0x4000000000000000;
  if (!v357)
  {
    v358 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xBFFFFFFFFFFFFFFFLL | v358;
  v359 = [generated _BOOLValueForKey:@"WebKitCrossDocumentViewTransitionsEnabled"];
  v360 = 4;
  if (!v359)
  {
    v360 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFFFFFBLL | v360;
  if ([generated _BOOLValueForKey:@"WebKitCrossOriginEmbedderPolicyEnabled"])
  {
    v361 = 16;
  }

  else
  {
    v361 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFFFFEFLL | v361;
  v362 = [generated _BOOLValueForKey:@"WebKitCrossOriginOpenerPolicyEnabled"];
  v363 = 32;
  if (!v362)
  {
    v363 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFFFFFFFFFFFFDFLL | v363;
  if ([generated _BOOLValueForKey:@"WebKitDOMPasteAccessRequestsEnabled"])
  {
    v364 = 0x200000000000000;
  }

  else
  {
    v364 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFDFFFFFFFFFFFFFFLL | v364;
  if ([generated _BOOLValueForKey:@"WebKitMutationEventsEnabled"])
  {
    v365 = 0x800000000;
  }

  else
  {
    v365 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFF7FFFFFFFFLL | v365;
  v366 = [generated _BOOLValueForKey:@"WebKitDOMTimersThrottlingEnabledPreferenceKey"];
  v367 = 0x1000000000000000;
  if (!v366)
  {
    v367 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xEFFFFFFFFFFFFFFFLL | v367;
  if ([generated _BOOLValueForKey:@"WebKitDataTransferItemsEnabled"])
  {
    v368 = 0x1000000000000;
  }

  else
  {
    v368 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFEFFFFFFFFFFFFLL | v368;
  if ([generated _BOOLValueForKey:@"WebKitDataListElementEnabled"])
  {
    v369 = 0x800000000000;
  }

  else
  {
    v369 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFF7FFFFFFFFFFFLL | v369;
  v370 = [generated _BOOLValueForKey:@"WebKitInputTypeDateEnabled"];
  v371 = 0x80000000000;
  if (!v370)
  {
    v371 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFF7FFFFFFFFFFLL | v371;
  v372 = [generated _BOOLValueForKey:@"WebKitDateTimeInputsEditableComponentsEnabled"];
  v373 = 0x2000000000000;
  if (!v372)
  {
    v373 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFDFFFFFFFFFFFFLL | v373;
  v374 = [generated _BOOLValueForKey:@"WebKitDeclarativeWebPush"];
  v375 = 0x8000000;
  if (!v374)
  {
    v375 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFF7FFFFFFLL | v375;
  if ([generated _BOOLValueForKey:@"WebKitShouldDeferAsynchronousScriptsUntilAfterDocumentLoadOrFirstPaint"])
  {
    v376 = 0x100000000000;
  }

  else
  {
    v376 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFEFFFFFFFFFFFLL | v376;
  if ([generated _BOOLValueForKey:@"WebKitDeprecationReportingEnabled"])
  {
    v377 = 0x4000000000000;
  }

  else
  {
    v377 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFFBFFFFFFFFFFFFLL | v377;
  v378 = [generated _BOOLValueForKey:@"WebKitDetachableMediaSourceEnabled"];
  v379 = 0x80000000000000;
  if (!v378)
  {
    v379 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFF7FFFFFFFFFFFFFLL | v379;
  v380 = [generated _BOOLValueForKey:@"WebKitUAVisualTransitionDetectionEnabled"];
  v381 = 0x20000000;
  if (!v380)
  {
    v381 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFDFFFFFFFLL | v381;
  v382 = [generated _BOOLValueForKey:@"WebKitDiagnosticLoggingEnabled"];
  v383 = 0x40000000000000;
  if (!v382)
  {
    v383 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFBFFFFFFFFFFFFFLL | v383;
  if ([generated _BOOLValueForKey:@"WebKitDigitalCredentialsEnabled"])
  {
    v384 = 0x20000000000000;
  }

  else
  {
    v384 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFDFFFFFFFFFFFFFLL | v384;
  if ([generated _BOOLValueForKey:@"WebKitDirectoryUploadEnabled"])
  {
    v385 = 0x80000000000000;
  }

  else
  {
    v385 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFF7FFFFFFFFFFFFFLL | v385;
  if ([generated _BOOLValueForKey:@"WebKitIsThirdPartyCookieBlockingDisabled"])
  {
    v386 = 0x1000000000000000;
  }

  else
  {
    v386 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xEFFFFFFFFFFFFFFFLL | v386;
  v387 = [generated _BOOLValueForKey:@"WebKitIsFirstPartyWebsiteDataRemovalDisabled"];
  v388 = 0x8000000000000;
  if (!v387)
  {
    v388 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFF7FFFFFFFFFFFFLL | v388;
  if ([generated _BOOLValueForKey:@"WebKitShouldDropNearSuspendedAssertionAfterDelay"])
  {
    v389 = 0x800000000000;
  }

  else
  {
    v389 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFF7FFFFFFFFFFFLL | v389;
  if ([generated _BOOLValueForKey:@"WebKitDynamicSiteInterventionsEnabled"])
  {
    v390 = 0x4000000000000000;
  }

  else
  {
    v390 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xBFFFFFFFFFFFFFFFLL | v390;
  v391 = [generated _BOOLValueForKey:@"WebKitEmbedElementEnabled"];
  v392 = 0x8000000000000000;
  if (!v391)
  {
    v392 = 0;
  }

  *(v4 + 688) = v392 & 0x8000000000000000 | *(v4 + 688) & 0x7FFFFFFFFFFFFFFFLL;
  if ([generated _BOOLValueForKey:@"WebKitCanvasFingerprintingQuirkEnabled"])
  {
    v393 = 0x100000000000;
  }

  else
  {
    v393 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFEFFFFFFFFFFFLL | v393;
  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFFFFFFELL | [generated _BOOLValueForKey:@"WebKitEnableElementCurrentCSSZoom"];
  [generated _BOOLValueForKey:@"WebKitICECandidateFilteringEnabled"];
  WebCore::Settings::setICECandidateFilteringEnabled(v4);
  if ([generated _BOOLValueForKey:@"WebKitLegacyEncryptedMediaAPIEnabled"])
  {
    v394 = 0x1000000000000;
  }

  else
  {
    v394 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFEFFFFFFFFFFFFLL | v394;
  [generated _BOOLValueForKey:@"WebKitMockCaptureDevicesEnabled"];
  WebCore::Settings::setMockCaptureDevicesEnabled(v4);
  v395 = [generated _BOOLValueForKey:@"WebKitAuxclickEventEnabled"];
  v396 = 0x100000000;
  if (!v395)
  {
    v396 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFEFFFFFFFFLL | v396;
  if ([generated _BOOLValueForKey:@"WebKitBlobFileAccessEnforcementEnabled"])
  {
    v397 = 0x8000000000;
  }

  else
  {
    v397 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFF7FFFFFFFFFLL | v397;
  if ([generated _BOOLValueForKey:@"WebKitEnterKeyHintEnabled"])
  {
    v398 = 8;
  }

  else
  {
    v398 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFFFFFF7 | v398;
  if ([generated _BOOLValueForKey:@"WebKitEventHandlerDrivenSmoothKeyboardScrollingEnabled"])
  {
    v399 = 16;
  }

  else
  {
    v399 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFFFFFEFLL | v399;
  if ([generated _BOOLValueForKey:@"WebKitFTPEnabled"])
  {
    v400 = 0x20000;
  }

  else
  {
    v400 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFFDFFFFLL | v400;
  v401 = [generated _BOOLValueForKey:@"WebKitFileSystemEnabled"];
  v402 = 64;
  if (!v401)
  {
    v402 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFFFFFBFLL | v402;
  v403 = [generated _BOOLValueForKey:@"WebKitFileSystemWritableStreamEnabled"];
  v404 = 128;
  if (!v403)
  {
    v404 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFFFFF7FLL | v404;
  v405 = [generated _BOOLValueForKey:@"WebKitFileReaderAPIEnabled"];
  v406 = 32;
  if (!v405)
  {
    v406 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFFFFFDFLL | v406;
  v407 = [generated _BOOLValueForKey:@"WebKitFilterLinkDecorationByDefaultEnabled"];
  v408 = 256;
  if (!v407)
  {
    v408 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFFF7EFFLL | v408;
  if ([generated _BOOLValueForKey:@"WebKitFormControlRefreshEnabled"])
  {
    v409 = 0x400000000;
  }

  else
  {
    v409 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFBFFFFFFFFLL | v409;
  v410 = [generated _BOOLValueForKey:@"WebKitIFrameResourceMonitoringTestingSettingsEnabled"];
  v411 = 0x4000000;
  if (!v410)
  {
    v411 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFBFFFFFFLL | v411;
  v412 = [generated _BOOLValueForKey:@"WebKitIFrameResourceMonitoringEnabled"];
  v413 = 0x2000000;
  if (!v412)
  {
    v413 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFDFFFFFFLL | v413;
  v414 = [generated _BOOLValueForKey:@"WebKitFullScreenKeyboardLock"];
  v415 = 0x1000000000;
  if (!v414)
  {
    v415 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFEFFFFFFFFFLL | v415;
  v416 = [generated _BOOLValueForKey:@"WebKitFullScreenEnabled"];
  v417 = 0x800000000;
  if (!v416)
  {
    v417 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFF7FFFFFFFFLL | v417;
  if ([generated _BOOLValueForKey:@"WebKitBlockMediaLayerRehostingInWebContentProcess"])
  {
    v418 = 0x40000000000;
  }

  else
  {
    v418 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFBFFFFFFFFFFLL | v418;
  if ([generated _BOOLValueForKey:@"WebKitManageCaptureStatusBarInGPUProcessEnabled"])
  {
    v419 = 0x8000;
  }

  else
  {
    v419 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFFFF7FFFLL | v419;
  v420 = [generated _BOOLValueForKey:@"WebKitUseGPUProcessForWebGLEnabled"];
  v421 = 0x80000000000;
  if (!v420)
  {
    v421 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFF7FFFFFFFFFFLL | v421;
  if ([generated _BOOLValueForKey:@"WebKitWebRTCPlatformCodecsInGPUProcessEnabled"])
  {
    v422 = 8;
  }

  else
  {
    v422 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFFFFF7 | v422;
  if ([generated _BOOLValueForKey:@"WebKitGamepadTriggerRumbleEnabled"])
  {
    v423 = 0x8000000000;
  }

  else
  {
    v423 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFF7FFFFFFFFFLL | v423;
  if ([generated _BOOLValueForKey:@"WebKitGamepadVibrationActuatorEnabled"])
  {
    v424 = 0x10000000000;
  }

  else
  {
    v424 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFEFFFFFFFFFFLL | v424;
  v425 = [generated _BOOLValueForKey:@"WebKitGamepadsEnabled"];
  v426 = 0x20000000000;
  if (!v425)
  {
    v426 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFDFFFFFFFFFFLL | v426;
  if ([generated _BOOLValueForKey:@"WebKitGenericCueAPIEnabled"])
  {
    v427 = 0x8000000000;
  }

  else
  {
    v427 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFF7FFFFFFFFFLL | v427;
  if ([generated _BOOLValueForKey:@"WebKitGeolocationAPIEnabled"])
  {
    v428 = 0x80000;
  }

  else
  {
    v428 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFF7FFFFLL | v428;
  [generated _BOOLValueForKey:@"WebKitGraphicsContextFiltersEnabled"];
  WebCore::Settings::setGraphicsContextFiltersEnabled(v4);
  v429 = [generated _BOOLValueForKey:@"WebKitAcceleratedDrawingEnabled"];
  v430 = 4;
  if (!v429)
  {
    v430 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFFFFFFBLL | v430;
  if ([generated _BOOLValueForKey:@"WebKitModelElementEnabled"])
  {
    v431 = 0x10000;
  }

  else
  {
    v431 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFFFEFFFFLL | v431;
  if ([generated _BOOLValueForKey:@"WebKitMediaEnabled"])
  {
    v432 = 0x10000000000;
  }

  else
  {
    v432 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFEFFFFFFFFFFLL | v432;
  if ([generated _BOOLValueForKey:@"WebKitInputTypeColorEnhancementsEnabled"])
  {
    v433 = 0x40000000000;
  }

  else
  {
    v433 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFBFFFFFFFFFFLL | v433;
  v434 = [generated _BOOLValueForKey:@"WebKitDetailsAutoExpandEnabled"];
  v435 = 0x8000000000000;
  if (!v434)
  {
    v435 = 0;
  }

  *(v4 + 688) = *(v4 + 688) & 0xFFF7FFFFFFFFFFFFLL | v435;
  v436 = [generated _BOOLValueForKey:@"WebKitCommandAttributesEnabled"];
  v437 = 0x80000000000000;
  if (!v436)
  {
    v437 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFF7FFFFFFFFFFFFFLL | v437;
  v438 = [generated _BOOLValueForKey:@"WebKitHTMLLegacyAttributeValueSerializationEnabled"];
  v439 = 0x10000000;
  if (!v438)
  {
    v439 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFEFFFFFFFLL | v439;
  v440 = [generated _BOOLValueForKey:@"WebKitPopoverAttributeEnabled"];
  v441 = 0x20000000000000;
  if (!v440)
  {
    v441 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFDFFFFFFFFFFFFFLL | v441;
  if ([generated _BOOLValueForKey:@"WebKitSwitchControlEnabled"])
  {
    v442 = 0x20000;
  }

  else
  {
    v442 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFFDFFFFLL | v442;
  v443 = [generated _BOOLValueForKey:@"WebKitHTTPSByDefaultEnabled"];
  v444 = 0x40000000;
  if (!v443)
  {
    v444 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFBFFFFFFFLL | v444;
  [generated _BOOLValueForKey:@"WebKitHiddenPageDOMTimerThrottlingAutoIncreases"];
  WebCore::Settings::setHiddenPageDOMTimerThrottlingAutoIncreases(v4);
  [generated _BOOLValueForKey:@"WebKitHiddenPageDOMTimerThrottlingEnabled"];
  WebCore::Settings::setHiddenPageDOMTimerThrottlingEnabled(v4);
  if ([generated _BOOLValueForKey:@"WebKitHostedBlurMaterialInMediaControlsEnabled"])
  {
    v445 = 0x8000;
  }

  else
  {
    v445 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFF7FFF | v445;
  if ([generated _BOOLValueForKey:@"WebKitIOSurfaceLosslessCompressionEnabled"])
  {
    v446 = 0x80000000;
  }

  else
  {
    v446 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFF7FFFFFFFLL | v446;
  v447 = [generated _BOOLValueForKey:@"WebKitItpDebugModeEnabled"];
  v448 = 0x2000000000000000;
  if (!v447)
  {
    v448 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xDFFFFFFFFFFFFFFFLL | v448;
  [generated _BOOLValueForKey:@"WebKitTextAutosizingUsesIdempotentMode"];
  WebCore::Settings::setTextAutosizingUsesIdempotentMode(v4);
  if ([generated _BOOLValueForKey:@"WebKitIgnoreIframeEmbeddingProtectionsEnabled"])
  {
    v449 = 0x400000000;
  }

  else
  {
    v449 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFBFFFFFFFFLL | v449;
  v450 = [generated _BOOLValueForKey:@"WebKitImageAnalysisDuringFindInPageEnabled"];
  v451 = 0x100000000000;
  if (!v450)
  {
    v451 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFEFFFFFFFFFFFLL | v451;
  if ([generated _BOOLValueForKey:@"WebKitImageAnimationControlEnabled"])
  {
    v452 = 0x80000;
  }

  else
  {
    v452 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFF7FFFFLL | v452;
  v453 = [generated _BOOLValueForKey:@"WebKitInWindowFullscreenEnabled"];
  v454 = 0x2000000000;
  if (!v453)
  {
    v454 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFDFFFFFFFFFLL | v454;
  if ([generated _BOOLValueForKey:@"WebKitIndexedDBAPIEnabled"])
  {
    v455 = 0x8000000000;
  }

  else
  {
    v455 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFF7FFFFFFFFFLL | v455;
  if ([generated _BOOLValueForKey:@"WebKitJavaScriptEnabled"])
  {
    v456 = 0x8000;
  }

  else
  {
    v456 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFF7FFFLL | v456;
  [generated _BOOLValueForKey:@"WebKitLayerBasedSVGEngineEnabled"];
  WebCore::Settings::setLayerBasedSVGEngineEnabled(v4);
  v457 = [generated _BOOLValueForKey:@"WebKitLazyIframeLoadingEnabled"];
  v458 = 8;
  if (!v457)
  {
    v458 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFFFFFF7 | v458;
  v459 = [generated _BOOLValueForKey:@"WebKitLazyImageLoadingEnabled"];
  v460 = 16;
  if (!v459)
  {
    v460 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFFFFFEFLL | v460;
  [generated _BOOLValueForKey:@"WebKitLegacyOverflowScrollingTouchEnabled"];
  WebCore::Settings::setLegacyOverflowScrollingTouchEnabled(v4);
  [generated _BOOLValueForKey:@"WebKitLegacyLineLayoutVisualCoverageEnabled"];
  WebCore::Settings::setLegacyLineLayoutVisualCoverageEnabled(v4);
  if ([generated _BOOLValueForKey:@"WebKitShowModalDialogEnabled"])
  {
    v461 = 0x1000000000000000;
  }

  else
  {
    v461 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xEFFFFFFFFFFFFFFFLL | v461;
  v462 = [generated _BOOLValueForKey:@"WebKitMediaCaptureRequiresSecureConnection"];
  v463 = 64;
  if (!v462)
  {
    v463 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFFFFFFBFLL | v463;
  v464 = [generated _BOOLValueForKey:@"WebKitLimitedMatroskaSupportEnabled"];
  v465 = 0x10000000000000;
  if (!v464)
  {
    v465 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFEFFFFFFFFFFFFFLL | v465;
  v466 = [generated _BOOLValueForKey:@"WebKitLinkSanitizerEnabled"];
  v467 = 4096;
  if (!v466)
  {
    v467 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFFFEFFFLL | v467;
  if ([generated _BOOLValueForKey:@"WebKitLinkPreconnectEarlyHintsEnabled"])
  {
    v468 = 256;
  }

  else
  {
    v468 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFFFFEFFLL | v468;
  if ([generated _BOOLValueForKey:@"WebKitLinkPrefetchEnabled"])
  {
    v469 = 1024;
  }

  else
  {
    v469 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFFFFBFFLL | v469;
  v470 = [generated _BOOLValueForKey:@"WebKitLoadWebArchiveWithEphemeralStorageEnabled"];
  v471 = 0x2000000000000;
  if (!v470)
  {
    v471 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFDFFFFFFFFFFFFLL | v471;
  if ([generated _BOOLValueForKey:@"WebKitLocalFileContentSniffingEnabledPreferenceKey"])
  {
    v472 = 0x8000;
  }

  else
  {
    v472 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFFF7FFFLL | v472;
  if ([generated _BOOLValueForKey:@"WebKitLocalNetworkAccessEnabledPreferenceKey"])
  {
    v473 = 0x10000;
  }

  else
  {
    v473 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFFEFFFFLL | v473;
  v474 = [generated _BOOLValueForKey:@"WebKitLocalStorageEnabledPreferenceKey"];
  v475 = 393216;
  if (!v474)
  {
    v475 = 0x40000;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFF9FFFFLL | v475;
  if ([generated _BOOLValueForKey:@"WebKitLogsPageMessagesToSystemConsoleEnabled"])
  {
    v476 = 0x200000;
  }

  else
  {
    v476 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFDFFFFFLL | v476;
  if ([generated _BOOLValueForKey:@"WebKitLoginStatusAPIEnabled"])
  {
    v477 = 0x80000;
  }

  else
  {
    v477 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFF7FFFFLL | v477;
  if ([generated _BOOLValueForKey:@"WebKitMainContentUserGestureOverrideEnabled"])
  {
    v478 = 0x400000;
  }

  else
  {
    v478 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFBFFFFFLL | v478;
  v479 = [generated _BOOLValueForKey:@"WebKitManagedMediaSourceEnabled"];
  v480 = 0x100000000000000;
  if (!v479)
  {
    v480 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFEFFFFFFFFFFFFFFLL | v480;
  v481 = [generated _BOOLValueForKey:@"WebKitManagedMediaSourceNeedsAirPlay"];
  v482 = 0x800000000000000;
  if (!v481)
  {
    v482 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xF7FFFFFFFFFFFFFFLL | v482;
  [generated _BOOLValueForKey:@"WebKitCoreMathMLEnabled"];
  WebCore::Settings::setCoreMathMLEnabled(v4);
  v483 = [generated _BOOLValueForKey:@"WebKitMediaCapabilitiesExtensionsEnabled"];
  v484 = 0x2000000;
  if (!v483)
  {
    v484 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFDFFFFFFLL | v484;
  if ([generated _BOOLValueForKey:@"WebKitMediaCapabilityGrantsEnabled"])
  {
    v485 = 0x200000000;
  }

  else
  {
    v485 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFDFFFFFFFFLL | v485;
  v486 = [generated _BOOLValueForKey:@"WebKitMediaPlaybackEnabled"];
  v487 = 0x10000000;
  if (!v486)
  {
    v487 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFEFFFFFFFLL | v487;
  v488 = [generated _BOOLValueForKey:@"WebKitMediaSessionEnabled"];
  v489 = 0x40000000000000;
  if (!v488)
  {
    v489 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFBFFFFFFFFFFFFFLL | v489;
  if ([generated _BOOLValueForKey:@"WebKitMediaSourceEnabled"])
  {
    v490 = 0x80000000;
  }

  else
  {
    v490 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFF7FFFFFFFLL | v490;
  v491 = [generated _BOOLValueForKey:@"WebKitMediaDevicesEnabled"];
  v492 = 128;
  if (!v491)
  {
    v492 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFFFFFF7FLL | v492;
  v493 = [generated _BOOLValueForKey:@"WebKitMediaRecorderEnabledWebM"];
  v494 = 0x20000000000000;
  if (!v493)
  {
    v494 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFDFFFFFFFFFFFFFLL | v494;
  v495 = [generated _BOOLValueForKey:@"WebKitMediaRecorderEnabled"];
  v496 = 0x8000000000000;
  if (!v495)
  {
    v496 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFF7FFFFFFFFFFFFLL | v496;
  v497 = [generated _BOOLValueForKey:@"WebKitMediaSessionCaptureToggleAPIEnabled"];
  v498 = 0x40000000;
  if (!v497)
  {
    v498 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFBFFFFFFFLL | v498;
  *(v4 + 728) &= ~0x2000000000000000uLL;
  if ([generated _BOOLValueForKey:@"WebKitMediaSourcePrefersDecompressionSession"])
  {
    v499 = 0x1000000000000000;
  }

  else
  {
    v499 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xEFFFFFFFFFFFFFFFLL | v499;
  if ([generated _BOOLValueForKey:@"WebKitMediaStreamTrackProcessingEnabled"])
  {
    v500 = 256;
  }

  else
  {
    v500 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFFFFFEFFLL | v500;
  [generated _BOOLValueForKey:@"WebKitShouldUseModernAVContentKeySession"];
  WebCore::Settings::setShouldUseModernAVContentKeySession(v4);
  v501 = [generated _BOOLValueForKey:@"WebKitMomentumScrollingAnimatorEnabled"];
  v502 = 0x400000000;
  if (!v501)
  {
    v502 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFBFFFFFFFFLL | v502;
  if ([generated _BOOLValueForKey:@"WebKitInputTypeMonthEnabled"])
  {
    v503 = 0x200000000000;
  }

  else
  {
    v503 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFDFFFFFFFFFFFLL | v503;
  if ([generated _BOOLValueForKey:@"WebKitMouseEventsSimulationEnabled"])
  {
    v504 = 0x200000000;
  }

  else
  {
    v504 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFDFFFFFFFFLL | v504;
  if ([generated _BOOLValueForKey:@"WebKitMuteCameraOnMicrophoneInterruptionEnabled"])
  {
    v505 = 1024;
  }

  else
  {
    v505 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFFFFFBFFLL | v505;
  v506 = [generated _BOOLValueForKey:@"WebKitNavigationAPIEnabled"];
  v507 = 0x1000000000;
  if (!v506)
  {
    v507 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFEFFFFFFFFFLL | v507;
  v508 = [generated _BOOLValueForKey:@"WebKitNavigatorUserAgentDataJavaScriptAPIEnabled"];
  v509 = 0x2000000000;
  if (!v508)
  {
    v509 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFDFFFFFFFFFLL | v509;
  v510 = [generated _BOOLValueForKey:@"WebKitUseSiteSpecificSpoofing"];
  v511 = 0x40000000000;
  if (!v510)
  {
    v511 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFBFFFFFFFFFFLL | v511;
  v512 = [generated _BOOLValueForKey:@"WebKitNeedsStorageAccessFromFileURLsQuirk"];
  v513 = 0x80000000000;
  if (!v512)
  {
    v513 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFF7FFFFFFFFFFLL | v513;
  if ([generated _BOOLValueForKey:@"WebKitFlexFormattingContextIntegrationEnabled"])
  {
    v514 = 2048;
  }

  else
  {
    v514 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFFFF7FFLL | v514;
  v515 = [generated _BOOLValueForKey:@"WebKitNotificationsEnabled"];
  v516 = 0x20000;
  if (!v515)
  {
    v516 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFFFDFFFFLL | v516;
  v517 = [generated _BOOLValueForKey:@"WebKitObservableEnabled"];
  v518 = 0x100000000000;
  if (!v517)
  {
    v518 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFEFFFFFFFFFFFLL | v518;
  if ([generated _BOOLValueForKey:@"WebKitOffscreenCanvasInWorkersEnabled"])
  {
    v519 = 0x100000;
  }

  else
  {
    v519 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFFEFFFFFLL | v519;
  v520 = [generated _BOOLValueForKey:@"WebKitOffscreenCanvasEnabled"];
  v521 = 0x80000;
  if (!v520)
  {
    v521 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFFF7FFFFLL | v521;
  if ([generated _BOOLValueForKey:@"WebKitEnableOpaqueLoadingForMedia"])
  {
    v522 = 4;
  }

  else
  {
    v522 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFFFFFFBLL | v522;
  if ([generated _BOOLValueForKey:@"WebKitOpportunisticSweepingAndGarbageCollectionEnabled"])
  {
    v523 = 0x200000000000;
  }

  else
  {
    v523 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFDFFFFFFFFFFFLL | v523;
  v524 = [generated _BOOLValueForKey:@"WebKitOverlappingBackingStoreProvidersEnabled"];
  v525 = 0x400000000000;
  if (!v524)
  {
    v525 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFBFFFFFFFFFFFLL | v525;
  v526 = [generated _BOOLValueForKey:@"WebKitPermissionsAPIEnabled"];
  v527 = 0x10000000000000;
  if (!v526)
  {
    v527 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFEFFFFFFFFFFFFFLL | v527;
  if ([generated _BOOLValueForKey:@"WebKitGetCoalescedEventsEnabled"])
  {
    v528 = 0x200000;
  }

  else
  {
    v528 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFDFFFFFLL | v528;
  if ([generated _BOOLValueForKey:@"WebKitGetPredictedEventsEnabled"])
  {
    v529 = 0x400000;
  }

  else
  {
    v529 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFBFFFFFLL | v529;
  v530 = [generated _BOOLValueForKey:@"WebKitPreferPageRenderingUpdatesNear60FPSEnabled"];
  v531 = 0x80000000000000;
  if (!v530)
  {
    v531 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFF7FFFFFFFFFFFFFLL | v531;
  if ([generated _BOOLValueForKey:@"WebKitVideoFullsceenPrefersMostVisibleHeuristic"])
  {
    v532 = 0x2000000000;
  }

  else
  {
    v532 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFDFFFFFFFFFLL | v532;
  v533 = [generated _BOOLValueForKey:@"WebKitPrivateClickMeasurementDebugModeEnabled"];
  v534 = 0x200000000000000;
  if (!v533)
  {
    v534 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFDFFFFFFFFFFFFFFLL | v534;
  v535 = [generated _BOOLValueForKey:@"WebKitPrivateClickMeasurementEnabled"];
  v536 = 0x400000000000000;
  if (!v535)
  {
    v536 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFBFFFFFFFFFFFFFFLL | v536;
  v537 = [generated _BOOLValueForKey:@"WebKitPrivateTokenUsageByThirdPartyEnabled"];
  v538 = 0x1000000000000000;
  if (!v537)
  {
    v538 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xEFFFFFFFFFFFFFFFLL | v538;
  v539 = [generated _BOOLValueForKey:@"WebKitPushAPIEnabled"];
  v540 = 0x4000000000000000;
  if (!v539)
  {
    v540 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xBFFFFFFFFFFFFFFFLL | v540;
  v541 = [generated _BOOLValueForKey:@"WebKitLegacyPluginQuirkForMailSignaturesEnabled"];
  v542 = 64;
  if (!v541)
  {
    v542 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFFFFFBFLL | v542;
  if ([generated _BOOLValueForKey:@"WebKitGoogleAntiFlickerOptimizationQuirkEnabled"])
  {
    v543 = 0x800000;
  }

  else
  {
    v543 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFF7FFFFFLL | v543;
  v544 = [generated _BOOLValueForKey:@"WebKitRemoteMediaSessionManagerEnabled"];
  v545 = 0x8000000000000000;
  if (!v544)
  {
    v545 = 0;
  }

  *(v4 + 704) = v545 & 0x8000000000000000 | *(v4 + 704) & 0x7FFFFFFFFFFFFFFFLL;
  if ([generated _BOOLValueForKey:@"WebKitRemotePlaybackEnabled"])
  {
    v546 = 2048;
  }

  else
  {
    v546 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFFF7FF | v546;
  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFFFFFELL | [generated _BOOLValueForKey:@"WebKitRemoteSnapshottingEnabled"];
  *(v4 + 728) &= ~0x800000000000uLL;
  if ([generated _BOOLValueForKey:@"WebKitRequestVideoFrameCallbackEnabled"])
  {
    v547 = 8;
  }

  else
  {
    v547 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFFFFF7 | v547;
  if ([generated _BOOLValueForKey:@"WebKitLoginStatusAPIRequiresWebAuthnEnabled"])
  {
    v548 = 0x100000;
  }

  else
  {
    v548 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFFFFFFFFEFFFFFLL | v548;
  if ([generated _BOOLValueForKey:@"WebKitSpeakerSelectionRequiresUserGesture"])
  {
    v549 = 0x2000;
  }

  else
  {
    v549 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFFFFDFFFLL | v549;
  if ([generated _BOOLValueForKey:@"WebKitFullscreenRequirementForScreenOrientationLockingEnabled"])
  {
    v550 = 0x40000;
  }

  else
  {
    v550 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFFFFBFFFFLL | v550;
  if ([generated _BOOLValueForKey:@"WebKitGetUserMediaRequiresFocus"])
  {
    v551 = 4;
  }

  else
  {
    v551 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFFFFFFFBLL | v551;
  v552 = [generated _BOOLValueForKey:@"WebKitResourceLoadSchedulingEnabled"];
  v553 = 256;
  if (!v552)
  {
    v553 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFFFEFFLL | v553;
  [generated _BOOLValueForKey:@"WebKitResourceUsageOverlayVisible"];
  WebCore::Settings::setResourceUsageOverlayVisible(v4);
  v554 = [generated _BOOLValueForKey:@"WebKitRespondToThermalPressureAggressively"];
  v555 = 512;
  if (!v554)
  {
    v555 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFFFDFFLL | v555;
  if ([generated _BOOLValueForKey:@"WebKitSKAttributionEnabled"])
  {
    v556 = 1024;
  }

  else
  {
    v556 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFFFBFFLL | v556;
  if ([generated _BOOLValueForKey:@"WebKitIsSameSiteStrictEnforcementEnabled"])
  {
    v557 = 0x800000000000000;
  }

  else
  {
    v557 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xF7FFFFFFFFFFFFFFLL | v557;
  if ([generated _BOOLValueForKey:@"WebKitScopedCustomElementRegistryEnabled"])
  {
    v558 = 2048;
  }

  else
  {
    v558 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFFF7FFLL | v558;
  if ([generated _BOOLValueForKey:@"WebKitScreenOrientationLockingAPIEnabled"])
  {
    v559 = 0x2000;
  }

  else
  {
    v559 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFFDFFFLL | v559;
  if ([generated _BOOLValueForKey:@"WebKitScreenOrientationAPIEnabled"])
  {
    v560 = 4096;
  }

  else
  {
    v560 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFFEFFFLL | v560;
  v561 = [generated _BOOLValueForKey:@"WebKitScreenTimeEnabled"];
  v562 = 0x4000000;
  if (!v561)
  {
    v562 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFBFFFFFFLL | v562;
  v563 = [generated _BOOLValueForKey:@"WebKitScreenWakeLockAPIEnabled"];
  v564 = 0x4000;
  if (!v563)
  {
    v564 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFFBFFFLL | v564;
  if ([generated _BOOLValueForKey:@"WebKitScreenCaptureEnabled"])
  {
    v565 = 4096;
  }

  else
  {
    v565 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFFFFFFEFFFLL | v565;
  *(v4 + 712) &= ~0x20000uLL;
  WebCore::Settings::setScrollingPerformanceTestingEnabled(v4);
  v566 = [generated _BOOLValueForKey:@"WebKitScrollToTextFragmentFeatureDetectionEnabled"];
  v567 = 0x200000;
  if (!v566)
  {
    v567 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFDFFFFFLL | v567;
  v568 = [generated _BOOLValueForKey:@"WebKitScrollToTextFragmentGenerationEnabled"];
  v569 = 0x400000;
  if (!v568)
  {
    v569 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFBFFFFFLL | v569;
  if ([generated _BOOLValueForKey:@"WebKitScrollToTextFragmentIndicatorEnabled"])
  {
    v570 = 0x800000;
  }

  else
  {
    v570 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFF7FFFFFLL | v570;
  if ([generated _BOOLValueForKey:@"WebKitScrollToTextFragmentMarkingEnabled"])
  {
    v571 = 0x1000000;
  }

  else
  {
    v571 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFEFFFFFFLL | v571;
  if ([generated _BOOLValueForKey:@"WebKitScrollToTextFragmentEnabled"])
  {
    v572 = 0x100000;
  }

  else
  {
    v572 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFEFFFFFLL | v572;
  if ([generated _BOOLValueForKey:@"WebKitScrollAnimatorEnabled"])
  {
    v573 = 0x40000;
  }

  else
  {
    v573 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFBFFFFLL | v573;
  v574 = [generated _BOOLValueForKey:@"WebKitScrollDrivenAnimationsEnabled"];
  v575 = 0x80000;
  if (!v574)
  {
    v575 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFF7FFFFLL | v575;
  if ([generated _BOOLValueForKey:@"WebKitSecureContextChecksEnabled"])
  {
    v576 = 0x20000000;
  }

  else
  {
    v576 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFDFFFFFFFLL | v576;
  *(v4 + 744) &= ~0x400000u;
  if ([generated _BOOLValueForKey:@"WebKitServiceWorkerInstallEventEnabled"])
  {
    v577 = 0x100000000;
  }

  else
  {
    v577 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFEFFFFFFFFLL | v577;
  if ([generated _BOOLValueForKey:@"WebKitServiceWorkerNavigationPreloadEnabled"])
  {
    v578 = 0x200000000;
  }

  else
  {
    v578 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFF9FFFFFFFFLL | v578;
  v579 = [generated _BOOLValueForKey:@"WebKitShapeDetection"];
  v580 = 0x4000000000;
  if (!v579)
  {
    v580 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFBFFFFFFFFFLL | v580;
  v581 = [generated _BOOLValueForKey:@"WebKitSharedWorkerEnabled"];
  v582 = 0x8000000000;
  if (!v581)
  {
    v582 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFF7FFFFFFFFFLL | v582;
  if ([generated _BOOLValueForKey:@"WebKitShowMediaStatsContextMenuItemEnabled"])
  {
    v583 = 0x800000000000000;
  }

  else
  {
    v583 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xF7FFFFFFFFFFFFFFLL | v583;
  [generated _BOOLValueForKey:@"WebKitShowFrameProcessBordersEnabled"];
  WebCore::Settings::setShowFrameProcessBorders(v4);
  v584 = [generated _BOOLValueForKey:@"WebKitSidewaysWritingModesEnabled"];
  v585 = 4;
  if (!v584)
  {
    v585 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFFFFFFBLL | v585;
  if ([generated _BOOLValueForKey:@"WebKitSiteIsolationEnabled"])
  {
    v586 = 8;
  }

  else
  {
    v586 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFFFFFF7 | v586;
  v587 = [generated _BOOLValueForKey:@"WebKitSpeechRecognitionEnabled"];
  v588 = 64;
  if (!v587)
  {
    v588 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFFFFFBFLL | v588;
  v589 = [generated _BOOLValueForKey:@"WebKitSpeechSynthesisAPIEnabled"];
  v590 = 128;
  if (!v589)
  {
    v590 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFFFFF7FLL | v590;
  v591 = [generated _BOOLValueForKey:@"WebKitStorageAPIEstimateEnabled"];
  v592 = 2048;
  if (!v591)
  {
    v592 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFFFF7FFLL | v592;
  if ([generated _BOOLValueForKey:@"WebKitStorageAPIEnabled"])
  {
    v593 = 1024;
  }

  else
  {
    v593 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFFFFFBFFLL | v593;
  [generated _integerValueForKey:@"WebKitStorageBlockingPolicy"];
  WebCore::Settings::setStorageBlockingPolicy();
  [generated _BOOLValueForKey:@"WebKitSupportHDRCompositorTonemappingEnabled"];
  WebCore::Settings::setSupportHDRCompositorTonemappingEnabled(v4);
  [generated _BOOLValueForKey:@"WebKitSupportHDRDisplayEnabled"];
  WebCore::Settings::setSupportHDRDisplayEnabled(v4);
  *(v4 + 712) |= 0x80000000000000uLL;
  if ([generated _BOOLValueForKey:@"WebKitTextAnimationsEnabled"])
  {
    v594 = 0x2000;
  }

  else
  {
    v594 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFFDFFF | v594;
  *(v4 + 728) &= ~0x400000000000uLL;
  v595 = [generated _BOOLValueForKey:@"WebKitTextTracksInMSEEnabled"];
  v596 = 0x400000000000000;
  if (!v595)
  {
    v596 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFBFFFFFFFFFFFFFFLL | v596;
  if ([generated _BOOLValueForKey:@"WebKitThreadedAnimationResolutionEnabled"])
  {
    v597 = 0x100000000;
  }

  else
  {
    v597 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFFEFFFFFFFFLL | v597;
  v598 = [generated _BOOLValueForKey:@"WebKitTiledScrollingIndicatorVisible"];
  v599 = 0x4000000000000000;
  if (!v598)
  {
    v599 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xBFFFFFFFFFFFFFFFLL | v599;
  if ([generated _BOOLValueForKey:@"WebKitInputTypeTimeEnabled"])
  {
    v600 = 0x400000000000;
  }

  else
  {
    v600 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFBFFFFFFFFFFFLL | v600;
  if ([generated _BOOLValueForKey:@"WebKitTopContentInsetBackgroundCanChangeAfterScrolling"])
  {
    v601 = 0x1000000;
  }

  else
  {
    v601 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFEFFFFFFLL | v601;
  v602 = [generated _BOOLValueForKey:@"WebKitTrackConfigurationEnabled"];
  v603 = 0x2000000;
  if (!v602)
  {
    v603 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFFDFFFFFFLL | v603;
  v604 = [generated _BOOLValueForKey:@"WebKitTrustedTypesEnabled"];
  v605 = 0x10000000;
  if (!v604)
  {
    v605 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFEFFFFFFFLL | v605;
  v606 = [generated _BOOLValueForKey:@"WebKitURLPatternAPIEnabled"];
  v607 = 0x400000000;
  if (!v606)
  {
    v607 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFBFFFFFFFFLL | v607;
  if ([generated _BOOLValueForKey:@"WebKitUndoManagerAPIEnabled"])
  {
    v608 = 0x40000000;
  }

  else
  {
    v608 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFFBFFFFFFFLL | v608;
  if ([generated _BOOLValueForKey:@"WebKitUnifiedPDFEnabled"])
  {
    v609 = 0x1000000000;
  }

  else
  {
    v609 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFFFEFFFFFFFFFLL | v609;
  if ([generated _BOOLValueForKey:@"WebKitIPAddressAndLocalhostMixedContentUpgradeTestingEnabled"])
  {
    v610 = 0x100000000;
  }

  else
  {
    v610 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFEFFFFFFFFLL | v610;
  if ([generated _BOOLValueForKey:@"WebKitUpgradeMixedContentEnabled"])
  {
    v611 = 0x200000000;
  }

  else
  {
    v611 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFFDFFFFFFFFLL | v611;
  v612 = [generated _BOOLValueForKey:@"WebKitUseIFCForSVGText"];
  v613 = 0x2000000000;
  if (!v612)
  {
    v613 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFDFFFFFFFFFLL | v613;
  if ([generated _BOOLValueForKey:@"WebKitUseGiantTiles"])
  {
    v614 = 0x1000000000;
  }

  else
  {
    v614 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFFEFFFFFFFFFLL | v614;
  v615 = [generated _BOOLValueForKey:@"WebKitUserActivationAPIEnabled"];
  v616 = 0x20000000000;
  if (!v615)
  {
    v616 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFDFFFFFFFFFFLL | v616;
  v617 = [generated _BOOLValueForKey:@"WebKitUserGesturePromisePropagationEnabled"];
  v618 = 0x40000000000;
  if (!v617)
  {
    v618 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFFBFFFFFFFFFFLL | v618;
  v619 = [generated _BOOLValueForKey:@"WebKitServiceWorkersUserGestureEnabled"];
  v620 = 0x800000000;
  if (!v619)
  {
    v620 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFF7FFFFFFFFLL | v620;
  v621 = [generated _BOOLValueForKey:@"WebKitVerifyWindowOpenUserGestureFromUIProcess"];
  v622 = 0x200000000000;
  if (!v621)
  {
    v622 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFDFFFFFFFFFFFLL | v622;
  if ([generated _BOOLValueForKey:@"WebKitVerticalFormControlsEnabled"])
  {
    v623 = 0x400000000000;
  }

  else
  {
    v623 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFFBFFFFFFFFFFFLL | v623;
  if ([generated _BOOLValueForKey:@"WebKitVideoRendererProtectedFallbackDisabled"])
  {
    v624 = 0x20000000;
  }

  else
  {
    v624 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xDFFFFFFF | v624;
  if ([generated _BOOLValueForKey:@"WebKitVideoRendererUseDecompressionSessionForProtected"])
  {
    v625 = 0x40000000;
  }

  else
  {
    v625 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xBFFFFFFF | v625;
  v626 = [generated _BOOLValueForKey:@"WebKitViewTransitionClassesEnabled"];
  v627 = 0x2000000000000;
  if (!v626)
  {
    v627 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFDFFFFFFFFFFFFLL | v627;
  if ([generated _BOOLValueForKey:@"WebKitViewTransitionTypesEnabled"])
  {
    v628 = 0x4000000000000;
  }

  else
  {
    v628 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFFBFFFFFFFFFFFFLL | v628;
  if ([generated _BOOLValueForKey:@"WebKitViewTransitionsEnabled"])
  {
    v629 = 0x8000000000000;
  }

  else
  {
    v629 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFF7FFFFFFFFFFFFLL | v629;
  *(v4 + 728) &= ~0x200000000000uLL;
  v630 = [generated _BOOLValueForKey:@"WebKitVisualViewportAPIEnabled"];
  v631 = 0x10000000000000;
  if (!v630)
  {
    v631 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFFEFFFFFFFFFFFFFLL | v631;
  if ([generated _BOOLValueForKey:@"WebKitVisuallyContiguousBidiTextSelectionEnabled"])
  {
    v632 = 0x1000000;
  }

  else
  {
    v632 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFEFFFFFF | v632;
  if ([generated _BOOLValueForKey:@"WebKitWebAPIStatisticsEnabled"])
  {
    v633 = 0x80000000000000;
  }

  else
  {
    v633 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFF7FFFFFFFFFFFFFLL | v633;
  if ([generated _BOOLValueForKey:@"WebKitWebAPIsInShadowRealmEnabled"])
  {
    v634 = 0x100000000000000;
  }

  else
  {
    v634 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFEFFFFFFFFFFFFFFLL | v634;
  v635 = [generated _BOOLValueForKey:@"WebKitWebAnimationsOverallProgressPropertyEnabled"];
  v636 = 0x800000000000000;
  if (!v635)
  {
    v636 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xF7FFFFFFFFFFFFFFLL | v636;
  if ([generated _BOOLValueForKey:@"WebKitWebAnimationsCustomEffectsEnabled"])
  {
    v637 = 0x200000000000000;
  }

  else
  {
    v637 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFDFFFFFFFFFFFFFFLL | v637;
  if ([generated _BOOLValueForKey:@"WebKitWebAnimationsCustomFrameRateEnabled"])
  {
    v638 = 0x400000000000000;
  }

  else
  {
    v638 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xFBFFFFFFFFFFFFFFLL | v638;
  if ([generated _BOOLValueForKey:@"WebKitWebArchiveDebugModeEnabledPreferenceKey"])
  {
    v639 = 0x4000000000000;
  }

  else
  {
    v639 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFBFFFFFFFFFFFFLL | v639;
  if ([generated _BOOLValueForKey:@"WebKitWebArchiveTestingModeEnabled"])
  {
    v640 = 0x8000000000000;
  }

  else
  {
    v640 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFF7FFFFFFFFFFFFLL | v640;
  if ([generated _BOOLValueForKey:@"WebKitWebAuthenticationASEnabled"])
  {
    v641 = 0x10000;
  }

  else
  {
    v641 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFEFFFF | v641;
  v642 = [generated _BOOLValueForKey:@"WebKitWebAuthenticationEnabled"];
  v643 = 0x40000000000000;
  if (!v642)
  {
    v643 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFBFFFFFFFFFFFFFLL | v643;
  if ([generated _BOOLValueForKey:@"WebKitWebCryptoSafeCurvesEnabled"])
  {
    v644 = 0x1000000000000000;
  }

  else
  {
    v644 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xEFFFFFFFFFFFFFFFLL | v644;
  if ([generated _BOOLValueForKey:@"WebKitWebCryptoX25519Enabled"])
  {
    v645 = 0x2000000000000000;
  }

  else
  {
    v645 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xDFFFFFFFFFFFFFFFLL | v645;
  v646 = [generated _BOOLValueForKey:@"WebKitWebLocksAPIEnabled"];
  v647 = 32;
  if (!v646)
  {
    v647 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFFFFDFLL | v647;
  v648 = [generated _BOOLValueForKey:@"WebKitWebShareFileAPIEnabled"];
  v649 = 1024;
  if (!v648)
  {
    v649 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFFFBFFLL | v649;
  v650 = [generated _BOOLValueForKey:@"WebKitWebShareEnabled"];
  v651 = 512;
  if (!v650)
  {
    v651 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFFFDFFLL | v651;
  if ([generated _BOOLValueForKey:@"WebKitWebAssemblyESMIntegrationEnabled"])
  {
    v652 = 0x400000000000;
  }

  else
  {
    v652 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFFFFBFFFFFFFFFFFLL | v652;
  if ([generated _BOOLValueForKey:@"WebKitWebCodecsAV1Enabled"])
  {
    v653 = 0x80000000000000;
  }

  else
  {
    v653 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFF7FFFFFFFFFFFFFLL | v653;
  if ([generated _BOOLValueForKey:@"WebKitWebCodecsAudioEnabled"])
  {
    v654 = 0x100000000000000;
  }

  else
  {
    v654 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFEFFFFFFFFFFFFFFLL | v654;
  if ([generated _BOOLValueForKey:@"WebKitWebCodecsHEVCEnabled"])
  {
    v655 = 0x200000000000000;
  }

  else
  {
    v655 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFDFFFFFFFFFFFFFFLL | v655;
  if ([generated _BOOLValueForKey:@"WebKitWebCodecsVideoEnabled"])
  {
    v656 = 0x400000000000000;
  }

  else
  {
    v656 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xFBFFFFFFFFFFFFFFLL | v656;
  if ([generated _BOOLValueForKey:@"WebKitWebGLDraftExtensionsEnabled"])
  {
    v657 = 0x4000000000000000;
  }

  else
  {
    v657 = 0;
  }

  *(v4 + 720) = *(v4 + 720) & 0xBFFFFFFFFFFFFFFFLL | v657;
  if ([generated _BOOLValueForKey:@"WebKitWebGLTimerQueriesEnabled"])
  {
    v658 = 2;
  }

  else
  {
    v658 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFFFFFDLL | v658;
  if ([generated _BOOLValueForKey:@"WebKitWebGLEnabled"])
  {
    v659 = 0x8000000000000000;
  }

  else
  {
    v659 = 0;
  }

  *(v4 + 720) = v659 & 0x8000000000000000 | *(v4 + 720) & 0x7FFFFFFFFFFFFFFFLL;
  v660 = [generated _BOOLValueForKey:@"WebKitWebGPUHDREnabled"];
  v661 = 8;
  if (!v660)
  {
    v661 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFFFFF7 | v661;
  v662 = [generated _BOOLValueForKey:@"WebKitWebXRWebGPUBindingsEnabled"];
  v663 = 0x2000;
  if (!v662)
  {
    v663 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFFDFFFLL | v663;
  if ([generated _BOOLValueForKey:@"WebKitWebGPUEnabled"])
  {
    v664 = 4;
  }

  else
  {
    v664 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFFFFFBLL | v664;
  if ([generated _BOOLValueForKey:@"WebKitWebInspectorEngineeringSettingsAllowed"])
  {
    v665 = 16;
  }

  else
  {
    v665 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFFFFEFLL | v665;
  if ([generated _BOOLValueForKey:@"WebKitWebRTCAV1CodecEnabled"])
  {
    v666 = 0x4000000000000000;
  }

  else
  {
    v666 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xBFFFFFFFFFFFFFFFLL | v666;
  if ([generated _BOOLValueForKey:@"WebKitWebRTCDTMFEnabled"])
  {
    v667 = 0x8000000000000000;
  }

  else
  {
    v667 = 0;
  }

  *(v4 + 736) = v667 & 0x8000000000000000 | *(v4 + 736) & 0x7FFFFFFFFFFFFFFFLL;
  *(v4 + 744) = *(v4 + 744) & 0xFFFFFFFE | [generated _BOOLValueForKey:@"WebKitWebRTCEncodedTransformEnabled"];
  if ([generated _BOOLValueForKey:@"WebKitWebRTCH265CodecEnabled"])
  {
    v668 = 2;
  }

  else
  {
    v668 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFFFFFD | v668;
  if ([generated _BOOLValueForKey:@"WebKitWebRTCL4SEnabled"])
  {
    v669 = 4;
  }

  else
  {
    v669 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFFFFFB | v669;
  v670 = [generated _BOOLValueForKey:@"WebKitWebRTCMediaPipelineAdditionalLoggingEnabled"];
  v671 = 128;
  if (!v670)
  {
    v671 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFFFF7FLL | v671;
  v672 = [generated _BOOLValueForKey:@"WebKitLegacyWebRTCOfferOptionsEnabled"];
  v673 = 0x800000000000000;
  if (!v672)
  {
    v673 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xF7FFFFFFFFFFFFFFLL | v673;
  if ([generated _BOOLValueForKey:@"WebKitPeerConnectionVideoScalingAdaptationDisabled"])
  {
    v674 = 0x2000000000000000;
  }

  else
  {
    v674 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xDFFFFFFFFFFFFFFFLL | v674;
  if ([generated _BOOLValueForKey:@"WebKitPeerConnectionEnabled"])
  {
    v675 = 0x1000000000000000;
  }

  else
  {
    v675 = 0;
  }

  *(v4 + 736) = *(v4 + 736) & 0xEFFFFFFFFFFFFFFFLL | v675;
  if ([generated _BOOLValueForKey:@"WebKitWebRTCRemoteVideoFrameEnabled"])
  {
    v676 = 16;
  }

  else
  {
    v676 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFFFFEF | v676;
  if ([generated _BOOLValueForKey:@"WebKitWebRTCSFrameTransformEnabled"])
  {
    v677 = 32;
  }

  else
  {
    v677 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFFFFDF | v677;
  if ([generated _BOOLValueForKey:@"WebKitWebRTCSocketsProxyingEnabled"])
  {
    v678 = 64;
  }

  else
  {
    v678 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFFFFBF | v678;
  MEMORY[0x1CCA63A40](&v730, [generated _stringValueForKey:@"WebKitWebRTCUDPPortRange"]);
  v680 = v730;
  if (v730)
  {
    atomic_fetch_add_explicit(v730, 2u, memory_order_relaxed);
  }

  v681 = *(v4 + 672);
  *(v4 + 672) = v680;
  if (v681 && atomic_fetch_add_explicit(v681, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v681, v679);
  }

  v682 = v730;
  v730 = 0;
  if (v682 && atomic_fetch_add_explicit(v682, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v682, v679);
  }

  if ([generated _BOOLValueForKey:@"WebKitWebRTCVP9Profile0CodecEnabled"])
  {
    v683 = 128;
  }

  else
  {
    v683 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFFFF7F | v683;
  if ([generated _BOOLValueForKey:@"WebKitWebRTCVP9Profile2CodecEnabled"])
  {
    v684 = 256;
  }

  else
  {
    v684 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFFFEFF | v684;
  if ([generated _BOOLValueForKey:@"WebKitWebRTCInterfaceMonitoringViaNWEnabled"])
  {
    v685 = 512;
  }

  else
  {
    v685 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFFFDFF | v685;
  if ([generated _BOOLValueForKey:@"WebKitWebTransportEnabled"])
  {
    v686 = 4096;
  }

  else
  {
    v686 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFFEFFFLL | v686;
  v687 = [generated _BOOLValueForKey:@"WebKitInputTypeWeekEnabled"];
  v688 = 0x800000000000;
  if (!v687)
  {
    v688 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFF7FFFFFFFFFFFLL | v688;
  v689 = [generated _BOOLValueForKey:@"WebKitWheelEventGesturesBecomeNonBlocking"];
  v690 = 0x8000;
  if (!v689)
  {
    v690 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFF7FFFLL | v690;
  v691 = [generated _BOOLValueForKey:@"WebKitPassiveWheelListenersAsDefaultOnDocument"];
  v692 = 0x4000000000000;
  if (!v691)
  {
    v692 = 0;
  }

  *(v4 + 704) = *(v4 + 704) & 0xFFFBFFFFFFFFFFFFLL | v692;
  v693 = [generated _BOOLValueForKey:@"WebKitWorkerAsynchronousURLErrorHandlingEnabled"];
  v694 = 0x40000;
  if (!v693)
  {
    v694 = 0;
  }

  *(v4 + 728) = *(v4 + 728) & 0xFFFFFFFFFFFBFFFFLL | v694;
  if ([generated _BOOLValueForKey:@"WebKitWriteRichTextDataWhenCopyingOrDragging"])
  {
    v695 = 0x80000;
  }

  else
  {
    v695 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFF7FFFF | v695;
  if ([generated _BOOLValueForKey:@"WebKitWritingSuggestionsAttributeEnabled"])
  {
    v696 = 4096;
  }

  else
  {
    v696 = 0;
  }

  *(v4 + 744) = *(v4 + 744) & 0xFFFFEFFF | v696;
  v697 = [generated _BOOLValueForKey:@"WebKitIsFirstPartyWebsiteDataRemovalLiveOnTestingEnabled"];
  v698 = 0x10000000000000;
  if (!v697)
  {
    v698 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFEFFFFFFFFFFFFFLL | v698;
  v699 = [generated _BOOLValueForKey:@"WebKitIsFirstPartyWebsiteDataRemovalReproTestingEnabled"];
  v700 = 0x20000000000000;
  if (!v699)
  {
    v700 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFDFFFFFFFFFFFFFLL | v700;
  if ([generated _BOOLValueForKey:@"WebKitAltitudeAngleEnabled"])
  {
    v701 = 0x80000;
  }

  else
  {
    v701 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFFFFF7FFFFLL | v701;
  v702 = [generated _BOOLValueForKey:@"WebKitAzimuthAngleEnabled"];
  v703 = 0x200000000;
  if (!v702)
  {
    v703 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFFFFFDFFFFFFFFLL | v703;
  v704 = [generated _BOOLValueForKey:@"WebKitInputTypeDateTimeLocalEnabled"];
  v705 = 0x100000000000;
  if (!v704)
  {
    v705 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFEFFFFFFFFFFFLL | v705;
  v706 = [generated _BOOLValueForKey:@"WebKitCaretPositionFromPointEnabled"];
  v707 = 0x1000000000000;
  if (!v706)
  {
    v707 = 0;
  }

  *(v4 + 680) = *(v4 + 680) & 0xFFFEFFFFFFFFFFFFLL | v707;
  v708 = [generated _BOOLValueForKey:@"WebKitHiddenUntilFoundEnabled"];
  v709 = 0x8000000;
  if (!v708)
  {
    v709 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFF7FFFFFFLL | v709;
  v710 = [generated _BOOLValueForKey:@"WebKitHTTPEquivEnabled"];
  v711 = 0x20000000;
  if (!v710)
  {
    v711 = 0;
  }

  *(v4 + 696) = *(v4 + 696) & 0xFFFFFFFFDFFFFFFFLL | v711;
  v712 = [generated _BOOLValueForKey:@"WebKitShadowRootReferenceTargetEnabledForAriaOwns"];
  v713 = 0x2000000000;
  if (!v712)
  {
    v713 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFDFFFFFFFFFLL | v713;
  v714 = [generated _BOOLValueForKey:@"WebKitShadowRootReferenceTargetEnabled"];
  v715 = 0x1000000000;
  if (!v714)
  {
    v715 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFEFFFFFFFFFLL | v715;
  v716 = [generated _BOOLValueForKey:@"WebKitRequestIdleCallbackEnabled"];
  v717 = 2;
  if (!v716)
  {
    v717 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFFFFFDLL | v717;
  v718 = [generated _BOOLValueForKey:@"WebKitRequestStorageAccessThrowsExceptionUntilReload"];
  v719 = 4;
  if (!v718)
  {
    v719 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFFFFFFFBLL | v719;
  v720 = [generated _BOOLValueForKey:@"WebKitScrollendEventEnabled"];
  v721 = 0x2000000;
  if (!v720)
  {
    v721 = 0;
  }

  *(v4 + 712) = *(v4 + 712) & 0xFFFFFFFFFDFFFFFFLL | v721;
  [generated _BOOLValueForKey:@"WebKitCSSWordBreakAutoPhraseEnabled"];
  WebCore::Settings::setCSSWordBreakAutoPhraseEnabled(v4);
  v722 = [generated _BOOLValueForKey:@"WebKitLowPowerVideoAudioBufferSizeEnabled"];
  *(WebCore::DeprecatedGlobalSettings::shared(v722) + 18) = v722;
  WebCore::DeprecatedGlobalSettings::setMockScrollbarsEnabled([generated _BOOLValueForKey:@"WebKitMockScrollbarsEnabled"]);
  WebCore::DeprecatedGlobalSettings::setAVFoundationEnabled([generated _BOOLValueForKey:@"WebKitAVFoundationEnabled"]);
  v723 = [generated _BOOLValueForKey:@"WebKitAttachmentElementEnabled"];
  *(WebCore::DeprecatedGlobalSettings::shared(v723) + 24) = v723;
  v724 = [generated _BOOLValueForKey:@"WebKitCustomPasteboardDataEnabled"];
  *(WebCore::DeprecatedGlobalSettings::shared(v724) + 21) = v724;
  v725 = [generated _BOOLValueForKey:@"WebKitDisableScreenSizeOverride"];
  *(WebCore::DeprecatedGlobalSettings::shared(v725) + 17) = v725;
  v726 = [generated _BOOLValueForKey:@"WebKitModelDocumentEnabled"];
  *(WebCore::DeprecatedGlobalSettings::shared(v726) + 29) = v726;
  v727 = [generated _BOOLValueForKey:@"WebKitReadableByteStreamAPIEnabled"];
  *(WebCore::DeprecatedGlobalSettings::shared(v727) + 26) = v727;
  v728 = [generated _BOOLValueForKey:@"WebKitUsesWebContentRestrictionsForFilter"];
  *(WebCore::DeprecatedGlobalSettings::shared(v728) + 30) = v728;
  v729 = [generated _BOOLValueForKey:@"WebKitWebRTCAudioLatencyAdaptationEnabled"];
  *(WebCore::DeprecatedGlobalSettings::shared(v729) + 25) = v729;
}

@end