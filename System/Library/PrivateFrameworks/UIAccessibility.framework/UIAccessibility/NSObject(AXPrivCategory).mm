@interface NSObject(AXPrivCategory)
+ (BOOL)_accessibilityHasUnitTestingOrientation;
+ (id)_accessibilityTextChecker;
+ (uint64_t)_accessibilityUnitTestingOrientation;
+ (void)_accessibilitySetUnitTestingOrientation:()AXPrivCategory;
+ (void)_accessibilityUndoAttributedDecisionCaching:()AXPrivCategory;
- (BOOL)_accessibilityActivateKeyboardReturnKey;
- (BOOL)_accessibilityAdjustScrollOffset:()AXPrivCategory;
- (BOOL)_accessibilityCanPerformEscapeAction;
- (BOOL)_accessibilityDidSetOpaqueElementProvider;
- (BOOL)_accessibilityFrameSupportsMediaAnalysis;
- (BOOL)_accessibilityHasDescendantOfType:()AXPrivCategory;
- (BOOL)_accessibilityHierarchyIsRTL;
- (BOOL)_accessibilityIsDescendantOfElement:()AXPrivCategory;
- (BOOL)_accessibilityIsDraggableElementAttribute;
- (BOOL)_accessibilityIsInCollectionCell;
- (BOOL)_accessibilityIsInTableCell;
- (BOOL)_accessibilityIsPressed;
- (BOOL)_accessibilityIsViewDescendantOfElement:()AXPrivCategory;
- (BOOL)_accessibilityIsVisibleByCompleteHitTest:()AXPrivCategory;
- (BOOL)_accessibilityOverridesPotentiallyAttributedAPISelector:()AXPrivCategory;
- (BOOL)_accessibilityPrefersNonAttributedAttributeWithOverrideSelector:()AXPrivCategory nonAttributedSelector:attributedSelector:;
- (BOOL)_accessibilityRespondsToUserInteractionForElement:()AXPrivCategory;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)_accessibilitySupportsAudiographs;
- (BOOL)_accessibilitySupportsRangeForLineNumber;
- (BOOL)accessibilityShouldEnumerateContainerElementsArrayDirectly;
- (UIAccessibilityAddToDragSessionCustomAction)_accessibilityAddToDragSessionCustomAction;
- (__CFString)_accessibilityRotorTypeStringForCustomRotor:()AXPrivCategory;
- (__CFString)_iosAccessibilityAttributeValue:()AXPrivCategory;
- (__CFString)accessibilityLabelForRange:()AXPrivCategory;
- (__n128)_accessibilityJailTransform;
- (char)_accessibilityScrollSelectorForDirection:()AXPrivCategory;
- (double)__accessibilityVisibleScrollArea:()AXPrivCategory;
- (double)_accessibilityAllowedGeometryOverlap;
- (double)_accessibilityChildrenUnionContentFrame;
- (double)_accessibilityCompareFrameForScrollParent:()AXPrivCategory frame:fromOrientation:toOrientation:;
- (double)_accessibilityConvertSystemBoundedScreenRectToContextSpace:()AXPrivCategory;
- (double)_accessibilityDelayBeforeUpdatingOnActivation;
- (double)_accessibilityDisplayRectForSceneReferenceRect:()AXPrivCategory;
- (double)_accessibilityFocusableFrameForZoom;
- (double)_accessibilityFrameForSorting;
- (double)_accessibilityKeyboardFrame;
- (double)_accessibilityLeftOpaqueScrollViewContentOffsetLimit;
- (double)_accessibilityOffsetForOpaqueElementDirection:()AXPrivCategory;
- (double)_accessibilityRightOpaqueScrollViewContentOffsetLimit;
- (double)_accessibilityScrollRectToVisible:()AXPrivCategory;
- (double)_accessibilityTextCursorFrame;
- (double)_accessibilityVisibleFrame:()AXPrivCategory;
- (double)_accessibilityVisiblePointHitTestingAnyElement:()AXPrivCategory;
- (double)_axFrameForBoundsCheck:()AXPrivCategory;
- (double)_axScreenBoundsForBoundsCheck;
- (double)_handleRotatingFrame:()AXPrivCategory fromOrientation:toOrientation:;
- (double)accessibilityBoundsForTextMarkers:()AXPrivCategory;
- (double)accessibilityVisibleContentRect;
- (id)__accessibilityRetrieveFrameOrPathDelegate;
- (id)__accessibilityRoleDescription;
- (id)_accessibilityAXAttributedHint;
- (id)_accessibilityAXAttributedLabel;
- (id)_accessibilityAXAttributedUserInputLabels;
- (id)_accessibilityAXAttributedUserInputLabelsIncludingFallbacks;
- (id)_accessibilityAXAttributedValue;
- (id)_accessibilityAccessibleAncestor;
- (id)_accessibilityAccessibleDescendants;
- (id)_accessibilityActiveKeyboard;
- (id)_accessibilityAllContextDescriptors;
- (id)_accessibilityAncestorForSiblingsWithType:()AXPrivCategory;
- (id)_accessibilityAncestorIsKindOf:()AXPrivCategory;
- (id)_accessibilityApplication;
- (id)_accessibilityApplicationWindowContextIDs;
- (id)_accessibilityAttributedValueForRange:()AXPrivCategory;
- (id)_accessibilityAuditIssuesWithOptions:()AXPrivCategory;
- (id)_accessibilityBaseHitTest:()AXPrivCategory withEvent:;
- (id)_accessibilityBrailleMap;
- (id)_accessibilityBrailleMapsFromGraphData;
- (id)_accessibilityChartDescriptor;
- (id)_accessibilityChartStructureDescription;
- (id)_accessibilityChildrenForContinuityDisplay;
- (id)_accessibilityCollectionViewCellContentSubviews;
- (id)_accessibilityContainerInDirection:()AXPrivCategory;
- (id)_accessibilityContainerTypes;
- (id)_accessibilityContainingParentForOrdering;
- (id)_accessibilityControlDescendantWithAction:()AXPrivCategory;
- (id)_accessibilityControlDescendantWithTarget:()AXPrivCategory;
- (id)_accessibilityConvertMathExpression:()AXPrivCategory;
- (id)_accessibilityConvertSystemBoundedPathToContextSpace:()AXPrivCategory;
- (id)_accessibilityCurrentStatus;
- (id)_accessibilityCustomActionNamesAndIdentifiers;
- (id)_accessibilityCustomActions;
- (id)_accessibilityCustomContent;
- (id)_accessibilityCustomRotorResultHelper:()AXPrivCategory array:;
- (id)_accessibilityDefaultFocusGroupIdentifier;
- (id)_accessibilityDescendantOfType:()AXPrivCategory;
- (id)_accessibilityDragSourceDescriptorDictionaryRepresentations;
- (id)_accessibilityDropPointDescriptorDictionaryRepresentations;
- (id)_accessibilityElementTextualContent;
- (id)_accessibilityElementToFocusForAppearanceScreenChange;
- (id)_accessibilityElements;
- (id)_accessibilityElementsForReadingInDirection:()AXPrivCategory;
- (id)_accessibilityEquivalenceTag;
- (id)_accessibilityFBSceneIdentifier;
- (id)_accessibilityFindAncestor:()AXPrivCategory startWithSelf:findTopmostAncestor:;
- (id)_accessibilityFindDescendant:()AXPrivCategory shouldStopAtLeafNodes:;
- (id)_accessibilityFindElementInDirection:()AXPrivCategory searchType:allowOutOfBoundsChild:;
- (id)_accessibilityFindElementInDirection:()AXPrivCategory searchType:allowOutOfBoundsChild:startingTouchContainer:honorGroups:;
- (id)_accessibilityFindSubviewDescendantsPassingTest:()AXPrivCategory;
- (id)_accessibilityFindViewAncestor:()AXPrivCategory startWithSelf:;
- (id)_accessibilityFindViewControllerAncestor:()AXPrivCategory;
- (id)_accessibilityFindViewControllerAncestorOfType:()AXPrivCategory;
- (id)_accessibilityFindViewControllerDescendantOfType:()AXPrivCategory;
- (id)_accessibilityFirstContainedElementForTechnology:()AXPrivCategory honoringGroups:shouldAlwaysScroll:;
- (id)_accessibilityFirstDescendant;
- (id)_accessibilityFirstElementForFocus;
- (id)_accessibilityFirstElementForFocusHonoringGroups:()AXPrivCategory;
- (id)_accessibilityFirstElementForFocusWithOptions:()AXPrivCategory;
- (id)_accessibilityFirstElementsForSpeakThis;
- (id)_accessibilityFirstOpaqueElement;
- (id)_accessibilityFirstOpaqueElementForFocus;
- (id)_accessibilityFirstOpaqueElementForFocusWithOptions:()AXPrivCategory;
- (id)_accessibilityFirstOpaqueElementWithOptions:()AXPrivCategory;
- (id)_accessibilityFirstResponderForKeyWindow;
- (id)_accessibilityFirstWebElement;
- (id)_accessibilityFocusAbsoluteFirstLastOpaqueElement:()AXPrivCategory technology:honorsGroups:shouldAlwaysScroll:;
- (id)_accessibilityGroupedParent;
- (id)_accessibilityGuideElementHeaderText;
- (id)_accessibilityGuideElementInDirection:()AXPrivCategory;
- (id)_accessibilityHandwritingAttributeLanguage;
- (id)_accessibilityHandwritingAttributes;
- (id)_accessibilityHandwritingElement;
- (id)_accessibilityHeaderElementsForColumn:()AXPrivCategory;
- (id)_accessibilityHeaderElementsForRow:()AXPrivCategory;
- (id)_accessibilityHeadingLevel;
- (id)_accessibilityHitTest:()AXPrivCategory withEvent:;
- (id)_accessibilityHitTestAdditionalElements:()AXPrivCategory event:;
- (id)_accessibilityHitTestSupplementaryViews:()AXPrivCategory event:;
- (id)_accessibilityHitTestSupplementaryViews:()AXPrivCategory point:withEvent:;
- (id)_accessibilityImageData;
- (id)_accessibilityInputIdentifierForKeyboard;
- (id)_accessibilityInternalTextLinkCustomRotors;
- (id)_accessibilityInternalTextLinks;
- (id)_accessibilityKeyCommands;
- (id)_accessibilityLastOpaqueElement;
- (id)_accessibilityLastOpaqueElementWithOptions:()AXPrivCategory;
- (id)_accessibilityLineEndMarker:()AXPrivCategory;
- (id)_accessibilityLineStartMarker:()AXPrivCategory;
- (id)_accessibilityLinkedUIElements;
- (id)_accessibilityMarkerForPoint:()AXPrivCategory;
- (id)_accessibilityMarkerLineEndsForMarkers:()AXPrivCategory;
- (id)_accessibilityMarkersForPoints:()AXPrivCategory;
- (id)_accessibilityMarkersForRange:()AXPrivCategory;
- (id)_accessibilityMoveFocusToNextOpaqueElementForTechnology:()AXPrivCategory direction:searchType:range:shouldScrollToVisible:honorsGroups:;
- (id)_accessibilityNextMarker:()AXPrivCategory;
- (id)_accessibilityObscuredScreenAllowedViews;
- (id)_accessibilityOpaqueElementParent;
- (id)_accessibilityOrderedChildrenContainerWithinElements:()AXPrivCategory;
- (id)_accessibilityParentView;
- (id)_accessibilityPerformPublicCustomRotorSearch:()AXPrivCategory searchDirection:currentItem:honorsGroups:;
- (id)_accessibilityPostProcessValueForAutomation:()AXPrivCategory;
- (id)_accessibilityPotentiallyAttributedValueForNonAttributedSelector:()AXPrivCategory attributedSelector:;
- (id)_accessibilityPreferredScrollActions;
- (id)_accessibilityPreviousMarker:()AXPrivCategory;
- (id)_accessibilityProcessChildrenForParameter:()AXPrivCategory;
- (id)_accessibilityProcessElementsInDirection:()AXPrivCategory forParameter:;
- (id)_accessibilityProcessMathExpression:()AXPrivCategory;
- (id)_accessibilityProcessedLabelAttribute;
- (id)_accessibilityPublicCustomRotorIdForSystemType:()AXPrivCategory;
- (id)_accessibilityPublicCustomRotorName:()AXPrivCategory;
- (id)_accessibilityPublicCustomRotors;
- (id)_accessibilityRemoteParent;
- (id)_accessibilityResponderChainForKeyWindow;
- (id)_accessibilityResponderChainForWindow:()AXPrivCategory;
- (id)_accessibilityRetieveHeaderElementText;
- (id)_accessibilityRetrieveImagePathLabel:()AXPrivCategory;
- (id)_accessibilityRetrieveLinkedUIElementsFromContainerChain;
- (id)_accessibilityRetrieveLocalizationBundleID;
- (id)_accessibilityRetrieveLocalizationBundlePath;
- (id)_accessibilityRetrieveLocalizedStringKey;
- (id)_accessibilityRetrieveLocalizedStringTableName;
- (id)_accessibilityScannerElementsGrouped:()AXPrivCategory shouldIncludeNonScannerElements:;
- (id)_accessibilityScrollAncestorForSelector:()AXPrivCategory alwaysAllowRefreshAction:;
- (id)_accessibilityScrollParent;
- (id)_accessibilityScrollStatus;
- (id)_accessibilitySearchSubtreesAfterChildElement:()AXPrivCategory direction:searchType:allowOutOfBoundsChild:range:shouldScrollToVisible:honorGroups:updatedContainer:;
- (id)_accessibilitySemanticContext;
- (id)_accessibilitySortPriorityContainer;
- (id)_accessibilitySortedElementsWithin;
- (id)_accessibilitySortedElementsWithinWithOptions:()AXPrivCategory;
- (id)_accessibilitySpeakThisLeafDescendants;
- (id)_accessibilitySpeakThisString;
- (id)_accessibilitySpeakThisStringValue;
- (id)_accessibilityString:()AXPrivCategory withSpeechHint:;
- (id)_accessibilityStringForLabelKeyValues:()AXPrivCategory;
- (id)_accessibilitySupplementaryViewSectionHeaderIdentifiers;
- (id)_accessibilitySupportedLanguages;
- (id)_accessibilitySwipeIsland;
- (id)_accessibilityTableViewCellContentSubviews;
- (id)_accessibilityTextHandlingAncestorMatchingBlock:()AXPrivCategory;
- (id)_accessibilityTextMarkerForPosition:()AXPrivCategory;
- (id)_accessibilityTextMarkerRange;
- (id)_accessibilityTextMarkerRangeForSelection;
- (id)_accessibilityTextOperations;
- (id)_accessibilityTextualContext;
- (id)_accessibilityTouchContainerStartingWithSelf:()AXPrivCategory;
- (id)_accessibilityTraitsAsHumanReadableStrings:()AXPrivCategory;
- (id)_accessibilityUserDefinedLinkedUIElements;
- (id)_accessibilityUserTestingActionIdentifiers;
- (id)_accessibilityValueForRange:()AXPrivCategory;
- (id)_accessibilityViewAncestorIsKindOf:()AXPrivCategory;
- (id)_accessibilityVisibleElementsHonoringGroups:()AXPrivCategory respectGroupedParents:;
- (id)_accessibilityVisibleItemInList;
- (id)_accessibilityVisibleOpaqueElementsHonoringGroups:()AXPrivCategory sorted:;
- (id)_accessibilityWatchAutoSpeakElements;
- (id)_accessibilityWindow;
- (id)_accessibilityWindowScene;
- (id)_accessibilityWindowSceneIdentifier;
- (id)_axAncestorTypes;
- (id)_axDebugTraits;
- (id)_axOutermostScrollParent;
- (id)_axSuperviews;
- (id)_getAccessibilityAttributedString;
- (id)_iosAccessibilityAttributeValue:()AXPrivCategory forParameter:;
- (id)_processMathChildrenExpressions:()AXPrivCategory;
- (id)_processMathMultiscriptExpressions:()AXPrivCategory;
- (id)_retrieveCustomActionsForElement:()AXPrivCategory;
- (id)accessibilityAssistiveTechnologyFocusedIdentifiers;
- (id)accessibilityCustomContent;
- (id)accessibilityDataTableCellElementForRow:()AXPrivCategory column:;
- (id)accessibilityElementForRow:()AXPrivCategory andColumn:;
- (id)accessibilityHeaderElementsForColumn:()AXPrivCategory;
- (id)accessibilityHeaderElementsForRow:()AXPrivCategory;
- (id)accessibilityMathEquation;
- (id)accessibilitySortDirection;
- (id)accessibilityStringForTextMarkers:()AXPrivCategory;
- (id)accessibilityViewWithIdentifier:()AXPrivCategory;
- (uint64_t)__accessibilityReadAllOnFocus;
- (uint64_t)__accessibilitySupportsActivateAction;
- (uint64_t)_accessibilityActivateKeyboardDeleteKey;
- (uint64_t)_accessibilityActivateParagraphInTextViewRange:()AXPrivCategory;
- (uint64_t)_accessibilityAddTrait:()AXPrivCategory;
- (uint64_t)_accessibilityAllowOutOfBoundsHitTestAtPoint:()AXPrivCategory withEvent:;
- (uint64_t)_accessibilityAuthenticatedPasteWithValue:()AXPrivCategory;
- (uint64_t)_accessibilityBasePerformOrbGesture:()AXPrivCategory;
- (uint64_t)_accessibilityBaseScrollToVisible;
- (uint64_t)_accessibilityCameraIrisOpen;
- (uint64_t)_accessibilityCanBeConsideredMediaAnalysisElement;
- (uint64_t)_accessibilityCanPerformAction:()AXPrivCategory;
- (uint64_t)_accessibilityCanScrollInAtLeastOneDirection;
- (uint64_t)_accessibilityColumnCount;
- (uint64_t)_accessibilityColumnRange;
- (uint64_t)_accessibilityContextId;
- (uint64_t)_accessibilityCustomRotorTypeForString:()AXPrivCategory;
- (uint64_t)_accessibilityDirectTouchOptionsAttribute;
- (uint64_t)_accessibilityDisplayId;
- (uint64_t)_accessibilityEffectiveMediaAnalysisOptions;
- (uint64_t)_accessibilityExpandedStatus;
- (uint64_t)_accessibilityFKAShouldProcessChildren;
- (uint64_t)_accessibilityHandlePublicScroll:()AXPrivCategory;
- (uint64_t)_accessibilityHandwritingAttributeAllowedCharacterSets;
- (uint64_t)_accessibilityHandwritingAttributeAllowedCharacterSetsForKeyboardType:()AXPrivCategory;
- (uint64_t)_accessibilityHandwritingAttributePreferredCharacterSet;
- (uint64_t)_accessibilityHandwritingAttributePreferredCharacterSetForKeyboardType:()AXPrivCategory;
- (uint64_t)_accessibilityHasDeletableText;
- (uint64_t)_accessibilityHasDragDestinations;
- (uint64_t)_accessibilityHasDragSources;
- (uint64_t)_accessibilityHasTextOperations;
- (uint64_t)_accessibilityIncreaseLayoutBounds;
- (uint64_t)_accessibilityIndexPathAsRange;
- (uint64_t)_accessibilityInheritedTraits;
- (uint64_t)_accessibilityIsChartElement;
- (uint64_t)_accessibilityIsEscapable;
- (uint64_t)_accessibilityIsFirstSibling;
- (uint64_t)_accessibilityIsFirstSiblingForType:()AXPrivCategory;
- (uint64_t)_accessibilityIsFrameOutOfBoundsConsideringScrollParents:()AXPrivCategory;
- (uint64_t)_accessibilityIsGroupedParent;
- (uint64_t)_accessibilityIsGuideElement;
- (uint64_t)_accessibilityIsInJindo;
- (uint64_t)_accessibilityIsInMenuBar;
- (uint64_t)_accessibilityIsInTabBar;
- (uint64_t)_accessibilityIsLastSibling;
- (uint64_t)_accessibilityIsLastSiblingForType:()AXPrivCategory;
- (uint64_t)_accessibilityIsMainWindow;
- (uint64_t)_accessibilityIsNotFirstElement;
- (uint64_t)_accessibilityIsRTL;
- (uint64_t)_accessibilityIsRealtimeElement;
- (uint64_t)_accessibilityIsScrollable;
- (uint64_t)_accessibilityIsSortPriorityContainer;
- (uint64_t)_accessibilityIsSpeakThisElement;
- (uint64_t)_accessibilityIsStarkElement;
- (uint64_t)_accessibilityIsTourGuideRunning;
- (uint64_t)_accessibilityIterateParentsForTestBlock:()AXPrivCategory;
- (uint64_t)_accessibilityLineEndPosition;
- (uint64_t)_accessibilityLineRangeForPosition:()AXPrivCategory;
- (uint64_t)_accessibilityLineStartPosition;
- (uint64_t)_accessibilityMarkElementForVisiblePointHitTest:()AXPrivCategory;
- (uint64_t)_accessibilityMediaAnalysisOptions;
- (uint64_t)_accessibilityOpaqueElementScrollsContentIntoView;
- (uint64_t)_accessibilityOrientationForCompareGeometryForApplication:()AXPrivCategory;
- (uint64_t)_accessibilityOverridesInvisibility;
- (uint64_t)_accessibilityParentCollectionView;
- (uint64_t)_accessibilityParentTableView;
- (uint64_t)_accessibilityPerformCustomActionWithIdentifier:()AXPrivCategory;
- (uint64_t)_accessibilityPerformEscape;
- (uint64_t)_accessibilityPerformLegacyCustomAction:()AXPrivCategory;
- (uint64_t)_accessibilityPerformOrbGesture:()AXPrivCategory;
- (uint64_t)_accessibilityPerformUserTestingAction:()AXPrivCategory;
- (uint64_t)_accessibilityPlayKeyboardClickSound;
- (uint64_t)_accessibilityPotentiallyAttributedSelectorForNonAttributedSelector:()AXPrivCategory attributedSelector:;
- (uint64_t)_accessibilityPublicCustomRotorLinkCount:()AXPrivCategory;
- (uint64_t)_accessibilityPublicCustomRotorVisibleInTouchRotor:()AXPrivCategory;
- (uint64_t)_accessibilityRangeForTextMarkers:()AXPrivCategory;
- (uint64_t)_accessibilityRemoteElementShouldHitTestHostProcess;
- (uint64_t)_accessibilityRemoveTrait:()AXPrivCategory;
- (uint64_t)_accessibilityReplaceTextInRange:()AXPrivCategory withString:;
- (uint64_t)_accessibilityRespondsToUserInteraction;
- (uint64_t)_accessibilityRowCount;
- (uint64_t)_accessibilityRowRangeFromTableOrCollectionView:()AXPrivCategory;
- (uint64_t)_accessibilityScrollAcrossPageBoundaries;
- (uint64_t)_accessibilityScrollPageInDirection:()AXPrivCategory shouldSendScrollFailed:;
- (uint64_t)_accessibilityScrollToPoint:()AXPrivCategory;
- (uint64_t)_accessibilityScrollingEnabled;
- (uint64_t)_accessibilitySecureName;
- (uint64_t)_accessibilitySelectedTextRange;
- (uint64_t)_accessibilitySelfFoundByHitTesting;
- (uint64_t)_accessibilityServesAsFirstElement;
- (uint64_t)_accessibilityShouldApplySemanticGroupContainerType;
- (uint64_t)_accessibilityShouldIncludeRowRangeInElementDescription;
- (uint64_t)_accessibilityShouldSpeakScrollStatusOnEntry;
- (uint64_t)_accessibilityShouldSuppressCustomActionsHint;
- (uint64_t)_accessibilityShouldUseHostContextIDForLongPress;
- (uint64_t)_accessibilityShouldUseHostContextIDForTap;
- (uint64_t)_accessibilityShouldUseViewHierarchyForFindingScrollParent;
- (uint64_t)_accessibilityShowContextMenuWithTargetPointValue:()AXPrivCategory;
- (uint64_t)_accessibilitySiblingWithAncestor:()AXPrivCategory isFirst:isLast:sawAXElement:;
- (uint64_t)_accessibilitySortPriority;
- (uint64_t)_accessibilitySortPriorityWithReturningElement:()AXPrivCategory;
- (uint64_t)_accessibilityStatusBar;
- (uint64_t)_accessibilitySupportsFrameForRange;
- (uint64_t)_accessibilitySupportsHandwriting;
- (uint64_t)_accessibilityTextInputElementRangeAsNSRange;
- (uint64_t)_accessibilityTextOperationAction:()AXPrivCategory;
- (uint64_t)_accessibilityTextViewShouldBreakUpParagraphs;
- (uint64_t)_accessibilityTraitsInspectorHumanReadable;
- (uint64_t)_accessibilityTryScrollWithSelector:()AXPrivCategory shouldSendScrollFailed:;
- (uint64_t)_accessibilityUpdatesOnActivationAfterDelay;
- (uint64_t)_accessibilityUseContextlessPassthroughForDrag;
- (uint64_t)_accessibilityUsesScrollParentForOrdering;
- (uint64_t)_accessibilityUsesSpecialKeyboardDismiss;
- (uint64_t)_accessibilityVisiblePoint;
- (uint64_t)_accessibilityWantsOpaqueElementProviders;
- (uint64_t)_accessibilityWarmPrefersNonAttributedLabelValueHintCache;
- (uint64_t)_accessibilityWindowVisible;
- (uint64_t)_animateScrollViewWithScrollAmount:()AXPrivCategory point:;
- (uint64_t)accessibilityColumnCount;
- (uint64_t)accessibilityColumnRange;
- (uint64_t)accessibilityCompareGeometry:()AXPrivCategory;
- (uint64_t)accessibilityElementIsFocused;
- (uint64_t)accessibilityRequired;
- (uint64_t)accessibilityRowCount;
- (uint64_t)accessibilityRowRange;
- (uint64_t)accessibilitySemanticGroupChildrentCount;
- (uint64_t)accessibilityZoomInAtPoint:()AXPrivCategory;
- (uint64_t)accessibilityZoomOutAtPoint:()AXPrivCategory;
- (uint64_t)axContainerTypeFromUIKitContainerType:()AXPrivCategory;
- (uint64_t)impOrNullForSelector:()AXPrivCategory;
- (uint64_t)isAccessibilityOpaqueElementProvider;
- (void)_accessibilityAddAutoCorrectionAttributes:()AXPrivCategory;
- (void)_accessibilityAddMispellingsToAttributedString:()AXPrivCategory;
- (void)_accessibilityAllDragSourceDescriptors;
- (void)_accessibilityAllDropPointDescriptors;
- (void)_accessibilityAnnouncementComplete:()AXPrivCategory;
- (void)_accessibilityBaseScrollToVisible;
- (void)_accessibilityChildrenForContinuityDisplay;
- (void)_accessibilityConvertStyleAttributesToAccessibility:()AXPrivCategory;
- (void)_accessibilityDetectAnimationsNonActive;
- (void)_accessibilityHandleATFocused:()AXPrivCategory assistiveTech:;
- (void)_accessibilityHideKeyboard;
- (void)_accessibilityInsertText:()AXPrivCategory;
- (void)_accessibilityInsertText:()AXPrivCategory atPosition:;
- (void)_accessibilityIsSpeakThisElement;
- (void)_accessibilityIterateScrollParentsUsingBlock:()AXPrivCategory includeSelf:;
- (void)_accessibilityMediaAnalysisElement;
- (void)_accessibilityNextOpaqueElementsForTechnology:()AXPrivCategory startElement:direction:searchType:range:shouldScrollToVisible:honorsGroups:;
- (void)_accessibilityOpaqueElementScrollToDirection:()AXPrivCategory;
- (void)_accessibilityPostHoverTypingOnlyValueChangedNotificationWithInsertedText:()AXPrivCategory inputFrame:isSecureText:;
- (void)_accessibilityPostNotificationHelper:()AXPrivCategory;
- (void)_accessibilityPostPasteboardTextForOperation:()AXPrivCategory associatedObject:;
- (void)_accessibilityPostValueChangedNotificationWithChangeType:()AXPrivCategory insertedText:keyInputDelegate:;
- (void)_accessibilityReplaceCharactersAtCursor:()AXPrivCategory withString:;
- (void)_accessibilityScrollOpaqueElementIntoView:()AXPrivCategory previousScroller:;
- (void)_accessibilitySendPageScrollFailedIfNecessary;
- (void)_accessibilitySetAllowedGeometryOverlap:()AXPrivCategory;
- (void)_accessibilitySetAllowedPagingOverlap:()AXPrivCategory;
- (void)_accessibilitySetAnimationsInProgress:()AXPrivCategory;
- (void)_accessibilitySetAuditIssueDict:()AXPrivCategory;
- (void)_accessibilitySetCameraIrisOpen:()AXPrivCategory;
- (void)_accessibilitySetFKAShouldProcessChildren:()AXPrivCategory;
- (void)_accessibilitySetIncreaseLayoutBounds:()AXPrivCategory;
- (void)_accessibilitySetIsSortPriorityContainer:()AXPrivCategory;
- (void)_accessibilitySetIsSpeakThisElement:()AXPrivCategory;
- (void)_accessibilitySetIsTourGuideRunning:()AXPrivCategory;
- (void)_accessibilitySetObscuredScreenAllowedViews:()AXPrivCategory;
- (void)_accessibilitySetOpaqueElementScrollsContentIntoView:()AXPrivCategory;
- (void)_accessibilitySetRowRange:()AXPrivCategory;
- (void)_accessibilitySetScrollAcrossPageBoundaries:()AXPrivCategory;
- (void)_accessibilitySetScrollingEnabled:()AXPrivCategory;
- (void)_accessibilitySetSelectedTextRange:()AXPrivCategory;
- (void)_accessibilitySetShouldIncludeRowRangeInElementDescription:()AXPrivCategory;
- (void)_accessibilitySetSortPriority:()AXPrivCategory;
- (void)_accessibilitySetTextViewShouldBreakUpParagraphs:()AXPrivCategory;
- (void)_accessibilitySetValue:()AXPrivCategory;
- (void)_accessibilityShowKeyboard;
- (void)_accessibilityStatusBar;
- (void)_accessibilityUnregister;
- (void)_accessibilityUpdateContainerElementReferencesIfNeededForNewElements:()AXPrivCategory;
- (void)_accessibilityUserTestingActionIdentifiers;
- (void)_addPublicRotorsToArray:()AXPrivCategory forElement:;
- (void)_iosAccessibilitySetValue:()AXPrivCategory forAttribute:;
- (void)_setAccessibilityIsMainWindow:()AXPrivCategory;
- (void)_setAccessibilityIsNotFirstElement:()AXPrivCategory;
- (void)_setAccessibilityLinkedUIElements:()AXPrivCategory;
- (void)_setAccessibilityServesAsFirstElement:()AXPrivCategory;
- (void)_setAccessibilityShouldUseViewHierarchyForFindingScrollParent:()AXPrivCategory;
- (void)_setAccessibilityWindowVisible:()AXPrivCategory;
- (void)accessibilityDecreaseTrackingDetail;
- (void)accessibilityEnumerateAncestorsUsingBlock:()AXPrivCategory;
- (void)accessibilityEnumerateContainerElementsUsingBlock:()AXPrivCategory;
- (void)accessibilityEnumerateContainerElementsWithOptions:()AXPrivCategory usingBlock:;
- (void)accessibilityIncreaseTrackingDetail;
- (void)accessibilityPostNotification:()AXPrivCategory withObject:afterDelay:;
- (void)setAccessibilityCustomContent:()AXPrivCategory;
- (void)setAccessibilitySize:()AXPrivCategory;
- (void)setIsAccessibilityScrollAncestor:()AXPrivCategory;
@end

@implementation NSObject(AXPrivCategory)

- (void)_accessibilityUnregister
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    _UIAccessibilityCompleteUnregistration(self);

    _UIAXCleanupRotorCache(self);
  }

  else
  {
    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

- (id)_accessibilityWindow
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    _accessibilityParentView = [self _accessibilityParentView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      window = _accessibilityParentView;
    }

    else
    {
      window = [_accessibilityParentView window];
    }

    selfCopy = window;
    if (_accessibilityParentView == self && !window)
    {
      accessibilityContainer = [self accessibilityContainer];
      if (accessibilityContainer)
      {
        do
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          v5AccessibilityContainer = [accessibilityContainer accessibilityContainer];

          accessibilityContainer = v5AccessibilityContainer;
        }

        while (v5AccessibilityContainer);
      }

      _accessibilityParentView2 = [accessibilityContainer _accessibilityParentView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        window2 = _accessibilityParentView2;
      }

      else
      {
        window2 = [_accessibilityParentView2 window];
      }

      selfCopy = window2;
    }
  }

  return selfCopy;
}

- (id)_accessibilityParentView
{
  objc_opt_class();
  selfCopy = self;
  do
  {
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    accessibilityContainer = [selfCopy accessibilityContainer];

    selfCopy = accessibilityContainer;
  }

  while (accessibilityContainer);

  return selfCopy;
}

- (id)_accessibilityElements
{
  accessibilityContainerElements = [self accessibilityContainerElements];
  v3 = accessibilityContainerElements;
  if (accessibilityContainerElements)
  {
    accessibilityElements = accessibilityContainerElements;
  }

  else
  {
    accessibilityElements = [self accessibilityElements];
  }

  v5 = accessibilityElements;
  [self _accessibilityUpdateContainerElementReferencesIfNeededForNewElements:accessibilityElements];

  return v5;
}

- (double)_accessibilityFrameForSorting
{
  v2 = [self _accessibilityGetBlockForAttribute:23];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p-_accessibilityFrameForSorting", self];
    v6 = [AXServerCache objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = [AXServerCache objectForKeyedSubscript:v5];
      [v7 rectValue];
      v4 = v8;
    }

    else
    {
      if ([self _accessibilityHasOrderedChildren] && objc_msgSend(self, "_accessibilityUsesChildrenFramesForSorting"))
      {
        [self _accessibilityChildrenUnionContentFrame];
      }

      else
      {
        [self _accessibilityContentFrame];
      }

      v4 = v9;
      v7 = [MEMORY[0x1E696B098] valueWithRect:?];
      [AXServerCache setObject:v7 forKeyedSubscript:v5];
    }
  }

  return v4;
}

+ (BOOL)_accessibilityHasUnitTestingOrientation
{
  v1 = objc_getAssociatedObject(self, &_UnitTestingOrientationStorageKey);
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)_accessibilitySortPriority
{
  integerValue = UIAccessibilityDefaultSortPriority;
  v2 = [self _accessibilityValueForKey:@"AXSortPriority"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  return integerValue;
}

- (id)_accessibilitySortPriorityContainer
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p-_accessibilitySortPriorityContainer", self];
  v9 = 0;
  PossiblyNilObjectForKey = _AXServerCacheGetPossiblyNilObjectForKey(v2, &v9);
  v4 = v9;
  if (!PossiblyNilObjectForKey)
  {
    selfCopy = self;

    v4 = 0;
    if (selfCopy)
    {
      do
      {
        if ([selfCopy _accessibilityIsSortPriorityContainer])
        {
          v6 = selfCopy;

          v4 = v6;
        }

        accessibilityContainer = [selfCopy accessibilityContainer];

        selfCopy = accessibilityContainer;
      }

      while (accessibilityContainer);
    }

    _AXServerCacheInsertPossiblyNilObjectForKey(v2, v4);
  }

  return v4;
}

- (uint64_t)_accessibilityIsSortPriorityContainer
{
  v1 = [self _accessibilityValueForKey:@"AXIsSortPriorityContainer"];
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_accessibilityContainingParentForOrdering
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p-_axContainingParentForOrdering", self];
  v11 = 0;
  PossiblyNilObjectForKey = _AXServerCacheGetPossiblyNilObjectForKey(v2, &v11);
  v4 = v11;
  if (!PossiblyNilObjectForKey)
  {
    selfCopy = self;

    if (selfCopy)
    {
      v4 = selfCopy;
      while (1)
      {
        if ([v4 shouldGroupAccessibilityChildren])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }
        }

        accessibilityContainer = [v4 accessibilityContainer];
        if (!accessibilityContainer)
        {
          if ([v4 conformsToProtocol:&unk_1F1DDB1C0])
          {
            parentFocusEnvironment = [v4 parentFocusEnvironment];
            focusItemContainer = [parentFocusEnvironment focusItemContainer];

            if (focusItemContainer == v4)
            {
              v9 = 0;
            }

            else
            {
              v9 = focusItemContainer;
            }

            accessibilityContainer = v9;
          }

          else
          {
            accessibilityContainer = 0;
          }
        }

        v4 = accessibilityContainer;
        if (!accessibilityContainer)
        {
          goto LABEL_14;
        }
      }

      _AXServerCacheInsertPossiblyNilObjectForKey(v2, v4);
    }

    else
    {
LABEL_14:
      _AXServerCacheInsertPossiblyNilObjectForKey(v2, 0);
      v4 = 0;
    }
  }

  return v4;
}

- (uint64_t)_accessibilityUsesScrollParentForOrdering
{
  v1 = [self _accessibilityValueForKey:@"AXUsesScrollParentForOrderingKey"];
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)_accessibilityScrollParent
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__2;
  v8 = __Block_byref_object_dispose__2;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__NSObject_AXPrivCategory___accessibilityScrollParent__block_invoke;
  v3[3] = &unk_1E78AACB0;
  v3[4] = &v4;
  [self _accessibilityIterateScrollParentsUsingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

- (uint64_t)_accessibilityShouldUseViewHierarchyForFindingScrollParent
{
  v1 = [self _accessibilityValueForKey:@"_accessibilityShouldUseViewHierarchyForFindingScrollParent"];
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (uint64_t)_accessibilityIsRTL
{
  v2 = LocalDirectionModeValue;
  if (UIAccessibilityIsVoiceOverRunning() && v2)
  {
    return v2 == 1;
  }

  return [self _accessibilityHierarchyIsRTL];
}

- (BOOL)_accessibilityHierarchyIsRTL
{
  _accessibilityParentView = [self _accessibilityParentView];
  v2 = [_accessibilityParentView effectiveUserInterfaceLayoutDirection] == 1;

  return v2;
}

- (id)_accessibilityHitTest:()AXPrivCategory withEvent:
{
  v8 = a5;
  if (([self _accessibilityBoolValueForKey:@"AXInHitTestOverride"] & 1) != 0 || !__60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke())
  {
    v9 = [self _accessibilityBaseHitTest:v8 withEvent:{a2, a3}];
  }

  else
  {
    [self _accessibilitySetBoolValue:1 forKey:@"AXInHitTestOverride"];
    v9 = [self accessibilityHitTest:v8 withEvent:{a2, a3}];
    [self _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
  }

  return v9;
}

- (id)_accessibilityHitTestAdditionalElements:()AXPrivCategory event:
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if ([self _axAdditionalElementHitTestingInProgress])
  {
    v9 = 0;
    goto LABEL_23;
  }

  [self _axSetAdditionalElementHitTestingInProgress:1];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  _accessibilityAdditionalElements = [self _accessibilityAdditionalElements];
  v11 = [_accessibilityAdditionalElements countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  selfCopy = self;
  v9 = 0;
  v13 = *v46;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v46 != v13)
      {
        objc_enumerationMutation(_accessibilityAdditionalElements);
      }

      v15 = [*(*(&v45 + 1) + 8 * i) _accessibilityHitTest:v8 withEvent:{a2, a3}];
      v16 = v15;
      if (v15)
      {
        if (v9)
        {
          [v15 accessibilityFrame];
          [v9 accessibilityFrame];
          mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
          UIRoundToScreenScale();
          v19 = v18;
          mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
          UIRoundToScreenScale();
          v22 = v19 * v21;

          mainScreen3 = [MEMORY[0x1E69DCEB0] mainScreen];
          UIRoundToScreenScale();
          v25 = v24;
          mainScreen4 = [MEMORY[0x1E69DCEB0] mainScreen];
          UIRoundToScreenScale();
          v28 = v25 * v27;

          if (v22 < v28)
          {
            v29 = v16;

            v9 = v29;
          }
        }

        else
        {
          v9 = v15;
        }
      }
    }

    v12 = [_accessibilityAdditionalElements countByEnumeratingWithState:&v45 objects:v49 count:16];
  }

  while (v12);

  if (!v9)
  {
    self = selfCopy;
    goto LABEL_22;
  }

  self = selfCopy;
  v30 = [selfCopy _accessibilityHitTest:v8 withEvent:{a2, a3}];
  _accessibilityAdditionalElements = v30;
  if (v30)
  {
    [v30 accessibilityFrame];
    [v9 accessibilityFrame];
    mainScreen5 = [MEMORY[0x1E69DCEB0] mainScreen];
    UIRoundToScreenScale();
    v33 = v32;
    mainScreen6 = [MEMORY[0x1E69DCEB0] mainScreen];
    UIRoundToScreenScale();
    v36 = v33 * v35;

    mainScreen7 = [MEMORY[0x1E69DCEB0] mainScreen];
    UIRoundToScreenScale();
    v39 = v38;
    mainScreen8 = [MEMORY[0x1E69DCEB0] mainScreen];
    UIRoundToScreenScale();
    v42 = v39 * v41;

    if (v36 < v42)
    {

LABEL_19:
      v9 = 0;
    }
  }

LABEL_22:
  [self _axSetAdditionalElementHitTestingInProgress:0];
LABEL_23:

  return v9;
}

- (id)_accessibilityHitTestSupplementaryViews:()AXPrivCategory event:
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a5;
  _accessibilitySupplementaryHeaderViews = [self _accessibilitySupplementaryHeaderViews];
  _accessibilitySupplementaryFooterViews = [self _accessibilitySupplementaryFooterViews];
  array = [MEMORY[0x1E695DF70] array];
  if ([_accessibilitySupplementaryHeaderViews count])
  {
    [array addObjectsFromArray:_accessibilitySupplementaryHeaderViews];
  }

  if ([_accessibilitySupplementaryFooterViews count])
  {
    [array addObjectsFromArray:_accessibilitySupplementaryFooterViews];
  }

  _accessibilityParentView = [self _accessibilityParentView];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = array;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v20 = a3;
        v21 = a2;
        if (isKindOfClass)
        {
          [v18 convertPoint:_accessibilityParentView fromView:{a2, a3, v25}];
        }

        v22 = [v18 _accessibilityHitTest:v8 withEvent:{v21, v20, v25}];
        if (v22)
        {
          v23 = v22;
          goto LABEL_17;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_17:

  return v23;
}

- (id)_accessibilityHitTestSupplementaryViews:()AXPrivCategory point:withEvent:
{
  v53 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  if (![v10 count])
  {
    v37 = 0;
    goto LABEL_38;
  }

  _accessibilityParentView = [self _accessibilityParentView];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (!v14)
  {
    v37 = 0;
    goto LABEL_37;
  }

  v15 = v14;
  v39 = v10;
  selfCopy = self;
  v16 = *v48;
  v41 = v13;
  v42 = _accessibilityParentView;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v48 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v47 + 1) + 8 * i);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v20 = a3;
      v21 = a2;
      if (isKindOfClass)
      {
        [v18 convertPoint:_accessibilityParentView fromView:{a2, a3}];
      }

      v22 = [v18 _accessibilityHitTest:v11 withEvent:{v21, v20, v39}];
      v23 = v22;
      if (v22 && ([v22 isAccessibilityElement] & 1) != 0)
      {
        goto LABEL_35;
      }

      if ((isKindOfClass & [self _accessibilityHitTestShouldFallbackToNearestChild]) == 1 && (objc_msgSend(v11, "_accessibilityAutomationHitTest") & 1) == 0)
      {
        [v18 convertPoint:_accessibilityParentView fromView:{a2, a3}];
        if ([v18 pointInside:v11 withEvent:?])
        {
          UIAccessibilityPointForPoint(_accessibilityParentView, a2, a3);
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v24 = [v18 _accessibleSubviews:1];
          v25 = [v24 countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = 0;
            v28 = *v44;
            v29 = 1.79769313e308;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v44 != v28)
                {
                  objc_enumerationMutation(v24);
                }

                v31 = *(*(&v43 + 1) + 8 * j);
                [v31 accessibilityActivationPoint];
                AX_CGPointGetDistanceToPoint();
                if (v32 < v29)
                {
                  v33 = v32;
                  v34 = v31;

                  v27 = v34;
                  v29 = v33;
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v43 objects:v51 count:16];
            }

            while (v26);
          }

          else
          {
            v27 = 0;
          }

          v35 = v27;
          v13 = v41;
          _accessibilityParentView = v42;
          self = selfCopy;
          if (v35)
          {
            v23 = v35;
            if ([v35 isAccessibilityElement])
            {
            }

            else
            {
              v36 = [v23 accessibilityElementAtIndex:0];

              if (!v36)
              {
                continue;
              }

              v23 = v36;
            }

LABEL_35:
            v37 = v23;

            goto LABEL_36;
          }
        }
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

  v37 = 0;
LABEL_36:
  v10 = v39;
LABEL_37:

LABEL_38:

  return v37;
}

- (uint64_t)_accessibilityAllowOutOfBoundsHitTestAtPoint:()AXPrivCategory withEvent:
{
  _accessibilityHitTestOptions = [a3 _accessibilityHitTestOptions];
  v5 = _accessibilityHitTestOptions;
  if (_accessibilityHitTestOptions)
  {
    v6 = _accessibilityHitTestOptions;
  }

  else
  {
    v6 = +[UIAccessibilityHitTestOptions defaultOptions];
  }

  v7 = v6;

  outOfBoundsHitTestElements = [v7 outOfBoundsHitTestElements];
  v9 = [outOfBoundsHitTestElements containsObject:self];

  return v9;
}

- (id)_accessibilityBaseHitTest:()AXPrivCategory withEvent:
{
  v137 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = AXLogUIA();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v139.x = a2;
    v139.y = a3;
    v10 = NSStringFromCGPoint(v139);
    *buf = 138412546;
    selfCopy = self;
    v135 = 2112;
    v136 = v10;
    _os_log_impl(&dword_1A9B83000, v9, OS_LOG_TYPE_INFO, "In base hit test for %@ with point %@", buf, 0x16u);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if ([self _accessibilityIsFrameOutOfBounds])
    {
      selfCopy5 = 0;
      goto LABEL_146;
    }

    v13 = [self pointInside:v8 withEvent:{a2, a3}];
  }

  else
  {
    v13 = 0;
  }

  [self accessibilityFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  _accessibilityParentView = [self _accessibilityParentView];
  [_accessibilityParentView convertPoint:0 toView:{a2, a3}];
  v24 = v23;
  v26 = v25;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = _accessibilityParentView;
  }

  else
  {
    window = [_accessibilityParentView window];
  }

  [window convertPoint:0 toWindow:{v24, v26}];
  v29 = v28;
  v31 = v30;
  if ((isKindOfClass | v13))
  {
    if (v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    accessibilityPath = [self accessibilityPath];
    if (accessibilityPath)
    {
      v33 = accessibilityPath;
      cGPath = [accessibilityPath CGPath];
      v140.x = v29;
      v140.y = v31;
      v35 = CGPathContainsPoint(cGPath, 0, v140, 0);

      if (v35)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v145.origin.x = v15;
      v145.origin.y = v17;
      v145.size.width = v19;
      v145.size.height = v21;
      v142.x = v29;
      v142.y = v31;
      if (CGRectContainsPoint(v145, v142))
      {
        goto LABEL_19;
      }
    }
  }

  if (![self _accessibilityAllowOutOfBoundsHitTestAtPoint:v8 withEvent:{a2, a3}])
  {
    selfCopy5 = 0;
    goto LABEL_145;
  }

LABEL_19:
  if (_AXSAutomationEnabled())
  {
    _accessibilityAutomationHitTest = [v8 _accessibilityAutomationHitTest];
  }

  else
  {
    _accessibilityAutomationHitTest = 0;
  }

  _accessibilityHitTestOptions = [v8 _accessibilityHitTestOptions];
  v38 = _accessibilityHitTestOptions;
  if (_accessibilityHitTestOptions)
  {
    v39 = _accessibilityHitTestOptions;
  }

  else
  {
    v39 = +[UIAccessibilityHitTestOptions defaultOptions];
  }

  if ((_accessibilityAutomationHitTest & 1) == 0)
  {
    leafNodePredicate = [v39 leafNodePredicate];
    v41 = (leafNodePredicate)[2](leafNodePredicate, self);

    if (v41)
    {
      selfCopy5 = self;
      goto LABEL_144;
    }
  }

  _accessibilitySupplementaryHeaderViews = [self _accessibilitySupplementaryHeaderViews];
  v43 = [self _accessibilityHitTestSupplementaryViews:_accessibilitySupplementaryHeaderViews point:v8 withEvent:{a2, a3}];

  if (v43)
  {
    v44 = v43;
    selfCopy5 = v44;
    goto LABEL_143;
  }

  if (_accessibilityAutomationHitTest)
  {
    automationElements = [self automationElements];

    if (automationElements)
    {
      goto LABEL_38;
    }
  }

  _accessibilityFuzzyHitTestElements = [self _accessibilityFuzzyHitTestElements];
  if (_accessibilityFuzzyHitTestElements)
  {
    automationElements = _accessibilityFuzzyHitTestElements;
LABEL_38:
    accessibilityElementCount = [automationElements count];
    goto LABEL_39;
  }

  automationElements = [self _accessibilityElements];
  if (![automationElements count])
  {
    _accessibilityAdditionalHitTestElements = [self _accessibilityAdditionalHitTestElements];

    automationElements = _accessibilityAdditionalHitTestElements;
  }

  if (automationElements)
  {
    goto LABEL_38;
  }

  accessibilityElementCount = [self accessibilityElementCount];
LABEL_39:
  v49 = accessibilityElementCount;
  if (!accessibilityElementCount)
  {
    if ([v39 shouldHitTestUserTestingChildren])
    {
      automationElements2 = [self automationElements];

      v49 = [automationElements2 count];
      automationElements = automationElements2;
    }

    else
    {
      v49 = 0;
    }
  }

  if ([self _accessibilityHitTestShouldFallbackToNearestChild])
  {
    v110 = [v8 _accessibilityAutomationHitTest] ^ 1;
  }

  else
  {
    v110 = 0;
  }

  v107 = v8;
  v114 = automationElements;
  v115 = v49;
  v109 = v39;
  v106 = _accessibilityAutomationHitTest;
  if ((![v8 _accessibilityAutomationHitTest] || (objc_msgSend(self, "_accessibilityAutomationHitTestReverseOrder") & 1) == 0) && !objc_msgSend(self, "_accessibilityHitTestReverseOrder"))
  {
    if (v49 >= 1)
    {
      v101 = v19;
      v102 = v17;
      v103 = v15;
      v104 = window;
      v105 = _accessibilityParentView;
      v51 = 0;
      v113 = 0;
      v112 = 1;
      goto LABEL_53;
    }

LABEL_109:
    v53 = 0;
    goto LABEL_114;
  }

  if (v49 <= 0)
  {
    goto LABEL_109;
  }

  v101 = v19;
  v102 = v17;
  v103 = v15;
  v104 = window;
  v105 = _accessibilityParentView;
  v51 = v49 - 1;
  v112 = -1;
  v113 = 1;
LABEL_53:
  v52 = 0;
  v53 = 0;
  v54 = 1.79769313e308;
  selfCopy3 = self;
  while (1)
  {
    if (automationElements)
    {
      [automationElements objectAtIndex:v51];
    }

    else
    {
      [self accessibilityElementAtIndex:v51];
    }
    v55 = ;

    if (!v55)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) == 0 || ([v55 alpha], v56 != 0.0) || (objc_msgSend(v55, "_accessibilityOverridesInvisibility"))
    {
      accessibilityPath2 = [v55 accessibilityPath];
      v116 = accessibilityPath2;
      if (!accessibilityPath2)
      {
        goto LABEL_65;
      }

      cGPath2 = [accessibilityPath2 CGPath];
      v141.x = v29;
      v141.y = v31;
      if (CGPathContainsPoint(cGPath2, 0, v141, 0))
      {
        v59 = 1;
        goto LABEL_70;
      }

      if (![v8 _accessibilityAutomationHitTest])
      {
LABEL_68:
        v59 = 0;
      }

      else
      {
LABEL_65:
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v55 frame];
          if (CGRectIsEmpty(v146))
          {
            goto LABEL_68;
          }

          [self convertPoint:v55 toView:{a2, a3}];
          v85 = [v55 _accessibilityHitTest:v8 withEvent:?];
          v59 = v85 != 0;
        }

        else
        {
          [v55 accessibilityFrame];
          v143.x = v29;
          v143.y = v31;
          v59 = CGRectContainsPoint(v147, v143);
        }
      }

LABEL_70:
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __64__NSObject_AXPrivCategory___accessibilityBaseHitTest_withEvent___block_invoke;
      aBlock[3] = &unk_1E78AABE8;
      aBlock[4] = self;
      v60 = v55;
      v129 = v60;
      v130 = v29;
      v131 = v31;
      v61 = _Block_copy(aBlock);
      v123[0] = MEMORY[0x1E69E9820];
      v123[1] = 3221225472;
      v123[2] = __64__NSObject_AXPrivCategory___accessibilityBaseHitTest_withEvent___block_invoke_2;
      v123[3] = &unk_1E78AAC10;
      v126 = a2;
      v127 = a3;
      v62 = v61;
      v125 = v62;
      v63 = v8;
      v124 = v63;
      v64 = _Block_copy(v123);
      if (v59)
      {
        leafNodePredicate2 = [v109 leafNodePredicate];
        v66 = (leafNodePredicate2)[2](leafNodePredicate2, v60);

        if (v66)
        {
          (*(v62 + 2))(v62, v60, a2, a3);
          v67 = [v60 _accessibilityHitTestSupplementaryViews:v63 event:?];
          if ([v67 isAccessibilityElement])
          {
            v68 = v67;
          }

          else
          {
            v68 = v60;
          }

          v69 = v68;

          if (v106)
          {
            v70 = v64[2](v64, v60);
            if ([v70 isAccessibilityElement])
            {
              v71 = v70;

              v69 = v71;
            }
          }
        }

        else
        {
          v69 = v64[2](v64, v60);
          v67 = v52;
        }

        if (v69)
        {
          v72 = 0;
          goto LABEL_100;
        }
      }

      else
      {
        v69 = v52;
      }

      if (v110)
      {
        array = [MEMORY[0x1E695DF70] array];
        if ([v60 isAccessibilityElement])
        {
          [array addObject:v60];
        }

        else if ([v60 _accessibilityHasOrderedChildren])
        {
          v121[0] = MEMORY[0x1E69E9820];
          v121[1] = 3221225472;
          v121[2] = __64__NSObject_AXPrivCategory___accessibilityBaseHitTest_withEvent___block_invoke_3;
          v121[3] = &unk_1E78AAC38;
          v122 = array;
          [v60 accessibilityEnumerateContainerElementsUsingBlock:v121];
        }

        v108 = v69;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v74 = array;
        v75 = [v74 countByEnumeratingWithState:&v117 objects:v132 count:16];
        if (v75)
        {
          v76 = v75;
          v77 = *v118;
          do
          {
            for (i = 0; i != v76; ++i)
            {
              if (*v118 != v77)
              {
                objc_enumerationMutation(v74);
              }

              v79 = *(*(&v117 + 1) + 8 * i);
              [v79 accessibilityActivationPoint];
              AX_CGPointGetDistanceToPoint();
              if (v80 < v54)
              {
                v81 = v80;
                v82 = v79;

                v54 = v81;
                v53 = v82;
              }
            }

            v76 = [v74 countByEnumeratingWithState:&v117 objects:v132 count:16];
          }

          while (v76);
        }

        v72 = 1;
        v8 = v107;
        v69 = v108;
      }

      else
      {
        v72 = 1;
      }

LABEL_100:

      v52 = v69;
      self = selfCopy3;
      automationElements = v114;
      if (!v72)
      {
        goto LABEL_111;
      }

      goto LABEL_101;
    }

    v69 = v52;
LABEL_101:
    v83 = __OFADD__(v51, v112);
    v51 += v112;
    v84 = v51 < 0 == v83;
    if (!v113)
    {
      v84 = v51 < v115;
    }

    if (!v84)
    {
      goto LABEL_111;
    }
  }

  v69 = v52;
LABEL_111:
  if (v69)
  {
    v86 = 0;
    window = v104;
    _accessibilityParentView = v105;
    goto LABEL_125;
  }

  window = v104;
  _accessibilityParentView = v105;
  v17 = v102;
  v15 = v103;
  v19 = v101;
LABEL_114:
  _accessibilitySupplementaryFooterViews = [self _accessibilitySupplementaryFooterViews];
  v69 = [self _accessibilityHitTestSupplementaryViews:_accessibilitySupplementaryFooterViews point:v8 withEvent:{a2, a3}];

  v86 = v69 == 0;
  v88 = v110;
  if (v69)
  {
    v88 = 0;
  }

  if (v88 == 1 && v53)
  {
    v53 = v53;
    v86 = 0;
    v69 = v53;
    goto LABEL_125;
  }

  if (v69 || v115 < 1)
  {
LABEL_125:
    v92 = AXRemoteElementFromObject();
    v93 = v92;
    if (v86 && v92)
    {
      _accessibilityShouldHitTestRemoteElementProcess = [self _accessibilityShouldHitTestRemoteElementProcess];
      v95 = AXLogUIA();
      v96 = os_log_type_enabled(v95, OS_LOG_TYPE_INFO);
      if (_accessibilityShouldHitTestRemoteElementProcess)
      {
        if (v96)
        {
          *buf = 138412290;
          selfCopy = v93;
          _os_log_impl(&dword_1A9B83000, v95, OS_LOG_TYPE_INFO, "Will attempt to hit test remote process %@", buf, 0xCu);
        }

        self = v93;
        goto LABEL_140;
      }

      if (v96)
      {
        *buf = 138412290;
        selfCopy = 0;
        _os_log_impl(&dword_1A9B83000, v95, OS_LOG_TYPE_INFO, "Not returning remote element for hit-testing %@", buf, 0xCu);
      }

      v8 = v107;
    }

    if ((v106 & v86) == 1)
    {
      if ([self isAccessibilityElement])
      {
        goto LABEL_141;
      }

      leafNodePredicate3 = [v109 leafNodePredicate];
      v98 = (leafNodePredicate3)[2](leafNodePredicate3, self);

      if (v98)
      {
        goto LABEL_141;
      }
    }

    v95 = AXLogUIA();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
    {
      v99 = UIAXMassageElementDescription(v69);
      *buf = 138412290;
      selfCopy = v99;
      _os_log_impl(&dword_1A9B83000, v95, OS_LOG_TYPE_INFO, "Base hit test returning %@", buf, 0xCu);
    }

    self = v69;
LABEL_140:

    v8 = v107;
LABEL_141:
    v91 = v69;
    selfCopy5 = self;

    automationElements = v114;
    goto LABEL_142;
  }

  v148.origin.x = v15;
  v148.origin.y = v17;
  v148.size.width = v19;
  v148.size.height = v21;
  v144.x = v29;
  v144.y = v31;
  if (!CGRectContainsPoint(v148, v144) || ([v109 fallbackPredicate], v89 = objc_claimAutoreleasedReturnValue(), v90 = (v89)[2](v89, self), v89, !v90))
  {
    v69 = 0;
    v86 = 1;
    goto LABEL_125;
  }

  selfCopy5 = self;
  v91 = 0;
LABEL_142:

  v39 = v109;
  v44 = v91;
LABEL_143:

LABEL_144:
LABEL_145:

LABEL_146:

  return selfCopy5;
}

- (uint64_t)_accessibilitySelfFoundByHitTesting
{
  [self accessibilityFrame];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MidY = CGRectGetMidY(v15);
  v8 = [self safeValueForKey:@"window"];
  EventForSceneReferencePoint = UIAccessibilityCreateEventForSceneReferencePoint(0, MidX, MidY);
  v10 = [v8 _accessibilityHitTest:EventForSceneReferencePoint withEvent:{MidX, MidY}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && v10)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (objc_opt_respondsToSelector())
      {
        [v10 performSelector:sel_realTableViewCell];
      }

      else
      {
        [v10 accessibilityContainer];
      }
      v11 = ;

      v10 = v11;
    }

    while (v11);
  }

  if (v10 == self)
  {
    v12 = 1;
  }

  else
  {
    v12 = [v10 _accessibilityIsDescendantOfElement:self];
  }

  return v12;
}

- (uint64_t)_accessibilityWindowVisible
{
  accessibilityUserDefinedWindowVisible = [self accessibilityUserDefinedWindowVisible];
  bOOLValue = [accessibilityUserDefinedWindowVisible BOOLValue];

  return bOOLValue;
}

- (void)_setAccessibilityWindowVisible:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _accessibilitySetRetainedValue:v2 forKey:@"_AX_WindowVisible"];
}

- (uint64_t)_accessibilityIsMainWindow
{
  accessibilityUserDefinedIsMainWindow = [self accessibilityUserDefinedIsMainWindow];
  bOOLValue = [accessibilityUserDefinedIsMainWindow BOOLValue];

  return bOOLValue;
}

- (void)_setAccessibilityIsMainWindow:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _accessibilitySetRetainedValue:v2 forKey:@"_AX_WindowIsMain"];
}

- (uint64_t)_accessibilityTextInputElementRangeAsNSRange
{
  _accessibilityTextInputElementRange = [self _accessibilityTextInputElementRange];
  if (_accessibilityTextInputElementRange)
  {
    _accessibilityTextInputElement = [self _accessibilityTextInputElement];
    v4 = [_accessibilityTextInputElement _accessibilityRawRangeForUITextRange:_accessibilityTextInputElementRange];
  }

  else
  {
    v4 = 0x7FFFFFFFLL;
  }

  return v4;
}

- (uint64_t)_accessibilityRemoteElementShouldHitTestHostProcess
{
  v1 = [self _accessibilityGetBlockForAttribute:5009];
  v2 = v1;
  if (v1)
  {
    v3 = (*(v1 + 16))(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_accessibilitySetScrollingEnabled:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _accessibilitySetUserDefinedScrollingEnabled:v2];
}

- (uint64_t)_accessibilityScrollingEnabled
{
  _accessibilityUserDefinedScrollingEnabled = [self _accessibilityUserDefinedScrollingEnabled];
  v2 = _accessibilityUserDefinedScrollingEnabled;
  if (_accessibilityUserDefinedScrollingEnabled)
  {
    bOOLValue = [_accessibilityUserDefinedScrollingEnabled BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)_setAccessibilityShouldUseViewHierarchyForFindingScrollParent:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _accessibilitySetRetainedValue:v2 forKey:@"_accessibilityShouldUseViewHierarchyForFindingScrollParent"];
}

- (BOOL)_accessibilityIsPressed
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v2 = [self safeValueForKey:@"_browserAccessibilityStoredValuePressedState"];

  if (!v2)
  {
    return 0;
  }

  if ([self safeIntegerForKey:@"browserAccessibilityPressedState"] == 2)
  {
    return 1;
  }

  return [self safeIntegerForKey:@"browserAccessibilityPressedState"] == 3;
}

- (uint64_t)_accessibilityExpandedStatus
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [self safeIntegerForKey:@"accessibilityExpandedStatus"];
}

- (id)_accessibilityFirstResponderForKeyWindow
{
  _applicationKeyWindow = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  v3 = [self _accessibilityFirstResponderForWindow:_applicationKeyWindow];

  return v3;
}

- (id)_accessibilityResponderChainForWindow:()AXPrivCategory
{
  v3 = a3;
  array = [MEMORY[0x1E695DF70] array];
  firstResponder = [v3 firstResponder];
  if (firstResponder)
  {
    v6 = firstResponder;
    do
    {
      [array addObject:v6];
      nextResponder = [v6 nextResponder];

      v6 = nextResponder;
    }

    while (nextResponder);
  }

  return array;
}

- (id)_accessibilityResponderChainForKeyWindow
{
  _applicationKeyWindow = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  v3 = [self _accessibilityResponderChainForWindow:_applicationKeyWindow];

  return v3;
}

- (void)_accessibilityIterateScrollParentsUsingBlock:()AXPrivCategory includeSelf:
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _accessibilityShouldUseViewHierarchyForFindingScrollParent = [self _accessibilityShouldUseViewHierarchyForFindingScrollParent];
    selfCopy = self;
    superview = selfCopy;
    if (a4)
    {
      goto LABEL_9;
    }

    if (_accessibilityShouldUseViewHierarchyForFindingScrollParent)
    {
      superview = [selfCopy superview];
      _accessibilityShouldUseViewHierarchyForFindingScrollParent = 1;
      goto LABEL_8;
    }
  }

  else
  {
    selfCopy2 = self;
    if (a4)
    {
      superview = selfCopy2;
      _accessibilityShouldUseViewHierarchyForFindingScrollParent = 0;
      goto LABEL_9;
    }
  }

  superview = [self _accessibilityParentForFindingScrollParent];
  _accessibilityShouldUseViewHierarchyForFindingScrollParent = 0;
LABEL_8:

  if (superview == self)
  {
    _AXAssert();
    goto LABEL_19;
  }

LABEL_9:
  v13 = 0;
  if (superview)
  {
    while (1)
    {
      v6[2](v6, superview, &v13);
      v11 = superview;
      v12 = v11;
      if (_accessibilityShouldUseViewHierarchyForFindingScrollParent)
      {
        [v11 superview];
      }

      else
      {
        [v11 _accessibilityParentForFindingScrollParent];
      }
      superview = ;

      if (v12 == superview)
      {
        break;
      }

      if (!superview || (v13 & 1) != 0)
      {
        goto LABEL_19;
      }
    }

    _AXAssert();
  }

LABEL_19:
}

- (double)__accessibilityVisibleScrollArea:()AXPrivCategory
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v10 = "";
  v11 = xmmword_1A9BF34E0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__NSObject_AXPrivCategory____accessibilityVisibleScrollArea___block_invoke;
  v5[3] = &unk_1E78AAC60;
  v6 = a3;
  v5[4] = &v7;
  [self _accessibilityIterateScrollParentsUsingBlock:v5];
  v3 = v8[4];
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (void)setIsAccessibilityScrollAncestor:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _accessibilitySetRetainedValue:v2 forKey:@"_AX_IsScrollAncestor"];
}

- (uint64_t)_accessibilityShouldSpeakScrollStatusOnEntry
{
  if (!_accessibilityShouldSpeakScrollStatusOnEntry_BaseNSObjectMethod)
  {
    v2 = objc_opt_class();
    _accessibilityShouldSpeakScrollStatusOnEntry_BaseNSObjectMethod = class_getInstanceMethod(v2, sel__accessibilityShouldSpeakScrollStatusOnEntry);
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__NSObject_AXPrivCategory___accessibilityShouldSpeakScrollStatusOnEntry__block_invoke;
  v5[3] = &unk_1E78AAC88;
  v5[4] = &v6;
  v5[5] = sel__accessibilityShouldSpeakScrollStatusOnEntry;
  [self _accessibilityIterateScrollParentsUsingBlock:v5 includeSelf:0];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_accessibilityScrollStatus
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__NSObject_AXPrivCategory___accessibilityScrollStatus__block_invoke;
  v9[3] = &unk_1E78AACB0;
  v9[4] = &v10;
  [self _accessibilityIterateScrollParentsUsingBlock:v9 includeSelf:0];
  v2 = v11[5];
  if (!v2)
  {
    _accessibilityScrollAncestor = [self _accessibilityScrollAncestor];
    v4 = _accessibilityScrollAncestor;
    if (_accessibilityScrollAncestor != self)
    {
      _accessibilityScrollStatus = [_accessibilityScrollAncestor _accessibilityScrollStatus];
      v6 = v11[5];
      v11[5] = _accessibilityScrollStatus;
    }

    v2 = v11[5];
  }

  v7 = v2;
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)_accessibilityScrollAncestorForSelector:()AXPrivCategory alwaysAllowRefreshAction:
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2;
  v27 = __Block_byref_object_dispose__2;
  v28 = 0;
  if (aSelector)
  {
    v7 = NSStringFromSelector(aSelector);
    v8 = [v7 stringByAppendingString:@"Supported"];

    _accessibilityScrollAncestor = [self _accessibilityScrollAncestor];
    v10 = AXRemoteElementFromObject();
    if (v10)
    {
      objc_storeStrong(v24 + 5, v10);
    }

    if (_accessibilityScrollAncestor)
    {
      while (1)
      {
        if (objc_opt_respondsToSelector())
        {
          v11 = [_accessibilityScrollAncestor safeValueForKey:v8];
          bOOLValue = [v11 BOOLValue];

          if ((bOOLValue & 1) != 0 || a4 && sel_accessibilityScrollUpPage == aSelector)
          {
            break;
          }
        }

        accessibilityContainer = [_accessibilityScrollAncestor accessibilityContainer];
        _accessibilityScrollAncestor2 = [accessibilityContainer _accessibilityScrollAncestor];

        _accessibilityScrollAncestor = _accessibilityScrollAncestor2;
        if (!_accessibilityScrollAncestor2)
        {
          goto LABEL_13;
        }
      }

      v15 = v24[5];
      v24[5] = _accessibilityScrollAncestor;
      v16 = _accessibilityScrollAncestor;
    }

LABEL_13:
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __93__NSObject_AXPrivCategory___accessibilityScrollAncestorForSelector_alwaysAllowRefreshAction___block_invoke;
    v19[3] = &unk_1E78AACD8;
    v21 = &v23;
    v22 = 0;
    v20 = 0;
    [self _accessibilityIterateScrollParentsUsingBlock:v19];
    v8 = v20;
  }

  v17 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v17;
}

- (uint64_t)_accessibilityIterateParentsForTestBlock:()AXPrivCategory
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__NSObject_AXPrivCategory___accessibilityIterateParentsForTestBlock___block_invoke;
  v8[3] = &unk_1E78AAD00;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [self _accessibilityIterateScrollParentsUsingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (uint64_t)_accessibilityIsEscapable
{
  if (!_accessibilityIsEscapable_BaseNSObjectMethod)
  {
    v2 = objc_opt_class();
    _accessibilityIsEscapable_BaseNSObjectMethod = class_getInstanceMethod(v2, sel_accessibilityPerformEscape);
    v3 = objc_opt_class();
    _accessibilityIsEscapable_BaseCanPerformMethod = class_getInstanceMethod(v3, sel__accessibilityCanPerformEscapeAction);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__NSObject_AXPrivCategory___accessibilityIsEscapable__block_invoke;
  v10[3] = &unk_1E78AAD28;
  v10[4] = &v11;
  v10[5] = &v17;
  v10[6] = sel__accessibilityCanPerformEscapeAction;
  v10[7] = sel_accessibilityPerformEscape;
  v4 = [self _accessibilityIterateParentsForTestBlock:v10];
  if ((v4 & 1) != 0 || *(v18 + 24) == 1)
  {
    _accessibilityCanPerformEscapeAction = (_switchControlNegatesPerformEscapeAnswer(v12[5]) ^ 1) & v4;
  }

  else
  {
    v7 = MEMORY[0x1E69DDA98];
    v8 = objc_opt_class();
    if (class_getInstanceMethod(v8, sel__accessibilityCanPerformEscapeAction) == _accessibilityIsEscapable_BaseCanPerformMethod)
    {
      v9 = objc_opt_class();
      _accessibilityCanPerformEscapeAction = class_getInstanceMethod(v9, sel_accessibilityPerformEscape) != _accessibilityIsEscapable_BaseNSObjectMethod;
    }

    else
    {
      _accessibilityCanPerformEscapeAction = [*v7 _accessibilityCanPerformEscapeAction];
    }
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return _accessibilityCanPerformEscapeAction;
}

- (uint64_t)_accessibilityIsScrollable
{
  v2 = [self _accessibilityValueForKey:@"AXIsScrollable"];

  if (v2)
  {

    return [self _accessibilityBoolValueForKey:@"AXIsScrollable"];
  }

  else
  {
    v4 = [self _accessibilityIterateParentsForTestBlock:&__block_literal_global_398];
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      _accessibilityScrollAncestor = [self _accessibilityScrollAncestor];
      v5 = _accessibilityScrollAncestor != 0;
    }

    [self _accessibilitySetBoolValue:v4 | v5 forKey:@"AXIsScrollable"];
    return v4 | v5;
  }
}

- (uint64_t)_accessibilityIsInTabBar
{
  _axCachedHasTabBarAncestor = [self _axCachedHasTabBarAncestor];
  v3 = _axCachedHasTabBarAncestor;
  if (_axCachedHasTabBarAncestor)
  {
    bOOLValue = [_axCachedHasTabBarAncestor BOOLValue];
  }

  else
  {
    _accessibilityTabBarAncestor = [self _accessibilityTabBarAncestor];
    bOOLValue = _accessibilityTabBarAncestor != 0;

    v6 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
    [self _axSetCachedHasTabBarAncestor:v6];
  }

  return bOOLValue;
}

- (uint64_t)_accessibilityCanScrollInAtLeastOneDirection
{
  if ([self _accessibilityCanPerformAction:2006] & 1) != 0 || (objc_msgSend(self, "_accessibilityCanPerformAction:", 2007) & 1) != 0 || (objc_msgSend(self, "_accessibilityCanPerformAction:", 2009))
  {
    return 1;
  }

  return [self _accessibilityCanPerformAction:2008];
}

- (uint64_t)_accessibilityShowContextMenuWithTargetPointValue:()AXPrivCategory
{
  v4 = a3;
  _accessibilityParentView = [self _accessibilityParentView];
  v6 = [_accessibilityParentView _accessibilityShowContextMenuForElement:self targetPointValue:v4];

  return v6;
}

- (uint64_t)_accessibilityBaseScrollToVisible
{
  v2 = AXLogScrollToVisible();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [NSObject(AXPrivCategory) _accessibilityBaseScrollToVisible];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__NSObject_AXPrivCategory___accessibilityBaseScrollToVisible__block_invoke;
  v5[3] = &unk_1E78AAD50;
  v5[4] = self;
  v5[5] = &v6;
  [self _accessibilityIterateScrollParentsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (uint64_t)_animateScrollViewWithScrollAmount:()AXPrivCategory point:
{
  if (a2 == 0.0)
  {
    return 1;
  }

  if (__AXRuntimeApplicationElement())
  {
    v4 = __AXRuntimeApplicationElement();
    v5 = v4();
    v6 = _AXCreateAXUIElementWithElement();
  }

  else
  {
    v6 = _AXCreateAXUIElementWithElement();
  }

  v8 = 0;
  [self _accessibilityDisplayId];
  _AXUIElementCopyElementAtPositionWithParams();
  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

- (BOOL)_accessibilityAdjustScrollOffset:()AXPrivCategory
{
  v39 = *MEMORY[0x1E69E9840];
  v34[0] = 0;
  objc_opt_class();
  _accessibilityScrollAncestor = [self _accessibilityScrollAncestor];
  v7 = __UIAccessibilityCastAsClass();

  [v7 contentOffset];
  v9 = v8;
  v11 = v10;
  [v7 frame];
  v13 = v12;
  v15 = v14;
  v16 = AXMediaLogMLElement();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v40.x = v9;
    v40.y = v11;
    v17 = NSStringFromCGPoint(v40);
    v41.x = a2;
    v41.y = a3;
    v18 = NSStringFromCGPoint(v41);
    *v34 = 138412802;
    *&v34[4] = v7;
    v35 = 2112;
    v36 = v17;
    v37 = 2112;
    v38 = v18;
    _os_log_impl(&dword_1A9B83000, v16, OS_LOG_TYPE_DEFAULT, "Scrolling with %@ from %@ + %@", v34, 0x20u);
  }

  v19 = a3 + v11;
  v20 = a2 + v9;
  [v7 contentSize];
  v22 = v21 - v15;
  if (v21 - v15 >= v19)
  {
    v22 = v19;
  }

  v23 = fmax(v22, 0.0);
  [v7 contentSize];
  v25 = v24 - v13;
  if (v25 >= v20)
  {
    v25 = v20;
  }

  v26 = fmax(v25, 0.0);
  v27 = AXMediaLogMLElement();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v42.x = v26;
    v42.y = v23;
    v28 = NSStringFromCGPoint(v42);
    [v7 contentSize];
    v29 = NSStringFromCGSize(v43);
    *v34 = 138412546;
    *&v34[4] = v28;
    v35 = 2112;
    v36 = v29;
    _os_log_impl(&dword_1A9B83000, v27, OS_LOG_TYPE_DEFAULT, "Will apply %@ with size :%@", v34, 0x16u);
  }

  [v7 accessibilityApplyScrollContent:0 sendScrollStatus:v26 animateWithDuration:{v23, 0.1}];
  [v7 contentOffset];
  v32 = v23 != v31 || v26 != v30;

  return v32;
}

- (uint64_t)_accessibilityScrollToPoint:()AXPrivCategory
{
  _accessibilityScrollAncestor = [self _accessibilityScrollAncestor];
  if (objc_opt_respondsToSelector())
  {
    v5 = a2 >= 0.0 && a2 <= 1.0;
    if (v5 && a3 >= 0.0 && a3 <= 1.0)
    {
      [_accessibilityScrollAncestor contentSize];
      [_accessibilityScrollAncestor _accessibilityScrollToFrame:_accessibilityScrollAncestor forView:{a2 * v6, a3 * v7, 1.0, 1.0}];
      _accessibilityScrollStatus = [_accessibilityScrollAncestor _accessibilityScrollStatus];
      UIAccessibilityPostNotification(*MEMORY[0x1E69DD908], _accessibilityScrollStatus);
    }

    else
    {
      NSLog(&cfstr_ScrollToPointO.isa, _accessibilityScrollAncestor);
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (double)_accessibilityScrollRectToVisible:()AXPrivCategory
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = "";
  v13 = *MEMORY[0x1E695EFF8];
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x4010000000;
  v8[3] = "";
  *&v8[4] = a2;
  *&v8[5] = a3;
  *&v8[6] = a4;
  *&v8[7] = a5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__NSObject_AXPrivCategory___accessibilityScrollRectToVisible___block_invoke;
  v7[3] = &unk_1E78AADA0;
  v7[4] = v8;
  v7[5] = &v9;
  [self _accessibilityIterateScrollParentsUsingBlock:v7 includeSelf:1];
  v5 = v10[4];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (uint64_t)_accessibilityHandlePublicScroll:()AXPrivCategory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__NSObject_AXPrivCategory___accessibilityHandlePublicScroll___block_invoke;
  v5[3] = &unk_1E78AADC8;
  v5[5] = &v6;
  v5[6] = a3;
  v5[4] = self;
  [self _accessibilityIterateScrollParentsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_accessibilitySendPageScrollFailedIfNecessary
{
  _accessibilityRemoteParent = [self _accessibilityRemoteParent];
  if (!_accessibilityRemoteParent || (v3 = _accessibilityRemoteParent, v4 = [self _accessibilityShouldScrollRemoteParent], v3, (v4 & 1) == 0))
  {
    v5 = *MEMORY[0x1E69DD908];
    v6 = *MEMORY[0x1E69890E8];

    UIAccessibilityPostNotification(v5, v6);
  }
}

- (uint64_t)_accessibilityTryScrollWithSelector:()AXPrivCategory shouldSendScrollFailed:
{
  v13 = 0;
  v7 = [self _accessibilityScrollAncestorForSelector:?];
  if (v7)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (v8 = MEMORY[0x1E695DF50], [objc_opt_class() instanceMethodSignatureForSelector:a3], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "invocationWithMethodSignature:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, objc_msgSend(v10, "setSelector:", a3), objc_msgSend(v10, "setTarget:", v7), objc_msgSend(v10, "invoke"), objc_msgSend(v10, "getReturnValue:", &v13), v10, (v13))
    {
      a4 = 1;
    }

    else
    {
      accessibilityContainer = [v7 accessibilityContainer];
      a4 = [accessibilityContainer _accessibilityTryScrollWithSelector:a3 shouldSendScrollFailed:a4];
    }
  }

  else if (a4)
  {
    [self _accessibilitySendPageScrollFailedIfNecessary];
    a4 = 0;
  }

  return a4;
}

- (uint64_t)_accessibilityScrollPageInDirection:()AXPrivCategory shouldSendScrollFailed:
{
  if ([self _accessibilityHandlePublicScroll:?])
  {
    return 1;
  }

  v8 = [self _accessibilityScrollSelectorForDirection:a3];

  return [self _accessibilityTryScrollWithSelector:v8 shouldSendScrollFailed:a4];
}

- (char)_accessibilityScrollSelectorForDirection:()AXPrivCategory
{
  result = 0;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      return sel_accessibilityScrollUpPage;
    }

    else if (a3 == 4)
    {
      return sel_accessibilityScrollDownPage;
    }
  }

  else if (a3 == 1)
  {
    return sel_accessibilityScrollRightPage;
  }

  else if (a3 == 2)
  {
    return sel_accessibilityScrollLeftPage;
  }

  return result;
}

- (BOOL)_accessibilityFrameSupportsMediaAnalysis
{
  [self _axScreenBoundsForBoundsCheck];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [self _axFrameForBoundsCheck:0];
  width = v20.size.width;
  height = v20.size.height;
  v12 = v20.size.width / 3.0;
  x = v20.origin.x;
  y = v20.origin.y;
  MaxX = CGRectGetMaxX(v20);
  v21.origin.x = v3;
  v21.origin.y = v5;
  v21.size.width = v7;
  v21.size.height = v9;
  if (MaxX - CGRectGetMaxX(v21) > v12)
  {
    return 0;
  }

  v22.origin.y = y;
  v22.origin.x = x;
  v22.size.width = width;
  v22.size.height = height;
  MinX = CGRectGetMinX(v22);
  v23.origin.x = v3;
  v23.origin.y = v5;
  v23.size.width = v7;
  v23.size.height = v9;
  if (MinX - CGRectGetMinX(v23) < -v12)
  {
    return 0;
  }

  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MaxY = CGRectGetMaxY(v24);
  v25.origin.x = v3;
  v25.origin.y = v5;
  v25.size.width = v7;
  v25.size.height = v9;
  if (MaxY - CGRectGetMaxY(v25) > height / 3.0)
  {
    return 0;
  }

  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MinY = CGRectGetMinY(v26);
  v27.origin.x = v3;
  v27.origin.y = v5;
  v27.size.width = v7;
  v27.size.height = v9;
  return MinY - CGRectGetMinY(v27) >= -(height / 3.0);
}

- (uint64_t)_accessibilityMediaAnalysisOptions
{
  _accessibilityUserDefinedMediaAnalysisOptions = [self _accessibilityUserDefinedMediaAnalysisOptions];
  v3 = _accessibilityUserDefinedMediaAnalysisOptions;
  if (_accessibilityUserDefinedMediaAnalysisOptions)
  {
    unsignedLongValue = [_accessibilityUserDefinedMediaAnalysisOptions unsignedLongValue];
  }

  else if ([self _accessibilityIsGroupedParent])
  {
    unsignedLongValue = 0;
  }

  else
  {
    unsignedLongValue = 40959;
  }

  _accessibilityBrailleMap = [self _accessibilityBrailleMap];

  if (_accessibilityBrailleMap)
  {
    v6 = unsignedLongValue | 0x100000;
  }

  else
  {
    v6 = unsignedLongValue;
  }

  return v6;
}

- (uint64_t)_accessibilityEffectiveMediaAnalysisOptions
{
  _accessibilityMediaAnalysisOptions = [self _accessibilityMediaAnalysisOptions];
  if ((_accessibilityMediaAnalysisOptions & 0x8000) != 0)
  {
    if ([self _accessibilityFrameSupportsMediaAnalysis])
    {
      return _accessibilityMediaAnalysisOptions;
    }

    else
    {
      return _accessibilityMediaAnalysisOptions & 0xFFFF7FFF;
    }
  }

  return _accessibilityMediaAnalysisOptions;
}

- (uint64_t)_accessibilityCanBeConsideredMediaAnalysisElement
{
  accessibilityTraits = [self accessibilityTraits];
  if ((*MEMORY[0x1E69DD9D0] & accessibilityTraits) == 0)
  {
    return 0;
  }

  [self accessibilityFrame];
  if (v4 < *MEMORY[0x1E6988358] || v3 < *MEMORY[0x1E6988350])
  {
    return 0;
  }

  v7 = objc_opt_respondsToSelector();
  if ((v7 & 1) == 0)
  {
    return 1;
  }

  result = [self _accessibilityViewIsVisible];
  if (result)
  {
    return 1;
  }

  return result;
}

- (void)_accessibilityMediaAnalysisElement
{
  selfCopy = self;
  v2 = [self _accessibilityFindSubviewDescendant:&__block_literal_global_443];
  v3 = v2;
  if (v2)
  {
    selfCopy = v2;
  }

  v4 = selfCopy;

  return selfCopy;
}

- (BOOL)accessibilityShouldEnumerateContainerElementsArrayDirectly
{
  if (accessibilityShouldEnumerateContainerElementsArrayDirectly_onceToken != -1)
  {
    [NSObject(AXPrivCategory) accessibilityShouldEnumerateContainerElementsArrayDirectly];
  }

  v0 = objc_opt_class();
  v1 = accessibilityShouldEnumerateContainerElementsArrayDirectly_elementsBaseMethod;
  if (v1 == class_getInstanceMethod(v0, sel__accessibilityElements))
  {
    return 0;
  }

  v2 = accessibilityShouldEnumerateContainerElementsArrayDirectly_elementsCountBaseMethod;
  if (v2 != class_getInstanceMethod(v0, sel_accessibilityElementCount))
  {
    return 0;
  }

  v4 = accessibilityShouldEnumerateContainerElementsArrayDirectly_elementAtIndexBaseMethod;
  return v4 == class_getInstanceMethod(v0, sel_accessibilityElementAtIndex_);
}

- (void)accessibilityEnumerateContainerElementsWithOptions:()AXPrivCategory usingBlock:
{
  v5 = a4;
  v29[0] = 0;
  if ([self accessibilityShouldEnumerateContainerElementsArrayDirectly])
  {
    _accessibilityElements = [self _accessibilityElements];
    v7 = [_accessibilityElements copy];

    v20 = v7;
    v8 = [v7 count];
    if (v8)
    {
      v9 = v8;
      v10 = v8 - 1;
      v11 = 1;
      do
      {
        if ((a3 & 2) != 0)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11 - 1;
        }

        v23 = 0;
        v24 = &v23;
        v25 = 0x3032000000;
        v26 = __Block_byref_object_copy__2;
        v27 = __Block_byref_object_dispose__2;
        v28 = 0;
        v22 = v20;
        AXPerformSafeBlock();
        v13 = v24[5];

        _Block_object_dispose(&v23, 8);
        if (v13)
        {
          v5[2](v5, v13, v12, v29);
        }

        if (v11 >= v9)
        {
          break;
        }

        ++v11;
        --v10;
      }

      while ((v29[0] & 1) == 0);
    }
  }

  else
  {
    accessibilityElementCount = [self accessibilityElementCount];
    if (accessibilityElementCount)
    {
      v15 = accessibilityElementCount;
      if (accessibilityElementCount != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = accessibilityElementCount - 1;
        v17 = 1;
        do
        {
          if ((a3 & 2) != 0)
          {
            v18 = v16;
          }

          else
          {
            v18 = v17 - 1;
          }

          v19 = [self accessibilityElementAtIndex:v18];
          if (v19)
          {
            v5[2](v5, v19, v18, v29);
          }

          if (v17 >= v15)
          {
            break;
          }

          ++v17;
          --v16;
        }

        while ((v29[0] & 1) == 0);
      }
    }
  }
}

- (void)accessibilityEnumerateContainerElementsUsingBlock:()AXPrivCategory
{
  v5 = a3;
  if ([self _accessibilityHitTestReverseOrder])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [self accessibilityEnumerateContainerElementsWithOptions:v4 usingBlock:v5];
}

- (id)_accessibilityContainerInDirection:()AXPrivCategory
{
  v5 = +[UIAccessibilityElementTraversalOptions options];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__NSObject_AXPrivCategory___accessibilityContainerInDirection___block_invoke;
  aBlock[3] = &unk_1E78AA760;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  selfCopy = [self _accessibilityFindAncestor:v6 startWithSelf:0];
  if (!selfCopy)
  {
    selfCopy = self;
  }

  [v5 setLeafNodePredicate:v6];
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [v5 setDirection:v8];
  [v5 setIncludeAncestorsOfSelfInSiblingMatch:1];
  _accessibilityOpaqueElementParent = [self _accessibilityOpaqueElementParent];
  if (_accessibilityOpaqueElementParent && (LOBYTE(v15) = 0, [_accessibilityOpaqueElementParent _accessibilityMoveFocusToNextOpaqueElementForTechnology:*MEMORY[0x1E69DD8F8] direction:objc_msgSend(v5 searchType:"direction") range:35 shouldScrollToVisible:0x7FFFFFFFLL honorsGroups:{0, 1, v15}], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    _accessibilityTouchContainer = [v10 _accessibilityTouchContainer];
  }

  else
  {
    v11 = [selfCopy _accessibilityElementsInDirectionWithCount:1 options:v5];
    _accessibilityTouchContainer = [v11 firstObject];
  }

  v13 = _accessibilityTouchContainer;

  return v13;
}

- (id)_accessibilityGuideElementInDirection:()AXPrivCategory
{
  v5 = +[UIAccessibilityElementTraversalOptions options];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__NSObject_AXPrivCategory___accessibilityGuideElementInDirection___block_invoke;
  aBlock[3] = &unk_1E78AA760;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  [v5 setLeafNodePredicate:v6];
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [v5 setDirection:v7];
  [v5 setIncludeAncestorsOfSelfInSiblingMatch:1];
  v8 = [self _accessibilityElementsInDirectionWithCount:1 options:v5];
  firstObject = [v8 firstObject];

  return firstObject;
}

- (void)_accessibilityUpdateContainerElementReferencesIfNeededForNewElements:()AXPrivCategory
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  _accessibilityLastElementsUpdatedWithContainerElementReferences = [self _accessibilityLastElementsUpdatedWithContainerElementReferences];
  v6 = [_accessibilityLastElementsUpdatedWithContainerElementReferences countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(_accessibilityLastElementsUpdatedWithContainerElementReferences);
        }

        [*(*(&v21 + 1) + 8 * i) setAccessibilityContainer:0];
      }

      v7 = [_accessibilityLastElementsUpdatedWithContainerElementReferences countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if (v15 == self)
        {
          v16 = AXLogAppAccessibility();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            selfCopy = self;
            _os_log_error_impl(&dword_1A9B83000, v16, OS_LOG_TYPE_ERROR, "An object shouldn't return itself in accessibilityElements. Element: %@", buf, 0xCu);
          }
        }

        else
        {
          [v15 setAccessibilityContainer:self];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v12);
  }

  [self _accessibilitySetLastElementsUpdatedWithContainerElementReferences:v10];
}

- (id)_accessibilitySwipeIsland
{
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      _accessibilitySwipeIslandIdentifier = [selfCopy _accessibilitySwipeIslandIdentifier];
      if (_accessibilitySwipeIslandIdentifier)
      {
        break;
      }

      accessibilityContainer = [selfCopy accessibilityContainer];

      selfCopy = accessibilityContainer;
      if (!accessibilityContainer)
      {
        goto LABEL_7;
      }
    }

    accessibilityContainer = _accessibilitySwipeIslandIdentifier;
  }

  else
  {
    accessibilityContainer = 0;
  }

LABEL_7:

  return accessibilityContainer;
}

- (uint64_t)__accessibilitySupportsActivateAction
{
  if (!__accessibilitySupportsActivateAction_BaseSupportsActivateAction)
  {
    v2 = objc_opt_class();
    __accessibilitySupportsActivateAction_BaseSupportsActivateAction = class_getInstanceMethod(v2, sel__accessibilitySupportsActivateAction);
  }

  _accessibilitySupportsActivateAction = [self _accessibilitySupportsActivateAction];
  v4 = objc_opt_class();
  if (__accessibilitySupportsActivateAction_BaseSupportsActivateAction == class_getInstanceMethod(v4, sel__accessibilitySupportsActivateAction))
  {
    if (!__accessibilitySupportsActivateAction_BaseActivateAction)
    {
      v5 = objc_opt_class();
      __accessibilitySupportsActivateAction_BaseActivateAction = class_getInstanceMethod(v5, sel_accessibilityActivate);
      v6 = objc_opt_class();
      __accessibilitySupportsActivateAction_UIControlActivateAction = class_getInstanceMethod(v6, sel_accessibilityActivate);
    }

    v7 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v7, sel_accessibilityActivate);
    v10 = InstanceMethod != __accessibilitySupportsActivateAction_BaseActivateAction && __accessibilitySupportsActivateAction_UIControlActivateAction != InstanceMethod;
    _accessibilitySupportsActivateAction |= v10;
  }

  return _accessibilitySupportsActivateAction & 1;
}

- (id)_accessibilityHeadingLevel
{
  v2 = [self _accessibilityGetBlockForAttribute:27];
  v3 = v2;
  if (!v2)
  {
    v5 = [self _accessibilityValueForKey:@"AXHeadingLevel"];
    v4 = v5;
    if (v5)
    {
      v6 = v5;
    }

    if (!v4)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (([v4 integerValue] & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v4 = (*(v2 + 16))(v2);
  if (v4)
  {
    goto LABEL_7;
  }

LABEL_8:

  v4 = &unk_1F1DC2668;
LABEL_9:

  return v4;
}

- (uint64_t)_accessibilityCanPerformAction:()AXPrivCategory
{
  accessibilityScrollToTopSupported = 1;
  if (a3 <= 2007)
  {
    if (a3 == 2006)
    {
      v5 = sel_accessibilityScrollDownPage;
    }

    else
    {
      if (a3 != 2007)
      {
        return accessibilityScrollToTopSupported;
      }

      v5 = sel_accessibilityScrollUpPage;
    }

LABEL_12:
    _accessibilityScrollAncestor = [self _accessibilityScrollAncestorForSelector:v5];
    accessibilityScrollToTopSupported = _accessibilityScrollAncestor != 0;
    goto LABEL_13;
  }

  switch(a3)
  {
    case 2008:
      v5 = sel_accessibilityScrollRightPage;
      goto LABEL_12;
    case 2009:
      v5 = sel_accessibilityScrollLeftPage;
      goto LABEL_12;
    case 2030:
      _accessibilityScrollAncestor = [self _accessibilityScrollAncestor];
      accessibilityScrollToTopSupported = [_accessibilityScrollAncestor accessibilityScrollToTopSupported];
LABEL_13:

      break;
  }

  return accessibilityScrollToTopSupported;
}

- (id)_accessibilityRetrieveLinkedUIElementsFromContainerChain
{
  selfCopy = self;
  if (selfCopy)
  {
    v2 = selfCopy;
    while (1)
    {
      _accessibilityLinkedUIElements = [v2 _accessibilityLinkedUIElements];
      if ([_accessibilityLinkedUIElements count])
      {
        break;
      }

      accessibilityContainer = [v2 accessibilityContainer];

      v2 = accessibilityContainer;
      if (!accessibilityContainer)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    _accessibilityLinkedUIElements = 0;
  }

  return _accessibilityLinkedUIElements;
}

- (id)_accessibilityLinkedUIElements
{
  v2 = [self _accessibilityGetBlockForAttribute:15];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2);
  }

  else
  {
    [self _accessibilityUserDefinedLinkedUIElements];
  }
  v4 = ;

  return v4;
}

- (void)_setAccessibilityLinkedUIElements:()AXPrivCategory
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v11 raise:v12 format:{@"accessibilityLinkedUIElements must be an NSArray. Was actually: %@", v14}];

LABEL_12:
    weakObjectsPointerArray = 0;
    goto LABEL_13;
  }

  weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [weakObjectsPointerArray addPointer:*(*(&v15 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

LABEL_13:
  objc_setAssociatedObject(self, &AXLinkedUIElementsIdentifier, weakObjectsPointerArray, 0x301);
}

- (id)_accessibilityUserDefinedLinkedUIElements
{
  v1 = objc_getAssociatedObject(self, &AXLinkedUIElementsIdentifier);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allObjects = [v1 allObjects];

    v1 = allObjects;
  }

  return v1;
}

- (id)_accessibilityGuideElementHeaderText
{
  v2 = [self _accessibilityGetBlockForAttribute:16];
  v3 = v2;
  if (v2)
  {
    _accessibilityUserDefinedGuideElementHeaderText = (*(v2 + 16))(v2);
  }

  else
  {
    _accessibilityUserDefinedGuideElementHeaderText = [self _accessibilityUserDefinedGuideElementHeaderText];
    if (![_accessibilityUserDefinedGuideElementHeaderText length])
    {
      _accessibilityRetieveHeaderElementText = [self _accessibilityRetieveHeaderElementText];

      _accessibilityUserDefinedGuideElementHeaderText = _accessibilityRetieveHeaderElementText;
    }
  }

  return _accessibilityUserDefinedGuideElementHeaderText;
}

- (id)_accessibilityRetieveHeaderElementText
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _accessibilityRetrieveHeaderElements = [self _accessibilityRetrieveHeaderElements];
  v2 = [_accessibilityRetrieveHeaderElements countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v15;
    do
    {
      v6 = 0;
      v7 = v4;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(_accessibilityRetrieveHeaderElements);
        }

        v8 = *(*(&v14 + 1) + 8 * v6);
        v9 = [v8 _iosAccessibilityAttributeValue:{2001, v11, v12, v13}];
        v12 = [v8 _iosAccessibilityAttributeValue:2006];
        v13 = @"__AXStringForVariablesSentinel";
        v11 = v9;
        v4 = __UIAXStringForVariables();

        ++v6;
        v7 = v4;
      }

      while (v3 != v6);
      v3 = [_accessibilityRetrieveHeaderElements countByEnumeratingWithState:&v14 objects:v18 count:{16, v9, v12, @"__AXStringForVariablesSentinel"}];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v1 = [self _accessibilityGetBlockForAttribute:17];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)_accessibilityCanPerformEscapeAction
{
  v1 = [self _accessibilityGetBlockForAttribute:25];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)axContainerTypeFromUIKitContainerType:()AXPrivCategory
{
  if ((a3 & 0xFFFFFFF0) != 0)
  {
    return 0;
  }

  else
  {
    return qword_1A9BF3508[a3 & 0xF];
  }
}

- (id)_axAncestorTypes
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = [self _accessibilityValueForKey:@"AXContainerAncestorTypeKey"];
  v2 = v9[5];
  if (!v2)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v4 = v9[5];
    v9[5] = strongToWeakObjectsMapTable;

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__NSObject_AXPrivCategory___axAncestorTypes__block_invoke;
    v7[3] = &unk_1E78AAE38;
    v7[4] = self;
    v7[5] = &v8;
    [self accessibilityEnumerateAncestorsUsingBlock:v7];
    [self _accessibilitySetRetainedValue:v9[5] forKey:@"AXContainerAncestorTypeKey"];
    v2 = v9[5];
  }

  v5 = v2;
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)_accessibilityAncestorForSiblingsWithType:()AXPrivCategory
{
  _axAncestorTypes = [self _axAncestorTypes];
  v5 = _axAncestorTypes;
  if (a3)
  {
    objectEnumerator = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
    firstObject = [v5 objectForKey:objectEnumerator];
  }

  else
  {
    objectEnumerator = [_axAncestorTypes objectEnumerator];
    allObjects = [objectEnumerator allObjects];
    firstObject = [allObjects firstObject];
  }

  return firstObject;
}

- (uint64_t)_accessibilitySiblingWithAncestor:()AXPrivCategory isFirst:isLast:sawAXElement:
{
  v10 = a3;
  v11 = v10;
  if (v10)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    if (a4)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __90__NSObject_AXPrivCategory___accessibilitySiblingWithAncestor_isFirst_isLast_sawAXElement___block_invoke;
    v15[3] = &unk_1E78AAE60;
    v15[4] = self;
    v15[5] = &v18;
    v15[6] = a6;
    v16 = a4;
    v17 = a5;
    [v10 accessibilityEnumerateContainerElementsWithOptions:v12 usingBlock:v15];
    v13 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (uint64_t)_accessibilityIsFirstSibling
{
  v2 = [self _accessibilityAncestorForSiblingsWithType:0];
  v3 = [self _accessibilitySiblingWithAncestor:v2 isFirst:1 isLast:0];

  return v3;
}

- (uint64_t)_accessibilityIsLastSibling
{
  v2 = [self _accessibilityAncestorForSiblingsWithType:0];
  v3 = [self _accessibilitySiblingWithAncestor:v2 isFirst:0 isLast:1];

  return v3;
}

- (uint64_t)_accessibilityIsFirstSiblingForType:()AXPrivCategory
{
  v2 = [self _accessibilityAncestorForSiblingsWithType:?];
  v3 = [self _accessibilitySiblingWithAncestor:v2 isFirst:1 isLast:0];

  return v3;
}

- (uint64_t)_accessibilityIsLastSiblingForType:()AXPrivCategory
{
  v2 = [self _accessibilityAncestorForSiblingsWithType:?];
  v3 = [self _accessibilitySiblingWithAncestor:v2 isFirst:0 isLast:1];

  return v3;
}

- (id)_accessibilityContainerTypes
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__2;
  v8 = __Block_byref_object_dispose__2;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__NSObject_AXPrivCategory___accessibilityContainerTypes__block_invoke;
  v3[3] = &unk_1E78AAE38;
  v3[4] = self;
  v3[5] = &v4;
  [self accessibilityEnumerateAncestorsUsingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

- (id)accessibilityMathEquation
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [self safeValueForKey:@"accessibilityMathExpression"];
    v3 = [self _accessibilityConvertMathExpression:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_accessibilityConvertMathExpression:()AXPrivCategory
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self _accessibilityProcessMathExpression:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessibilityProcessMathExpression:()AXPrivCategory
{
  v4 = a3;
  v5 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"Number" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
LABEL_7:
    content2 = v6;
    content = [v6 content];
    [v5 setObject:content forKeyedSubscript:@"AXMContent"];

LABEL_8:
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"Identifier" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"Text" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"Operator" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    content2 = [v10 content];

    if ([content2 length] == 1)
    {
      v11 = @"AXMUnichar";
    }

    else
    {
      v11 = @"AXMContent";
    }

    [v5 setObject:content2 forKeyedSubscript:v11];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"Fenced" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    content2 = __UIAccessibilityCastAsClass();
    openString = [content2 openString];
    [v5 setObject:openString forKeyedSubscript:@"AXMOpenOperator"];

    closeString = [content2 closeString];
    [v5 setObject:closeString forKeyedSubscript:@"AXMCloseOperator"];

LABEL_28:
    expressions = [content2 expressions];
    v16 = [self _processMathChildrenExpressions:expressions];
    v17 = @"AXMChildren";
LABEL_29:
    [v5 setObject:v16 forKeyedSubscript:v17];

LABEL_30:
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"Row" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    v14 = __UIAccessibilityCastAsClass();
LABEL_27:
    content2 = v14;
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"Table" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    v14 = __UIAccessibilityCastAsClass();
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"TableCell" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    v14 = __UIAccessibilityCastAsClass();
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"TableRow" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    v14 = __UIAccessibilityCastAsClass();
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"UnderOver" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    content2 = __UIAccessibilityCastAsClass();
    baseExpression = [content2 baseExpression];
    v19 = [self _accessibilityProcessMathExpression:baseExpression];
    [v5 setObject:v19 forKeyedSubscript:@"AXMBaseObject"];

    underExpression = [content2 underExpression];
    v21 = [self _accessibilityProcessMathExpression:underExpression];
    [v5 setObject:v21 forKeyedSubscript:@"AXMUnderObject"];

    expressions = [content2 overExpression];
    v22 = [self _accessibilityProcessMathExpression:expressions];
LABEL_33:
    v16 = v22;
    v17 = @"AXMOverObject";
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"Fraction" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    content2 = __UIAccessibilityCastAsClass();
    numeratorExpression = [content2 numeratorExpression];
    v24 = [self _accessibilityProcessMathExpression:numeratorExpression];
    [v5 setObject:v24 forKeyedSubscript:@"AXMNumeratorObject"];

    expressions = [content2 denimonatorExpression];
    v16 = [self _accessibilityProcessMathExpression:expressions];
    v17 = @"AXMDenominatorObject";
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"SubSuperScript" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    content2 = __UIAccessibilityCastAsClass();
    baseExpression2 = [content2 baseExpression];
    v26 = [self _accessibilityProcessMathExpression:baseExpression2];
    [v5 setObject:v26 forKeyedSubscript:@"AXMBaseObject"];

    subscriptExpressions = [content2 subscriptExpressions];
    v28 = [self _processMathChildrenExpressions:subscriptExpressions];
    [v5 setObject:v28 forKeyedSubscript:@"AXMUnderObject"];

    expressions = [content2 superscriptExpressions];
    v22 = [self _processMathChildrenExpressions:expressions];
    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"Multiscript" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    content2 = __UIAccessibilityCastAsClass();
    baseExpression3 = [content2 baseExpression];
    v30 = [self _accessibilityProcessMathExpression:baseExpression3];
    [v5 setObject:v30 forKeyedSubscript:@"AXMBaseObject"];

    prescriptExpressions = [content2 prescriptExpressions];
    v32 = [self _processMathMultiscriptExpressions:prescriptExpressions];
    [v5 setObject:v32 forKeyedSubscript:@"AXMMultiscriptPrescripts"];

    expressions = [content2 postscriptExpressions];
    v16 = [self _processMathMultiscriptExpressions:expressions];
    v17 = @"AXMMultiscriptPostscripts";
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"RootOperation" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    content2 = __UIAccessibilityCastAsClass();
    radicandExpressions = [content2 radicandExpressions];
    expressions = [self _processMathChildrenExpressions:radicandExpressions];

    v34 = objc_opt_new();
    [v34 setObject:@"Row" forKeyedSubscript:@"AXMType"];
    [v34 setObject:expressions forKeyedSubscript:@"AXMChildren"];
    [v5 setObject:v34 forKeyedSubscript:@"AXMRadicandObject"];
    rootIndexExpression = [content2 rootIndexExpression];
    v36 = [self _accessibilityProcessMathExpression:rootIndexExpression];
    [v5 setObject:v36 forKeyedSubscript:@"AXMRootIndexObject"];

    goto LABEL_30;
  }

LABEL_9:

  return v5;
}

- (id)_processMathMultiscriptExpressions:()AXPrivCategory
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [self _accessibilityProcessMathExpression:{v11, v14}];
          [array addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)_processMathChildrenExpressions:()AXPrivCategory
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self _accessibilityProcessMathExpression:{*(*(&v13 + 1) + 8 * i), v13}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_accessibilityCurrentStatus
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [self safeStringForKey:@"browserAccessibilityCurrentStatus"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)accessibilityRowCount
{
  v1 = [self _accessibilityGetBlockForAttribute:5001];
  v2 = v1;
  if (v1)
  {
    v3 = (*(v1 + 16))(v1);
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (uint64_t)accessibilityColumnCount
{
  v1 = [self _accessibilityGetBlockForAttribute:5000];
  v2 = v1;
  if (v1)
  {
    v3 = (*(v1 + 16))(v1);
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)_accessibilityInternalTextLinks
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 1;
  }

  else
  {
    objc_opt_class();
    v2 = objc_opt_isKindOfClass() & 1;
  }

  objc_opt_class();
  if (v2 | objc_opt_isKindOfClass() & 1)
  {
    v3 = [self safeValueForKey:@"attributedText"];
    if ([v3 length])
    {
      v4 = [self _accessibilityValueForKey:@"AXLinks"];
      if (v4)
      {
        v5 = v4;
      }

      else
      {
        array = [MEMORY[0x1E695DF70] array];
        [self _accessibilitySetRetainedValue:? forKey:?];
        v30 = 0;
        v31 = 0;
        v29 = [v3 length];
        v6 = 0;
        v7 = 0;
        v8 = *MEMORY[0x1E69DB670];
        while (1)
        {
          v9 = [v3 attributesAtIndex:v6 effectiveRange:&v30];
          v10 = v9;
          if (v30 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          v11 = [v9 objectForKey:v8];
          if (v11)
          {
            if (v7 && (v12 = -[UIAccessibilityLinkSubelement range](v7, "range"), v12 + v13 == v30) && (-[UIAccessibilityLinkSubelement url](v7, "url"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isEqual:v11], v14, v15))
            {
              range = [(UIAccessibilityLinkSubelement *)v7 range];
              v17 = v31 + v30;
              v18 = v17 - [(UIAccessibilityLinkSubelement *)v7 range];
              v19 = v7;
              [(UIAccessibilityLinkSubelement *)v19 setRange:range, v18];
              string = [v3 string];
              range2 = [(UIAccessibilityLinkSubelement *)v19 range];
              v23 = [string substringWithRange:{range2, v22}];
              [(UIAccessibilityLinkSubelement *)v19 setAccessibilityLabel:v23];
            }

            else
            {
              v19 = [[UIAccessibilityLinkSubelement alloc] initWithAccessibilityContainer:self];
              [(UIAccessibilityLinkSubelement *)v19 setRange:v30, v31];
              string2 = [v3 string];
              v25 = [string2 substringWithRange:{v30, v31}];
              [(UIAccessibilityLinkSubelement *)v19 setAccessibilityLabel:v25];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(UIAccessibilityLinkSubelement *)v19 setUrl:v11];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v26 = [MEMORY[0x1E695DFF8] URLWithString:v11];
                  [(UIAccessibilityLinkSubelement *)v19 setUrl:v26];
                }
              }

              [array addObject:v19];
            }

            v7 = v19;
          }

          v30 += v31;
          v31 = 0;

          v6 = v30;
          if (v30 == 0x7FFFFFFFFFFFFFFFLL || v30 >= v29)
          {
            goto LABEL_27;
          }
        }

LABEL_27:
        v5 = array;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessibilityInternalTextLinkCustomRotors
{
  v12[1] = *MEMORY[0x1E69E9840];
  _accessibilityInternalTextLinks = [self _accessibilityInternalTextLinks];
  if ([_accessibilityInternalTextLinks count])
  {
    v3 = [self _accessibilityValueForKey:@"LinkRotor"];
    if (!v3)
    {
      objc_initWeak(&location, self);
      v4 = objc_alloc(MEMORY[0x1E69DC5F0]);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __70__NSObject_AXPrivCategory___accessibilityInternalTextLinkCustomRotors__block_invoke;
      v8[3] = &unk_1E78AAE88;
      objc_copyWeak(&v10, &location);
      v9 = _accessibilityInternalTextLinks;
      v3 = [v4 initWithSystemType:1 itemSearchBlock:v8];
      _accessibilityInternalTextLinks2 = [self _accessibilityInternalTextLinks];
      [v3 setLinkCount:{objc_msgSend(_accessibilityInternalTextLinks2, "count")}];

      [self _accessibilitySetRetainedValue:v3 forKey:@"LinkRotor"];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    v12[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_accessibilityActiveKeyboard
{
  _accessibilityMainWindow = AXUIKeyboardWindow();
  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  v4 = activeKeyboard;
  if (_accessibilityMainWindow)
  {
    window = [activeKeyboard window];

    if (window != _accessibilityMainWindow)
    {
      _UIApplicationIsExtension();
LABEL_8:
      v9 = NSClassFromString(&cfstr_Uiremoteview.isa);
      v10 = NSClassFromString(&cfstr_Uiremotekeyboa.isa);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __56__NSObject_AXPrivCategory___accessibilityActiveKeyboard__block_invoke_2;
      v16[3] = &unk_1E78AAEB0;
      v17 = v9;
      v18 = v10;
      v11 = v10;
      v12 = v9;
      v13 = [_accessibilityMainWindow _accessibilityFindDescendant:v16];
      v14 = v13;
      if (v13 == self)
      {
        _accessibilityActiveKeyboard = 0;
      }

      else
      {
        _accessibilityActiveKeyboard = [v13 _accessibilityActiveKeyboard];
      }

      goto LABEL_12;
    }

    _accessibilityActiveKeyboard = v4;
  }

  else
  {
    if (!_UIApplicationIsExtension())
    {
      _accessibilityMainWindow = [*MEMORY[0x1E69DDA98] _accessibilityMainWindow];
      goto LABEL_8;
    }

    v6 = NSClassFromString(&cfstr_Uiinputview.isa);
    _accessibilityMainWindow = [*MEMORY[0x1E69DDA98] _accessibilityWindows];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __56__NSObject_AXPrivCategory___accessibilityActiveKeyboard__block_invoke;
    v19[3] = &unk_1E78AA760;
    v20 = v6;
    v7 = v6;
    _accessibilityActiveKeyboard = [_accessibilityMainWindow _accessibilityFindSubviewDescendant:v19];
  }

LABEL_12:

  return _accessibilityActiveKeyboard;
}

- (id)_accessibilityAccessibleDescendants
{
  v2 = +[UIAccessibilityElementTraversalOptions options];
  [v2 setLeafNodePredicate:&__block_literal_global_728];
  v3 = [self _accessibilityLeafDescendantsWithOptions:v2];

  return v3;
}

- (id)_accessibilityWatchAutoSpeakElements
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[UIAccessibilityElementTraversalOptions options];
  [v2 setLeafNodePredicate:&__block_literal_global_730];
  _accessibilityParentView = [self _accessibilityParentView];
  window = [_accessibilityParentView window];

  v5 = [window _accessibilityLeafDescendantsWithOptions:v2];
  v6 = AXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1A9B83000, v6, OS_LOG_TYPE_INFO, "total auto speak elements: %@", &v9, 0xCu);
  }

  return v5;
}

- (id)_accessibilityStringForLabelKeyValues:()AXPrivCategory
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [a3 componentsSeparatedByString:{@", "}];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) stringByTrimmingCharactersInSet:{whitespaceCharacterSet, v16}];
        v13 = [self safeValueForKey:v12];
        [v6 axSafelyAddObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = UIAXLabelForElements();

  return v14;
}

- (id)_accessibilityAccessibleAncestor
{
  accessibilityContainer = [self accessibilityContainer];
  if (accessibilityContainer)
  {
    do
    {
      if ([accessibilityContainer isAccessibilityElement])
      {
        break;
      }

      v1AccessibilityContainer = [accessibilityContainer accessibilityContainer];

      accessibilityContainer = v1AccessibilityContainer;
    }

    while (v1AccessibilityContainer);
  }

  return accessibilityContainer;
}

- (uint64_t)_accessibilityPerformLegacyCustomAction:()AXPrivCategory
{
  actionIndex = [a3 actionIndex];

  return [self accessibilityPerformCustomAction:actionIndex];
}

- (id)_retrieveCustomActionsForElement:()AXPrivCategory
{
  [self _accessibilitySetPrivateCustomActionsElement:?];
  _privateAccessibilityCustomActions = [self _privateAccessibilityCustomActions];
  [self _accessibilitySetPrivateCustomActionsElement:0];
  accessibilityCustomActions = [self accessibilityCustomActions];
  v4 = [accessibilityCustomActions count];
  firstObject = [accessibilityCustomActions firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    array = [MEMORY[0x1E695DF70] array];
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v9 = [accessibilityCustomActions objectAtIndexedSubscript:i];
        if ([v9 length])
        {
          v10 = [[UIAccessibilityLegacyCustomAction alloc] initWithName:v9 target:self selector:sel__accessibilityPerformLegacyCustomAction_];
          [(UIAccessibilityLegacyCustomAction *)v10 setActionIndex:i];
          [array addObject:v10];
        }
      }
    }
  }

  else
  {
    array = accessibilityCustomActions;
  }

  v11 = [MEMORY[0x1E695DEC8] axArrayWithPossiblyNilArrays:{2, _privateAccessibilityCustomActions, array}];

  return v11;
}

- (id)_accessibilityCustomActions
{
  v23[1] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__NSObject_AXPrivCategory___accessibilityCustomActions__block_invoke;
  aBlock[3] = &unk_1E78AAED8;
  aBlock[4] = &v17;
  v2 = _Block_copy(aBlock);
  selfCopy = self;
  v4 = selfCopy;
  if (selfCopy)
  {
    v5 = selfCopy;
    do
    {
      v6 = [v5 _retrieveCustomActionsForElement:v4];
      v2[2](v2, v6);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [MEMORY[0x1E69DD258] viewControllerForView:v5];
        v8 = [v7 _retrieveCustomActionsForElement:v4];

        v2[2](v2, v8);
      }

      else
      {
        v8 = v6;
      }

      _accessibilityShouldIncludeParentCustomActions = [v4 _accessibilityShouldIncludeParentCustomActions];

      if (!_accessibilityShouldIncludeParentCustomActions)
      {
        break;
      }

      accessibilityContainer = [v5 accessibilityContainer];

      v5 = accessibilityContainer;
    }

    while (accessibilityContainer);
  }

  _accessibilityAddToDragSessionCustomAction = [v4 _accessibilityAddToDragSessionCustomAction];
  v12 = _accessibilityAddToDragSessionCustomAction;
  if (_accessibilityAddToDragSessionCustomAction)
  {
    v23[0] = _accessibilityAddToDragSessionCustomAction;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v2[2](v2, v13);
  }

  [v18[5] sortUsingComparator:&__block_literal_global_744];
  v14 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v14;
}

- (uint64_t)_accessibilityRespondsToUserInteraction
{
  selfCopy = self;
  v2 = selfCopy;
  if (selfCopy)
  {
    v3 = selfCopy;
    while (([v3 _accessibilityRespondsToUserInteractionForElement:v2] & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [MEMORY[0x1E69DD258] viewControllerForView:v3];
        v5 = [v4 _accessibilityRespondsToUserInteractionForElement:v2];

        if (v5)
        {
          break;
        }
      }

      accessibilityContainer = [v3 accessibilityContainer];

      v3 = accessibilityContainer;
      if (!accessibilityContainer)
      {
        goto LABEL_9;
      }
    }

    LODWORD(accessibilityContainer) = 1;
LABEL_9:
  }

  else
  {
    LODWORD(accessibilityContainer) = 0;
  }

  _accessibilityAddToDragSessionCustomAction = [v2 _accessibilityAddToDragSessionCustomAction];
  if (_accessibilityAddToDragSessionCustomAction)
  {
    v8 = 1;
  }

  else
  {
    v8 = accessibilityContainer;
  }

  return v8;
}

- (BOOL)_accessibilityRespondsToUserInteractionForElement:()AXPrivCategory
{
  v1 = [self _retrieveCustomActionsForElement:?];
  v2 = [v1 count] != 0;

  return v2;
}

- (uint64_t)_accessibilityRemoveTrait:()AXPrivCategory
{
  v4 = [self accessibilityTraits] & ~a3;

  return [self setAccessibilityTraits:v4];
}

- (uint64_t)_accessibilityAddTrait:()AXPrivCategory
{
  v4 = [self accessibilityTraits] | a3;

  return [self setAccessibilityTraits:v4];
}

- (uint64_t)_accessibilityIsGuideElement
{
  if ([self _accessibilityUserDefinedIsGuideElement])
  {
    return 1;
  }

  accessibilityContainer = [self accessibilityContainer];
  if (accessibilityContainer)
  {
    do
    {
      if ([accessibilityContainer accessibilityContainerType] == 3)
      {
        break;
      }

      v3AccessibilityContainer = [accessibilityContainer accessibilityContainer];

      accessibilityContainer = v3AccessibilityContainer;
    }

    while (v3AccessibilityContainer);
  }

  if ([accessibilityContainer accessibilityContainerType] == 3)
  {
    v5 = [accessibilityContainer _accessibilityFindElementInDirection:1 searchType:0 allowOutOfBoundsChild:1];
    v2 = v5 == self;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_accessibilityTouchContainerStartingWithSelf:()AXPrivCategory
{
  selfCopy = self;
  v5 = selfCopy;
  if ((a3 & 1) == 0)
  {
    accessibilityContainer = [selfCopy accessibilityContainer];

    v5 = accessibilityContainer;
  }

  if (v5)
  {
    do
    {
      if ([v5 _accessibilityIsTouchContainer])
      {
        break;
      }

      accessibilityContainer2 = [v5 accessibilityContainer];

      v5 = accessibilityContainer2;
    }

    while (accessibilityContainer2);
  }

  return v5;
}

- (id)_accessibilityImageData
{
  v1 = [self _accessibilityValueForKey:@"AXAssetName"];
  if (v1)
  {
    v2 = [MEMORY[0x1E69DCAB8] imageNamed:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (double)accessibilityVisibleContentRect
{
  _accessibilityVisibleFrameClippingAncestor = [self _accessibilityVisibleFrameClippingAncestor];
  v2 = _accessibilityVisibleFrameClippingAncestor;
  if (_accessibilityVisibleFrameClippingAncestor)
  {
    [_accessibilityVisibleFrameClippingAncestor accessibilityFrame];
    v4 = v3;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v4 = v6;
  }

  return v4;
}

- (uint64_t)_accessibilityVisiblePoint
{
  v2 = AXDoesRequestingClientDeserveAutomation() != 0;

  return [self _accessibilityVisiblePointHitTestingAnyElement:v2];
}

- (uint64_t)_accessibilityMarkElementForVisiblePointHitTest:()AXPrivCategory
{
  _AXUIElementSetElementBeingHitTested();

  return [self _accessibilitySetBoolValue:a3 forKey:@"AXPerformingVisiblePointHitTest"];
}

- (double)_accessibilityVisiblePointHitTestingAnyElement:()AXPrivCategory
{
  v125[12] = *MEMORY[0x1E69E9840];
  if (!__AXRuntimeApplicationElement())
  {
    if (self)
    {
      goto LABEL_3;
    }

LABEL_10:
    [self accessibilityFrame];
    x = v133.origin.x;
    y = v133.origin.y;
    width = v133.size.width;
    height = v133.size.height;
    MidX = CGRectGetMidX(v133);
    v134.origin.x = x;
    v134.origin.y = y;
    v134.size.width = width;
    v134.size.height = height;
    CGRectGetMidY(v134);
    return MidX;
  }

  v4 = __AXRuntimeApplicationElement();
  v5 = v4();

  if (v5 == self)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (_UIAXObjectIsCompletelyBehindKeyboard(self))
  {
    return -1.0;
  }

  [self _accessibilityMarkElementForVisiblePointHitTest:1];
  _accessibilityUserTestingProxyView = [self _accessibilityUserTestingProxyView];
  [_accessibilityUserTestingProxyView _accessibilityMarkElementForVisiblePointHitTest:1];

  _accessibilityContextId = [self _accessibilityContextId];
  [self _accessibilityDisplayId];
  [self accessibilityFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  cf = _AXRetrieveExistingAXUIElementWithElement();
  if (!cf)
  {
    v22 = AXLogUIA();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_1A9B83000, v22, OS_LOG_TYPE_INFO, "Element has been removed as an ax element skipping: %@", buf, 0xCu);
    }

    return -1.0;
  }

  v132.origin.x = v9;
  v132.origin.y = v11;
  v132.size.width = v13;
  v132.size.height = v15;
  if (CGRectIsEmpty(v132))
  {
    v16 = AXLogUIA();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_1A9B83000, v16, OS_LOG_TYPE_INFO, "Element has empty frame, skipping: %@", buf, 0xCu);
    }

    CFRelease(cf);
    return -1.0;
  }

  if (__AXRuntimeApplicationElement())
  {
    v24 = __AXRuntimeApplicationElement();
    v25 = v24();
    v101 = _AXCreateAXUIElementWithElement();
  }

  else
  {
    v101 = _AXCreateAXUIElementWithElement();
  }

  cf2 = 0;
  [self accessibilityVisibleContentRect];
  v104 = v135.size.width;
  v105 = v135.origin.x;
  v102 = v135.size.height;
  v103 = v135.origin.y;
  v156.origin.x = v9;
  v156.origin.y = v11;
  v156.size.width = v13;
  v156.size.height = v15;
  CGRectIntersection(v135, v156);
  v107 = MEMORY[0x1E695DFB8];
  v26 = MEMORY[0x1E696B098];
  [self _accessibilityStartingPointForIsVisible];
  obja = [v26 valueWithPoint:?];
  v125[0] = obja;
  v27 = MEMORY[0x1E696B098];
  [self accessibilityActivationPoint];
  v108 = [v27 valueWithPoint:?];
  v125[1] = v108;
  v28 = MEMORY[0x1E696B098];
  AX_CGRectGetCenter();
  v100 = [v28 valueWithPoint:?];
  v125[2] = v100;
  v29 = MEMORY[0x1E696B098];
  AX_CGRectGetCenter();
  v99 = [v29 valueWithPoint:?];
  v125[3] = v99;
  v30 = MEMORY[0x1E696B098];
  v136.origin.x = v9;
  v136.origin.y = v11;
  v136.size.width = v13;
  v136.size.height = v15;
  v31 = CGRectGetMinX(v136) + v13 * 0.100000001;
  v137.origin.x = v9;
  v137.origin.y = v11;
  v137.size.width = v13;
  v137.size.height = v15;
  v98 = [v30 valueWithPoint:{v31, CGRectGetMinY(v137) + v15 * 0.100000001}];
  v125[4] = v98;
  v32 = MEMORY[0x1E696B098];
  v138.origin.x = v9;
  v138.origin.y = v11;
  v138.size.width = v13;
  v138.size.height = v15;
  v33 = CGRectGetMinX(v138) + v13 * 0.100000001;
  v139.origin.x = v9;
  v139.origin.y = v11;
  v139.size.width = v13;
  v139.size.height = v15;
  v97 = [v32 valueWithPoint:{v33, CGRectGetMaxY(v139) - v15 * 0.100000001}];
  v125[5] = v97;
  v34 = MEMORY[0x1E696B098];
  v140.origin.x = v9;
  v140.origin.y = v11;
  v140.size.width = v13;
  v140.size.height = v15;
  v35 = CGRectGetMaxX(v140) - v13 * 0.100000001;
  v141.origin.x = v9;
  v141.origin.y = v11;
  v141.size.width = v13;
  v141.size.height = v15;
  v36 = [v34 valueWithPoint:{v35, CGRectGetMinY(v141) + v15 * 0.100000001}];
  v125[6] = v36;
  v37 = MEMORY[0x1E696B098];
  v142.origin.x = v9;
  v142.origin.y = v11;
  v142.size.width = v13;
  v142.size.height = v15;
  v38 = CGRectGetMaxX(v142) - (v13 + 0.100000001);
  v143.origin.x = v9;
  v143.origin.y = v11;
  v143.size.width = v13;
  v143.size.height = v15;
  v39 = [v37 valueWithPoint:{v38, CGRectGetMaxY(v143) - v15 * 0.100000001}];
  v125[7] = v39;
  v40 = MEMORY[0x1E696B098];
  v144.origin.x = v9;
  v144.origin.y = v11;
  v144.size.width = v13;
  v144.size.height = v15;
  v41 = CGRectGetMinX(v144) + 1.0;
  v145.origin.x = v9;
  v145.origin.y = v11;
  v145.size.width = v13;
  v145.size.height = v15;
  v42 = [v40 valueWithPoint:{v41, CGRectGetMinY(v145) + 1.0}];
  v125[8] = v42;
  v43 = MEMORY[0x1E696B098];
  v146.origin.x = v9;
  v146.origin.y = v11;
  v146.size.width = v13;
  v146.size.height = v15;
  v44 = CGRectGetMinX(v146) + 1.0;
  v147.origin.x = v9;
  v147.origin.y = v11;
  v147.size.width = v13;
  v147.size.height = v15;
  v45 = [v43 valueWithPoint:{v44, CGRectGetMaxY(v147) + -1.0}];
  v125[9] = v45;
  v46 = MEMORY[0x1E696B098];
  v148.origin.x = v9;
  v148.origin.y = v11;
  v148.size.width = v13;
  v148.size.height = v15;
  v47 = CGRectGetMaxX(v148) + -1.0;
  v149.origin.x = v9;
  v149.origin.y = v11;
  v149.size.width = v13;
  v149.size.height = v15;
  v48 = [v46 valueWithPoint:{v47, CGRectGetMinY(v149) + 1.0}];
  v125[10] = v48;
  v49 = MEMORY[0x1E696B098];
  v150.origin.x = v9;
  v150.origin.y = v11;
  v150.size.width = v13;
  v150.size.height = v15;
  v50 = CGRectGetMaxX(v150) + -1.0;
  v151.origin.x = v9;
  v151.origin.y = v11;
  v151.size.width = v13;
  v151.size.height = v15;
  v51 = [v49 valueWithPoint:{v50, CGRectGetMaxY(v151) + -1.0}];
  v125[11] = v51;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:12];
  v53 = [v107 orderedSetWithArray:v52];

  if (_AXSAutomationEnabled())
  {
    v54 = AXLogUIA();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = UIAXMassageElementDescription(self);
      accessibilityContainer = [self accessibilityContainer];
      _accessibilityWindow = [self _accessibilityWindow];
      *buf = 138740483;
      selfCopy3 = v55;
      v121 = 2112;
      v122 = accessibilityContainer;
      v123 = 2112;
      v124 = _accessibilityWindow;
      _os_log_impl(&dword_1A9B83000, v54, OS_LOG_TYPE_INFO, "Performing visible point test: %{sensitive}@, parent: %@, window: %@", buf, 0x20u);
    }
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v53;
  v58 = [obj countByEnumeratingWithState:&v113 objects:v118 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v114;
    v61 = *MEMORY[0x1E695EFF8];
    v62 = *(MEMORY[0x1E695EFF8] + 8);
    v63 = *(MEMORY[0x1E695F060] + 8);
    v109 = *MEMORY[0x1E695F060];
    v64 = v101;
    while (2)
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v114 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v66 = *(*(&v113 + 1) + 8 * i);
        [v66 pointValue];
        if (v61 != v67 || v62 != v68)
        {
          v70 = v68;
          if (v67 < 5.0)
          {
            v67 = 5.0;
          }

          if (v67 >= v104 + v105 + -5.0)
          {
            MidX = v104 + v105 + -5.0;
          }

          else
          {
            MidX = v67;
          }

          [self _accessibilityConvertSystemBoundedScreenRectToContextSpace:{MidX, v68, v109, v63}];
          v72 = v71;
          v74 = v73;
          if (_accessibilityContextId)
          {
            AXConvertPointFromHostedCoordinates();
            v72 = v75;
            v74 = v76;
          }

          if (_AXSAutomationEnabled())
          {
            _AXSMossdeepEnabled();
          }

          v77 = AXLogUIA();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            v78 = UIAXMassageElementDescription(self);
            v126.x = v72;
            v126.y = v74;
            v79 = NSStringFromPoint(v126);
            [v66 pointValue];
            v80 = NSStringFromPoint(v127);
            *buf = 138740483;
            selfCopy3 = v78;
            v121 = 2112;
            v122 = v79;
            v123 = 2112;
            v124 = v80;
            _os_log_impl(&dword_1A9B83000, v77, OS_LOG_TYPE_INFO, "Trying pt[%{sensitive}@]: %@ (original: %@)", buf, 0x20u);

            v64 = v101;
          }

          if ([self _accessibilityVisiblePointHonorsScreenBounds])
          {
            v152.size.width = v104;
            v152.origin.x = v105;
            v152.size.height = v102;
            v152.origin.y = v103;
            v130.x = MidX;
            v130.y = v70;
            if (!CGRectContainsPoint(v152, v130))
            {
              v81 = AXLogUIA();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
              {
                v153.size.width = v104;
                v153.origin.x = v105;
                v153.size.height = v102;
                v153.origin.y = v103;
                v82 = NSStringFromRect(v153);
                v128.x = MidX;
                v128.y = v70;
                v83 = NSStringFromPoint(v128);
                *buf = 138412546;
                selfCopy3 = v82;
                v121 = 2112;
                v122 = v83;
                _os_log_impl(&dword_1A9B83000, v81, OS_LOG_TYPE_INFO, "skipping point check not within screen bounds: %@ %@", buf, 0x16u);
              }
            }
          }

          _AXUIElementCopyElementAtPositionWithParams();
          if (cf2)
          {
            if (CFEqual(cf, cf2))
            {
              v91 = AXLogUIA();
              if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1A9B83000, v91, OS_LOG_TYPE_INFO, "Element matched start element", buf, 2u);
              }

              if (cf2)
              {
                CFRelease(cf2);
                cf2 = 0;
              }

              goto LABEL_80;
            }

            v84 = _UIAXElementForAXUIElementRef();
            v85 = AXLogUIA();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              selfCopy3 = v84;
              _os_log_impl(&dword_1A9B83000, v85, OS_LOG_TYPE_INFO, "Hit testing found: %@", buf, 0xCu);
            }

            if ([v84 _accessibilityIsDescendantOfElement:self])
            {
              _accessibilitySupplementaryFooterViews = [self _accessibilitySupplementaryFooterViews];
              if ([_accessibilitySupplementaryFooterViews containsObject:v84])
              {
              }

              else
              {
                _accessibilitySupplementaryHeaderViews = [self _accessibilitySupplementaryHeaderViews];
                v88 = [_accessibilitySupplementaryHeaderViews containsObject:v84];

                if ((v88 & 1) == 0)
                {
                  v92 = AXLogUIA();
                  if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138739971;
                    selfCopy3 = self;
                    _os_log_impl(&dword_1A9B83000, v92, OS_LOG_TYPE_INFO, "Is descendant of desired element: %{sensitive}@", buf, 0xCu);
                  }

                  if (cf2)
                  {
                    CFRelease(cf2);
                    cf2 = 0;
                  }

                  goto LABEL_79;
                }
              }
            }

            if (a3)
            {
              _accessibilityUserTestingVisibleAncestor = [self _accessibilityUserTestingVisibleAncestor];
              v90 = AXLogUIA();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                selfCopy3 = _accessibilityUserTestingVisibleAncestor;
                _os_log_impl(&dword_1A9B83000, v90, OS_LOG_TYPE_INFO, "Checking visible ancestor %@", buf, 0xCu);
              }

              if (_accessibilityUserTestingVisibleAncestor && [v84 _accessibilityIsDescendantOfElement:_accessibilityUserTestingVisibleAncestor])
              {
                if (cf2)
                {
                  CFRelease(cf2);
                  cf2 = 0;
                }

LABEL_79:
                goto LABEL_80;
              }
            }

            if (cf2)
            {
              CFRelease(cf2);
              cf2 = 0;
            }
          }
        }
      }

      v59 = [obj countByEnumeratingWithState:&v113 objects:v118 count:16];
      if (v59)
      {
        continue;
      }

      break;
    }

    v70 = -1.0;
    MidX = -1.0;
  }

  else
  {
    v70 = -1.0;
    MidX = -1.0;
    v64 = v101;
  }

LABEL_80:

  [self _accessibilityMarkElementForVisiblePointHitTest:0];
  _accessibilityUserTestingProxyView2 = [self _accessibilityUserTestingProxyView];
  [_accessibilityUserTestingProxyView2 _accessibilityMarkElementForVisiblePointHitTest:0];

  if (MidX >= 0.0)
  {
    if ([self _accessibilityVisiblePointHonorsScreenBounds])
    {
      v154.size.width = v104;
      v154.origin.x = v105;
      v154.size.height = v102;
      v154.origin.y = v103;
      v131.x = MidX;
      v131.y = v70;
      if (!CGRectContainsPoint(v154, v131))
      {
        v94 = AXLogUIA();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          v155.size.width = v104;
          v155.origin.x = v105;
          v155.size.height = v102;
          v155.origin.y = v103;
          v95 = NSStringFromRect(v155);
          v129.x = MidX;
          v129.y = v70;
          v96 = NSStringFromPoint(v129);
          *buf = 138412546;
          selfCopy3 = v95;
          v121 = 2112;
          v122 = v96;
          _os_log_impl(&dword_1A9B83000, v94, OS_LOG_TYPE_INFO, "visible point not within screen bounds: %@ %@", buf, 0x16u);
        }

        MidX = -1.0;
      }
    }
  }

  CFRelease(cf);
  if (v64)
  {
    CFRelease(v64);
  }

  return MidX;
}

- (BOOL)_accessibilityIsVisibleByCompleteHitTest:()AXPrivCategory
{
  v19 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E69DDA98] == self)
  {
    return [*MEMORY[0x1E69DDA98] applicationState] == 0;
  }

  if (a3 && _UIAXObjectIsCompletelyBehindKeyboard(self))
  {
    return 0;
  }

  v5 = AXLogUIA();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = UIAXMassageElementDescription(self);
    v15 = 138477827;
    v16 = v6;
    _os_log_impl(&dword_1A9B83000, v5, OS_LOG_TYPE_INFO, "Checking visibility for %{private}@", &v15, 0xCu);
  }

  [self _accessibilityVisiblePoint];
  v8 = v7;
  v10 = v9;
  v11 = AXLogUIA();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v20.x = v8;
    v20.y = v10;
    v12 = NSStringFromPoint(v20);
    v13 = UIAXMassageElementDescription(self);
    v15 = 138412546;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_1A9B83000, v11, OS_LOG_TYPE_INFO, "Received visible point %@ for %@{private}", &v15, 0x16u);
  }

  v14 = v8 != -1.0;
  if (v10 != -1.0)
  {
    v14 = 1;
  }

  return v8 > 0.0 && v14;
}

- (uint64_t)_accessibilityIsStarkElement
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      window = [self window];
      if (!window)
      {
        return 0;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      window = [self _accessibilityParentView];
    }

    screen = window;
    _accessibilityIsStarkElement = [window _accessibilityIsStarkElement];
    goto LABEL_11;
  }

  screen = [self screen];
  if (([screen _isCarScreen] & 1) == 0)
  {
    _accessibilityIsStarkElement = [screen _isCarInstrumentsScreen];
LABEL_11:
    v3 = _accessibilityIsStarkElement;
    goto LABEL_12;
  }

  v3 = 1;
LABEL_12:

  return v3;
}

- (uint64_t)_accessibilityServesAsFirstElement
{
  accessibilityUserDefinedServesAsFirstElement = [self accessibilityUserDefinedServesAsFirstElement];
  bOOLValue = [accessibilityUserDefinedServesAsFirstElement BOOLValue];

  return bOOLValue;
}

- (void)_setAccessibilityServesAsFirstElement:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _accessibilitySetRetainedValue:v2 forKey:@"_AX_ServesAsFirstElement"];
}

- (uint64_t)_accessibilityIsNotFirstElement
{
  accessibilityUserDefinedNotFirstElement = [self accessibilityUserDefinedNotFirstElement];
  bOOLValue = [accessibilityUserDefinedNotFirstElement BOOLValue];

  return bOOLValue;
}

- (void)_setAccessibilityIsNotFirstElement:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _accessibilitySetRetainedValue:v2 forKey:@"_AX_NotFirstElement"];
}

- (id)_accessibilityFirstElementForFocusHonoringGroups:()AXPrivCategory
{
  if (a3)
  {
    v4 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptionsHonoringGroups];
    _accessibilityFirstElementForFocus = [self _accessibilityFirstElementForFocusWithOptions:v4];
  }

  else
  {
    _accessibilityFirstElementForFocus = [self _accessibilityFirstElementForFocus];
  }

  return _accessibilityFirstElementForFocus;
}

- (id)_accessibilityFirstElementForFocus
{
  if (__62__NSObject_AXPrivCategory___accessibilityFirstElementForFocus__block_invoke())
  {
    v2 = 0;
  }

  else
  {
    v3 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
    v2 = [self _accessibilityFirstElementForFocusWithOptions:v3];
  }

  return v2;
}

- (id)_accessibilityFirstElementForFocusWithOptions:()AXPrivCategory
{
  if (__74__NSObject_AXPrivCategory___accessibilityFirstElementForFocusWithOptions___block_invoke())
  {
    _accessibilityFirstOpaqueElement = [self _accessibilityFirstOpaqueElement];
  }

  else
  {
    _accessibilityFirstOpaqueElement = 0;
  }

  return _accessibilityFirstOpaqueElement;
}

- (id)_accessibilityFirstDescendant
{
  v2 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
  v3 = [self _accessibilityLeafDescendantsWithCount:1 options:v2];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)_accessibilityFirstWebElement
{
  v2 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
  leafNodePredicate = [v2 leafNodePredicate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__NSObject_AXPrivCategory___accessibilityFirstWebElement__block_invoke;
  v8[3] = &unk_1E78AAF20;
  v9 = leafNodePredicate;
  v4 = leafNodePredicate;
  [v2 setLeafNodePredicate:v8];
  v5 = [self _accessibilityLeafDescendantsWithCount:1 options:v2];
  firstObject = [v5 firstObject];

  return firstObject;
}

- (id)_accessibilityFirstContainedElementForTechnology:()AXPrivCategory honoringGroups:shouldAlwaysScroll:
{
  v8 = a3;
  if ([self isAccessibilityOpaqueElementProvider])
  {
    firstObject = [self _accessibilityFocusAbsoluteFirstLastOpaqueElement:1 technology:v8 honorsGroups:a4 shouldAlwaysScroll:a5];
  }

  else
  {
    v10 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
    if (a4)
    {
      v11 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptionsHonoringGroups];

      leafNodePredicate = [v11 leafNodePredicate];
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __111__NSObject_AXPrivCategory___accessibilityFirstContainedElementForTechnology_honoringGroups_shouldAlwaysScroll___block_invoke;
      v19 = &unk_1E78AAF48;
      selfCopy = self;
      v21 = leafNodePredicate;
      v13 = leafNodePredicate;
      [v11 setLeafNodePredicate:&v16];

      v10 = v11;
    }

    v14 = [self _accessibilityLeafDescendantsWithCount:1 options:{v10, v16, v17, v18, v19, selfCopy}];
    firstObject = [v14 firstObject];
  }

  return firstObject;
}

- (id)_accessibilityFirstElementsForSpeakThis
{
  if (_accessibilityFirstElementsForSpeakThis_onceToken != -1)
  {
    [NSObject(AXPrivCategory) _accessibilityFirstElementsForSpeakThis];
  }

  v2 = objc_opt_class();
  if (class_getInstanceMethod(v2, sel__accessibilitySpeakThisElementsAndStrings) == _accessibilityFirstElementsForSpeakThis_speakThisElementsBaseMethod)
  {
    if (AXRequestingClient() == 19)
    {
      v5 = 60;
    }

    else
    {
      v5 = 5;
    }

    v6 = +[UIAccessibilityElementTraversalOptions defaultSpeakScreenOptions];
    v4 = [self _accessibilityLeafDescendantsWithCount:v5 options:v6];
  }

  else
  {
    _accessibilitySpeakThisElementsAndStrings = [self _accessibilitySpeakThisElementsAndStrings];
    v4 = [_accessibilitySpeakThisElementsAndStrings mutableCopy];

    [v4 addObject:@"SpeakThis-LegacyMethodWasUsed"];
  }

  return v4;
}

- (id)_accessibilitySpeakThisLeafDescendants
{
  v2 = +[UIAccessibilityElementTraversalOptions defaultSpeakScreenOptions];
  v3 = [self _accessibilityLeafDescendantsWithOptions:v2];

  return v3;
}

- (id)_accessibilityElementsForReadingInDirection:()AXPrivCategory
{
  if (_accessibilityElementsForReadingInDirection__onceToken != -1)
  {
    [NSObject(AXPrivCategory) _accessibilityElementsForReadingInDirection:];
  }

  v5 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v5, sel__accessibilitySpeakThisElementsAndStrings);
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  _accessibilitySpeakThisViewController = [mEMORY[0x1E69DC668] _accessibilitySpeakThisViewController];

  v9 = objc_opt_class();
  v10 = class_getInstanceMethod(v9, sel__accessibilitySpeakThisElementsAndStrings);
  if (InstanceMethod == _accessibilityElementsForReadingInDirection__speakThisElementsBaseMethod && (!_accessibilitySpeakThisViewController || v10 == _accessibilityElementsForReadingInDirection__speakThisElementsVCBaseMethod))
  {
    if (AXRequestingClient() == 19)
    {
      v13 = 60;
    }

    else
    {
      v13 = 5;
    }

    v14 = +[UIAccessibilityElementTraversalOptions defaultSpeakScreenOptions];
    v15 = v14;
    if (a3 == 2)
    {
      [v14 setDirection:2];
    }

    v11 = [self _accessibilityElementsInDirectionWithCount:v13 options:v15];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_accessibilityPerformPublicCustomRotorSearch:()AXPrivCategory searchDirection:currentItem:honorsGroups:
{
  v9 = a5;
  v10 = [RotorCache objectForKey:a3];
  v11 = v10;
  if (v10 && ([v10 itemSearchBlock], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = objc_alloc_init(MEMORY[0x1E69DC600]);
    [v13 setCurrentItem:v9];
    [v13 setSearchDirection:a4];
    [v13 setHonorsGroups:a6];
    itemSearchBlock = [v11 itemSearchBlock];
    v15 = (itemSearchBlock)[2](itemSearchBlock, v13);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (__CFString)_accessibilityRotorTypeStringForCustomRotor:()AXPrivCategory
{
  if (a3 < 0x13)
  {
    return qword_1E78AB4C8[a3];
  }

  if (UIAccessibilityCustomSystemRotorTypePlainText == a3)
  {
    return @"AXCustomSystemRotorTypePlainText";
  }

  if (UIAccessibilityCustomSystemRotorTypeColorChange == a3)
  {
    return @"AXCustomSystemRotorTypeColorChange";
  }

  if (UIAccessibilityCustomSystemRotorTypeFontChange == a3)
  {
    return @"AXCustomSystemRotorTypeFontChange";
  }

  if (UIAccessibilityCustomSystemRotorTypeStyleChange == a3)
  {
    return @"AXCustomSystemRotorTypeStyleChange";
  }

  if (UIAccessibilityCustomSystemRotorTypeNonVisitedLink == a3)
  {
    return @"AXCustomSystemRotorTypeNonVisitedLink";
  }

  if (UIAccessibilityCustomSystemRotorTypeSearchField == a3)
  {
    return @"AXCustomSystemRotorTypeSearchField";
  }

  if (UIAccessibilityCustomSystemRotorTypeButton == a3)
  {
    return @"AXCustomSystemRotorTypeButton";
  }

  if (UIAccessibilityCustomSystemRotorTypeStaticText == a3)
  {
    return @"AXCustomSystemRotorTypeStaticText";
  }

  if (UIAccessibilityCustomSystemRotorTypeBlockquote == a3)
  {
    return @"AXCustomSystemRotorTypeBlockquote";
  }

  if (UIAccessibilityCustomSystemRotorTypeSameHeading == a3)
  {
    return @"AXCustomSystemRotorTypeSameHeading";
  }

  if (UIAccessibilityCustomSystemRotorTypeFrame == a3)
  {
    return @"AXCustomSystemRotorTypeFrame";
  }

  if (UIAccessibilityCustomSystemRotorTypeSameBlockquote == a3)
  {
    return @"AXCustomSystemRotorTypeSameBlockquote";
  }

  if (UIAccessibilityCustomSystemRotorTypeControlElement == a3)
  {
    return @"AXCustomSystemRotorTypeControlElement";
  }

  if (UIAccessibilityCustomSystemRotorTypeArticle == a3)
  {
    return @"AXCustomSystemRotorTypeArticle";
  }

  return 0;
}

- (uint64_t)_accessibilityCustomRotorTypeForString:()AXPrivCategory
{
  v3 = a3;
  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeLink"])
  {
    v4 = 1;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeHeading"])
  {
    v4 = 3;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel1"])
  {
    v4 = 4;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel2"])
  {
    v4 = 5;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel3"])
  {
    v4 = 6;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel4"])
  {
    v4 = 7;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel5"])
  {
    v4 = 8;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeHeadingLevel6"])
  {
    v4 = 9;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeBoldText"])
  {
    v4 = 10;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeItalicText"])
  {
    v4 = 11;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeUnderlineText"])
  {
    v4 = 12;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeMisspelledWord"])
  {
    v4 = 13;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeImage"])
  {
    v4 = 14;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeTextField"])
  {
    v4 = 15;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeTable"])
  {
    v4 = 16;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeList"])
  {
    v4 = 17;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeLandmark"])
  {
    v4 = 18;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypePlainText"])
  {
    v5 = &UIAccessibilityCustomSystemRotorTypePlainText;
LABEL_61:
    v4 = *v5;
    goto LABEL_62;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeColorChange"])
  {
    v5 = &UIAccessibilityCustomSystemRotorTypeColorChange;
    goto LABEL_61;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeFontChange"])
  {
    v5 = &UIAccessibilityCustomSystemRotorTypeFontChange;
    goto LABEL_61;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeStyleChange"])
  {
    v5 = &UIAccessibilityCustomSystemRotorTypeStyleChange;
    goto LABEL_61;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeControlElement"])
  {
    v5 = &UIAccessibilityCustomSystemRotorTypeControlElement;
    goto LABEL_61;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeNonVisitedLink"])
  {
    v5 = &UIAccessibilityCustomSystemRotorTypeNonVisitedLink;
    goto LABEL_61;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeSearchField"])
  {
    v5 = &UIAccessibilityCustomSystemRotorTypeSearchField;
    goto LABEL_61;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeButton"])
  {
    v5 = &UIAccessibilityCustomSystemRotorTypeButton;
    goto LABEL_61;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeStaticText"])
  {
    v5 = &UIAccessibilityCustomSystemRotorTypeStaticText;
    goto LABEL_61;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeBlockquote"])
  {
    v5 = &UIAccessibilityCustomSystemRotorTypeBlockquote;
    goto LABEL_61;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeSameHeading"])
  {
    v5 = &UIAccessibilityCustomSystemRotorTypeSameHeading;
    goto LABEL_61;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeFrame"])
  {
    v5 = &UIAccessibilityCustomSystemRotorTypeFrame;
    goto LABEL_61;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeSameBlockquote"])
  {
    v5 = &UIAccessibilityCustomSystemRotorTypeSameBlockquote;
    goto LABEL_61;
  }

  if ([v3 isEqualToString:@"AXCustomSystemRotorTypeArticle"])
  {
    v4 = UIAccessibilityCustomSystemRotorTypeArticle;
  }

  else
  {
    v4 = 0;
  }

LABEL_62:

  return v4;
}

- (id)_accessibilityPublicCustomRotorIdForSystemType:()AXPrivCategory
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [self _accessibilityCustomRotorTypeForString:?];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [RotorCache allValues];
  v4 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        targetElement = [v8 targetElement];
        if ([self _accessibilityIsDescendantOfElement:targetElement])
        {
          systemRotorType = [v8 systemRotorType];

          if (systemRotorType == v2)
          {
            uuid = [v8 uuid];
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  uuid = 0;
LABEL_13:

  return uuid;
}

- (id)accessibilityHeaderElementsForColumn:()AXPrivCategory
{
  v4 = [self _accessibilityGetBlockForAttribute:5004];
  v5 = v4;
  if (v4)
  {
    v6 = (*(v4 + 16))(v4, a3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_accessibilityHeaderElementsForColumn:()AXPrivCategory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__NSObject_AXPrivCategory___accessibilityHeaderElementsForColumn___block_invoke;
  v5[3] = &unk_1E78AAC88;
  v5[4] = &v6;
  v5[5] = a3;
  [self accessibilityEnumerateAncestorsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)accessibilityHeaderElementsForRow:()AXPrivCategory
{
  v4 = [self _accessibilityGetBlockForAttribute:5005];
  v5 = v4;
  if (v4)
  {
    v6 = (*(v4 + 16))(v4, a3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_accessibilityHeaderElementsForRow:()AXPrivCategory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__NSObject_AXPrivCategory___accessibilityHeaderElementsForRow___block_invoke;
  v5[3] = &unk_1E78AAC88;
  v5[4] = &v6;
  v5[5] = a3;
  [self accessibilityEnumerateAncestorsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (uint64_t)_accessibilityPublicCustomRotorVisibleInTouchRotor:()AXPrivCategory
{
  v0 = [RotorCache objectForKey:?];
  visibleInTouchRotor = [v0 visibleInTouchRotor];

  return visibleInTouchRotor;
}

- (id)_accessibilityPublicCustomRotorName:()AXPrivCategory
{
  v2 = [RotorCache objectForKey:?];
  _accessibilityAXAttributedName = [v2 _accessibilityAXAttributedName];
  v4 = _accessibilityAXAttributedName;
  if (_accessibilityAXAttributedName)
  {
    v5 = _accessibilityAXAttributedName;
  }

  else
  {
    v5 = [self _accessibilityRotorTypeStringForCustomRotor:{objc_msgSend(v2, "systemRotorType")}];
  }

  v6 = v5;

  return v6;
}

- (uint64_t)_accessibilityPublicCustomRotorLinkCount:()AXPrivCategory
{
  v0 = [RotorCache objectForKey:?];
  linkCount = [v0 linkCount];

  return linkCount;
}

- (void)_addPublicRotorsToArray:()AXPrivCategory forElement:
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = [v6 view];
  }

  else
  {
    view = v6;
  }

  v8 = view;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = v6;
  accessibilityCustomRotors = [v6 accessibilityCustomRotors];
  v10 = [accessibilityCustomRotors countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(accessibilityCustomRotors);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        uuid = [v14 uuid];

        if (uuid)
        {
          uuid2 = [v14 uuid];
          v17 = [v5 containsObject:uuid2];

          if (v17)
          {
            continue;
          }

          v18 = RotorCache;
          uuid3 = [v14 uuid];
          [v18 setObject:v14 forKey:uuid3];

          [v14 setTargetElement:v8];
          uuid4 = [v14 uuid];
          [v5 addObject:uuid4];
        }

        else
        {
          uuid4 = AXLogAppAccessibility();
          if (os_log_type_enabled(uuid4, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v27 = v14;
            _os_log_error_impl(&dword_1A9B83000, uuid4, OS_LOG_TYPE_ERROR, "UIAccessibilityCustomRotor: no UUID? %@", buf, 0xCu);
          }
        }
      }

      v11 = [accessibilityCustomRotors countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v11);
  }
}

- (id)_accessibilityPublicCustomRotors
{
  if (_accessibilityPublicCustomRotors_onceToken != -1)
  {
    [NSObject(AXPrivCategory) _accessibilityPublicCustomRotors];
  }

  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  v4 = selfCopy;
  if (selfCopy)
  {
    v5 = selfCopy;
    do
    {
      [v4 _addPublicRotorsToArray:array forElement:v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [MEMORY[0x1E69DD258] viewControllerForView:v5];
        [v4 _addPublicRotorsToArray:array forElement:v6];
      }

      _accessibilityContainerForAccumulatingCustomRotorItems = [v5 _accessibilityContainerForAccumulatingCustomRotorItems];

      v5 = _accessibilityContainerForAccumulatingCustomRotorItems;
    }

    while (_accessibilityContainerForAccumulatingCustomRotorItems);
  }

  v8 = MEMORY[0x1E69DDA98];
  delegate = [*MEMORY[0x1E69DDA98] delegate];
  [v4 _addPublicRotorsToArray:array forElement:delegate];

  [v4 _addPublicRotorsToArray:array forElement:*v8];

  return array;
}

- (id)_accessibilityCustomActionNamesAndIdentifiers
{
  v54 = *MEMORY[0x1E69E9840];
  _accessibilityCustomActions = [self _accessibilityCustomActions];
  if ([_accessibilityCustomActions count])
  {
    v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(_accessibilityCustomActions, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v41 = _accessibilityCustomActions;
    v2 = _accessibilityCustomActions;
    v3 = [v2 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (!v3)
    {
      goto LABEL_30;
    }

    v4 = v3;
    v5 = *v46;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v46 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v45 + 1) + 8 * v6);
        _accessibilityAXAttributedName = [v7 _accessibilityAXAttributedName];
        v9 = [_accessibilityAXAttributedName length];

        if (!v9)
        {
          v15 = AXLogCommon();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_25;
          }

          *buf = 138543362;
          selfCopy2 = self;
          v33 = v15;
          v34 = "UIAccessibilityCustomAction must have a name. Object: %{public}@";
          goto LABEL_18;
        }

        if ([v7 selector] || (objc_msgSend(v7, "actionHandler"), v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
        {
          v11 = MEMORY[0x1E695DF90];
          v49[0] = @"CustomActionName";
          _accessibilityAXAttributedName2 = [v7 _accessibilityAXAttributedName];
          v49[1] = @"CustomActionIdentifier";
          v50[0] = _accessibilityAXAttributedName2;
          _accessibilityCustomActionIdentifier = [v7 _accessibilityCustomActionIdentifier];
          v50[1] = _accessibilityCustomActionIdentifier;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
          v15 = [v11 dictionaryWithDictionary:v14];

          image = [v7 image];

          if (image)
          {
            image2 = [v7 image];
            v18 = UIImagePNGRepresentation(image2);
            [v15 setObject:v18 forKeyedSubscript:@"CustomActionImage"];

            v19 = MEMORY[0x1E696AD98];
            image3 = [v7 image];
            v21 = [v19 numberWithInteger:{objc_msgSend(image3, "imageOrientation")}];
            [v15 setObject:v21 forKeyedSubscript:@"CustomActionImageOrientation"];
          }

          v22 = MEMORY[0x1E696B098];
          [v7 activationPoint];
          v44[0] = v23;
          v44[1] = v24;
          v25 = [v22 valueWithBytes:v44 objCType:"{CGPoint=dd}"];
          [v15 setObject:v25 forKeyedSubscript:@"CustomActionActivationPoint"];

          _shortName = [v7 _shortName];

          if (_shortName)
          {
            _shortName2 = [v7 _shortName];
            [v15 setObject:_shortName2 forKeyedSubscript:@"CustomActionShortName"];
          }

          v28 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "ignoreWhenVoiceOverTouches")}];
          [v15 setObject:v28 forKeyedSubscript:@"CustomActionIgnoreWhenVoiceOverTouches"];

          v29 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "shouldPersistActionMenu")}];
          [v15 setObject:v29 forKeyedSubscript:@"CustomActionShouldPersistActionMenu"];

          category = [v7 category];
          v31 = [category length];

          if (v31)
          {
            category2 = [v7 category];
            goto LABEL_21;
          }

          localizedActionRotorCategory = [v7 localizedActionRotorCategory];

          if (localizedActionRotorCategory)
          {
            category2 = [v7 localizedActionRotorCategory];
LABEL_21:
            v36 = category2;
            [v15 setObject:category2 forKeyedSubscript:@"CustomActionCategoryName"];
          }

          v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "sortPriority")}];
          [v15 setObject:v37 forKeyedSubscript:@"CustomActionSortPriority"];

          accessibilityLanguage = [v7 accessibilityLanguage];
          if (accessibilityLanguage)
          {
            [v15 setObject:accessibilityLanguage forKeyedSubscript:@"CustomActionLanguage"];
          }

          [v43 addObject:v15];

          goto LABEL_25;
        }

        v15 = AXLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          selfCopy2 = self;
          v33 = v15;
          v34 = "UIAccessibilityCustomAction must have a selector or handler. Object: %{public}@";
LABEL_18:
          _os_log_fault_impl(&dword_1A9B83000, v33, OS_LOG_TYPE_FAULT, v34, buf, 0xCu);
        }

LABEL_25:

        ++v6;
      }

      while (v4 != v6);
      v39 = [v2 countByEnumeratingWithState:&v45 objects:v53 count:16];
      v4 = v39;
      if (!v39)
      {
LABEL_30:

        _accessibilityCustomActions = v41;
        goto LABEL_32;
      }
    }
  }

  v43 = 0;
LABEL_32:

  return v43;
}

- (id)_accessibilityVisibleItemInList
{
  _accessibilityScrollAncestor = [self _accessibilityScrollAncestor];
  _accessibilityFirstVisibleItem = [_accessibilityScrollAncestor _accessibilityFirstVisibleItem];

  return _accessibilityFirstVisibleItem;
}

- (double)_accessibilityDelayBeforeUpdatingOnActivation
{
  _accessibilityUpdatesOnActivationAfterDelay = [self _accessibilityUpdatesOnActivationAfterDelay];
  result = 0.0;
  if (_accessibilityUpdatesOnActivationAfterDelay)
  {
    IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
    result = 0.1;
    if (IsVoiceOverRunning)
    {
      return 0.5;
    }
  }

  return result;
}

- (uint64_t)_accessibilityUpdatesOnActivationAfterDelay
{
  v2 = [self _accessibilityValueForKey:@"UIAccessibilityStorageKeyUpdatesOnActivationAfterDelay"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    accessibilityTraits = [self accessibilityTraits];
    bOOLValue = (*MEMORY[0x1E69DDA30] & accessibilityTraits) != 0 && (v6 = [self accessibilityTraits], (*MEMORY[0x1E6989268] & v6) != 0) || ((*MEMORY[0x1E69DD9A8] | *MEMORY[0x1E69DDA38]) & accessibilityTraits) != 0;
  }

  return bOOLValue;
}

- (id)_accessibilityEquivalenceTag
{
  accessibilityLabel = [self accessibilityLabel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = [accessibilityLabel string];

    accessibilityLabel = string;
  }

  accessibilityValue = [self accessibilityValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string2 = [accessibilityValue string];

    accessibilityValue = string2;
  }

  accessibilityTraits = [self accessibilityTraits];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%lu", accessibilityLabel, accessibilityValue, accessibilityTraits & ~(*MEMORY[0x1E6989218] | *MEMORY[0x1E6989128] | *MEMORY[0x1E69890D8] | *MEMORY[0x1E6989210])];

  return v7;
}

- (id)__accessibilityRoleDescription
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([self safeStringForKey:@"browserAccessibilityRoleDescription"], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    _accessibilityRoleDescription = [self safeStringForKey:@"browserAccessibilityRoleDescription"];
  }

  else
  {
    _accessibilityRoleDescription = [self _accessibilityRoleDescription];
  }

  return _accessibilityRoleDescription;
}

- (uint64_t)_accessibilityIsSpeakThisElement
{
  v16 = *MEMORY[0x1E69E9840];
  _accessibilityRawIsSpeakThisElement = [self _accessibilityRawIsSpeakThisElement];
  v3 = AXRemoteElementFromObject();
  v4 = v3;
  if (_accessibilityRawIsSpeakThisElement)
  {
    bOOLValue = [_accessibilityRawIsSpeakThisElement BOOLValue];
    v6 = AXLogSpeakScreen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [NSObject(AXPrivCategory) _accessibilityIsSpeakThisElement];
    }
  }

  else
  {
    if (v3)
    {
      bOOLValue = [v3 onClientSide];
      goto LABEL_7;
    }

    accessibilityTraits = [self accessibilityTraits];
    bOOLValue = ((UIAccessibilityTraitBookContent | *MEMORY[0x1E69DDA18] | *MEMORY[0x1E69DD9C0]) & accessibilityTraits) != 0 || ((*MEMORY[0x1E69DD9A8] | *MEMORY[0x1E69DD9B8] | *MEMORY[0x1E69DD9D0] | *MEMORY[0x1E69DDA00] | UIAccessibilityTraitStatusBarElement | UIAccessibilityTraitTableIndex | *MEMORY[0x1E69DDA30]) & accessibilityTraits) == 0;
    v6 = _AXTraitsAsString();
    v9 = AXLogSpeakScreen();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138543874;
      selfCopy = self;
      v12 = 2114;
      v13 = v6;
      v14 = 1024;
      v15 = bOOLValue;
      _os_log_debug_impl(&dword_1A9B83000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ had traits %{public}@, so was speak this element: %i", &v10, 0x1Cu);
    }
  }

LABEL_7:
  return bOOLValue;
}

- (void)_accessibilitySetIsSpeakThisElement:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _accessibilityRawSetIsSpeakThisElement:v2];
}

- (id)_accessibilitySpeakThisStringValue
{
  accessibilityTraits = [self accessibilityTraits];
  v3 = accessibilityTraits;
  if ((*MEMORY[0x1E6989268] & accessibilityTraits) != 0)
  {
    if (((*MEMORY[0x1E69DD9C8] | *MEMORY[0x1E69DDA30]) & accessibilityTraits) != 0)
    {
      _accessibilityAXAttributedValue = 0;
    }

    else
    {
      _accessibilityAXAttributedValue = [self _accessibilityAXAttributedValue];
    }
  }

  else
  {
    _accessibilityAXAttributedValue2 = [self _accessibilityAXAttributedValue];
    _accessibilityAXAttributedValue = _accessibilityAXAttributedValue2;
    if ((*MEMORY[0x1E69DDA30] & v3) == 0)
    {
      goto LABEL_13;
    }

    if ([_accessibilityAXAttributedValue2 isEqualToString:@"0"])
    {
      v6 = @"toggle.off";
    }

    else if ([_accessibilityAXAttributedValue isEqualToString:@"1"])
    {
      v6 = @"toggle.on";
    }

    else
    {
      if (![_accessibilityAXAttributedValue isEqualToString:@"2"])
      {
        goto LABEL_13;
      }

      v6 = @"toggle.mixed";
    }

    v7 = UIKitAccessibilityLocalizedString(v6);

    _accessibilityAXAttributedValue = v7;
  }

LABEL_13:

  return _accessibilityAXAttributedValue;
}

- (id)_accessibilitySpeakThisString
{
  v2 = [self _iosAccessibilityAttributeValue:2301];
  bOOLValue = [v2 BOOLValue];

  if (bOOLValue)
  {
    v4 = [self _iosAccessibilityAttributeValue:2302];
  }

  else
  {
    _accessibilityAXAttributedLabel = [self _accessibilityAXAttributedLabel];
    _accessibilitySpeakThisStringValue = [self _accessibilitySpeakThisStringValue];
    v4 = __UIAXStringForVariables();
  }

  return v4;
}

- (uint64_t)_accessibilityDirectTouchOptionsAttribute
{
  accessibilityDirectTouchOptions = [self accessibilityDirectTouchOptions];
  _accessibilityShouldAvoidAnnouncing = [self _accessibilityShouldAvoidAnnouncing];
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithUnsignedInteger:accessibilityDirectTouchOptions | _accessibilityShouldAvoidAnnouncing];
}

- (id)_accessibilityProcessedLabelAttribute
{
  _accessibilityAXAttributedLabel = [self _accessibilityAXAttributedLabel];
  accessibilitySpeechHint = [self accessibilitySpeechHint];
  if ([accessibilitySpeechHint count])
  {
    _accessibilityAXAttributedValue = [self _accessibilityAXAttributedValue];
    v5 = [_accessibilityAXAttributedValue length];

    if (!v5)
    {
      v6 = [self _accessibilityString:_accessibilityAXAttributedLabel withSpeechHint:accessibilitySpeechHint];

      _accessibilityAXAttributedLabel = v6;
    }
  }

  v7 = [self _accessibilityPostProcessValueForAutomation:_accessibilityAXAttributedLabel];

  return v7;
}

- (id)_accessibilityPostProcessValueForAutomation:()AXPrivCategory
{
  v3 = a3;
  v4 = AXDoesRequestingClientDeserveAutomation();
  if (v3 && v4)
  {
    v5 = [v3 stringByReplacingOccurrencesOfString:@"\\x{fffc}|\\x{2060}" withString:&stru_1F1DB9E20 options:1024 range:{0, objc_msgSend(v3, "length")}];

    v3 = v5;
  }

  return v3;
}

- (BOOL)_accessibilityOverridesPotentiallyAttributedAPISelector:()AXPrivCategory
{
  if (_accessibilityOverridesPotentiallyAttributedAPISelector__onceToken != -1)
  {
    [NSObject(AXPrivCategory) _accessibilityOverridesPotentiallyAttributedAPISelector:];
  }

  v4 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v4, a3);
  if (sel_accessibilityLabel == a3)
  {
    v7 = _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityLabelBaseMethod;
  }

  else if (sel_accessibilityValue == a3)
  {
    v7 = _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityValueBaseMethod;
  }

  else if (sel_accessibilityHint == a3)
  {
    v7 = _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityHintBaseMethod;
  }

  else if (sel_accessibilityUserInputLabels == a3)
  {
    v7 = _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityUserInputLabelsBaseMethod;
  }

  else if (sel_accessibilityAttributedLabel == a3)
  {
    v7 = _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityAttributedLabelBaseMethod;
  }

  else if (sel_accessibilityAttributedValue == a3)
  {
    v7 = _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityAttributedValueBaseMethod;
  }

  else if (sel_accessibilityAttributedHint == a3)
  {
    v7 = _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityAttributedHintBaseMethod;
  }

  else
  {
    if (sel_accessibilityAttributedUserInputLabels != a3)
    {
      sel_getName(a3);
      _AXAssert();
      return 0;
    }

    v7 = _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityAttributedUserInputLabelsBaseMethod;
  }

  return InstanceMethod != v7;
}

- (uint64_t)_accessibilityPotentiallyAttributedSelectorForNonAttributedSelector:()AXPrivCategory attributedSelector:
{
  v7 = [self _accessibilityOverridesPotentiallyAttributedAPISelector:?];
  if ([self _accessibilityOverridesPotentiallyAttributedAPISelector:a4] & 1 | ((v7 & 1) == 0))
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

- (uint64_t)impOrNullForSelector:()AXPrivCategory
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [self methodForSelector:a3];
}

+ (void)_accessibilityUndoAttributedDecisionCaching:()AXPrivCategory
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    sel_getName(a2);
    _AXAssert();
  }

  if (objc_opt_class() != self)
  {
    v4 = 0;
    v11[0] = sel__accessibilityPrefersNonAttributedLabel;
    v11[1] = sel__accessibilityPrefersNonAttributedValue;
    v11[2] = sel__accessibilityPrefersNonAttributedHint;
    do
    {
      v5 = objc_opt_class();
      v6 = v11[v4];
      InstanceMethod = class_getInstanceMethod(v5, v6);
      Implementation = method_getImplementation(InstanceMethod);
      TypeEncoding = method_getTypeEncoding(InstanceMethod);
      class_replaceMethod(self, v6, Implementation, TypeEncoding);
      ++v4;
    }

    while (v4 != 3);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:objc_opt_class() name:*MEMORY[0x1E69E4B50] object:0];
  }
}

- (BOOL)_accessibilityPrefersNonAttributedAttributeWithOverrideSelector:()AXPrivCategory nonAttributedSelector:attributedSelector:
{
  if (_accessibilityPrefersNonAttributedAttributeWithOverrideSelector_nonAttributedSelector_attributedSelector__onceToken != -1)
  {
    [NSObject(AXPrivCategory) _accessibilityPrefersNonAttributedAttributeWithOverrideSelector:nonAttributedSelector:attributedSelector:];
  }

  v9 = [self _accessibilityPotentiallyAttributedSelectorForNonAttributedSelector:a4 attributedSelector:a5];
  if (objc_opt_class() != _accessibilityPrefersNonAttributedAttributeWithOverrideSelector_nonAttributedSelector_attributedSelector__NSObjectClass)
  {
    v10 = &selRef__accessibilityAlwaysYes;
    if (v9 != a4)
    {
      v10 = &selRef__accessibilityAlwaysNo;
    }

    InstanceMethod = class_getInstanceMethod(_accessibilityPrefersNonAttributedAttributeWithOverrideSelector_nonAttributedSelector_attributedSelector__NSObjectClass, *v10);
    v12 = objc_opt_class();
    Implementation = method_getImplementation(InstanceMethod);
    TypeEncoding = method_getTypeEncoding(InstanceMethod);
    class_replaceMethod(v12, a3, Implementation, TypeEncoding);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = objc_opt_class();
    v17 = *MEMORY[0x1E69E4B50];
    [defaultCenter removeObserver:v16 name:*MEMORY[0x1E69E4B50] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:objc_opt_class() selector:sel__accessibilityUndoAttributedDecisionCaching_ name:v17 object:0];
  }

  return v9 == a4;
}

- (uint64_t)_accessibilityWarmPrefersNonAttributedLabelValueHintCache
{
  [self _accessibilityPrefersNonAttributedAttributeWithOverrideSelector:sel__accessibilityPrefersNonAttributedLabel nonAttributedSelector:sel_accessibilityLabel attributedSelector:sel_accessibilityAttributedLabel];
  [self _accessibilityPrefersNonAttributedAttributeWithOverrideSelector:sel__accessibilityPrefersNonAttributedValue nonAttributedSelector:sel_accessibilityValue attributedSelector:sel_accessibilityAttributedValue];

  return [self _accessibilityPrefersNonAttributedAttributeWithOverrideSelector:sel__accessibilityPrefersNonAttributedHint nonAttributedSelector:sel_accessibilityHint attributedSelector:sel_accessibilityAttributedHint];
}

- (id)_accessibilityPotentiallyAttributedValueForNonAttributedSelector:()AXPrivCategory attributedSelector:
{
  if (_accessibilityPotentiallyAttributedValueForNonAttributedSelector_attributedSelector__onceToken != -1)
  {
    [NSObject(AXPrivCategory) _accessibilityPotentiallyAttributedValueForNonAttributedSelector:attributedSelector:];
  }

  if (([processedClasses containsObject:objc_opt_class()] & 1) == 0)
  {
    [self _accessibilityWarmPrefersNonAttributedLabelValueHintCache];
    [processedClasses addObject:objc_opt_class()];
  }

  if (_accessibilityPotentiallyAttributedValueForNonAttributedSelector_attributedSelector__accessibilityLabelSEL == a3)
  {
    _accessibilityPrefersNonAttributedLabel = [self _accessibilityPrefersNonAttributedLabel];
  }

  else if (_accessibilityPotentiallyAttributedValueForNonAttributedSelector_attributedSelector__accessibilityValueSEL == a3)
  {
    _accessibilityPrefersNonAttributedLabel = [self _accessibilityPrefersNonAttributedValue];
  }

  else
  {
    if (_accessibilityPotentiallyAttributedValueForNonAttributedSelector_attributedSelector__accessibilityHintSEL != a3)
    {
      v7 = [self _accessibilityPotentiallyAttributedSelectorForNonAttributedSelector:a3 attributedSelector:a4] == a3;
      goto LABEL_13;
    }

    _accessibilityPrefersNonAttributedLabel = [self _accessibilityPrefersNonAttributedHint];
  }

  v7 = _accessibilityPrefersNonAttributedLabel;
LABEL_13:
  if (v7)
  {
    [self a3];
  }

  else
  {
    [self a4];
  }
  v9 = ;
  if (!v9)
  {
    if (v7)
    {
      [self a4];
    }

    else
    {
      [self a3];
    }
    v9 = ;
  }

  return v9;
}

- (id)_accessibilityAXAttributedLabel
{
  v2 = [self _accessibilityGetBlockForAttribute:34];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
    v5 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:v4];
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v6 = [self _accessibilityGetBlockForAttribute:1];
  v4 = v6;
  if (v6)
  {
    v5 = (*(v6 + 16))(v6);
    goto LABEL_5;
  }

  v9 = [self _accessibilityPotentiallyAttributedValueForNonAttributedSelector:sel_accessibilityLabel attributedSelector:sel_accessibilityAttributedLabel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:v9];
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        _AXAssert();
      }
    }

    v10 = v9;
  }

  v7 = v10;

LABEL_6:

  return v7;
}

- (id)_accessibilityAXAttributedValue
{
  v2 = [self _accessibilityGetBlockForAttribute:39];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:v4];
LABEL_7:
      v7 = v5;
      goto LABEL_15;
    }
  }

  v6 = [self _accessibilityGetBlockForAttribute:3];
  v4 = v6;
  if (v6)
  {
    v5 = (*(v6 + 16))(v6);
    goto LABEL_7;
  }

  v8 = [self _accessibilityPotentiallyAttributedValueForNonAttributedSelector:sel_accessibilityValue attributedSelector:sel_accessibilityAttributedValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:v8];
  }

  else
  {
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        _AXAssert();
      }
    }

    v9 = v8;
  }

  v7 = v9;

LABEL_15:

  return v7;
}

- (id)_accessibilityAXAttributedHint
{
  v2 = [self _accessibilityGetBlockForAttribute:35];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
    v5 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:v4];
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v6 = [self _accessibilityGetBlockForAttribute:2];
  v4 = v6;
  if (v6)
  {
    v5 = (*(v6 + 16))(v6);
    goto LABEL_5;
  }

  v9 = [self _accessibilityPotentiallyAttributedValueForNonAttributedSelector:sel_accessibilityHint attributedSelector:sel_accessibilityAttributedHint];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:v9];
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        _AXAssert();
      }
    }

    v10 = v9;
  }

  v7 = v10;

LABEL_6:

  return v7;
}

- (id)_accessibilityAXAttributedUserInputLabels
{
  v2 = [self _accessibilityGetBlockForAttribute:38];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
    v5 = [v4 ax_mappedArrayUsingBlock:&__block_literal_global_995];
    goto LABEL_3;
  }

  v5 = [self _accessibilityPotentiallyAttributedValueForNonAttributedSelector:sel_accessibilityUserInputLabels attributedSelector:sel_accessibilityAttributedUserInputLabels];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v5;
    firstObject = [v4 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = [v4 ax_mappedArrayUsingBlock:&__block_literal_global_997];
      firstObject3 = v4;
    }

    else
    {
      v5 = v4;
      if (![v4 count])
      {
        goto LABEL_3;
      }

      firstObject2 = [v4 firstObject];
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      v5 = v4;
      if (v11)
      {
        goto LABEL_3;
      }

      firstObject3 = [v4 firstObject];
      objc_opt_class();
      _AXAssert();
      v5 = v4;
    }

LABEL_3:
    goto LABEL_4;
  }

  if (v5)
  {
    objc_opt_class();
    _AXAssert();
  }

LABEL_4:

  return v5;
}

- (id)_accessibilityAXAttributedUserInputLabelsIncludingFallbacks
{
  _accessibilityAXAttributedUserInputLabels = [self _accessibilityAXAttributedUserInputLabels];
  if (![_accessibilityAXAttributedUserInputLabels count])
  {
    _accessibilityAXAttributedLabel = [self _accessibilityAXAttributedLabel];
    v4 = UIAXArrayForString();

    _accessibilityAXAttributedUserInputLabels = v4;
  }

  if (![_accessibilityAXAttributedUserInputLabels count])
  {
    accessibilityTraits = [self accessibilityTraits];
    if ((UIAccessibilityTraitBackButton & accessibilityTraits) != 0)
    {
      v6 = UIAccessibilityBundle();
      v7 = v6;
      v8 = @"USER_INPUT_BACK_BUTTON";
    }

    else if ((*MEMORY[0x1E69DD9B8] & accessibilityTraits) != 0)
    {
      v6 = UIAccessibilityBundle();
      v7 = v6;
      v8 = @"USER_INPUT_BUTTON";
    }

    else if ((*MEMORY[0x1E69DD9D0] & accessibilityTraits) != 0)
    {
      v6 = UIAccessibilityBundle();
      v7 = v6;
      v8 = @"USER_INPUT_IMAGE";
    }

    else if ((*MEMORY[0x1E69DD9A8] & accessibilityTraits) != 0)
    {
      v6 = UIAccessibilityBundle();
      v7 = v6;
      v8 = @"USER_INPUT_ADJUSTABLE";
    }

    else
    {
      if ((*MEMORY[0x1E69DDA00] & accessibilityTraits) == 0)
      {
        if ((UIAccessibilityTraitTextEntry & accessibilityTraits) == 0)
        {
          accessibilityValue = 0;
          goto LABEL_16;
        }

        accessibilityValue = [self accessibilityValue];
        if ([accessibilityValue length])
        {
LABEL_16:
          v10 = UIAXArrayForString();

          _accessibilityAXAttributedUserInputLabels = v10;
          goto LABEL_17;
        }

        v7 = UIAccessibilityBundle();
        v12 = [v7 localizedStringForKey:@"USER_INPUT_TEXT" value:&stru_1F1DB9E20 table:@"Localized"];

        accessibilityValue = v12;
LABEL_15:

        goto LABEL_16;
      }

      v6 = UIAccessibilityBundle();
      v7 = v6;
      v8 = @"USER_INPUT_SEARCH";
    }

    accessibilityValue = [v6 localizedStringForKey:v8 value:&stru_1F1DB9E20 table:@"Localized"];
    goto LABEL_15;
  }

LABEL_17:

  return _accessibilityAXAttributedUserInputLabels;
}

- (uint64_t)accessibilitySemanticGroupChildrentCount
{
  result = [self accessibilityElementCount];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    accessibilityElements = [self accessibilityElements];
    v4 = [accessibilityElements count];

    return v4;
  }

  return result;
}

- (uint64_t)_accessibilityIsGroupedParent
{
  accessibilityContainerType = [self accessibilityContainerType];
  if (!accessibilityContainerType)
  {
    return 0;
  }

  if ((accessibilityContainerType & 0xFFFFFFFFFFFFFFF7) != 4)
  {
    return 1;
  }

  accessibilityLabel = [self accessibilityLabel];
  if ([accessibilityLabel length])
  {
    v4 = 1;
  }

  else
  {
    _accessibilityRoleDescription = [self _accessibilityRoleDescription];
    v4 = [_accessibilityRoleDescription length] != 0;
  }

  return v4;
}

- (id)_accessibilityGroupedParent
{
  if (AXDoesRequestingClientDeserveAutomation())
  {
    [self _accessibilityUserTestingParent];
  }

  else
  {
    [self _accessibilityFindAncestor:&__block_literal_global_1026 startWithSelf:0];
  }
  v2 = ;
  v3 = v2;
  if (v2)
  {
    _accessibilityGroupedParent = [v2 _accessibilityGroupedParent];

    if (_accessibilityGroupedParent)
    {
      do
      {
        if (([_accessibilityGroupedParent accessibilityIsWindow] & 1) == 0)
        {
          v5 = _accessibilityGroupedParent;

          v3 = v5;
        }

        v4_accessibilityGroupedParent = [_accessibilityGroupedParent _accessibilityGroupedParent];

        _accessibilityGroupedParent = v4_accessibilityGroupedParent;
      }

      while (v4_accessibilityGroupedParent);
    }
  }

  return v3;
}

- (id)_accessibilityChildrenForContinuityDisplay
{
  v2 = +[UIAccessibilityElementTraversalOptions defaultContinuityDisplayOptions];
  v3 = [self _accessibilityLeafDescendantsWithCount:0 options:v2];
  if ([v3 count] == 1)
  {
    firstObject = [v3 firstObject];

    if (firstObject == self)
    {
      array = [MEMORY[0x1E695DEC8] array];

      v3 = array;
    }
  }

  v6 = AXLogElementTraversal();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [NSObject(AXPrivCategory) _accessibilityChildrenForContinuityDisplay];
  }

  return v3;
}

- (id)_accessibilityProcessChildrenForParameter:()AXPrivCategory
{
  v4 = a3;
  if (AXDoesRequestingClientDeserveAutomation())
  {
    automationElements = [self automationElements];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 objectForKey:*MEMORY[0x1E6988D08]];
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v8 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
    if (bOOLValue)
    {
      _accessibilityGroupedParent = [self _accessibilityGroupedParent];
      v10 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptionsHonoringGroups];

      leafNodePredicate = [v10 leafNodePredicate];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __70__NSObject_AXPrivCategory___accessibilityProcessChildrenForParameter___block_invoke;
      v16[3] = &unk_1E78AAF90;
      v17 = _accessibilityGroupedParent;
      v18 = leafNodePredicate;
      v16[4] = self;
      v12 = _accessibilityGroupedParent;
      v13 = leafNodePredicate;
      [v10 setLeafNodePredicate:v16];

      v8 = v10;
    }

    automationElements = [self _accessibilityLeafDescendantsWithCount:0 options:v8];
    v14 = AXLogElementTraversal();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [NSObject(AXPrivCategory) _accessibilityProcessChildrenForParameter:];
    }
  }

  return automationElements;
}

- (id)_accessibilityProcessElementsInDirection:()AXPrivCategory forParameter:
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
    bOOLValue = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v6 objectForKey:*MEMORY[0x1E6988D00]];
      unsignedIntegerValue = [v9 unsignedIntegerValue];

      v10 = [v6 objectForKey:*MEMORY[0x1E6988D08]];
      bOOLValue = [v10 BOOLValue];

      v11 = [v6 objectForKey:*MEMORY[0x1E6988D18]];
      v12 = v11;
      if (v11)
      {
        [self _accessibilitySetVoiceOverRTLOverride:{objc_msgSend(v11, "integerValue")}];
      }
    }

    else
    {
      bOOLValue = 0;
      unsignedIntegerValue = 0;
    }
  }

  if (unsignedIntegerValue >= 0x3E8)
  {
    v13 = 1000;
  }

  else
  {
    v13 = unsignedIntegerValue;
  }

  v14 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
  v15 = v14;
  if (bOOLValue)
  {
    v16 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptionsHonoringGroups];

    _accessibilityGroupedParent = [self _accessibilityGroupedParent];
    v18 = _accessibilityGroupedParent;
    if (_accessibilityGroupedParent)
    {
      v34[0] = _accessibilityGroupedParent;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
      [v16 setAllowedElementsForTraversal:v19];
    }
  }

  else
  {
    v16 = v14;
  }

  if (AXRequestingClient() == 11)
  {
    v20 = +[UIAccessibilityElementTraversalOptions defaultSpeakScreenOptions];

    v16 = v20;
  }

  if (AXRequestingClient() == 19)
  {
    v21 = +[UIAccessibilityElementTraversalOptions defaultSpeakScreenOptions];

    v16 = v21;
  }

  if (a3 == 92502)
  {
    [v16 setDirection:2];
  }

  v22 = [self _accessibilityElementsInDirectionWithCount:v13 options:v16];
  v23 = AXLogElementTraversal();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v25 = @"next";
    v26 = 138413059;
    if (a3 == 92502)
    {
      v25 = @"previous";
    }

    v27 = v25;
    v28 = 2113;
    selfCopy = self;
    v30 = 1024;
    v31 = v13;
    v32 = 2113;
    v33 = v22;
    _os_log_debug_impl(&dword_1A9B83000, v23, OS_LOG_TYPE_DEBUG, "*** Returning %@ elements for %{private}@ with count %u: %{private}@", &v26, 0x26u);
  }

  return v22;
}

- (id)_iosAccessibilityAttributeValue:()AXPrivCategory forParameter:
{
  v339[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (a3 <= 95002)
  {
    if (a3 > 92702)
    {
      if (a3 <= 94499)
      {
        switch(a3)
        {
          case 94000:
            [self accessibilityBoundsForTextMarkers:v6];
            goto LABEL_234;
          case 94001:
            firstObject = [self accessibilityArrayOfTextForTextMarkers:v6];
            v198 = [firstObject count];
            if (v198 >= 1)
            {
              v199 = v198;
              for (i = 0; i != v199; ++i)
              {
                v201 = [firstObject objectAtIndex:i];
                if ([v201 isAccessibilityElement] & 1) != 0 || (NSClassFromString(&cfstr_Webaccessibili.isa), (objc_opt_isKindOfClass()))
                {
                  v202 = _AXCreateAXUIElementWithElement();
                  [firstObject replaceObjectAtIndex:i withObject:v202];
                  CFRelease(v202);
                }
              }
            }

            goto LABEL_236;
          case 94002:
            v17 = [self _accessibilityLineStartMarker:v6];
            goto LABEL_235;
          case 94003:
            v17 = [self _accessibilityLineEndMarker:v6];
            goto LABEL_235;
          case 94004:
            v17 = [self _accessibilityNextMarker:v6];
            goto LABEL_235;
          case 94005:
            v17 = [self _accessibilityPreviousMarker:v6];
            goto LABEL_235;
          case 94006:
            v69 = [self _accessibilityObjectForTextMarker:v6];
            goto LABEL_247;
          case 94007:
            [v6 CGPointValue];
            v17 = [self _accessibilityMarkerForPoint:{UIAccessibilitySceneReferencePointToScreenPoint(v196, v197)}];
            goto LABEL_235;
          case 94008:
            v17 = [self accessibilityStringForTextMarkers:v6];
            goto LABEL_235;
          case 94009:
            v23 = [self _accessibilityLineRangeForPosition:{objc_msgSend(v6, "unsignedIntegerValue")}];
            break;
          case 94010:
            EventForSceneReferencePoint = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
            v329 = 0u;
            v330 = 0u;
            v331 = 0u;
            v332 = 0u;
            v212 = v7;
            v213 = [v212 countByEnumeratingWithState:&v329 objects:v336 count:16];
            if (v213)
            {
              v214 = v213;
              v215 = *v330;
              do
              {
                for (j = 0; j != v214; ++j)
                {
                  if (*v330 != v215)
                  {
                    objc_enumerationMutation(v212);
                  }

                  v217 = MEMORY[0x1E696B098];
                  [*(*(&v329 + 1) + 8 * j) CGPointValue];
                  v220 = [v217 valueWithCGPoint:{UIAccessibilitySceneReferencePointToScreenPoint(v218, v219)}];
                  [EventForSceneReferencePoint addObject:v220];
                }

                v214 = [v212 countByEnumeratingWithState:&v329 objects:v336 count:16];
              }

              while (v214);
            }

            v22 = [self _accessibilityMarkersForPoints:EventForSceneReferencePoint];
            goto LABEL_277;
          case 94011:
            v17 = [self _accessibilityMarkerLineEndsForMarkers:v6];
            goto LABEL_235;
          case 94012:
            v23 = [self _accessibilityRangeForTextMarker:v6];
            break;
          case 94013:
            [self _accessibilityMoveSelectionToMarker:v6];
            goto LABEL_237;
          case 94014:
            rangeValue = [v6 rangeValue];
            v17 = [self _accessibilityMarkersForRange:{rangeValue, v167}];
            goto LABEL_235;
          case 94015:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 count] != 3)
            {
              _AXAssert();
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 count] != 3)
            {
              goto LABEL_237;
            }

            v189 = v7;
            v190 = [v189 objectAtIndexedSubscript:1];
            integerValue = [v190 integerValue];
            v192 = [v189 objectAtIndexedSubscript:2];
            unsignedIntegerValue = [v192 unsignedIntegerValue];
            v194 = [v189 objectAtIndexedSubscript:0];

            v195 = [self _accessibilityPositionInDirection:integerValue offset:unsignedIntegerValue forPosition:{objc_msgSend(v194, "unsignedIntegerValue")}];
            v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v195];
            goto LABEL_235;
          case 94016:
            v23 = [self _accessibilityCharacterRangeForPosition:{objc_msgSend(v6, "unsignedIntegerValue")}];
            break;
          case 94017:
            v23 = [self _accessibilityRangeForTextMarkers:v6];
            break;
          default:
            if (a3 == 92703)
            {
              rangeValue2 = [v6 rangeValue];
              [self _accessibilityFrameForRange:{rangeValue2, v204}];
              goto LABEL_234;
            }

            if (a3 != 92704)
            {
              goto LABEL_237;
            }

            v23 = [self _accessibilityRangeForLineNumber:{objc_msgSend(v6, "intValue")}];
            break;
        }

LABEL_232:
        v17 = [MEMORY[0x1E696B098] valueWithRange:{v23, v24}];
        goto LABEL_235;
      }

      if (a3 == 94500)
      {
        v185 = [v6 objectAtIndexedSubscript:0];
        bOOLValue = [v185 BOOLValue];

        v187 = [v7 objectAtIndexedSubscript:1];
        bOOLValue2 = [v187 BOOLValue];

        v17 = [self _accessibilityScannerElementsGrouped:bOOLValue shouldIncludeNonScannerElements:bOOLValue2];
      }

      else
      {
        if (a3 != 95001)
        {
          if (a3 == 95002)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = MEMORY[0x1E696AD98];
              v21 = [self _accessibilityIndexForPickerString:v7];
LABEL_183:
              v17 = [v20 numberWithInteger:v21];
              goto LABEL_235;
            }
          }

LABEL_237:
          if (AXAttributeAllowsRequeryWhenRemoteElementFails() && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v205 = [v7 objectForKey:@"IgnoreRemoteElement"];
            v206 = _UIAccessibilityIgnoredRemoteElementForQuery;
            _UIAccessibilityIgnoredRemoteElementForQuery = v205;
            v207 = v205;

            firstObject = [self _iosAccessibilityAttributeValue:a3];
            v208 = _UIAccessibilityIgnoredRemoteElementForQuery;
            _UIAccessibilityIgnoredRemoteElementForQuery = 0;
          }

          else
          {
            firstObject = 0;
          }

          goto LABEL_241;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [self _accessibilityKeyboardKeyForString:v7];
      }

LABEL_235:
      firstObject = v17;
      goto LABEL_236;
    }

    if (a3 <= 92599)
    {
      switch(a3)
      {
        case 92500:
          *buf = [v6 rangeValue];
          *&buf[8] = v55;
          v17 = [self accessibilityLabelForRange:buf];
          goto LABEL_235;
        case 92501:
        case 92502:
          goto LABEL_13;
        case 92503:
          [v6 pointValue];
          v61 = v60;
          v63 = v62;
          _accessibilityParentView = [self _accessibilityParentView];
          window = [_accessibilityParentView window];
          v66 = AXConvertFromDisplayPointToWindowPoint(window, v61, v63);
          v68 = v67;

          v17 = [self _accessibilityLineNumberAndColumnForPoint:{v66, v68}];
          goto LABEL_235;
        case 92504:
          v23 = [self _accessibilityRangeForLineNumberAndColumn:v6];
          goto LABEL_232;
        case 92505:
          *buf = [v6 rangeValue];
          *&buf[8] = v57;
          v17 = [self _accessibilityValueForRange:buf];
          goto LABEL_235;
        case 92506:
          rangeValue3 = [v6 rangeValue];
          [self _accessibilityBoundsForRange:{rangeValue3, v59}];
          goto LABEL_234;
        case 92507:
        case 92514:
          goto LABEL_237;
        case 92508:
          *buf = [v6 rangeValue];
          *&buf[8] = v54;
          v17 = [self _accessibilityAttributedValueForRange:buf];
          goto LABEL_235;
        case 92509:
          v52 = MEMORY[0x1E696AD98];
          v53 = [self _accessibilityIsFirstSiblingForType:{objc_msgSend(v6, "intValue")}];
          goto LABEL_145;
        case 92510:
          v52 = MEMORY[0x1E696AD98];
          v53 = [self _accessibilityIsLastSiblingForType:{objc_msgSend(v6, "intValue")}];
          goto LABEL_145;
        case 92511:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 count] != 2)
          {
            goto LABEL_237;
          }

          EventForSceneReferencePoint = [v7 objectAtIndex:0];
          unsignedIntegerValue2 = [EventForSceneReferencePoint unsignedIntegerValue];
          v13 = [v7 objectAtIndex:1];
          dictionaryRepresentation = [self accessibilityElementForRow:unsignedIntegerValue2 andColumn:{-[NSObject unsignedIntegerValue](v13, "unsignedIntegerValue")}];
          goto LABEL_262;
        case 92512:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_237;
          }

          [v7 pointValue];
          v49 = v48;
          v51 = v50;
          EventForSceneReferencePoint = UIAccessibilityCreateEventForSceneReferencePoint(0, v48, v50);
          firstObject = 0;
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_278;
          }

          [EventForSceneReferencePoint _setAccessibilityHitTestStartsAtElement:self];
          goto LABEL_173;
        case 92513:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_237;
          }

          [v7 pointValue];
          v17 = [self _accessibilityDataDetectorScheme:?];
          goto LABEL_235;
        case 92515:
          v69 = [self _accessibilityAncestorForSiblingsWithType:{objc_msgSend(v6, "intValue")}];
LABEL_247:
          EventForSceneReferencePoint = v69;
          v22 = _AXCreateAXUIElementWithElement();
          goto LABEL_277;
        case 92516:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_237;
          }

          v17 = [self _accessibilityElementsForSearchParameter:v7];
          goto LABEL_235;
        case 92517:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 count] < 5 || objc_msgSend(v7, "count") >= 8)
          {
            goto LABEL_264;
          }

          EventForSceneReferencePoint = [v7 objectAtIndex:0];
          objc_opt_class();
          firstObject = 0;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_278;
          }

          v45 = [v7 objectAtIndex:1];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v47 = [v7 objectAtIndex:1];
            integerValue2 = [v47 integerValue];
          }

          else
          {
            integerValue2 = 0;
          }

          v276 = [v7 objectAtIndex:2];
          objc_opt_class();
          v277 = objc_opt_isKindOfClass();

          if (v277)
          {
            v278 = [v7 objectAtIndex:2];
            rangeValue4 = [v278 rangeValue];
            v308 = v280;
          }

          else
          {
            v308 = 0;
            rangeValue4 = 0x7FFFFFFFLL;
          }

          v13 = [v7 objectAtIndex:3];
          if ([v7 count] < 5)
          {
            bOOLValue3 = 1;
          }

          else
          {
            v281 = [v7 objectAtIndex:4];
            bOOLValue3 = [v281 BOOLValue];
          }

          if ([v7 count] < 6)
          {
            bOOLValue4 = 0;
          }

          else
          {
            v283 = [v7 objectAtIndex:5];
            bOOLValue4 = [v283 BOOLValue];
          }

          if ([v7 count] < 7)
          {
            v285 = 0;
          }

          else
          {
            v285 = [v7 objectAtIndex:6];
          }

          BYTE1(v301) = bOOLValue4;
          LOBYTE(v301) = bOOLValue3;
          firstObject = [self _accessibilityNextOpaqueElementsForTechnology:v13 startElement:v285 direction:objc_msgSend(EventForSceneReferencePoint searchType:"intValue") range:integerValue2 shouldScrollToVisible:rangeValue4 honorsGroups:{v308, v301}];
          v286 = AXLogElementTraversal();
          if (os_log_type_enabled(v286, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = firstObject;
            _os_log_impl(&dword_1A9B83000, v286, OS_LOG_TYPE_INFO, "Next opaque element of %@: %@", buf, 0x16u);
          }

          goto LABEL_263;
        default:
          if (a3 != 91512)
          {
            goto LABEL_237;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_237;
          }

          v17 = [self _accessibilityRemoteElementForSceneID:v7];
          goto LABEL_235;
      }
    }

    if (a3 <= 92699)
    {
      if (a3 == 92600)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 count] != 2)
        {
          goto LABEL_237;
        }

        EventForSceneReferencePoint = v7;
        v179 = [EventForSceneReferencePoint objectAtIndexedSubscript:0];
        rangeValue5 = [v179 rangeValue];
        v182 = v181;

        v13 = [EventForSceneReferencePoint objectAtIndexedSubscript:1];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          dictionaryRepresentation = [self _accessibilityCellWithRowIndex:rangeValue5 column:v182 containingView:v13];
LABEL_262:
          firstObject = dictionaryRepresentation;
        }

        else
        {
          mEMORY[0x1E6988800] = [MEMORY[0x1E6988800] sharedInstance];
          ignoreLogging = [mEMORY[0x1E6988800] ignoreLogging];

          if ((ignoreLogging & 1) == 0)
          {
            identifier = [MEMORY[0x1E6988800] identifier];
            v267 = AXLoggerForFacility();

            v268 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v267, v268))
            {
              v269 = AXColorizeFormatLog();
              v270 = _AXStringForArgs();
              if (os_log_type_enabled(v267, v268))
              {
                *buf = 138543362;
                *&buf[4] = v270;
                _os_log_impl(&dword_1A9B83000, v267, v268, "%{public}@", buf, 0xCu);
              }
            }
          }

LABEL_323:
          firstObject = 0;
        }

LABEL_263:

        goto LABEL_278;
      }

      if (a3 != 92601)
      {
        goto LABEL_237;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_237;
      }

      [v7 CGRectValue];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      EventForSceneReferencePoint = [MEMORY[0x1E69DCEB0] mainScreen];
      coordinateSpace = [EventForSceneReferencePoint coordinateSpace];
      fixedCoordinateSpace = [EventForSceneReferencePoint fixedCoordinateSpace];
      [coordinateSpace convertRect:fixedCoordinateSpace toCoordinateSpace:{v27, v29, v31, v33}];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v22 = [MEMORY[0x1E696B098] valueWithRect:{v37, v39, v41, v43}];
    }

    else
    {
      if (a3 != 92700)
      {
        if (a3 == 92701)
        {
          intValue = [v6 intValue];
          if (intValue == 0x7FFFFFFF)
          {
            v184 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v184 = intValue;
          }

          [self accessibilityFrameForLineNumber:v184];
LABEL_234:
          [self _accessibilityConvertSystemBoundedScreenRectToContextSpace:?];
          v17 = [MEMORY[0x1E696B098] valueWithRect:?];
        }

        else
        {
          intValue2 = [v6 intValue];
          if (objc_opt_respondsToSelector())
          {
            firstObject = [self accessibilityAttributedContentForLineNumber:intValue2];
            if (firstObject)
            {
              goto LABEL_241;
            }
          }

          v17 = [self accessibilityContentForLineNumber:intValue2];
        }

        goto LABEL_235;
      }

      [v6 pointValue];
      v169 = v168;
      v171 = v170;
      EventForSceneReferencePoint = [self _accessibilityParentView];
      window2 = [EventForSceneReferencePoint window];
      [window2 convertPoint:EventForSceneReferencePoint toView:{v169, v171}];
      v174 = v173;
      v176 = v175;

      v177 = [self accessibilityLineNumberForPoint:{v174, v176}];
      if (v177 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v178 = 0x7FFFFFFFLL;
      }

      else
      {
        v178 = v177;
      }

      v22 = [MEMORY[0x1E696AD98] numberWithInteger:v178];
    }

LABEL_277:
    firstObject = v22;
LABEL_278:

    goto LABEL_236;
  }

  if (a3 > 95216)
  {
    switch(a3)
    {
      case 95217:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 count] != 2)
        {
          goto LABEL_237;
        }

        EventForSceneReferencePoint = [v7 objectAtIndex:0];
        [EventForSceneReferencePoint pointValue];
        v10 = v9;
        v12 = v11;
        v13 = [v7 objectAtIndex:1];
        [v13 floatValue];
        LODWORD(v15) = v14;
        dictionaryRepresentation = [self _accessibilityUpcomingRoadsForPoint:v10 forAngle:{v12, v15}];
        goto LABEL_262;
      case 95218:
        v52 = MEMORY[0x1E696AD98];
        [v6 pointValue];
        v53 = [self _accessibilityRoadContainsTrackingPoint:?];
        goto LABEL_145;
      case 95219:
        [v6 pointValue];
        v17 = [self _accessibilityMapDetailedInfoAtPoint:?];
        goto LABEL_235;
      case 95220:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 count] != 2)
        {
          goto LABEL_237;
        }

        v118 = [v7 objectAtIndex:0];
        [v118 pointValue];
        v120 = v119;
        v122 = v121;
        v123 = [v7 objectAtIndex:1];
        [v123 floatValue];
        LODWORD(v125) = v124;
        [self _accessibilityDistanceFromEndOfRoad:v120 forAngle:{v122, v125}];
        LODWORD(v120) = v126;

        LODWORD(v127) = LODWORD(v120);
        v88 = [MEMORY[0x1E696AD98] numberWithFloat:v127];
        goto LABEL_272;
      case 95221:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          firstObject = MEMORY[0x1E695E110];
          goto LABEL_241;
        }

        v52 = MEMORY[0x1E696AD98];
        v53 = [self _accessibilityCanPerformAction:{objc_msgSend(v7, "intValue")}];
LABEL_145:
        v17 = [v52 numberWithBool:v53];
        goto LABEL_235;
      case 95222:
      case 95253:
      case 95254:
      case 95256:
      case 95257:
        goto LABEL_237;
      case 95223:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 count] != 3)
        {
          goto LABEL_237;
        }

        v137 = [v7 objectAtIndex:2];
        EventForSceneReferencePoint = _AXCreateAXUIElementWithElement();

        v138 = [v7 objectAtIndex:0];
        [v138 pointValue];
        [self _accessibilityScreenPointForSceneReferencePoint:?];
        v140 = v139;
        v142 = v141;

        v143 = MEMORY[0x1E696AD98];
        v13 = [v7 objectAtIndex:1];
        [v13 floatValue];
        LODWORD(v145) = v144;
        [self _accessibilityDistance:EventForSceneReferencePoint forAngle:v140 toRoad:{v142, v145}];
        dictionaryRepresentation = [v143 numberWithFloat:?];
        goto LABEL_262;
      case 95224:
        if (![self _accessibilitySpeakThisCanBeHighlighted])
        {
          goto LABEL_237;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v91 = [v7 objectForKey:@"speakThisRangeInElement"];
        EventForSceneReferencePoint = v91;
        if (v91)
        {
          v311 = v91;
          rangeValue6 = [v91 rangeValue];
          v94 = v93;
          v95 = [v7 objectForKey:@"speakThisCurrentString"];
          v96 = AXLogSpeakScreen();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
          {
            v341.location = rangeValue6;
            v341.length = v94;
            [NSObject(AXPrivCategory) _iosAccessibilityAttributeValue:self forParameter:v341];
          }

          v97 = [v7 objectForKey:@"speakThisWantsSentenceRects"];
          bOOLValue5 = [v97 BOOLValue];

          [self _accessibilitySetBoolValue:0 forKey:@"AXSpeakScreenRectsUseVisibleFrame"];
          v99 = [self _accessibilityTextRectsForSpeakThisStringRange:rangeValue6 string:v94 wantsSentences:{v95, bOOLValue5}];
          v100 = [v7 objectForKey:@"speakThisIgnoreScrollToVisible"];
          bOOLValue6 = [v100 BOOLValue];

          if ([self _accessibilitySpeakThisShouldScrollTextRects] && (bOOLValue6 & 1) == 0 && objc_msgSend(v99, "count"))
          {
            v303 = v94;
            v305 = rangeValue6;
            x = *MEMORY[0x1E695F050];
            y = *(MEMORY[0x1E695F050] + 8);
            width = *(MEMORY[0x1E695F050] + 16);
            height = *(MEMORY[0x1E695F050] + 24);
            v327 = 0u;
            v328 = 0u;
            v325 = 0u;
            v326 = 0u;
            v106 = v99;
            v107 = [v106 countByEnumeratingWithState:&v325 objects:v335 count:16];
            if (v107)
            {
              v108 = v107;
              v109 = *v326;
              do
              {
                for (k = 0; k != v108; ++k)
                {
                  if (*v326 != v109)
                  {
                    objc_enumerationMutation(v106);
                  }

                  [*(*(&v325 + 1) + 8 * k) CGRectValue];
                  v344.origin.x = x;
                  v344.origin.y = y;
                  v344.size.width = width;
                  v344.size.height = height;
                  v343 = CGRectUnion(v342, v344);
                  x = v343.origin.x;
                  y = v343.origin.y;
                  width = v343.size.width;
                  height = v343.size.height;
                }

                v108 = [v106 countByEnumeratingWithState:&v325 objects:v335 count:16];
              }

              while (v108);
            }

            [self _accessibilityScrollRectToVisible:{x, y, width, height}];
            v94 = v303;
            rangeValue6 = v305;
          }

          [self _accessibilitySetBoolValue:1 forKey:@"AXSpeakScreenRectsUseVisibleFrame"];
          v306 = v95;
          v111 = [self _accessibilityTextRectsForSpeakThisStringRange:rangeValue6 string:v94 wantsSentences:{v95, bOOLValue5}];

          firstObject = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v111, "count")}];
          v321 = 0u;
          v322 = 0u;
          v323 = 0u;
          v324 = 0u;
          v112 = v111;
          v113 = [v112 countByEnumeratingWithState:&v321 objects:v334 count:16];
          if (v113)
          {
            v114 = v113;
            v115 = *v322;
            do
            {
              for (m = 0; m != v114; ++m)
              {
                if (*v322 != v115)
                {
                  objc_enumerationMutation(v112);
                }

                [*(*(&v321 + 1) + 8 * m) CGRectValue];
                [self _accessibilityConvertSystemBoundedScreenRectToContextSpace:?];
                v117 = [MEMORY[0x1E696B098] valueWithCGRect:?];
                [firstObject addObject:v117];
              }

              v114 = [v112 countByEnumeratingWithState:&v321 objects:v334 count:16];
            }

            while (v114);
          }

          v13 = v306;
          EventForSceneReferencePoint = v311;
          goto LABEL_263;
        }

        v13 = AXLogSpeakScreen();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [NSObject(AXPrivCategory) _iosAccessibilityAttributeValue:forParameter:];
        }

        goto LABEL_323;
      case 95225:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 count] < 4 || objc_msgSend(v7, "count") >= 7)
        {
LABEL_264:
          _AXAssert();
          goto LABEL_237;
        }

        EventForSceneReferencePoint = [v7 objectAtIndex:0];
        objc_opt_class();
        firstObject = 0;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_278;
        }

        v133 = [v7 objectAtIndex:1];
        objc_opt_class();
        v134 = objc_opt_isKindOfClass();

        if (v134)
        {
          v135 = [v7 objectAtIndex:1];
          integerValue3 = [v135 integerValue];
        }

        else
        {
          integerValue3 = 0;
        }

        v287 = [v7 objectAtIndex:2];
        objc_opt_class();
        v288 = objc_opt_isKindOfClass();

        if (v288)
        {
          v289 = [v7 objectAtIndex:2];
          rangeValue7 = [v289 rangeValue];
          v292 = v291;
        }

        else
        {
          v292 = 0;
          rangeValue7 = 0x7FFFFFFFLL;
        }

        v13 = [v7 objectAtIndexedSubscript:3];
        if ([v7 count] < 5)
        {
          bOOLValue7 = 1;
        }

        else
        {
          v293 = [v7 objectAtIndex:4];
          bOOLValue7 = [v293 BOOLValue];
        }

        if ([v7 count] == 6)
        {
          [v7 objectAtIndex:5];
          v309 = EventForSceneReferencePoint;
          v294 = rangeValue7;
          v295 = v13;
          v296 = v292;
          v298 = v297 = integerValue3;
          bOOLValue8 = [v298 BOOLValue];

          integerValue3 = v297;
          v292 = v296;
          v13 = v295;
          rangeValue7 = v294;
          EventForSceneReferencePoint = v309;
        }

        else
        {
          bOOLValue8 = 0;
        }

        LOBYTE(v301) = bOOLValue8;
        firstObject = [self _accessibilityMoveFocusToNextOpaqueElementForTechnology:v13 direction:objc_msgSend(EventForSceneReferencePoint searchType:"intValue") range:integerValue3 shouldScrollToVisible:rangeValue7 honorsGroups:{v292, bOOLValue7, v301}];
        v300 = AXLogElementTraversal();
        if (os_log_type_enabled(v300, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = firstObject;
          _os_log_impl(&dword_1A9B83000, v300, OS_LOG_TYPE_INFO, "Opaque movement from %@ to %@", buf, 0x16u);
        }

        goto LABEL_263;
      case 95226:
        v17 = [self _accessibilityCurrentlyFocusedElementForTechnology:v6];
        goto LABEL_235;
      case 95227:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        objc_opt_class();
        v146 = [v7 objectForKey:@"uuid"];
        v307 = __UIAccessibilityCastAsClass();

        v147 = [v7 objectForKey:@"direction"];
        integerValue4 = [v147 integerValue];

        v149 = [v7 objectForKey:@"currentItem"];
        v312 = [v149 objectForKey:@"targetElement"];
        v150 = [v149 objectForKey:@"targetRange"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v151 = v150;
          v152 = 0;
          v153 = 0;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            rangeValue8 = [v150 rangeValue];
            v153 = v233;
            v151 = [v312 _accessibilityTextRangeFromNSRange:{rangeValue8, v233}];
            v152 = 0;
            goto LABEL_305;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v152 = v150;
          }

          else
          {
            v152 = 0;
          }

          v153 = 0;
          v151 = 0;
        }

        rangeValue8 = 0x7FFFFFFFLL;
LABEL_305:
        v304 = v152;
        v245 = [objc_alloc(MEMORY[0x1E69DC5F8]) initWithTargetElement:v312 targetRange:v151 targetTextMarkerRange:v152];
        v246 = v245;
        if (!v151 && (rangeValue8 != 0x7FFFFFFF || v153))
        {
          [v245 setTargetNSRange:{rangeValue8, v153}];
        }

        buf[0] = 0;
        objc_opt_class();
        v247 = [v7 objectForKey:*MEMORY[0x1E6988D08]];
        v248 = __UIAccessibilityCastAsClass();

        bOOLValue9 = [v248 BOOLValue];
        v250 = [self _accessibilityPerformPublicCustomRotorSearch:v307 searchDirection:integerValue4 currentItem:v246 honorsGroups:bOOLValue9];
        v251 = v250;
        if (!v250 || ([v250 targetElement], v252 = objc_claimAutoreleasedReturnValue(), v252, !v252))
        {
          firstObject = 0;
          goto LABEL_331;
        }

        v302 = v151;
        v253 = MEMORY[0x1E695DF90];
        targetElement = [v251 targetElement];
        v255 = _AXCreateAXUIElementWithElement();
        firstObject = [v253 dictionaryWithObject:v255 forKey:@"targetElement"];

        *buf = xmmword_1A9BF34F0;
        targetRange = [v251 targetRange];

        if (targetRange)
        {
          targetRange2 = [v251 targetRange];
          [firstObject setObject:targetRange2 forKeyedSubscript:@"targetRange"];

          targetElement2 = [v251 targetElement];
          targetRange3 = [v251 targetRange];
          targetNSRange = [targetElement2 _accessibilityRawRangeForUITextRange:targetRange3];
          v262 = v261;
          *buf = targetNSRange;
          *&buf[8] = v261;
        }

        else
        {
          targetNSRange = 0x7FFFFFFFLL;
          if ([v251 targetNSRange] != 0x7FFFFFFF || v263)
          {
            targetNSRange = [v251 targetNSRange];
            v262 = v271;
            *buf = targetNSRange;
            *&buf[8] = v271;
          }

          else
          {
            v262 = 0;
          }
        }

        v151 = v302;
        if (targetNSRange != 0x7FFFFFFF || v262)
        {
          targetTextMarkerRange2 = AXValueCreate(kAXValueTypeCFRange, buf);
          v152 = v304;
          if (!targetTextMarkerRange2)
          {
            goto LABEL_331;
          }
        }

        else
        {
          targetTextMarkerRange = [v251 targetTextMarkerRange];

          v152 = v304;
          if (!targetTextMarkerRange)
          {
            goto LABEL_331;
          }

          targetTextMarkerRange2 = [v251 targetTextMarkerRange];
        }

        v274 = targetTextMarkerRange2;
        [firstObject setObject:targetTextMarkerRange2 forKeyedSubscript:@"targetRange"];

LABEL_331:
        goto LABEL_241;
      case 95228:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v154 = v7;
        }

        else
        {
          v154 = 0;
        }

        v155 = v154;
        v156 = [self _accessibilityPublicCustomRotorName:v155];
        if (v156)
        {
          v157 = [self _accessibilityPublicCustomRotorVisibleInTouchRotor:v155];
          v339[0] = v156;
          v338[0] = @"name";
          v338[1] = @"visibleInTouchRotor";
          v158 = [MEMORY[0x1E696AD98] numberWithBool:v157];
          v339[1] = v158;
          v338[2] = *MEMORY[0x1E6988CF8];
          v159 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "_accessibilityPublicCustomRotorLinkCount:", v155)}];
          v339[2] = v159;
          firstObject = [MEMORY[0x1E695DF20] dictionaryWithObjects:v339 forKeys:v338 count:3];
        }

        else
        {
          firstObject = 0;
        }

        goto LABEL_241;
      case 95229:
        v17 = [self _accessibilityFilenameForAttachmentCID:v6];
        goto LABEL_235;
      case 95230:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          EventForSceneReferencePoint = v7;
          bOOLValue10 = 0;
          bOOLValue11 = 0;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_279;
          }

          EventForSceneReferencePoint = [v7 valueForKey:*MEMORY[0x1E6988CF0]];
          buf[0] = 0;
          objc_opt_class();
          v228 = [v7 objectForKey:*MEMORY[0x1E6988D08]];
          v229 = __UIAccessibilityCastAsClass();

          bOOLValue10 = [v229 BOOLValue];
          buf[0] = 0;
          objc_opt_class();
          v230 = [v7 objectForKey:*MEMORY[0x1E6988D20]];
          v231 = __UIAccessibilityCastAsClass();

          bOOLValue11 = [v231 BOOLValue];
        }

        if (!EventForSceneReferencePoint)
        {
          goto LABEL_279;
        }

        v22 = [self _accessibilityFirstContainedElementForTechnology:EventForSceneReferencePoint honoringGroups:bOOLValue10 shouldAlwaysScroll:bOOLValue11];
        goto LABEL_277;
      case 95231:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v79 = v7;
          bOOLValue12 = 0;
          bOOLValue13 = 0;
          v82 = 0;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_279;
          }

          v79 = [v7 valueForKey:*MEMORY[0x1E6988CF0]];
          buf[0] = 0;
          objc_opt_class();
          v222 = [v7 objectForKey:*MEMORY[0x1E6988D08]];
          v223 = __UIAccessibilityCastAsClass();

          bOOLValue12 = [v223 BOOLValue];
          buf[0] = 0;
          objc_opt_class();
          v224 = [v7 objectForKey:*MEMORY[0x1E6988D20]];
          v225 = __UIAccessibilityCastAsClass();

          bOOLValue13 = [v225 BOOLValue];
          buf[0] = 0;
          objc_opt_class();
          v226 = [v7 objectForKey:*MEMORY[0x1E6988D10]];
          v227 = __UIAccessibilityCastAsClass();

          LODWORD(v226) = [v227 BOOLValue];
          v82 = v226 ^ 1;
        }

        if (v79)
        {
          if ([self isAccessibilityOpaqueElementProvider])
          {
            firstObject = [self _accessibilityFocusAbsoluteFirstLastOpaqueElement:0 technology:v79 honorsGroups:bOOLValue12 shouldAlwaysScroll:bOOLValue13];
          }

          else
          {
            v234 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
            if (bOOLValue12)
            {
              v235 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptionsHonoringGroups];

              leafNodePredicate = [v235 leafNodePredicate];
              v319[0] = MEMORY[0x1E69E9820];
              v319[1] = 3221225472;
              v319[2] = __73__NSObject_AXPrivCategory___iosAccessibilityAttributeValue_forParameter___block_invoke;
              v319[3] = &unk_1E78AAF48;
              v319[4] = self;
              v320 = leafNodePredicate;
              v237 = leafNodePredicate;
              [v235 setLeafNodePredicate:v319];

              v234 = v235;
            }

            [v234 setDirection:2];
            v238 = [self _accessibilityLeafDescendantsWithCount:1 options:v234];
            firstObject = [v238 firstObject];

            if (v82 && [firstObject _accessibilityIsRemoteElement])
            {
              [self _accessibilityLeafDescendantsWithCount:10 options:v234];
              v315 = 0u;
              v316 = 0u;
              v317 = 0u;
              v239 = v318 = 0u;
              v240 = [v239 countByEnumeratingWithState:&v315 objects:v333 count:16];
              if (v240)
              {
                v241 = v240;
                v313 = v79;
                v242 = *v316;
                while (2)
                {
                  for (n = 0; n != v241; ++n)
                  {
                    if (*v316 != v242)
                    {
                      objc_enumerationMutation(v239);
                    }

                    v244 = *(*(&v315 + 1) + 8 * n);
                    if (([v244 _accessibilityIsRemoteElement] & 1) == 0)
                    {
                      v275 = v244;

                      firstObject = v275;
                      goto LABEL_333;
                    }
                  }

                  v241 = [v239 countByEnumeratingWithState:&v315 objects:v333 count:16];
                  if (v241)
                  {
                    continue;
                  }

                  break;
                }

LABEL_333:
                v79 = v313;
              }
            }
          }

          goto LABEL_236;
        }

LABEL_279:
        firstObject = 0;
        goto LABEL_236;
      case 95232:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v128 = v7;
        }

        else
        {
          v128 = 0;
        }

        v88 = [self _accessibilityPublicCustomRotorIdForSystemType:v128];
        goto LABEL_272;
      case 95233:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v87 = v7;
        }

        else
        {
          v87 = 0;
        }

        v88 = [self _accessibilityHeaderElementsForColumn:{objc_msgSend(v87, "unsignedIntegerValue")}];
        goto LABEL_272;
      case 95234:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v163 = v7;
        }

        else
        {
          v163 = 0;
        }

        v88 = [self _accessibilityHeaderElementsForRow:{objc_msgSend(v163, "unsignedIntegerValue")}];
        goto LABEL_272;
      case 95235:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        integerValue5 = [v7 integerValue];
        v20 = MEMORY[0x1E696AD98];
        v21 = [self _accessibilityReinterpretVoiceOverCommand:integerValue5];
        goto LABEL_183;
      case 95236:
        v17 = [self _accessibilityProcessChildrenForParameter:v6];
        goto LABEL_235;
      case 95237:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [self _accessibilityAlternativesForTextAtPosition:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95238:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          unsignedIntegerValue3 = [v7 unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue3 = 0;
        }

        v88 = [self _accessibilityNotificationSummary:unsignedIntegerValue3];
LABEL_272:
        firstObject = v88;
        goto LABEL_241;
      case 95239:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [self _accessibilityDataSeriesValuesForAxis:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95240:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [self _accessibilityDataSeriesTitleForAxis:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95241:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [self _accessibilityDataSeriesMinimumValueForAxis:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95242:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [self _accessibilityDataSeriesMaximumValueForAxis:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95243:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [self _accessibilityDataSeriesGridlinePositionsForAxis:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95244:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [self _accessibilityDataSeriesUnitLabelForAxis:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95245:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [self _accessibilityDataSeriesCategoryLabelsForAxis:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95246:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [self _accessibilityNativeFocusableElements:0 withQueryString:v7];
        goto LABEL_235;
      case 95247:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        [v7 doubleValue];
        v130 = fmax(v129, 0.0);
        if (v130 > 1.0)
        {
          v130 = 1.0;
        }

        selfCopy2 = self;
        v132 = 0;
        goto LABEL_188;
      case 95248:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        [v7 doubleValue];
        v130 = fmax(v165, 0.0);
        if (v130 > 1.0)
        {
          v130 = 1.0;
        }

        selfCopy2 = self;
        v132 = 1;
LABEL_188:
        v17 = [selfCopy2 _accessibilityDataSeriesValueDescriptionForPosition:v132 axis:v130];
        goto LABEL_235;
      case 95249:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![self isAccessibilityOpaqueElementProvider])
        {
          goto LABEL_237;
        }

        buf[0] = 0;
        objc_opt_class();
        v73 = [v7 objectForKey:*MEMORY[0x1E6988D08]];
        v74 = __UIAccessibilityCastAsClass();

        bOOLValue14 = [v74 BOOLValue];
        buf[0] = 0;
        objc_opt_class();
        v76 = [v7 objectForKey:*MEMORY[0x1E6988D28]];
        v77 = __UIAccessibilityCastAsClass();

        bOOLValue15 = [v77 BOOLValue];
        v17 = [self _accessibilityVisibleOpaqueElementsHonoringGroups:bOOLValue14 sorted:bOOLValue15];
        goto LABEL_235;
      case 95250:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        buf[0] = 0;
        objc_opt_class();
        v70 = [v7 objectForKey:*MEMORY[0x1E6988D08]];
        v71 = __UIAccessibilityCastAsClass();

        bOOLValue16 = [v71 BOOLValue];
        v17 = [self _accessibilityFirstElementForFocusHonoringGroups:bOOLValue16];
        goto LABEL_235;
      case 95251:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        buf[0] = 0;
        objc_opt_class();
        v83 = [v7 objectForKey:*MEMORY[0x1E6988D08]];
        v84 = __UIAccessibilityCastAsClass();

        bOOLValue17 = [v84 BOOLValue];
        v17 = [self _accessibilityVisibleElementsHonoringGroups:bOOLValue17];
        goto LABEL_235;
      case 95252:
LABEL_13:
        v17 = [self _accessibilityProcessElementsInDirection:a3 forParameter:v6];
        goto LABEL_235;
      case 95255:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [self _accessibilitySpeakThisElementWithIdentifier:v7];
        goto LABEL_235;
      case 95258:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        [v7 pointValue];
        v49 = v160;
        v51 = v161;
        EventForSceneReferencePoint = UIAccessibilityCreateEventForSceneReferencePoint(0, v160, v161);
        firstObject = 0;
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_278;
        }

        v162 = +[UIAccessibilityHitTestOptions dwellControlElementHighlightOptions];
        [EventForSceneReferencePoint _setAccessibilityHitTestOptions:v162];

LABEL_173:
        v22 = [self _accessibilityHitTest:EventForSceneReferencePoint withEvent:{v49, v51}];
        goto LABEL_277;
      case 95259:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [self accessibilityCustomAttribute:v7];
        goto LABEL_235;
      default:
        if (a3 == 96001)
        {
          if (LookingGlassRuntimeSupportLibraryCore())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              EventForSceneReferencePoint = [objc_alloc(getLGRRequestClass()) initWithDictionaryRepresentation:v7];
              [EventForSceneReferencePoint setServerInstance:self];
              sharedInstance = [getLGRRuntimeManagerClass() sharedInstance];
              v13 = [sharedInstance handleRequest:EventForSceneReferencePoint];

              dictionaryRepresentation = [v13 dictionaryRepresentation];
              goto LABEL_262;
            }
          }
        }

        else if (a3 == 96002 && AXTinkerKitLibraryCore())
        {
          EventForSceneReferencePoint = [getTinkerRuntimeClass() shared];
          v22 = [EventForSceneReferencePoint handleRequest:v7 withElement:self];
          goto LABEL_277;
        }

        goto LABEL_237;
    }
  }

  if (a3 <= 95004)
  {
    if (a3 == 95003)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_237;
      }

      rangeValue9 = [v7 rangeValue];
      v17 = [self _accessibilityUserTestingChildrenWithRange:{rangeValue9, v211}];
      goto LABEL_235;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_237;
    }

    v25 = MEMORY[0x1E696B098];
    [v7 CGPointValue];
    v17 = [v25 valueWithPoint:?];
    goto LABEL_235;
  }

  if (a3 == 95005)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_237;
    }

    v17 = [self _accessibilityAuditIssuesWithOptions:v7];
    goto LABEL_235;
  }

  if (a3 == 95006)
  {
    goto LABEL_45;
  }

  if (a3 != 95007)
  {
    goto LABEL_237;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_45:
    firstObject = 0;
  }

  else
  {
    [v7 pointValue];
    [self _accessibilitySetStartingPointForIsVisible:?];
    firstObject = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "_accessibilityIsVisibleByCompleteHitTest")}];
    [self _accessibilitySetStartingPointForIsVisible:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = [self _accessibilityUserTestingSnapshotWithOptions:v7];

    firstObject = v44;
  }

LABEL_236:
  if (!firstObject)
  {
    goto LABEL_237;
  }

LABEL_241:

  return firstObject;
}

- (id)_accessibilityTextualContext
{
  v2 = [self _accessibilityGetBlockForAttribute:36];
  v3 = v2;
  if (v2)
  {
    accessibilityTextualContext = (*(v2 + 16))(v2);
    v5 = AXSSTextualContextFromUITextualContext(accessibilityTextualContext);
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = accessibilityTextualContext;
    }

    v8 = v7;
  }

  else
  {
    accessibilityTextualContext = [self accessibilityTextualContext];
    if (!accessibilityTextualContext)
    {
      accessibilityContainer = [self accessibilityContainer];
      if (accessibilityContainer)
      {
        v10 = accessibilityContainer;
        while (1)
        {
          accessibilityTextualContext2 = [v10 accessibilityTextualContext];
          if (accessibilityTextualContext2)
          {
            break;
          }

          accessibilityTextualContext = [v10 accessibilityContainer];

          v10 = accessibilityTextualContext;
          if (!accessibilityTextualContext)
          {
            goto LABEL_14;
          }
        }

        accessibilityTextualContext = accessibilityTextualContext2;
LABEL_14:
      }

      else
      {
        accessibilityTextualContext = 0;
      }
    }

    v8 = AXSSTextualContextFromUITextualContext(accessibilityTextualContext);
  }

  return v8;
}

- (id)__accessibilityRetrieveFrameOrPathDelegate
{
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      _accessibilityFrameDelegate = [selfCopy _accessibilityFrameDelegate];

      if (!_accessibilityFrameDelegate)
      {
        if (![selfCopy _accessibilityBoolValueForKey:@"UIAccessibilityStorageKeyPlatformElementShouldUseAccessibilityNodeAsFrameDelegate"])
        {
          break;
        }

        v3 = [selfCopy safeValueForKey:@"accessibilityNodeForPlatformElement"];
        _accessibilityFrameDelegate = v3;
        if (v3 == selfCopy)
        {

          break;
        }

        if (!v3)
        {
          break;
        }
      }

      v4 = _accessibilityFrameDelegate;

      selfCopy = v4;
    }
  }

  return selfCopy;
}

- (double)_accessibilityFocusableFrameForZoom
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v2 = MEMORY[0x1E695EFF8];
  v13 = "";
  v14 = *MEMORY[0x1E695EFF8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__NSObject_AXPrivCategory___accessibilityFocusableFrameForZoom__block_invoke;
  v9[3] = &unk_1E78AACB0;
  v9[4] = &v10;
  [self _accessibilityIterateScrollParentsUsingBlock:v9];
  if (v11[4] == *v2 && v11[5] == v2[1])
  {
    v7 = *MEMORY[0x1E695F050];
  }

  else
  {
    __accessibilityRetrieveFrameOrPathDelegate = [self __accessibilityRetrieveFrameOrPathDelegate];
    [__accessibilityRetrieveFrameOrPathDelegate accessibilityFrame];
    v6 = v5;

    v7 = v6 - v11[4];
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (__CFString)_iosAccessibilityAttributeValue:()AXPrivCategory
{
  selfCopy = self;
  _accessibilityAXAttributedValue = 0;
  v207 = *MEMORY[0x1E69E9840];
  if (a3 <= 2700)
  {
    switch(a3)
    {
      case 2001:
        _accessibilityProcessedLabelAttribute = [self _accessibilityProcessedLabelAttribute];
        goto LABEL_19;
      case 2002:
        _accessibilityProcessedLabelAttribute = [self _accessibilityAXAttributedHint];
        goto LABEL_19;
      case 2003:
        __accessibilityRetrieveFrameOrPathDelegate = [self __accessibilityRetrieveFrameOrPathDelegate];
        [__accessibilityRetrieveFrameOrPathDelegate accessibilityFrame];
        x = v117;
        y = v118;
        width = v119;
        height = v120;

        goto LABEL_369;
      case 2004:
        if ([self _accessibilityShouldInheritTraits])
        {
          _accessibilityInheritedTraits = [selfCopy _accessibilityInheritedTraits];
        }

        else
        {
          _accessibilityInheritedTraits = [selfCopy accessibilityTraits];
        }

        v155 = _accessibilityInheritedTraits;
        _accessibilityIsScrollable = [selfCopy _accessibilityIsScrollable];
        v157 = UIAccessibilityTraitScrollable;
        if (!_accessibilityIsScrollable)
        {
          v157 = 0;
        }

        v158 = v157 | v155;
        if ([selfCopy _accessibilityHasTextOperations])
        {
          v159 = UIAccessibilityTraitTextOperationsAvailable;
        }

        else
        {
          v159 = 0;
        }

        _accessibilityReadAllContinuesWithScroll = [selfCopy _accessibilityReadAllContinuesWithScroll];
        v161 = *MEMORY[0x1E69DD9C0];
        if (!_accessibilityReadAllContinuesWithScroll)
        {
          v161 = 0;
        }

        v162 = v158 | v159 | v161;
        _accessibilityIsInTabBar = [selfCopy _accessibilityIsInTabBar];
        v164 = UIAccessibilityTraitTabButton;
        if (!_accessibilityIsInTabBar)
        {
          v164 = 0;
        }

        v165 = v162 | v164;
        v166 = [selfCopy _accessibilityGetBlockForAttribute:5];
        _accessibilityWindow = v166;
        if (v166)
        {
          v166 = (*(v166 + 16))(v166);
        }

        v166 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v165 | v166];
        goto LABEL_509;
      case 2005:
        _accessibilitySelectedTextRange = [self _accessibilitySelectedTextRange];
        goto LABEL_32;
      case 2006:
        _accessibilityAXAttributedValue = [self _accessibilityAXAttributedValue];
        accessibilitySpeechHint = [selfCopy accessibilitySpeechHint];
        if ([accessibilitySpeechHint count])
        {
          v49 = [selfCopy _accessibilityString:_accessibilityAXAttributedValue withSpeechHint:accessibilitySpeechHint];

          _accessibilityAXAttributedValue = v49;
        }

        goto LABEL_480;
      case 2007:
        [self accessibilityActivationPoint];
        if (v123 == -1.0 && v122 == -1.0)
        {
          v48 = MEMORY[0x1E696B098];
          v45 = -1.0;
          v47 = -1.0;
        }

        else
        {
          [selfCopy _accessibilityConvertSystemBoundedScreenRectToContextSpace:?];
          v126 = v125;
          v128 = v127;
          v130 = v129;
          v132 = v131;
          AXDeviceGetMainScreenBounds();
          v134 = v133;
          v136 = v135;
          v138 = v137;
          v140 = v139;
          v210.origin.x = v126;
          v210.origin.y = v128;
          v210.size.width = v130;
          v210.size.height = v132;
          v216.origin.x = v134;
          v216.origin.y = v136;
          v216.size.width = v138;
          v216.size.height = v140;
          if (CGRectIntersectsRect(v210, v216))
          {
            v211.origin.x = v134;
            v211.origin.y = v136;
            v211.size.width = v138;
            v211.size.height = v140;
            if (v126 > CGRectGetWidth(v211))
            {
              v212.origin.x = v134;
              v212.origin.y = v136;
              v212.size.width = v138;
              v212.size.height = v140;
              v126 = CGRectGetWidth(v212) * 0.5;
            }

            v213.origin.x = v134;
            v213.origin.y = v136;
            v213.size.width = v138;
            v213.size.height = v140;
            if (v128 > CGRectGetHeight(v213))
            {
              v214.origin.x = v134;
              v214.origin.y = v136;
              v214.size.width = v138;
              v214.size.height = v140;
              v128 = CGRectGetHeight(v214) * 0.5;
            }
          }

          v48 = MEMORY[0x1E696B098];
          v45 = v126;
          v47 = v128;
        }

        goto LABEL_502;
      case 2008:
        _accessibilityProcessedLabelAttribute = [self accessibilityLanguage];
        if (!_accessibilityProcessedLabelAttribute)
        {
          _accessibilityProcessedLabelAttribute = [*MEMORY[0x1E69DDA98] accessibilityLanguage];
        }

        goto LABEL_19;
      case 2009:
        _accessibilityProcessedLabelAttribute = [self _accessibilityScrollStatus];
        goto LABEL_19;
      case 2010:
        _accessibilityProcessedLabelAttribute = [self _accessibilityTextOperations];
        goto LABEL_19;
      case 2011:
        _accessibilityProcessedLabelAttribute = [self _accessibilityTextViewTextOperationResponder];
        goto LABEL_19;
      case 2012:
        _accessibilityProcessedLabelAttribute = [self _accessibilityTouchContainer];
        goto LABEL_19;
      case 2013:
        _accessibilityProcessedLabelAttribute = [self _accessibilityVisibleItemInList];
        goto LABEL_19;
      case 2014:
        v62 = 1;
        goto LABEL_384;
      case 2015:
        v62 = 0;
LABEL_384:
        _accessibilityProcessedLabelAttribute = [self _accessibilityContainerInDirection:v62];
        goto LABEL_19;
      case 2016:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self isAccessibilityElement];
        break;
      case 2017:
        _accessibilityProcessedLabelAttribute = [self _accessibilityApplication];
        goto LABEL_19;
      case 2018:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityElementIsFocused];
        break;
      case 2019:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self __accessibilitySupportsActivateAction];
        break;
      case 2020:
        _accessibilityProcessedLabelAttribute = [self accessibilityURL];
        goto LABEL_19;
      case 2021:
        v17 = MEMORY[0x1E696AD98];
        _accessibilityContextId = [self _accessibilityContextId];
        goto LABEL_353;
      case 2022:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsFirstSibling];
        break;
      case 2023:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsLastSibling];
        break;
      case 2024:
        _accessibilityProcessedLabelAttribute = [self accessibilityLinkedElement];
        goto LABEL_19;
      case 2025:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsVisibleByCompleteHitTest];
        break;
      case 2026:
        _accessibilityProcessedLabelAttribute = [self _accessibilityRetrieveHeaderElements];
        goto LABEL_19;
      case 2027:
        _accessibilitySelectedTextRange = [self _accessibilityRowRange];
        goto LABEL_32;
      case 2028:
        _accessibilitySelectedTextRange = [self _accessibilityColumnRange];
        goto LABEL_32;
      case 2029:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityRequired];
        break;
      case 2030:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityIsComboBox];
        break;
      case 2031:
        _accessibilityProcessedLabelAttribute = [self _accessibilityAutomaticIdentifier];
        goto LABEL_19;
      case 2032:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityWebSearchResultsActive];
        break;
      case 2033:
        _accessibilityProcessedLabelAttribute = [self accessibilityFlowToElements];
        goto LABEL_19;
      case 2034:
        _accessibilityAXAttributedValue = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "_accessibilityIsInTableCell")}];
        if (([(__CFString *)_accessibilityAXAttributedValue BOOLValue]& 1) != 0)
        {
          goto LABEL_20;
        }

        cGColor = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(selfCopy, "_accessibilityIsInCollectionCell")}];
        goto LABEL_466;
      case 2035:
      case 2037:
      case 2043:
      case 2090:
      case 2091:
      case 2097:
      case 2098:
      case 2112:
      case 2133:
      case 2134:
      case 2135:
      case 2136:
      case 2137:
      case 2138:
      case 2139:
      case 2146:
      case 2173:
      case 2245:
      case 2246:
      case 2247:
      case 2248:
      case 2249:
      case 2250:
      case 2251:
      case 2252:
      case 2253:
      case 2254:
      case 2255:
      case 2256:
      case 2257:
      case 2258:
      case 2259:
      case 2260:
      case 2261:
      case 2262:
      case 2263:
      case 2264:
      case 2265:
      case 2266:
      case 2267:
      case 2268:
      case 2269:
      case 2270:
      case 2271:
      case 2272:
      case 2273:
      case 2274:
      case 2275:
      case 2276:
      case 2277:
      case 2278:
      case 2279:
      case 2280:
      case 2281:
      case 2282:
      case 2283:
      case 2284:
      case 2285:
      case 2286:
      case 2287:
      case 2288:
      case 2289:
      case 2290:
      case 2291:
      case 2292:
      case 2293:
      case 2294:
      case 2295:
      case 2296:
      case 2297:
      case 2298:
      case 2299:
      case 2300:
      case 2303:
      case 2309:
      case 2321:
      case 2322:
      case 2323:
      case 2324:
      case 2325:
      case 2326:
      case 2327:
      case 2328:
      case 2329:
      case 2330:
      case 2331:
      case 2332:
      case 2333:
      case 2334:
      case 2335:
      case 2336:
      case 2337:
      case 2338:
      case 2339:
      case 2340:
      case 2341:
      case 2342:
      case 2343:
      case 2344:
      case 2345:
      case 2346:
      case 2347:
      case 2348:
      case 2349:
      case 2350:
      case 2351:
      case 2352:
      case 2353:
      case 2354:
      case 2355:
      case 2356:
      case 2357:
      case 2358:
      case 2359:
      case 2360:
      case 2361:
      case 2362:
      case 2363:
      case 2364:
      case 2365:
      case 2366:
      case 2367:
      case 2368:
      case 2369:
      case 2370:
      case 2371:
      case 2372:
      case 2373:
      case 2374:
      case 2375:
      case 2376:
      case 2377:
      case 2378:
      case 2379:
      case 2380:
      case 2381:
      case 2382:
      case 2383:
      case 2384:
      case 2385:
      case 2386:
      case 2387:
      case 2388:
      case 2389:
      case 2390:
      case 2391:
      case 2392:
      case 2393:
      case 2394:
      case 2395:
      case 2396:
      case 2397:
      case 2398:
      case 2399:
      case 2404:
      case 2405:
      case 2406:
      case 2407:
      case 2408:
      case 2409:
      case 2410:
      case 2411:
      case 2412:
      case 2413:
      case 2414:
      case 2415:
      case 2416:
      case 2417:
      case 2418:
      case 2419:
      case 2420:
      case 2421:
      case 2422:
      case 2423:
      case 2424:
      case 2425:
      case 2426:
      case 2427:
      case 2428:
      case 2429:
      case 2430:
      case 2431:
      case 2432:
      case 2433:
      case 2434:
      case 2435:
      case 2436:
      case 2437:
      case 2438:
      case 2439:
      case 2440:
      case 2441:
      case 2442:
      case 2443:
      case 2444:
      case 2445:
      case 2446:
      case 2447:
      case 2448:
      case 2449:
      case 2450:
      case 2451:
      case 2452:
      case 2453:
      case 2454:
      case 2455:
      case 2456:
      case 2457:
      case 2458:
      case 2459:
      case 2460:
      case 2461:
      case 2462:
      case 2463:
      case 2464:
      case 2465:
      case 2466:
      case 2467:
      case 2468:
      case 2469:
      case 2470:
      case 2471:
      case 2472:
      case 2473:
      case 2474:
      case 2475:
      case 2476:
      case 2477:
      case 2478:
      case 2479:
      case 2480:
      case 2481:
      case 2482:
      case 2483:
      case 2484:
      case 2485:
      case 2486:
      case 2487:
      case 2488:
      case 2489:
      case 2490:
      case 2491:
      case 2492:
      case 2493:
      case 2494:
      case 2495:
      case 2496:
      case 2497:
      case 2498:
      case 2499:
      case 2509:
      case 2510:
      case 2511:
      case 2512:
      case 2513:
      case 2514:
      case 2515:
      case 2516:
      case 2517:
      case 2518:
      case 2519:
      case 2520:
      case 2521:
      case 2522:
      case 2523:
      case 2524:
      case 2525:
      case 2526:
      case 2527:
      case 2528:
      case 2529:
      case 2530:
      case 2531:
      case 2532:
      case 2533:
      case 2534:
      case 2535:
      case 2536:
      case 2537:
      case 2538:
      case 2539:
      case 2540:
      case 2541:
      case 2542:
      case 2543:
      case 2544:
      case 2545:
      case 2546:
      case 2547:
      case 2548:
      case 2549:
      case 2550:
      case 2551:
      case 2552:
      case 2553:
      case 2554:
      case 2555:
      case 2556:
      case 2557:
      case 2558:
      case 2559:
      case 2560:
      case 2561:
      case 2562:
      case 2563:
      case 2564:
      case 2565:
      case 2566:
      case 2567:
      case 2568:
      case 2569:
      case 2570:
      case 2571:
      case 2572:
      case 2573:
      case 2574:
      case 2575:
      case 2576:
      case 2577:
      case 2578:
      case 2579:
      case 2580:
      case 2581:
      case 2582:
      case 2583:
      case 2584:
      case 2585:
      case 2586:
      case 2587:
      case 2588:
      case 2589:
      case 2590:
      case 2591:
      case 2592:
      case 2593:
      case 2594:
      case 2595:
      case 2596:
      case 2597:
      case 2598:
      case 2599:
        goto LABEL_20;
      case 2036:
        _accessibilityProcessedLabelAttribute = [self _accessibilityCustomActionNamesAndIdentifiers];
        goto LABEL_19;
      case 2038:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self __accessibilityReadAllOnFocus];
        break;
      case 2039:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsAwayAlertElement];
        break;
      case 2040:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsAwayAlertElementNew];
        break;
      case 2041:
        _accessibilityAXAttributedValue = [MEMORY[0x1E696AD60] string];
        accessibilitySpeechHint = [selfCopy accessibilityContainer];
        v36 = selfCopy;
        v37 = v36;
        if (v36 && accessibilitySpeechHint)
        {
          do
          {
            v38 = [accessibilitySpeechHint indexOfAccessibilityElement:v37];
            if (v38 == 0x7FFFFFFFFFFFFFFFLL)
            {
              if (objc_opt_respondsToSelector())
              {
                _accessibilitySubviews = [accessibilitySpeechHint _accessibilitySubviews];
                v38 = [_accessibilitySubviews indexOfObject:v37];
              }

              else
              {
                v38 = 0x7FFFFFFFFFFFFFFFLL;
              }
            }

            [(__CFString *)_accessibilityAXAttributedValue appendFormat:@"%ld-", v38];
            v40 = accessibilitySpeechHint;

            accessibilitySpeechHint = [v40 accessibilityContainer];

            v37 = v40;
          }

          while (accessibilitySpeechHint);
        }

        else
        {
          v40 = v36;
        }

        goto LABEL_480;
      case 2042:
        accessibilitySpeechHint = [self __accessibilityRetrieveFrameOrPathDelegate];
        accessibilityPath = [accessibilitySpeechHint accessibilityPath];
        _accessibilityAXAttributedValue = [selfCopy _accessibilityConvertSystemBoundedPathToContextSpace:accessibilityPath];

        goto LABEL_480;
      case 2044:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsInAppSwitcher];
        break;
      case 2045:
        _accessibilityProcessedLabelAttribute = [self accessibilityInvalidStatus];
        goto LABEL_19;
      case 2046:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsRemoteElement];
        break;
      case 2047:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _allowCustomActionHintSpeakOverride];
        break;
      case 2048:
        v26 = MEMORY[0x1E696AD98];
        _accessibilityMapFeatureType = [self _accessibilityMapFeatureType];
        goto LABEL_558;
      case 2049:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityLastHitTestNearBorder];
        break;
      case 2050:
        v96 = MEMORY[0x1E696B098];
        [self _accessibilityTextCursorFrame];
        goto LABEL_260;
      case 2051:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityShouldAnnounceFontInfo];
        break;
      case 2052:
        v67 = MEMORY[0x1E696AD98];
        [self _accessibilityActivationDelay];
        goto LABEL_472;
      case 2053:
        v65 = MEMORY[0x1E696AD98];
        _accessibilityAvailableAutoscrollDirections = [self _accessibilityAvailableAutoscrollDirections];
        goto LABEL_487;
      case 2054:
        _accessibilityProcessedLabelAttribute = [self _accessibilityAutoscrollTarget];
        goto LABEL_19;
      case 2055:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsAutoscrolling];
        break;
      case 2056:
      case 2088:
        _accessibilityAXAttributedValue = MEMORY[0x1E695E118];
        goto LABEL_20;
      case 2057:
        [self _accessibilityVisibleFrame];
        goto LABEL_372;
      case 2058:
        _accessibilityProcessedLabelAttribute = [self _accessibilityPhotoDescription];
        goto LABEL_19;
      case 2059:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityKeyboardKeyAllowsTouchTyping];
        break;
      case 2060:
        _accessibilityProcessedLabelAttribute = [self _accessibilityElementStoredUserLabel];
        goto LABEL_19;
      case 2061:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsEscapable];
        break;
      case 2062:
        [self _accessibilityVisiblePoint];
        v43 = v42;
        v44 = v41;
        v45 = -1.0;
        v46 = v43 == -1.0 && v41 == -1.0;
        v47 = -1.0;
        if (!v46)
        {
          [selfCopy _accessibilityConvertSystemBoundedScreenPointToContextSpace:{v43, v44}];
        }

        v48 = MEMORY[0x1E696B098];
        goto LABEL_502;
      case 2063:
        _accessibilityProcessedLabelAttribute = [self _accessibilitySupportGesturesAttributes];
        goto LABEL_19;
      case 2064:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityCanScrollInAtLeastOneDirection];
        break;
      case 2065:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self isAccessibilityOpaqueElementProvider];
        break;
      case 2066:
        _accessibilityProcessedLabelAttribute = [self _accessibilityOpaqueElementParent];
        goto LABEL_19;
      case 2067:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityRetainsCustomRotorActionSetting];
        break;
      case 2068:
        v81 = MEMORY[0x1E696AD98];
        [self _accessibilityDelayBeforeUpdatingOnActivation];
        goto LABEL_560;
      case 2069:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityOverridesInstructionsHint];
        break;
      case 2070:
        [self _accessibilityVisiblePointHitTestingAnyElement:0];
        if (v111 != -1.0 || v112 != -1.0)
        {
          [selfCopy _accessibilityConvertSystemBoundedScreenPointToContextSpace:{v111, v112}];
        }

        _accessibilityAXAttributedValue = [MEMORY[0x1E696B098] valueWithPoint:?];
        _accessibilityWindow = AXLogUIA();
        if (os_log_type_enabled(_accessibilityWindow, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v205 = _accessibilityAXAttributedValue;
          _os_log_impl(&dword_1A9B83000, _accessibilityWindow, OS_LOG_TYPE_INFO, "Return visible point: %@", buf, 0xCu);
        }

        goto LABEL_510;
      case 2071:
        _accessibilityProcessedLabelAttribute = [self _accessibilityEquivalenceTag];
        goto LABEL_19;
      case 2072:
        _accessibilityAXAttributedValue = @"<unavailable>";
        goto LABEL_20;
      case 2073:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityAllowsAlternativeCharacterActivation];
        break;
      case 2074:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityShouldSpeakScrollStatusOnEntry];
        break;
      case 2075:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityElementVisibilityAffectsLayout];
        break;
      case 2076:
        _accessibilityProcessedLabelAttribute = [self _accessibilityActiveKeyboard];
        if (!_accessibilityProcessedLabelAttribute)
        {
          _accessibilityProcessedLabelAttribute = [selfCopy _accessibilitySoftwareMimicKeyboard];
        }

        goto LABEL_19;
      case 2077:
        _accessibilityProcessedLabelAttribute = [self __accessibilityRoleDescription];
        goto LABEL_19;
      case 2078:
        v115 = MEMORY[0x1E696B098];
        _accessibilityIndexPathAsRange = [self _accessibilityIndexPathAsRange];
        v16 = v115;
        goto LABEL_33;
      case 2079:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self __accessibilitySupportsSecondaryActivateAction];
        break;
      case 2080:
        _accessibilityProcessedLabelAttribute = [self accessibilityImageOverlayElements];
        goto LABEL_19;
      case 2081:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsInFolder];
        break;
      case 2082:
        _accessibilityProcessedLabelAttribute = [self _accessibilityActiveURL];
        goto LABEL_19;
      case 2083:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityWebViewIsLoading];
        break;
      case 2084:
        _accessibilityProcessedLabelAttribute = [self _accessibilitySpeakThisElementsAndStrings];
        goto LABEL_19;
      case 2085:
        _accessibilityProcessedLabelAttribute = [self _accessibilitySpeakThisString];
        goto LABEL_19;
      case 2086:
        v11 = MEMORY[0x1E696AD98];
        _accessibilityHorizontalSizeClass = [self _accessibilityHorizontalSizeClass];
        goto LABEL_30;
      case 2087:
        v11 = MEMORY[0x1E696AD98];
        _accessibilityHorizontalSizeClass = [self _accessibilityVerticalSizeClass];
        goto LABEL_30;
      case 2089:
        _accessibilityProcessedLabelAttribute = [self _accessibilityPreferredScrollActions];
        goto LABEL_19;
      case 2092:
      case 2310:
        _accessibilityProcessedLabelAttribute = [self _accessibilityRemoteParent];
        goto LABEL_19;
      case 2093:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityShouldScrollRemoteParent];
        break;
      case 2094:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityHasNativeFocus];
        break;
      case 2095:
        _accessibilityProcessedLabelAttribute = [self _accessibilityAccessibleDescendants];
        goto LABEL_19;
      case 2096:
        _accessibilityProcessedLabelAttribute = [self _accessibilityAccessibleAncestor];
        goto LABEL_19;
      case 2099:
        _accessibilityWindow = [self _accessibilityWindow];
        if (![_accessibilityWindow _accessibilityIsIsolatedWindow])
        {
          goto LABEL_450;
        }

        v166 = _accessibilityWindow;
        goto LABEL_509;
      case 2100:
        _accessibilityProcessedLabelAttribute = [self _accessibilityElementCommunityIdentifier];
        goto LABEL_19;
      case 2101:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsUsingRemoteParentActivateAction];
        break;
      case 2102:
        _accessibilityProcessedLabelAttribute = [self _accessibilityTraitsInspectorHumanReadable];
        goto LABEL_19;
      case 2103:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityShouldSuppressCustomActionsHint];
        break;
      case 2104:
        _accessibilityProcessedLabelAttribute = [self _accessibilityTextInputElement];
        goto LABEL_19;
      case 2105:
        _accessibilityProcessedLabelAttribute = [self _accessibilityWebAreaURL];
        goto LABEL_19;
      case 2106:
        v64 = sel_accessibilityScrollRightPage;
        goto LABEL_367;
      case 2107:
        v64 = sel_accessibilityScrollLeftPage;
        goto LABEL_367;
      case 2108:
        v64 = sel_accessibilityScrollUpPage;
        goto LABEL_367;
      case 2109:
        v64 = sel_accessibilityScrollDownPage;
LABEL_367:
        _accessibilityProcessedLabelAttribute = [self _accessibilityScrollAncestorForSelector:v64];
        goto LABEL_19;
      case 2110:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilitySupportsPressedState];
        break;
      case 2111:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsPressed];
        break;
      case 2113:
        _accessibilityProcessedLabelAttribute = [self _accessibilityVisibleOpaqueElements];
        goto LABEL_19;
      case 2114:
        v26 = MEMORY[0x1E696AD98];
        _accessibilityMapFeatureType = [self _accessibilityExpandedStatus];
        goto LABEL_558;
      case 2115:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityRepresentsInfiniteCollection];
        break;
      case 2116:
        _accessibilityProcessedLabelAttribute = [self _accessibilityCurrentStatus];
        goto LABEL_19;
      case 2117:
        accessibilityARIARowIndex = [self accessibilityARIARowIndex];
        goto LABEL_216;
      case 2118:
        accessibilityARIARowIndex = [self accessibilityARIAColumnIndex];
LABEL_216:
        if (accessibilityARIARowIndex == 0x7FFFFFFFFFFFFFFFLL)
        {
          _accessibilityNotificationCount = 0x7FFFFFFFLL;
        }

        else
        {
          _accessibilityNotificationCount = accessibilityARIARowIndex;
        }

        v93 = MEMORY[0x1E696AD98];
        goto LABEL_442;
      case 2119:
        v51 = MEMORY[0x1E696AD98];
        accessibilityARIARowCount = [self accessibilityARIARowCount];
        goto LABEL_441;
      case 2120:
        v51 = MEMORY[0x1E696AD98];
        accessibilityARIARowCount = [self accessibilityARIAColumnCount];
        goto LABEL_441;
      case 2121:
        v51 = MEMORY[0x1E696AD98];
        accessibilityARIARowCount = [self _accessibilityRowCount];
        goto LABEL_441;
      case 2122:
        v51 = MEMORY[0x1E696AD98];
        accessibilityARIARowCount = [self _accessibilityColumnCount];
        goto LABEL_441;
      case 2123:
        v17 = MEMORY[0x1E696AD98];
        _accessibilityContextId = [self _accessibilityDisplayId];
        goto LABEL_353;
      case 2124:
        v105 = MEMORY[0x1E696B098];
        _accessibilityIndexPathAsRange = [self _accessibilityTextInputElementRangeAsNSRange];
        v16 = v105;
        goto LABEL_33;
      case 2125:
        _accessibilityProcessedLabelAttribute = [self _accessibilityAllContextDescriptors];
        goto LABEL_19;
      case 2126:
        v107 = MEMORY[0x1E69DDA98];
        [*MEMORY[0x1E69DDA98] setContextKitSearchEnabled:1];
        _accessibilitySpeakThisElementsAndStrings = [selfCopy _accessibilitySpeakThisElementsAndStrings];
        v109 = _accessibilityPostProcessContextKitData(_accessibilitySpeakThisElementsAndStrings);

        [*v107 setContextKitSearchEnabled:0];
        goto LABEL_467;
      case 2127:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityViewHierarchyHasNativeFocus];
        break;
      case 2128:
        _accessibilityProcessedLabelAttribute = [self _accessibilityPublicCustomRotors];
        goto LABEL_19;
      case 2129:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityBannerIsSticky];
        break;
      case 2130:
        __accessibilityRetrieveFrameOrPathDelegate2 = [self __accessibilityRetrieveFrameOrPathDelegate];
        [__accessibilityRetrieveFrameOrPathDelegate2 _accessibilityDirectInteractionFrame];
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v61 = v60;

        v34 = selfCopy;
        v30 = v55;
        v31 = v57;
        v32 = v59;
        v33 = v61;
        goto LABEL_116;
      case 2131:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityShouldSpeakExplorerElementsAfterFocus];
        break;
      case 2132:
        _accessibilityProcessedLabelAttribute = [self _accessibilityWatchAutoSpeakElements];
        goto LABEL_19;
      case 2140:
        _accessibilitySpeakThisPreferredHighlightColor = [self _accessibilitySpeakThisPreferredHighlightColor];
        goto LABEL_465;
      case 2141:
        _accessibilitySpeakThisPreferredHighlightColor = [self _accessibilitySpeakThisPreferredUnderlineColor];
        goto LABEL_465;
      case 2142:
        _accessibilityProcessedLabelAttribute = [self _accessibilityRemoteApplication];
        goto LABEL_19;
      case 2143:
        _accessibilityProcessedLabelAttribute = [self _accessibilityParentTableView];
        if (!_accessibilityProcessedLabelAttribute)
        {
          _accessibilityProcessedLabelAttribute = [selfCopy _accessibilityParentCollectionView];
        }

        goto LABEL_19;
      case 2144:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityHasBadge];
        break;
      case 2145:
        _accessibilityProcessedLabelAttribute = [self _accessibilityContainerTypes];
        goto LABEL_19;
      case 2147:
        v65 = MEMORY[0x1E696AD98];
        _accessibilityAvailableAutoscrollDirections = [self _accessibilityScanningBehaviorTraits];
        goto LABEL_487;
      case 2148:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityCanDisplayMultipleControllers];
        break;
      case 2149:
        [self _accessibilityFocusableFrameForZoom];
        x = v209.origin.x;
        y = v209.origin.y;
        width = v209.size.width;
        height = v209.size.height;
        if (CGRectIsNull(v209))
        {
          _accessibilityProcessedLabelAttribute = [selfCopy _iosAccessibilityAttributeValue:2003];
          goto LABEL_19;
        }

LABEL_369:
        v121 = selfCopy;
        v75 = x;
        v76 = y;
        v77 = width;
        v78 = height;
LABEL_373:
        [v121 _accessibilityConvertSystemBoundedScreenRectToContextSpace:{v75, v76, v77, v78}];
        goto LABEL_374;
      case 2150:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityScannerShouldUseActivateInPointMode];
        break;
      case 2151:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityFullscreenVideoViewIsVisible];
        break;
      case 2152:
        _accessibilityProcessedLabelAttribute = [self accessibilitySortDirection];
        goto LABEL_19;
      case 2153:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityShouldSetNativeFocusWhenATVFocused];
        break;
      case 2154:
        v63 = 0;
        goto LABEL_198;
      case 2155:
        v63 = 1;
LABEL_198:
        _accessibilityProcessedLabelAttribute = [self _accessibilityGuideElementInDirection:v63];
        goto LABEL_19;
      case 2156:
        _accessibilityProcessedLabelAttribute = [self accessibilityErrorMessageElements];
        goto LABEL_19;
      case 2157:
        v51 = MEMORY[0x1E696AD98];
        accessibilityARIARowCount = [self accessibilityBlockquoteLevel];
        goto LABEL_441;
      case 2158:
        _accessibilityAXAttributedValue = [self _iosAccessibilityAttributeValue:2006];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [(__CFString *)_accessibilityAXAttributedValue length]< 0x201)
        {
          goto LABEL_20;
        }

        cGColor = [(__CFString *)_accessibilityAXAttributedValue substringToIndex:512];
        goto LABEL_466;
      case 2159:
        v81 = MEMORY[0x1E696AD98];
        [self _accessibilityFontSize];
        goto LABEL_560;
      case 2160:
        v81 = MEMORY[0x1E696AD98];
        [self _accessibilityZoomScale];
        goto LABEL_560;
      case 2161:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityShouldIncludeRowRangeInElementDescription];
        break;
      case 2162:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsContainedByPreferredNativeFocusElement];
        break;
      case 2163:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityHasDragSources];
        break;
      case 2164:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityHasDragDestinations];
        break;
      case 2165:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsDraggableElementAttribute];
        break;
      case 2166:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsContainedByVideoElement];
        break;
      case 2167:
        _accessibilityProcessedLabelAttribute = [self _accessibilityRetrieveLinkedUIElementsFromContainerChain];
        goto LABEL_19;
      case 2168:
        v81 = MEMORY[0x1E696AD98];
        [self _accessibilityViewAlpha];
        goto LABEL_560;
      case 2169:
        _accessibilityProcessedLabelAttribute = [self _accessibilityGuideElementHeaderText];
        goto LABEL_19;
      case 2170:
        _accessibilityProcessedLabelAttribute = [self accessibilityDatetimeValue];
        goto LABEL_19;
      case 2171:
        [self accessibilityElementRect];
LABEL_372:
        v121 = selfCopy;
        goto LABEL_373;
      case 2172:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsScrollAncestor];
        break;
      case 2174:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityUseContextlessPassthroughForDrag];
        break;
      case 2175:
        _accessibilityProcessedLabelAttribute = [self _accessibilityDragSourceDescriptorDictionaryRepresentations];
        goto LABEL_19;
      case 2176:
        _accessibilityProcessedLabelAttribute = [self _accessibilityDropPointDescriptorDictionaryRepresentations];
        goto LABEL_19;
      case 2177:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityIsAttachmentElement];
        break;
      case 2178:
        _accessibilityProcessedLabelAttribute = [self _accessibilityCustomActionGroupIdentifier];
        goto LABEL_19;
      case 2179:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityIsMediaPlaying];
        break;
      case 2180:
        _accessibilityProcessedLabelAttribute = [self _accessibilityHeadingLevel];
        goto LABEL_19;
      case 2181:
        _accessibilityAXAttributedValue = [self _iosAccessibilityAttributeValue:2003];
        v71 = MEMORY[0x1E696B098];
        [(__CFString *)_accessibilityAXAttributedValue rectValue];
        cGColor = [v71 valueWithSize:{v72, v73}];
        goto LABEL_466;
      case 2182:
        _accessibilityAXAttributedValue = [self _iosAccessibilityAttributeValue:2003];
        v110 = MEMORY[0x1E696B098];
        [(__CFString *)_accessibilityAXAttributedValue rectValue];
        cGColor = [v110 valueWithPoint:?];
        goto LABEL_466;
      case 2183:
        _accessibilityProcessedLabelAttribute = [self _accessibilityElementForTextInsertionAndDeletion];
        goto LABEL_19;
      case 2184:
        _accessibilityProcessedLabelAttribute = [self _accessibilityGroupedParent];
        goto LABEL_19;
      case 2185:
        _accessibilityProcessedLabelAttribute = [self description];
        goto LABEL_19;
      case 2186:
        _accessibilityProcessedLabelAttribute = [self _accessibilityAXAttributedUserInputLabelsIncludingFallbacks];
        goto LABEL_19;
      case 2187:
        if ([self _accessibilityShouldApplySemanticGroupContainerType])
        {
          _accessibilityAXAttributedValue = &unk_1F1DC2680;
          goto LABEL_20;
        }

        v65 = MEMORY[0x1E696AD98];
        _accessibilityAvailableAutoscrollDirections = [selfCopy axContainerTypeFromUIKitContainerType:{objc_msgSend(selfCopy, "accessibilityContainerType")}];
LABEL_487:
        _accessibilityProcessedLabelAttribute = [v65 numberWithUnsignedLong:_accessibilityAvailableAutoscrollDirections];
        goto LABEL_19;
      case 2188:
        _accessibilityProcessedLabelAttribute = [self _accessibilityElementHelp];
        goto LABEL_19;
      case 2189:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityUpdatesSwitchMenu];
        break;
      case 2190:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityUseElementAtPositionAfterActivation];
        break;
      case 2191:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsStrongPasswordField];
        break;
      case 2192:
        v106 = MEMORY[0x1E696AD98];
        _accessibilityNotificationCount = [self _accessibilityNotificationCount];
        v93 = v106;
        goto LABEL_442;
      case 2193:
        _accessibilityProcessedLabelAttribute = [self _accessibilityTextualContext];
        goto LABEL_19;
      case 2194:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityKeyboardIsContinuousPathTracking];
        break;
      case 2195:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityKeyboardIsContinuousPathAvailable];
        break;
      case 2196:
        _accessibilityProcessedLabelAttribute = [self _accessibilityNextElementsForSpeakThis];
        goto LABEL_19;
      case 2197:
        _accessibilityProcessedLabelAttribute = [self _accessibilitySpeakThisLeafDescendants];
        goto LABEL_19;
      case 2198:
        v69 = MEMORY[0x1E696AD98];
        _accessibilityWindow = [self _accessibilityFindAncestor:&__block_literal_global_1107 startWithSelf:1];
        isFirstResponder = [_accessibilityWindow isFirstResponder];
        goto LABEL_211;
      case 2199:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityAllowsActivationWithoutBeingNativeFocused];
        break;
      case 2200:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityHasPopup];
        break;
      case 2201:
        _accessibilityProcessedLabelAttribute = [self accessibilityPopupValue];
        goto LABEL_19;
      case 2202:
        _accessibilityProcessedLabelAttribute = [self _accessibilityTouchContainerStartingWithSelf:0];
        goto LABEL_19;
      case 2203:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityShouldIncludeMediaDescriptionsRotor];
        break;
      case 2204:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityCanBecomeNativeFocused];
        break;
      case 2205:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityChildrenContainerGroupingBehaviorHasOverridingParentDelegate];
        break;
      case 2206:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityParentDiscardsChildrenContainerGroupingBehavior];
        break;
      case 2207:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsBannerNotificationElement];
        break;
      case 2208:
        _accessibilityProcessedLabelAttribute = [self _accessibilitySelectedChildren];
        goto LABEL_19;
      case 2209:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilitySkipImageTraitDescription];
        break;
      case 2210:
        _accessibilityCustomContent = [self _accessibilityCustomContent];
        if (!_accessibilityCustomContent)
        {
          goto LABEL_548;
        }

        v84 = _accessibilityCustomContent;
        v202 = 0;
        _accessibilityAXAttributedValue = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:_accessibilityCustomContent requiringSecureCoding:1 error:&v202];
        _accessibilityWindow = v202;

        if (!_accessibilityWindow)
        {
          goto LABEL_510;
        }

        v85 = AXRuntimeLogCommon();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          [NSObject(AXPrivCategory) _iosAccessibilityAttributeValue:];
        }

        goto LABEL_237;
      case 2211:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityRetainsFocusOnScreenChange];
        break;
      case 2212:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityIsInDescriptionListTerm];
        break;
      case 2213:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityIsInDescriptionListDefinition];
        break;
      case 2214:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityExpandedStatusTogglesOnActivate];
        break;
      case 2215:
        _accessibilityProcessedLabelAttribute = [self _accessibilityResolvedEditingStyles];
        goto LABEL_19;
      case 2216:
        _accessibilitySelectedTextRange = [self _accessibilityVisibleTextRange];
        goto LABEL_32;
      case 2217:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityShouldIncludeRemoteParentCustomActions];
        break;
      case 2218:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityShouldIncludeRegionDescription];
        break;
      case 2219:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsGroupedParent];
        break;
      case 2220:
        v51 = MEMORY[0x1E696AD98];
        accessibilityARIARowCount = [self accessibilitySemanticGroupChildrentCount];
        goto LABEL_441;
      case 2221:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIncludeRoleInGroupNavigationOnly];
        break;
      case 2222:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIncludeRoleDescription];
        break;
      case 2223:
        v17 = MEMORY[0x1E696AD98];
        _accessibilityContextId = [self _accessibilitySecureName];
        goto LABEL_353;
      case 2224:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityShouldUseHostContextIDForPress];
        break;
      case 2225:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityIsFirstItemInSuggestion];
        break;
      case 2226:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityIsLastItemInSuggestion];
        break;
      case 2227:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityIsInsertion];
        break;
      case 2228:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityIsDeletion];
        break;
      case 2229:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsInJindo];
        break;
      case 2230:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityIsMarkAnnotation];
        break;
      case 2231:
        _accessibilityProcessedLabelAttribute = [self _accessibilityFirstWebElement];
        goto LABEL_19;
      case 2232:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsMacVisualAppearance];
        break;
      case 2233:
        _accessibilityProcessedLabelAttribute = [self _accessibilityDirectTouchOptionsAttribute];
        goto LABEL_19;
      case 2234:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityShouldUseHostContextIDForTap];
        break;
      case 2235:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityShouldUseHostContextIDForLongPress];
        break;
      case 2236:
        v96 = MEMORY[0x1E696B098];
        [self _accessibilityKeyboardFrame];
LABEL_260:
        [selfCopy _accessibilityConvertSystemBoundedScreenRectToContextSpace:?];
        v103 = v96;
        goto LABEL_375;
      case 2237:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilityIsInNonNativeTextControl];
        break;
      case 2238:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsJindo];
        break;
      case 2239:
        _accessibilityProcessedLabelAttribute = [self _accessibilityTableIndexTitles];
        goto LABEL_19;
      case 2240:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityKeyboardIsEmojiInputMode];
        break;
      case 2241:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityKeyboardKeyCanStartContinuousPath];
        break;
      case 2242:
        _accessibilityProcessedLabelAttribute = [self _accessibilityScreenTextualContent];
        goto LABEL_19;
      case 2243:
        _accessibilityProcessedLabelAttribute = [self _accessibilityElementTextualContent];
        goto LABEL_19;
      case 2244:
        _accessibilityProcessedLabelAttribute = [self _accessibilityPreviousElementsForAccessibilityReader];
        goto LABEL_19;
      case 2301:
        if ([self conformsToProtocol:&unk_1F1E1E028])
        {
          bOOLValue = 1;
        }

        else
        {
          accessibilityTraits = [selfCopy accessibilityTraits];
          bOOLValue = (*MEMORY[0x1E6989008] & ~accessibilityTraits) == 0;
        }

        _accessibilitySupportsReadingContent = [selfCopy _accessibilitySupportsReadingContent];
        _accessibilityWindow = _accessibilitySupportsReadingContent;
        if (_accessibilitySupportsReadingContent)
        {
          bOOLValue = [_accessibilitySupportsReadingContent BOOLValue];
        }

        v91 = MEMORY[0x1E696AD98];
        v90 = bOOLValue;
        goto LABEL_485;
      case 2302:
        if ((objc_opt_respondsToSelector() & 1) == 0 || ([selfCopy accessibilityAttributedPageContent], (_accessibilityProcessedLabelAttribute = objc_claimAutoreleasedReturnValue()) == 0))
        {
          _accessibilityProcessedLabelAttribute = [selfCopy accessibilityPageContent];
          if (!_accessibilityProcessedLabelAttribute)
          {
            _accessibilityProcessedLabelAttribute = [selfCopy _accessibilityPageContent];
          }
        }

        goto LABEL_19;
      case 2304:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityBookShowsDualPages];
        break;
      case 2305:
        _accessibilityProcessedLabelAttribute = [self _accessibilityPageTextMarkerRange];
        goto LABEL_19;
      case 2306:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIncludeDuringContentReading];
        break;
      case 2307:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilitySupportsFrameForRange];
        break;
      case 2308:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilitySupportsRangeForLineNumber];
        break;
      case 2311:
        v69 = MEMORY[0x1E696AD98];
        _accessibilityWindow = [self _accessibilityContainerTypes];
        isFirstResponder = [_accessibilityWindow containsObject:&unk_1F1DC2698];
LABEL_211:
        v90 = isFirstResponder;
        v91 = v69;
LABEL_485:
        v166 = [v91 numberWithBool:v90];
        goto LABEL_509;
      case 2312:
        _accessibilityProcessedLabelAttribute = [self accessibilityPreviousTextNavigationElement];
        goto LABEL_19;
      case 2313:
        _accessibilityProcessedLabelAttribute = [self accessibilityNextTextNavigationElement];
        goto LABEL_19;
      case 2314:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityTouchContainerShouldOutputBraille];
        break;
      case 2315:
        _accessibilityCapturedImages = [self _accessibilityCapturedImages];
        _accessibilityAXAttributedValue = [MEMORY[0x1E695DF70] array];
        v193 = 0u;
        v194 = 0u;
        v195 = 0u;
        v196 = 0u;
        _accessibilityWindow = _accessibilityCapturedImages;
        v98 = [_accessibilityWindow countByEnumeratingWithState:&v193 objects:v206 count:16];
        if (v98)
        {
          v99 = v98;
          v100 = *v194;
          do
          {
            for (i = 0; i != v99; ++i)
            {
              if (*v194 != v100)
              {
                objc_enumerationMutation(_accessibilityWindow);
              }

              v102 = UIImagePNGRepresentation(*(*(&v193 + 1) + 8 * i));
              if (v102)
              {
                [(__CFString *)_accessibilityAXAttributedValue addObject:v102];
              }
            }

            v99 = [_accessibilityWindow countByEnumeratingWithState:&v193 objects:v206 count:16];
          }

          while (v99);
        }

        goto LABEL_510;
      case 2316:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self accessibilitySupportsTextSelection];
        break;
      case 2317:
        v6 = MEMORY[0x1E696AD98];
        v197 = MEMORY[0x1E69E9820];
        v198 = 3221225472;
        v199 = __60__NSObject_AXPrivCategory___iosAccessibilityAttributeValue___block_invoke_1125;
        v200 = &unk_1E78AABC0;
        selfCopy2 = self;
        isAccessibilityElement = __60__NSObject_AXPrivCategory___iosAccessibilityAttributeValue___block_invoke_1125();
        break;
      case 2318:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityElementServesAsHeadingLandmark];
        break;
      case 2319:
        _accessibilityBrailleMap = [self _accessibilityBrailleMap];
        if (!_accessibilityBrailleMap)
        {
          goto LABEL_548;
        }

        v95 = _accessibilityBrailleMap;
        v203 = 0;
        _accessibilityAXAttributedValue = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:_accessibilityBrailleMap requiringSecureCoding:1 error:&v203];
        _accessibilityWindow = v203;

        if (!_accessibilityWindow)
        {
          goto LABEL_510;
        }

        v85 = AXRuntimeLogCommon();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          [NSObject(AXPrivCategory) _iosAccessibilityAttributeValue:];
        }

LABEL_237:

        goto LABEL_510;
      case 2320:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsSwitch];
        break;
      case 2400:
        _accessibilityProcessedLabelAttribute = [self accessibilityMathEquation];
        goto LABEL_19;
      case 2401:
        _accessibilityProcessedLabelAttribute = [self accessibilityMathMLSource];
        goto LABEL_19;
      case 2402:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityShouldSpeakMathEquationTrait];
        break;
      case 2403:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityShouldExpandMathEquation];
        break;
      case 2500:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsTourGuideRunning];
        break;
      case 2501:
        _accessibilityProcessedLabelAttribute = [self _accessibilityMapsExplorationCurrentRoadsWithAngles];
        goto LABEL_19;
      case 2502:
        _accessibilityProcessedLabelAttribute = [self _accessibilityMapsExplorationCurrentLocation];
        goto LABEL_19;
      case 2503:
        _accessibilityProcessedLabelAttribute = [self _accessibilityMapsExplorationCurrentIntersectionDescription];
        goto LABEL_19;
      case 2504:
        _accessibilityProcessedLabelAttribute = [self _accessibilityMapsExplorationIncreaseVerbosity];
        goto LABEL_19;
      case 2505:
        _accessibilityProcessedLabelAttribute = [self _accessibilityMapsExplorationDecreaseVerbosity];
        goto LABEL_19;
      case 2506:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityMapsExplorationIsActive];
        break;
      case 2507:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityMapsExplorationIsPending];
        break;
      case 2508:
        _accessibilityProcessedLabelAttribute = [self _accessibilityMapSmartDescriptionDictionary];
        goto LABEL_19;
      case 2600:
        _accessibilityProcessedLabelAttribute = [self _accessibilityHandwritingElement];
        goto LABEL_19;
      case 2601:
        _accessibilityProcessedLabelAttribute = [self _accessibilityHandwritingAttributes];
        goto LABEL_19;
      case 2602:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityRequiresLaTeXInput];
        break;
      default:
        if (a3 == 1503)
        {
          v26 = MEMORY[0x1E696AD98];
          _accessibilityMapFeatureType = [self _accessibilityApplicationOrientation];
          goto LABEL_558;
        }

        if (a3 != 1522)
        {
          goto LABEL_20;
        }

        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsInMenuBar];
        break;
    }

LABEL_17:
    v8 = isAccessibilityElement;
    v9 = v6;
LABEL_18:
    _accessibilityProcessedLabelAttribute = [v9 numberWithBool:v8];
    goto LABEL_19;
  }

  if (a3 > 5000)
  {
    if (a3 <= 11999)
    {
      switch(a3)
      {
        case 5001:
          _accessibilityProcessedLabelAttribute = [self automationElements];
          goto LABEL_19;
        case 5002:
          _accessibilityProcessedLabelAttribute = [self _accessibilityUserTestingParent];
          goto LABEL_19;
        case 5003:
          _accessibilityProcessedLabelAttribute = [self _accessibilityUserTestingElementType];
          goto LABEL_19;
        case 5004:
          _accessibilityProcessedLabelAttribute = [self _accessibilityUserTestingElementBaseType];
          goto LABEL_19;
        case 5005:
          v67 = MEMORY[0x1E696AD98];
          [self _accessibilityMinValue];
          goto LABEL_471;
        case 5006:
          v67 = MEMORY[0x1E696AD98];
          [self _accessibilityMaxValue];
          goto LABEL_471;
        case 5007:
          [self _accessibilityMinScrubberPosition];
          goto LABEL_438;
        case 5008:
          [self _accessibilityMaxScrubberPosition];
LABEL_438:
          [selfCopy _accessibilityConvertSystemBoundedScreenPointToContextSpace:?];
          v48 = MEMORY[0x1E696B098];
          goto LABEL_502;
        case 5009:
          _accessibilityProcessedLabelAttribute = [self _accessibilityUserTestingElementAttributes];
          goto LABEL_19;
        case 5010:
          _accessibilityProcessedLabelAttribute = [*MEMORY[0x1E69DDA98] _accessibilityMainWindow];
          goto LABEL_19;
        case 5011:
          _accessibilityProcessedLabelAttribute = [self _accessibilityAbsoluteValue];
          goto LABEL_19;
        case 5012:
        case 5013:
        case 5040:
        case 5044:
        case 5060:
        case 5065:
        case 5066:
        case 5067:
          goto LABEL_20;
        case 5014:
          v11 = MEMORY[0x1E696AD98];
          _accessibilityHorizontalSizeClass = [self _accessibilityPageIndex];
          goto LABEL_30;
        case 5015:
          v11 = MEMORY[0x1E696AD98];
          _accessibilityHorizontalSizeClass = [self _accessibilityPageCount];
          goto LABEL_30;
        case 5016:
          _accessibilityProcessedLabelAttribute = [self _accessibilityUserTestingVisibleCells];
          goto LABEL_19;
        case 5017:
          _accessibilityProcessedLabelAttribute = [self _accessibilityUserTestingVisibleSections];
          goto LABEL_19;
        case 5018:
          v6 = MEMORY[0x1E696AD98];
          isAccessibilityElement = [self _accessibilityBackingElementIsValid];
          goto LABEL_17;
        case 5019:
          accessibilitySpeechHint = [self accessibilityIdentifier];
          v143 = [selfCopy _accessibilityPostProcessValueForAutomation:accessibilitySpeechHint];
          goto LABEL_415;
        case 5020:
          v6 = MEMORY[0x1E696AD98];
          isAccessibilityElement = [self _accessibilityIsTableCell];
          goto LABEL_17;
        case 5021:
          _accessibilityProcessedLabelAttribute = [self _accessibilityInputIdentifierForKeyboard];
          goto LABEL_19;
        case 5022:
          _accessibilityProcessedLabelAttribute = [self _accessibiltyAvailableKeyplanes];
          goto LABEL_19;
        case 5023:
          _accessibilityProcessedLabelAttribute = [self _accessibilityKeyboardKeyEnteredString];
          goto LABEL_19;
        case 5024:
          _accessibilityProcessedLabelAttribute = [self _accessibilityStatusBar];
          goto LABEL_19;
        case 5025:
          _accessibilityProcessedLabelAttribute = [self _accessibilityAncestry];
          goto LABEL_19;
        case 5026:
          v145 = MEMORY[0x1E696B098];
          v146 = 1;
          goto LABEL_436;
        case 5027:
          v145 = MEMORY[0x1E696B098];
          v146 = 0;
LABEL_436:
          [self __accessibilityVisibleScrollArea:v146];
          v48 = v145;
LABEL_502:
          _accessibilityProcessedLabelAttribute = [v48 valueWithPoint:{v45, v47}];
          goto LABEL_19;
        case 5028:
          v6 = MEMORY[0x1E696AD98];
          isAccessibilityElement = [self _accessibilityAnimationsInProgress];
          goto LABEL_17;
        case 5029:
          _accessibilityProcessedLabelAttribute = [self _accessibilityDOMAttributes];
          goto LABEL_19;
        case 5030:
          v11 = MEMORY[0x1E696AD98];
          _accessibilityHorizontalSizeClass = [self _accessibilityUserTestingChildrenCount];
          goto LABEL_30;
        case 5031:
          v26 = MEMORY[0x1E696AD98];
          _accessibilityMapFeatureType = [self _accessibilityPickerType];
          goto LABEL_558;
        case 5032:
          v51 = MEMORY[0x1E696AD98];
          accessibilityARIARowCount = [self _accessibilityDatePickerComponentType];
LABEL_441:
          _accessibilityNotificationCount = accessibilityARIARowCount;
          v93 = v51;
LABEL_442:
          _accessibilityProcessedLabelAttribute = [v93 numberWithUnsignedInteger:_accessibilityNotificationCount];
          goto LABEL_19;
        case 5033:
          _accessibilityProcessedLabelAttribute = [self _accessibilityDateTimePickerValues];
          goto LABEL_19;
        case 5034:
          v6 = MEMORY[0x1E696AD98];
          isAccessibilityElement = [self _accessibilityIsUserInteractionEnabled];
          goto LABEL_17;
        case 5035:
          v6 = MEMORY[0x1E696AD98];
          isAccessibilityElement = [self _accessibilityKeyboardSupportsGestureMode];
          goto LABEL_17;
        case 5036:
          v6 = MEMORY[0x1E696AD98];
          isAccessibilityElement = [self _accessibilityFauxCollectionViewCellsDisabled];
          goto LABEL_17;
        case 5037:
          v6 = MEMORY[0x1E696AD98];
          isAccessibilityElement = [self _accessibilityIsStarkElement];
          goto LABEL_17;
        case 5038:
          _accessibilityProcessedLabelAttribute = [self _accessibilityUserTestingActionIdentifiers];
          goto LABEL_19;
        case 5039:
          _accessibilityProcessedLabelAttribute = [self _accessibilityUserTestingSnapshot];
          goto LABEL_19;
        case 5041:
          buf[0] = 0;
          objc_opt_class();
          _accessibilityViewController = [selfCopy _accessibilityViewController];
          _accessibilityWindow = __UIAccessibilityCastAsClass();

          if (!_accessibilityWindow)
          {
            goto LABEL_450;
          }

          v166 = [_accessibilityWindow title];
          goto LABEL_509;
        case 5042:
          _accessibilityWindow = [self _accessibilityViewController];
          if (_accessibilityWindow)
          {
            v144 = objc_opt_class();
            v166 = NSStringFromClass(v144);
            goto LABEL_509;
          }

LABEL_450:
          _accessibilityAXAttributedValue = 0;
          goto LABEL_510;
        case 5043:
          _accessibilityProcessedLabelAttribute = [self accessibilityPlaceholderValue];
          goto LABEL_19;
        case 5045:
          v150 = objc_opt_class();
          _accessibilityProcessedLabelAttribute = NSStringFromClass(v150);
          goto LABEL_19;
        case 5046:
          _accessibilityProcessedLabelAttribute = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
          goto LABEL_19;
        case 5047:
          _accessibilityProcessedLabelAttribute = [self accessibilityLocalizedStringKey];
          goto LABEL_19;
        case 5048:
          _accessibilityProcessedLabelAttribute = [self accessibilityLocalizationBundleID];
          goto LABEL_19;
        case 5049:
          _accessibilityProcessedLabelAttribute = [self accessibilityLocalizationBundlePath];
          goto LABEL_19;
        case 5050:
          _accessibilityProcessedLabelAttribute = [self accessibilityLocalizedStringTableName];
          goto LABEL_19;
        case 5051:
          v6 = MEMORY[0x1E696AD98];
          isAccessibilityElement = [self _accessibilityFauxTableViewCellsDisabled];
          goto LABEL_17;
        case 5052:
          self = *MEMORY[0x1E69DDA98];
          v20 = @"AXSpeakSelectionLastSpokenString";
          goto LABEL_422;
        case 5053:
          v81 = MEMORY[0x1E696AD98];
          [*MEMORY[0x1E69DDA98] _accessibilityMagnifierZoomLevel];
          goto LABEL_560;
        case 5054:
          _accessibilityProcessedLabelAttribute = [self _accessibilityVerticalScrollBarElement];
          goto LABEL_19;
        case 5055:
          _accessibilityProcessedLabelAttribute = [self _accessibilityHorizontalScrollBarElement];
          goto LABEL_19;
        case 5056:
          v6 = MEMORY[0x1E696AD98];
          isAccessibilityElement = [self _accessibilityIsScrollBarIndicator];
          goto LABEL_17;
        case 5057:
          v26 = MEMORY[0x1E696AD98];
          _accessibilityMapFeatureType = [self _accessibilityOrientation];
          goto LABEL_558;
        case 5058:
          _accessibilityProcessedLabelAttribute = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(self, "_accessibilityAutomationType")}];
          goto LABEL_19;
        case 5059:
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v167 = selfCopy;
            v168 = 2006;
            goto LABEL_575;
          }

          v67 = MEMORY[0x1E696AD98];
          [selfCopy _accessibilityNumberValue];
LABEL_471:
          *&v68 = v68;
LABEL_472:
          _accessibilityProcessedLabelAttribute = [v67 numberWithFloat:v68];
          break;
        case 5061:
          _accessibilityProcessedLabelAttribute = [self _accessibilityWindowSections];
          goto LABEL_19;
        case 5062:
          _accessibilityProcessedLabelAttribute = [self automationCustomProperties];
          goto LABEL_19;
        case 5063:
          _accessibilityProcessedLabelAttribute = [self automationSystemProperties];
          goto LABEL_19;
        case 5064:
          v142 = MEMORY[0x1E696B098];
          [self _accessibilityContentOffset];
          _accessibilityProcessedLabelAttribute = [v142 valueWithCGPoint:?];
          goto LABEL_19;
        case 5068:
          v149 = MEMORY[0x1E696AD98];
          _accessibilityWindow = [self _accessibilityFirstResponderForKeyWindow];
          v166 = [v149 numberWithUnsignedInteger:{-[NSObject _accessibilityBoundaryEdges](_accessibilityWindow, "_accessibilityBoundaryEdges")}];
          goto LABEL_509;
        case 5069:
          _accessibilitySpeakThisPreferredHighlightColor = [self _accessibilityForegroundTextColorAttribute];
          goto LABEL_465;
        case 5070:
          _accessibilitySpeakThisPreferredHighlightColor = [self _accessibilityBackgroundTextColorAttribute];
LABEL_465:
          _accessibilityAXAttributedValue = _accessibilitySpeakThisPreferredHighlightColor;
          cGColor = [(__CFString *)_accessibilitySpeakThisPreferredHighlightColor CGColor];
          goto LABEL_466;
        case 5071:
          v141 = MEMORY[0x1E696AD98];
          _accessibilityWindow = [self _accessibilityFirstResponderForKeyWindow];
          v166 = [v141 numberWithInteger:{-[NSObject _accessibilityDigitalCrownScrollAmount](_accessibilityWindow, "_accessibilityDigitalCrownScrollAmount")}];
          goto LABEL_509;
        case 5072:
          v148 = MEMORY[0x1E696B098];
          [self _accessibilityContentSize];
          _accessibilityProcessedLabelAttribute = [v148 valueWithSize:?];
          goto LABEL_19;
        default:
          if (a3 != 9000)
          {
            goto LABEL_20;
          }

          [self _accessibilityGesturePracticeRegion];
          v34 = selfCopy;
LABEL_116:
          [v34 _accessibilityConvertSystemBoundedScreenRectToContextSpace:{v30, v31, v32, v33}];
          _accessibilityProcessedLabelAttribute = [MEMORY[0x1E696B098] valueWithRect:?];
          goto LABEL_19;
      }

      goto LABEL_19;
    }

    switch(a3)
    {
      case 12000:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsScannerElement];
        goto LABEL_17;
      case 12001:
      case 12005:
        goto LABEL_20;
      case 12002:
        _accessibilityProcessedLabelAttribute = [self _accessibilityVariantKeys];
        goto LABEL_19;
      case 12003:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityHasVariantKeys];
        goto LABEL_17;
      case 12004:
        v26 = MEMORY[0x1E696AD98];
        _accessibilityMapFeatureType = [self _accessibilityScannerActivateBehavior];
        goto LABEL_558;
      case 12006:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityKeyboardKeyHasSignificantAlternateActions];
        goto LABEL_17;
      case 12007:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityHandlesTabKey];
        goto LABEL_17;
      case 12008:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityHandlesRemoteFocusMovement];
        goto LABEL_17;
      case 12009:
        v24 = MEMORY[0x1E696AD98];
        _accessibilityRemotePid = [self _accessibilityRemotePid];
        goto LABEL_55;
      case 12010:
        v24 = MEMORY[0x1E696AD98];
        _accessibilityRemotePid = [self _accessibilityHostPid];
LABEL_55:
        _accessibilityProcessedLabelAttribute = [v24 numberWithInt:_accessibilityRemotePid];
        goto LABEL_19;
      case 12011:
        _accessibilityProcessedLabelAttribute = [self _accessibilityFKAArrowKeysHandled];
        goto LABEL_19;
      case 12012:
        v28 = AXRemoteElementFromObject();
        _accessibilityWindow = v28;
        v29 = MEMORY[0x1E696AD98];
        if (v28)
        {
          onClientSide = [v28 onClientSide];
        }

        else
        {
          onClientSide = 0;
        }

        v169 = v29;
        goto LABEL_508;
      case 12013:
        v21 = AXRemoteElementFromObject();
        _accessibilityWindow = v21;
        if (v21)
        {
          onClientSide = [v21 remotePid];
        }

        else
        {
          onClientSide = 0;
        }

        v169 = MEMORY[0x1E696AD98];
LABEL_508:
        v166 = [v169 numberWithInt:onClientSide];
        goto LABEL_509;
      case 12014:
        _accessibilityProcessedLabelAttribute = [self _accessibilityRemoteSceneID];
        goto LABEL_19;
      case 12015:
        v20 = @"_promoteSwitchControlMenuItemsKey";
LABEL_422:
        _accessibilityProcessedLabelAttribute = [self _accessibilityValueForKey:v20];
        goto LABEL_19;
      case 12016:
        _accessibilityProcessedLabelAttribute = [self _accessibilityTapReplacementGestures];
        goto LABEL_19;
      case 12017:
        _accessibilityProcessedLabelAttribute = [self _accessibilityScannerGroupElements];
        goto LABEL_19;
      default:
        if (a3 == 13001)
        {
          _accessibilityProcessedLabelAttribute = [self _accessibilitySemanticContext];
          goto LABEL_19;
        }

        if (a3 != 13002)
        {
          goto LABEL_20;
        }

        if ([self _accessibilityUnfocusableViewCanBeFocusedForFocusEverywhere])
        {
          v19 = 1;
        }

        else
        {
          v151 = [selfCopy _accessibilityGetBlockForAttribute:5010];
          v152 = v151;
          if (v151)
          {
            v19 = (*(v151 + 16))(v151);
          }

          else
          {
            v19 = 0;
          }
        }

        v9 = MEMORY[0x1E696AD98];
        v8 = v19;
        break;
    }

    goto LABEL_18;
  }

  if (a3 <= 4000)
  {
    switch(a3)
    {
      case 3000:
        _accessibilityProcessedLabelAttribute = [self _accessibilityFirstElement];
        goto LABEL_19;
      case 3001:
      case 3004:
      case 3005:
      case 3010:
      case 3011:
      case 3012:
      case 3013:
      case 3016:
      case 3017:
      case 3018:
      case 3019:
      case 3023:
      case 3027:
      case 3034:
      case 3035:
      case 3036:
      case 3037:
      case 3040:
      case 3043:
      case 3044:
      case 3045:
      case 3047:
      case 3050:
      case 3051:
      case 3052:
      case 3054:
      case 3060:
      case 3061:
      case 3062:
      case 3063:
      case 3068:
      case 3069:
      case 3071:
      case 3072:
        goto LABEL_20;
      case 3002:
        accessibilityTextInputResponder = [self accessibilityTextInputResponder];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          accessibilityTextInputResponder2 = [selfCopy accessibilityTextInputResponder];
          isFirstResponder2 = [accessibilityTextInputResponder2 isFirstResponder];

          if (isFirstResponder2)
          {
            _accessibilityProcessedLabelAttribute = [selfCopy accessibilityTextInputResponder];
            goto LABEL_19;
          }
        }

        else
        {
        }

        v167 = *MEMORY[0x1E69DDA98];
        v168 = 3002;
LABEL_575:
        _accessibilityProcessedLabelAttribute = [v167 _iosAccessibilityAttributeValue:v168];
        break;
      case 3003:
        _accessibilityProcessedLabelAttribute = [self _accessibilityBundleIdentifier];
        goto LABEL_19;
      case 3006:
        _accessibilityAXAttributedValue = [self accessibilityTitleElement];
        cGColor = [MEMORY[0x1E695DEC8] axArrayByIgnoringNilElementsWithCount:{1, _accessibilityAXAttributedValue}];
        goto LABEL_466;
      case 3007:
        _accessibilityProcessedLabelAttribute = _UIAXLastKeyboardUsed();
        goto LABEL_19;
      case 3008:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityCameraIrisOpen];
        goto LABEL_17;
      case 3009:
        _accessibilityProcessedLabelAttribute = [self _accessibilityFirstElementForFocus];
        goto LABEL_19;
      case 3014:
        _accessibilityProcessedLabelAttribute = [self _accessibilitySupportedLanguages];
        goto LABEL_19;
      case 3015:
        _accessibilityProcessedLabelAttribute = [self _accessibilityVisibleElementsHonoringGroups:0];
        goto LABEL_19;
      case 3020:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsInternationalKeyboardKey];
        goto LABEL_17;
      case 3021:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsAccessibilityUIServer];
        goto LABEL_17;
      case 3022:
        _accessibilityProcessedLabelAttribute = [self _accessibilityExplorerElements];
        goto LABEL_19;
      case 3024:
        _accessibilityProcessedLabelAttribute = [self _accessibilityNativeFocusElement];
        goto LABEL_19;
      case 3025:
      case 3032:
        _accessibilityProcessedLabelAttribute = [self _accessibilityElementsWithSemanticContext:0];
        goto LABEL_19;
      case 3026:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsRTL];
        goto LABEL_17;
      case 3028:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityIsSoftwareKeyboardMimic];
        goto LABEL_17;
      case 3029:
      case 3031:
        _accessibilityProcessedLabelAttribute = [self _accessibilityNativeFocusableElements:0];
        goto LABEL_19;
      case 3030:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilitySupportsDirectioOrbManipulation];
        goto LABEL_17;
      case 3033:
        _accessibilityProcessedLabelAttribute = [self accessibilityExpandedTextValue];
        goto LABEL_19;
      case 3038:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityRealtimeCompleted];
        goto LABEL_17;
      case 3039:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityRealtimeHasUnread];
        goto LABEL_17;
      case 3041:
        _accessibilityWindow = [MEMORY[0x1E696AE30] processInfo];
        v166 = [_accessibilityWindow processName];
LABEL_509:
        _accessibilityAXAttributedValue = v166;
LABEL_510:

        goto LABEL_20;
      case 3042:
        _accessibilityProcessedLabelAttribute = [self accessibilityLinkRelationshipType];
        goto LABEL_19;
      case 3046:
        _accessibilityProcessedLabelAttribute = [self _accessibilityFirstElementsForSpeakThis];
        goto LABEL_19;
      case 3048:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityHasNativeFocusableElements];
        goto LABEL_17;
      case 3049:
        _accessibilityProcessedLabelAttribute = [self _accessibilityFocusRingAncestor];
        goto LABEL_19;
      case 3053:
        _accessibilityProcessedLabelAttribute = [self accessibilityVisibleText];
        goto LABEL_19;
      case 3055:
        _accessibilityProcessedLabelAttribute = [self _accessibilityWindow];
        goto LABEL_19;
      case 3056:
        _accessibilityProcessedLabelAttribute = [self _accessibilityWindowSceneIdentifier];
        goto LABEL_19;
      case 3057:
        _accessibilityProcessedLabelAttribute = [self _accessibility2DBrailleCanvasElement];
        goto LABEL_19;
      case 3058:
        [self accessibilityBrailleMapRenderRegion];
        v173 = v215.origin.x;
        v174 = v215.origin.y;
        v175 = v215.size.width;
        v176 = v215.size.height;
        if (CGRectIsEmpty(v215))
        {
LABEL_548:
          _accessibilityAXAttributedValue = 0;
        }

        else
        {
          accessibilitySpeechHint = [selfCopy _accessibilityParentView];
          window = [accessibilitySpeechHint window];
          [accessibilitySpeechHint convertRect:window toView:{v173, v174, v175, v176}];
          [selfCopy _accessibilityConvertSystemBoundedScreenRectToContextSpace:?];
          v186 = v185;
          v188 = v187;
          v190 = v189;
          v192 = v191;

          v143 = [MEMORY[0x1E696B098] valueWithRect:{v186, v188, v190, v192}];
LABEL_415:
          _accessibilityAXAttributedValue = v143;
LABEL_480:
        }

        goto LABEL_20;
      case 3059:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityElementHasImage];
        goto LABEL_17;
      case 3064:
        mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
        preferredLocalizations = [mainBundle preferredLocalizations];
        firstObject = [preferredLocalizations firstObject];

        _accessibilityAXAttributedValue = firstObject;
        goto LABEL_20;
      case 3065:
        _accessibilityProcessedLabelAttribute = [MEMORY[0x1E696AD98] numberWithLongLong:BSGetVersionedPID()];
        goto LABEL_19;
      case 3066:
        v6 = MEMORY[0x1E696AD98];
        isAccessibilityElement = [self _accessibilityApplicationIsRTL];
        goto LABEL_17;
      case 3067:
        _accessibilityProcessedLabelAttribute = [self _accessibilityRuntimeElementTransactionSummary];
        goto LABEL_19;
      case 3070:
        _accessibilityProcessedLabelAttribute = [self _accessibilityGetAllScrollViews];
        goto LABEL_19;
      case 3073:
        _accessibilityProcessedLabelAttribute = [self _accessibilityChildrenForContinuityDisplay];
        goto LABEL_19;
      case 3074:
        _accessibilityAXAttributedValue = [self _accessibilityTraversalWindows];
        cGColor = [(__CFString *)_accessibilityAXAttributedValue ax_filteredArrayUsingBlock:&__block_literal_global_1155];
LABEL_466:
        v109 = cGColor;

LABEL_467:
        _accessibilityAXAttributedValue = v109;
        goto LABEL_20;
      default:
        switch(a3)
        {
          case 2701:
            v17 = MEMORY[0x1E696AD98];
            _accessibilityContextId = [self _accessibilityEffectiveMediaAnalysisOptions];
LABEL_353:
            _accessibilityProcessedLabelAttribute = [v17 numberWithUnsignedInt:_accessibilityContextId];
            goto LABEL_19;
          case 2702:
            _accessibilityProcessedLabelAttribute = [self _accessibilityDataSeriesName];
            goto LABEL_19;
          case 2703:
            v26 = MEMORY[0x1E696AD98];
            _accessibilityMapFeatureType = [self _accessibilityDataSeriesType];
LABEL_558:
            _accessibilityProcessedLabelAttribute = [v26 numberWithLong:_accessibilityMapFeatureType];
            goto LABEL_19;
          case 2704:
            v81 = MEMORY[0x1E696AD98];
            [self _accessibilityDataSeriesSonificationDuration];
LABEL_560:
            _accessibilityProcessedLabelAttribute = [v81 numberWithDouble:?];
            goto LABEL_19;
          case 2705:
            v6 = MEMORY[0x1E696AD98];
            isAccessibilityElement = [self _accessibilityDataSeriesSupportsSummarization];
            goto LABEL_17;
          case 2706:
            v6 = MEMORY[0x1E696AD98];
            isAccessibilityElement = [self _accessibilityDataSeriesSupportsSonification];
            goto LABEL_17;
          case 2707:
            v6 = MEMORY[0x1E696AD98];
            isAccessibilityElement = [self _accessibilityDataSeriesIncludesTrendlineInSonification];
            goto LABEL_17;
          case 2709:
            [self _accessibilityMediaAnalysisFrame];
LABEL_374:
            v103 = MEMORY[0x1E696B098];
LABEL_375:
            _accessibilityProcessedLabelAttribute = [v103 valueWithRect:?];
            goto LABEL_19;
          case 2710:
            _accessibilityProcessedLabelAttribute = [self _accessibilityMediaAnalysisElement];
            goto LABEL_19;
          case 2711:
            _accessibilityAXAttributedValue = [self _accessibilityChartDescriptor];
            cGColor = [(__CFString *)_accessibilityAXAttributedValue dictionaryRepresentation];
            goto LABEL_466;
          case 2712:
            _accessibilityChartElement = [self _accessibilityChartElement];
            accessibilityChartDescriptor = [_accessibilityChartElement accessibilityChartDescriptor];
            identifier = [accessibilityChartDescriptor identifier];
            uUIDString = [identifier UUIDString];

            _accessibilityAXAttributedValue = uUIDString;
            break;
          case 2713:
            v6 = MEMORY[0x1E696AD98];
            isAccessibilityElement = [self _accessibilitySupportsAudiographs];
            goto LABEL_17;
          case 2714:
            _accessibilityProcessedLabelAttribute = [self _accessibilityChartElement];
            goto LABEL_19;
          case 2717:
            _accessibilityProcessedLabelAttribute = [self _accessibilityPHAssetLocalIdentifier];
            goto LABEL_19;
          case 2718:
            _accessibilityProcessedLabelAttribute = [self _accessibilityChartStructureDescription];
            goto LABEL_19;
          case 2719:
            v6 = MEMORY[0x1E696AD98];
            isAccessibilityElement = [self _accessibilityIsPHAssetLocallyAvailable];
            goto LABEL_17;
          case 2720:
            _accessibilityProcessedLabelAttribute = [self _accessibilityPhotoLibraryURL];
            goto LABEL_19;
          case 2721:
            _accessibilityProcessedLabelAttribute = [self _accessibilityFBSceneIdentifier];
            goto LABEL_19;
          default:
            goto LABEL_20;
        }

        goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a3 > 4003)
  {
    if (a3 == 4004)
    {
      _accessibilityProcessedLabelAttribute = [self _accessibilityTextMarkerRangeForSelection];
      goto LABEL_19;
    }

    if (a3 == 4005)
    {
      _accessibilitySelectedTextRange = [self _accessibilitySelectedNSRangeForObject];
LABEL_32:
      _accessibilityIndexPathAsRange = _accessibilitySelectedTextRange;
      v16 = MEMORY[0x1E696B098];
LABEL_33:
      _accessibilityProcessedLabelAttribute = [v16 valueWithRange:{_accessibilityIndexPathAsRange, v14}];
      goto LABEL_19;
    }

    if (a3 != 4006)
    {
      goto LABEL_20;
    }

    v6 = MEMORY[0x1E696AD98];
    isAccessibilityElement = [self _accessibilityHoverTypingShouldAdjustDockedMode];
    goto LABEL_17;
  }

  if (a3 == 4001)
  {
    v11 = MEMORY[0x1E696AD98];
    _accessibilityHorizontalSizeClass = [self _accessibilityLineStartPosition];
LABEL_30:
    _accessibilityProcessedLabelAttribute = [v11 numberWithInteger:_accessibilityHorizontalSizeClass];
    goto LABEL_19;
  }

  if (a3 == 4002)
  {
    v11 = MEMORY[0x1E696AD98];
    _accessibilityHorizontalSizeClass = [self _accessibilityLineEndPosition];
    goto LABEL_30;
  }

  _accessibilityProcessedLabelAttribute = [self _accessibilityTextMarkerRange];
LABEL_19:
  _accessibilityAXAttributedValue = _accessibilityProcessedLabelAttribute;
LABEL_20:

  return _accessibilityAXAttributedValue;
}

- (void)_iosAccessibilitySetValue:()AXPrivCategory forAttribute:
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a4 <= 3001)
  {
    if (a4 > 2207)
    {
      if (a4 > 2707)
      {
        if (a4 == 2708)
        {
          if (objc_opt_respondsToSelector())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v7 doubleValue];
              [self _accessibilityDidChangeSonificationPlaybackPosition:?];
            }
          }
        }

        else if (a4 == 2716)
        {
          [self _accessibilitySonificationPlaybackStatusChanged:{objc_msgSend(v6, "unsignedIntegerValue")}];
        }
      }

      else if (a4 == 2208)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [self _accessibilitySetSelectedChildren:v7];
        }
      }

      else if (a4 == 2303)
      {
        [self _accessibilitySetCurrentWordInPageContext:v6];
      }
    }

    else if (a4 > 2017)
    {
      if (a4 == 2018)
      {
        objc_opt_class();
        v8 = __UIAccessibilityCastAsClass();
        v15 = [v8 objectForKeyedSubscript:@"focused"];
        bOOLValue = [v15 BOOLValue];
        v17 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6988CF0]];
        [self _accessibilityHandleATFocused:bOOLValue assistiveTech:v17];

        goto LABEL_57;
      }

      if (a4 == 2054)
      {
        [self _accessibilitySetAutoscrollTarget:v6];
      }
    }

    else
    {
      if (a4 == 2005)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          rangeValue = [v7 rangeValue];
          [self _accessibilitySetSelectedTextRange:{rangeValue, v20}];
          goto LABEL_58;
        }

        v8 = v7;
        firstObject = [v8 firstObject];
        rangeValue2 = [firstObject rangeValue];
        v12 = v11;

        lastObject = [v8 lastObject];
        integerValue = [lastObject integerValue];

        if (integerValue == 1)
        {
          AXSetSelectionModeVoiceOverSelectionMovement(1);
          [self _accessibilitySetSelectedTextRange:{rangeValue2, v12}];
          AXSetSelectionModeVoiceOverSelectionMovement(0);
        }

        else
        {
          [self _accessibilitySetSelectedTextRange:{rangeValue2, v12}];
        }

LABEL_57:

        goto LABEL_58;
      }

      if (a4 == 2006)
      {
        [self _accessibilitySetValue:v6];
      }
    }
  }

  else if (a4 <= 5035)
  {
    if (a4 > 3016)
    {
      if (a4 == 3017)
      {
        [*MEMORY[0x1E69DDA98] _accessibilitySetWantsOpaqueElementProviders:{objc_msgSend(v6, "BOOLValue")}];
      }

      else if (a4 == 3026)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [self _accessibilitySetVoiceOverRTLOverride:{objc_msgSend(v7, "integerValue")}];
        }
      }
    }

    else if (a4 == 3002)
    {
      if ([v6 _accessibilityCanBeFirstResponder])
      {
        [v7 becomeFirstResponder];
      }
    }

    else if (a4 == 3007)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _UIAXSetLastKeyboardUsed(v7);
      }
    }
  }

  else if (a4 <= 5063)
  {
    if (a4 == 5036)
    {
      [self _setAccessibilityFauxCollectionViewCellsDisabled:{objc_msgSend(v6, "BOOLValue")}];
    }

    else if (a4 == 5051)
    {
      [self _setAccessibilityFauxTableViewCellsDisabled:{objc_msgSend(v6, "BOOLValue")}];
    }
  }

  else if (a4 == 5064)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _accessibilityScrollAncestor = [self _accessibilityScrollAncestor];
      [v7 pointValue];
      [_accessibilityScrollAncestor accessibilityApplyScrollContent:0 sendScrollStatus:0 animated:?];
    }
  }

  else
  {
    if (a4 != 12015)
    {
      if (a4 == 5067)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 integerValue];
          _AXSVoiceOverTouchSetEnabledAppTemporaryOverride();
        }
      }

      goto LABEL_58;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [self _accessibilitySetAdditionalImportantScannerMenuItems:v8];
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [self _accessibilitySetAdditionalImportantScannerMenuItems:v7];
    }
  }

LABEL_58:
}

- (id)_getAccessibilityAttributedString
{
  accessibilityLabel = [self accessibilityLabel];
  _accessibilityAttributedLocalizedString = [accessibilityLabel _accessibilityAttributedLocalizedString];

  return _accessibilityAttributedLocalizedString;
}

- (id)_accessibilityRetrieveLocalizedStringKey
{
  _getAccessibilityAttributedString = [self _getAccessibilityAttributedString];
  v2 = [_getAccessibilityAttributedString attributeValueForKey:@"UIAccessibilityTokenLocalizedStringKey"];

  return v2;
}

- (id)_accessibilityRetrieveLocalizationBundleID
{
  _getAccessibilityAttributedString = [self _getAccessibilityAttributedString];
  v2 = [_getAccessibilityAttributedString attributeValueForKey:@"UIAccessibilityTokenLocalizedStringBundleID"];

  return v2;
}

- (id)_accessibilityRetrieveLocalizationBundlePath
{
  _getAccessibilityAttributedString = [self _getAccessibilityAttributedString];
  v2 = [_getAccessibilityAttributedString attributeValueForKey:@"UIAccessibilityTokenLocalizationBundlePath"];

  return v2;
}

- (id)_accessibilityRetrieveLocalizedStringTableName
{
  _getAccessibilityAttributedString = [self _getAccessibilityAttributedString];
  v2 = [_getAccessibilityAttributedString attributeValueForKey:@"UIAccessibilityTokenLocalizedStringTableName"];

  return v2;
}

- (uint64_t)_accessibilityInheritedTraits
{
  accessibilityTraits = [self accessibilityTraits];
  accessibilityContainer = [self accessibilityContainer];
  if (accessibilityContainer)
  {
    v4 = accessibilityContainer;
    do
    {
      accessibilityTraits2 = [v4 accessibilityTraits];
      accessibilityContainer2 = [v4 accessibilityContainer];

      accessibilityTraits |= accessibilityTraits2;
      v4 = accessibilityContainer2;
    }

    while (accessibilityContainer2);
  }

  return accessibilityTraits;
}

- (id)_accessibilityTraitsAsHumanReadableStrings:()AXPrivCategory
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v6 = v5;
  if ((*MEMORY[0x1E69DD9B8] & ~a3) == 0)
  {
    [v5 addObject:@"trait.button"];
  }

  if ((*MEMORY[0x1E69DD9E0] & ~a3) == 0)
  {
    [v6 addObject:@"trait.link"];
  }

  if ((*MEMORY[0x1E69DDA00] & ~a3) == 0)
  {
    [v6 addObject:@"trait.searchfield"];
  }

  if ((*MEMORY[0x1E69DD9D0] & ~a3) == 0)
  {
    [v6 addObject:@"trait.image"];
  }

  if ((*MEMORY[0x1E69DDA08] & ~a3) == 0)
  {
    [v6 addObject:@"trait.selected"];
  }

  if ((*MEMORY[0x1E69DD9F8] & ~a3) == 0)
  {
    [v6 addObject:@"trait.playssound"];
  }

  if ((*MEMORY[0x1E69DD9D8] & ~a3) == 0)
  {
    [v6 addObject:@"trait.keyboardkey"];
  }

  if ((*MEMORY[0x1E69DDA18] & ~a3) == 0)
  {
    [v6 addObject:@"trait.statictext"];
  }

  if ((*MEMORY[0x1E69DDA20] & ~a3) == 0)
  {
    [v6 addObject:@"trait.summaryelement"];
  }

  if ((*MEMORY[0x1E69DD9F0] & ~a3) == 0)
  {
    [v6 addObject:@"trait.notenabled"];
  }

  if ((*MEMORY[0x1E69DDA38] & ~a3) == 0)
  {
    [v6 addObject:@"trait.updatesfrequently"];
  }

  if ((*MEMORY[0x1E69DDA10] & ~a3) == 0)
  {
    [v6 addObject:@"trait.startsmedia"];
  }

  if ((*MEMORY[0x1E69DD9A8] & ~a3) == 0)
  {
    [v6 addObject:@"trait.adjustable"];
  }

  if ((*MEMORY[0x1E69DD9C0] & ~a3) == 0)
  {
    [v6 addObject:@"trait.causes.page.turn"];
  }

  if ((*MEMORY[0x1E69DD9B0] & ~a3) == 0)
  {
    [v6 addObject:@"trait.direct.interaction"];
  }

  if ((*MEMORY[0x1E69DD9C8] & ~a3) == 0)
  {
    [v6 addObject:@"trait.header"];
  }

  if ((UIAccessibilityTraitTabButton & ~a3) == 0)
  {
    [v6 addObject:@"trait.tab"];
  }

  if ((*MEMORY[0x1E69DDA30] & ~a3) == 0)
  {
    [v6 addObject:@"trait.toggle"];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = UIKitAccessibilityLocalizedString(v12);
        if (!v13)
        {
          v15 = v12;
          _AXAssert();
        }

        if ([v13 length])
        {
          [v4 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v4;
}

- (uint64_t)_accessibilityTraitsInspectorHumanReadable
{
  accessibilityTraits = [self accessibilityTraits];

  return [self _accessibilityTraitsAsHumanReadableStrings:accessibilityTraits];
}

- (id)_accessibilityPreferredScrollActions
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [self _accessibilityCanPerformAction:2009];
  v4 = [self _accessibilityCanPerformAction:2008];
  v5 = [self _accessibilityCanPerformAction:2007];
  v6 = [self _accessibilityCanPerformAction:2006];
  v7 = &unk_1F1DC26C8;
  if (!v5)
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = &unk_1F1DC26B0;
  }

  else
  {
    v8 = v7;
  }

  [v2 axSafelyAddObject:v8];
  v9 = &unk_1F1DC26F8;
  if (!v4)
  {
    v9 = 0;
  }

  if (v3)
  {
    v10 = &unk_1F1DC26E0;
  }

  else
  {
    v10 = v9;
  }

  [v2 axSafelyAddObject:v10];

  return v2;
}

- (uint64_t)_accessibilityShouldSuppressCustomActionsHint
{
  v11 = *MEMORY[0x1E69E9840];
  [self _accessibilityCustomActions];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = v9 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) shouldSuppressActionHint])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (id)_accessibilityAllContextDescriptors
{
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  if (selfCopy)
  {
    v4 = selfCopy;
    do
    {
      _accessibilityContextDescriptors = [v4 _accessibilityContextDescriptors];
      [array addObjectsFromArray:_accessibilityContextDescriptors];

      accessibilityContainer = [v4 accessibilityContainer];

      v4 = accessibilityContainer;
    }

    while (accessibilityContainer);
  }

  return array;
}

- (id)_accessibilityBrailleMapsFromGraphData
{
  v40 = *MEMORY[0x1E69E9840];
  _accessibilityChartDescriptor = [self _accessibilityChartDescriptor];
  if (_accessibilityChartDescriptor)
  {
    connectedBrailleMap = [MEMORY[0x1E6959540] connectedBrailleMap];
    if (connectedBrailleMap)
    {
      yAxis = [_accessibilityChartDescriptor yAxis];
      xAxis = [_accessibilityChartDescriptor xAxis];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v2 = 0;
        v3 = 1.0;
      }

      else
      {
        objc_opt_class();
        v3 = 0.0;
        v2 = 0;
        if (objc_opt_isKindOfClass())
        {
          [xAxis lowerBound];
          v2 = v4;
          [xAxis upperBound];
          v3 = v5;
        }
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = [_accessibilityChartDescriptor series];
      v6 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v6)
      {
        v18 = *v36;
        v7 = isKindOfClass & 1;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v36 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v35 + 1) + 8 * i);
            v33[0] = 0;
            v33[1] = v33;
            v33[2] = 0x2020000000;
            v34 = -1;
            v31[0] = 0;
            v31[1] = v31;
            v31[2] = 0x2020000000;
            v32 = -1;
            dataPoints = [v9 dataPoints];
            v11 = [dataPoints count];

            dataPoints2 = [v9 dataPoints];
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __66__NSObject_AXPrivCategory___accessibilityBrailleMapsFromGraphData__block_invoke;
            v21[3] = &unk_1E78AAFD8;
            v30 = v7;
            v27 = v11;
            v28 = v2;
            v29 = v3;
            v22 = yAxis;
            v23 = connectedBrailleMap;
            v24 = v9;
            v25 = v33;
            v26 = v31;
            [dataPoints2 enumerateObjectsUsingBlock:v21];

            _Block_object_dispose(v31, 8);
            _Block_object_dispose(v33, 8);
          }

          v6 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v6);
      }

      v13 = connectedBrailleMap;
    }
  }

  else
  {
    connectedBrailleMap = 0;
  }

  return connectedBrailleMap;
}

- (id)_accessibilityBrailleMap
{
  connectedBrailleMap = [MEMORY[0x1E6959540] connectedBrailleMap];
  if (connectedBrailleMap)
  {
    selfCopy = self;
    v4 = selfCopy;
    if (selfCopy)
    {
      v5 = selfCopy;
      while (1)
      {
        accessibilityBrailleMapRenderer = [v5 accessibilityBrailleMapRenderer];
        if (accessibilityBrailleMapRenderer)
        {
          break;
        }

        accessibilityContainer = [v5 accessibilityContainer];

        v5 = accessibilityContainer;
        if (!accessibilityContainer)
        {
          goto LABEL_6;
        }
      }

      v9 = accessibilityBrailleMapRenderer;
      (*(accessibilityBrailleMapRenderer + 16))(accessibilityBrailleMapRenderer, connectedBrailleMap);
      _accessibilityBrailleMapsFromGraphData = connectedBrailleMap;
    }

    else
    {
LABEL_6:
      _accessibilityBrailleMapsFromGraphData = [v4 _accessibilityBrailleMapsFromGraphData];
    }
  }

  else
  {
    _accessibilityBrailleMapsFromGraphData = 0;
  }

  return _accessibilityBrailleMapsFromGraphData;
}

- (void)setAccessibilityCustomContent:()AXPrivCategory
{
  v4 = [a3 copy];
  [self _accessibilitySetRetainedValue:v4 forKey:@"accessibilityCustomContent"];
}

- (id)accessibilityCustomContent
{
  v2 = [self _accessibilityGetBlockForAttribute:28];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2);
  }

  else
  {
    [self _accessibilityValueForKey:@"accessibilityCustomContent"];
  }
  v4 = ;

  return v4;
}

- (id)_accessibilityCustomContent
{
  selfCopy = self;
  v2 = 0;
  if (!selfCopy)
  {
LABEL_14:
    v2 = v2;
    v7 = v2;
    goto LABEL_15;
  }

  while (1)
  {
    if (objc_opt_respondsToSelector())
    {
      accessibilityCustomContentBlock = [selfCopy accessibilityCustomContentBlock];
      if (accessibilityCustomContentBlock)
      {
        break;
      }
    }

    accessibilityCustomContent = [selfCopy accessibilityCustomContent];
    if (accessibilityCustomContent)
    {
      if (v2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_10;
      }

      v5 = [MEMORY[0x1E69DD258] viewControllerForView:selfCopy];
      accessibilityCustomContent = [v5 accessibilityCustomContent];

      if (v2)
      {
        goto LABEL_10;
      }
    }

    if (accessibilityCustomContent)
    {
      v2 = objc_opt_new();
    }

LABEL_10:
    [v2 axSafelyAddObjectsFromArray:accessibilityCustomContent];
    if (([selfCopy _accessibilityShouldIncludeParentCustomContent] & 1) == 0)
    {

      goto LABEL_14;
    }

    accessibilityContainer = [selfCopy accessibilityContainer];

    selfCopy = accessibilityContainer;
    if (!accessibilityContainer)
    {
      goto LABEL_14;
    }
  }

  v9 = accessibilityCustomContentBlock;
  v7 = (*(accessibilityCustomContentBlock + 16))();

LABEL_15:

  return v7;
}

- (id)accessibilityElementForRow:()AXPrivCategory andColumn:
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__NSObject_AXPrivCategory__accessibilityElementForRow_andColumn___block_invoke;
  v6[3] = &unk_1E78AB000;
  v6[4] = &v7;
  v6[5] = a3;
  v6[6] = a4;
  [self accessibilityEnumerateAncestorsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)accessibilityDataTableCellElementForRow:()AXPrivCategory column:
{
  v6 = [self _accessibilityGetBlockForAttribute:5006];
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 16))(v6, a3, a4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)_accessibilityIndexPathAsRange
{
  _accessibilityParentCollectionView = [self _accessibilityParentCollectionView];

  if (!_accessibilityParentCollectionView)
  {
    _accessibilityParentTableView = [self _accessibilityParentTableView];

    if (!_accessibilityParentTableView)
    {
      return 0x7FFFFFFFLL;
    }
  }

  v4 = [self _accessibilityAncestorIsKindOf:objc_opt_class()];
  _accessibilityIndexPathAsRange = [v4 _accessibilityIndexPathAsRange];

  return _accessibilityIndexPathAsRange;
}

- (uint64_t)_accessibilityParentTableView
{
  v2 = objc_opt_class();

  return [self _accessibilityAncestorIsKindOf:v2];
}

- (uint64_t)_accessibilityParentCollectionView
{
  v2 = objc_opt_class();

  return [self _accessibilityAncestorIsKindOf:v2];
}

- (uint64_t)accessibilityRowRange
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [self _accessibilityGetBlockForAttribute:5003];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
    if (v4)
    {
      v5 = v4;
      rangeValue = [v4 rangeValue];

      goto LABEL_27;
    }
  }

  if ([self _accessibilityIsInTabBar])
  {
    _accessibilityTabBarAncestor = [self _accessibilityTabBarAncestor];
    if (!_accessibilityTabBarAncestor)
    {
      v16 = AXLogAppAccessibility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_1A9B83000, v16, OS_LOG_TYPE_INFO, "Found a tab bar item with no ancestor. Marking it as not a tab bar item, but this may indicate that views are being moved from tab bars to other superviews: %@", &v20, 0xCu);
      }

      [self _axSetCachedHasTabBarAncestor:MEMORY[0x1E695E110]];
      v15 = 0;
      rangeValue = 0x7FFFFFFFLL;
      goto LABEL_20;
    }

    v8 = +[UIAccessibilityElementTraversalOptions options];
    v9 = [_accessibilityTabBarAncestor _accessibilityLeafDescendantsWithOptions:v8];

    if ([v9 count])
    {
      v10 = [v9 indexOfObject:self];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        rangeValue = v10;
        v15 = [v9 count];
        goto LABEL_19;
      }

      v11 = AXLogAppAccessibility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        selfCopy2 = self;
        v22 = 2112;
        v23 = v9;
        v12 = "Tried to get row range from a tab bar item, but it was not one of the tab bar's accessibility element descendants: %@, %@";
        v13 = v11;
        v14 = 22;
LABEL_16:
        _os_log_impl(&dword_1A9B83000, v13, OS_LOG_TYPE_INFO, v12, &v20, v14);
      }
    }

    else
    {
      v11 = AXLogAppAccessibility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        selfCopy2 = _accessibilityTabBarAncestor;
        v12 = "Tried to get row range from a tab bar item, but there were no descendants for the tab bar: %@";
        v13 = v11;
        v14 = 12;
        goto LABEL_16;
      }
    }

    v15 = 0;
    rangeValue = 0x7FFFFFFFLL;
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v15 = 0;
  rangeValue = 0x7FFFFFFFLL;
LABEL_21:
  if (rangeValue == 0x7FFFFFFF && !v15)
  {
    v17 = [self _accessibilityValueForKey:@"_accessibilityRowRangeKey"];
    v18 = v17;
    if (v17)
    {
      rangeValue = [v17 rangeValue];
    }

    else
    {
      rangeValue = 0x7FFFFFFFLL;
    }
  }

LABEL_27:

  return rangeValue;
}

- (void)_accessibilitySetRowRange:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696B098] valueWithRange:?];
  [self _accessibilitySetValue:v2 forKey:@"_accessibilityRowRangeKey" storageMode:0];
}

- (uint64_t)_accessibilityColumnCount
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0x7FFFFFFFLL;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__NSObject_AXPrivCategory___accessibilityColumnCount__block_invoke;
  v3[3] = &unk_1E78AACB0;
  v3[4] = &v4;
  [self accessibilityEnumerateAncestorsUsingBlock:v3];
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)_accessibilityColumnRange
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3010000000;
  v7 = "";
  v8 = xmmword_1A9BF34F0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__NSObject_AXPrivCategory___accessibilityColumnRange__block_invoke;
  v3[3] = &unk_1E78AACB0;
  v3[4] = &v4;
  [self accessibilityEnumerateAncestorsUsingBlock:v3];
  v1 = v5[4];
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)_accessibilityRowRangeFromTableOrCollectionView:()AXPrivCategory
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = "";
  v13 = xmmword_1A9BF34F0;
  if (!_accessibilityRowRangeFromTableOrCollectionView__BaseNSObjectMethod)
  {
    v5 = objc_opt_class();
    _accessibilityRowRangeFromTableOrCollectionView__BaseNSObjectMethod = class_getInstanceMethod(v5, sel_accessibilityRowRange);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__NSObject_AXPrivCategory___accessibilityRowRangeFromTableOrCollectionView___block_invoke;
  v8[3] = &unk_1E78AB000;
  v8[4] = &v9;
  v8[5] = sel_accessibilityRowRange;
  v8[6] = a3;
  [self accessibilityEnumerateAncestorsUsingBlock:v8];
  v6 = v10[4];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)_accessibilitySetShouldIncludeRowRangeInElementDescription:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _accessibilitySetUserDefinedShouldIncludeRowRangeInElementDescription:v2];
}

- (uint64_t)_accessibilityShouldIncludeRowRangeInElementDescription
{
  _accessibilityUserDefinedShouldIncludeRowRangeInElementDescription = [self _accessibilityUserDefinedShouldIncludeRowRangeInElementDescription];
  v3 = _accessibilityUserDefinedShouldIncludeRowRangeInElementDescription;
  if (_accessibilityUserDefinedShouldIncludeRowRangeInElementDescription)
  {
    bOOLValue = [_accessibilityUserDefinedShouldIncludeRowRangeInElementDescription BOOLValue];
  }

  else
  {
    v5 = [self _iosAccessibilityAttributeValue:2004];
    unsignedIntegerValue = [v5 unsignedIntegerValue];

    if (((UIAccessibilityTraitRadioButton | *MEMORY[0x1E69DDA28] | *MEMORY[0x1E69DD9D8] | UIAccessibilityTraitTabButton) & unsignedIntegerValue) == 0)
    {
      v7 = *MEMORY[0x1E6989268];
      v8 = *MEMORY[0x1E6989268] & unsignedIntegerValue;
      if (((*MEMORY[0x1E69DD9A8] | *MEMORY[0x1E69DD9B8]) & unsignedIntegerValue) != 0)
      {
        if (v8 != v7 || ([self _accessibilityContainerTypes], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", &unk_1F1DC2710), v9, (v10 & 1) == 0))
        {
          v13 = 0;
          [self _accessibilityRowRangeFromTableOrCollectionView:&v13];
          bOOLValue = v13 ^ 1;
          goto LABEL_12;
        }
      }

      else if (v8 == v7)
      {
        _accessibilityContainerTypes = [self _accessibilityContainerTypes];
        bOOLValue = [_accessibilityContainerTypes containsObject:&unk_1F1DC2728];

        goto LABEL_12;
      }

      bOOLValue = 0;
      goto LABEL_12;
    }

    bOOLValue = 1;
  }

LABEL_12:

  return bOOLValue & 1;
}

- (uint64_t)_accessibilityRowCount
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0x7FFFFFFFLL;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__NSObject_AXPrivCategory___accessibilityRowCount__block_invoke;
  v3[3] = &unk_1E78AACB0;
  v3[4] = &v4;
  [self accessibilityEnumerateAncestorsUsingBlock:v3];
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)accessibilityColumnRange
{
  v1 = [self _accessibilityGetBlockForAttribute:5002];
  v2 = v1;
  if (v1 && ((*(v1 + 16))(v1), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    rangeValue = [v3 rangeValue];
  }

  else
  {
    rangeValue = 0x7FFFFFFFLL;
  }

  return rangeValue;
}

- (id)_accessibilityTableViewCellContentSubviews
{
  objc_opt_class();
  v0 = __UIAccessibilityCastAsClass();
  contentView = [v0 contentView];
  subviews = [contentView subviews];

  return subviews;
}

- (id)_accessibilityCollectionViewCellContentSubviews
{
  objc_opt_class();
  v0 = __UIAccessibilityCastAsClass();
  contentView = [v0 contentView];
  subviews = [contentView subviews];

  return subviews;
}

- (BOOL)_accessibilityIsInTableCell
{
  v1 = [self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)_accessibilityIsInCollectionCell
{
  v1 = [self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v2 = v1 != 0;

  return v2;
}

- (id)_accessibilityElementTextualContent
{
  v2 = [self _accessibilityFindAncestor:&__block_literal_global_1272 startWithSelf:1];
  if (v2 || ([self _accessibilityContainerTypes], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "containsObject:", &unk_1F1DC2710), v18, v19) && (objc_msgSend(self, "safeValueForKey:", @"_accessibilityTableAncestor"), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    accessibilityLabel = v2;
    accessibilityRowCount = [v2 accessibilityRowCount];
    accessibilityColumnCount = [accessibilityLabel accessibilityColumnCount];
    v24 = accessibilityRowCount;
    if (accessibilityRowCount)
    {
      v6 = accessibilityColumnCount;
      v7 = 0;
      v8 = 0;
      v9 = @",";
      v10 = @"-";
      do
      {
        if (v6)
        {
          for (i = 0; i != v6; ++i)
          {
            v12 = [accessibilityLabel accessibilityElementForRow:v7 andColumn:{i, v21, v23}];
            v13 = UIAXStringForAllChildren(v12);
            [v13 stringByReplacingOccurrencesOfString:v9 withString:v10];
            v14 = v10;
            v16 = v15 = v9;

            v21 = v16;
            v23 = @"__AXStringForVariablesSentinel";
            v17 = __UIAXStringForVariables();

            v9 = v15;
            v10 = v14;

            v8 = v17;
          }
        }

        else
        {
          v17 = v8;
        }

        v8 = [v17 stringByAppendingString:{@"\n", v21, v23}];

        ++v7;
      }

      while (v7 != v24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    accessibilityLabel = [self accessibilityLabel];
    accessibilityValue = [self accessibilityValue];
    v8 = __UIAXStringForVariables();
  }

  return v8;
}

- (void)_accessibilitySetObscuredScreenAllowedViews:()AXPrivCategory
{
  v4 = _Block_copy(aBlock);
  [self _accessibilitySetRetainedValue:v4 forKey:@"_accessibilitySetObscuredScreenAllowedViews"];
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v1 = [self _accessibilityValueForKey:@"_accessibilitySetObscuredScreenAllowedViews"];
  v2 = v1;
  if (v1)
  {
    v3 = (*(v1 + 16))(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_accessibilityApplication
{
  _accessibilityParentView = [self _accessibilityParentView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = _accessibilityParentView;
  }

  else
  {
    window = [_accessibilityParentView window];
  }

  v3 = window;
  if ([window safeBoolForKey:@"_isHostedInAnotherProcess"] && objc_msgSend(v3, "_accessibilityRemotePid") >= 1)
  {
    AppElementWithPid = _AXUIElementCreateAppElementWithPid();
  }

  else
  {
    AppElementWithPid = *MEMORY[0x1E69DDA98];
  }

  v5 = AppElementWithPid;

  return v5;
}

- (uint64_t)_accessibilityUsesSpecialKeyboardDismiss
{
  accessibilityContainer = [self accessibilityContainer];
  if (!accessibilityContainer)
  {
    return 0;
  }

  v2 = accessibilityContainer;
  do
  {
    _accessibilityUsesSpecialKeyboardDismiss = [v2 _accessibilityUsesSpecialKeyboardDismiss];
    if (_accessibilityUsesSpecialKeyboardDismiss)
    {
      break;
    }

    accessibilityContainer2 = [v2 accessibilityContainer];

    v2 = accessibilityContainer2;
  }

  while (accessibilityContainer2);

  return _accessibilityUsesSpecialKeyboardDismiss;
}

- (id)_accessibilityWindowScene
{
  _accessibilityWindow = [self _accessibilityWindow];
  windowScene = [_accessibilityWindow windowScene];

  return windowScene;
}

- (id)_accessibilityWindowSceneIdentifier
{
  _accessibilityWindow = [self _accessibilityWindow];
  v2 = _accessibilityWindow;
  if (_accessibilityWindow)
  {
    windowScene = [_accessibilityWindow windowScene];
    _accessibilityWindowSceneIdentifier = [windowScene _accessibilityWindowSceneIdentifier];
  }

  else
  {
    _accessibilityWindowSceneIdentifier = 0;
  }

  return _accessibilityWindowSceneIdentifier;
}

- (id)_accessibilityFBSceneIdentifier
{
  _accessibilityWindowScene = [self _accessibilityWindowScene];
  _accessibilityFBSceneIdentifier = [_accessibilityWindowScene _accessibilityFBSceneIdentifier];

  return _accessibilityFBSceneIdentifier;
}

- (uint64_t)_accessibilityContextId
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _applicationKeyWindow = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
    _accessibilityContextId = [_applicationKeyWindow _accessibilityContextId];
  }

  else
  {
    _applicationKeyWindow = [self _accessibilityParentView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      window = _applicationKeyWindow;
    }

    else
    {
      window = [_applicationKeyWindow window];
    }

    v5 = window;
    _accessibilityContextId = [window _accessibilityContextId];
  }

  return _accessibilityContextId;
}

- (id)_accessibilityApplicationWindowContextIDs
{
  v13 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [*MEMORY[0x1E69DDA98] _accessibilityWindowsIgnoringWindowsWithHiddenElements:{0, 0}];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v8 + 1) + 8 * i) safeValueForKey:@"_accessibilityContextId"];
        [array axSafelyAddObject:v6];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  return array;
}

- (uint64_t)_accessibilityDisplayId
{
  _accessibilityWindow = [self _accessibilityWindow];
  screen = [_accessibilityWindow screen];
  _integerDisplayID = [screen _integerDisplayID];

  v4 = [*MEMORY[0x1E69DDA98] _iosAccessibilityAttributeValue:3075];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [v4 intValue];
      if (intValue <= 0)
      {
        _integerDisplayID = _integerDisplayID;
      }

      else
      {
        _integerDisplayID = intValue;
      }
    }
  }

  return _integerDisplayID;
}

- (uint64_t)_accessibilityStatusBar
{
  v0 = AXLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    [NSObject(AXPrivCategory) _accessibilityStatusBar];
  }

  return 0;
}

- (id)_accessibilityRetrieveImagePathLabel:()AXPrivCategory
{
  v3 = a3;
  if ([v3 length])
  {
    lastPathComponent = [v3 lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    v6 = [stringByDeletingPathExtension rangeOfString:@"@@"];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [stringByDeletingPathExtension substringToIndex:v6];

      stringByDeletingPathExtension = v7;
    }

    if ([stringByDeletingPathExtension length])
    {
      v8 = stringByDeletingPathExtension;
      if ([v8 length] >= 0x1F)
      {
        v9 = [v8 substringToIndex:30];

        v8 = v9;
      }
    }

    else
    {
      v8 = v3;
    }

    v11 = [v8 stringByReplacingOccurrencesOfString:@"_" withString:@" "];

    v12 = [v11 stringByReplacingOccurrencesOfString:@"-" withString:@" "];

    v10 = [MEMORY[0x1E6988D60] axAttributedStringWithString:v12];
    [v10 setAttribute:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6988E78]];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_accessibilityInputIdentifierForKeyboard
{
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
  identifierWithLayouts = [currentInputMode identifierWithLayouts];

  return identifierWithLayouts;
}

- (uint64_t)_accessibilityFKAShouldProcessChildren
{
  v1 = [self _accessibilityValueForKey:@"AXFKAShouldProcessChildren"];
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)_accessibilitySetFKAShouldProcessChildren:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _accessibilitySetRetainedValue:v2 forKey:@"AXFKAShouldProcessChildren"];
}

- (id)_accessibilityDefaultFocusGroupIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@:%p", v4, self];

  return v5;
}

- (id)_accessibilityKeyCommands
{
  v27[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  accessibilityTraits = [self accessibilityTraits];
  v4 = MEMORY[0x1E69DDF30];
  v5 = MEMORY[0x1E69DDE90];
  v6 = MEMORY[0x1E69DDF10];
  v7 = MEMORY[0x1E69DDF28];
  if ((*MEMORY[0x1E69DD9A8] & accessibilityTraits) != 0)
  {
    _accessibilityIsVerticalAdjustableElement = [self _accessibilityIsVerticalAdjustableElement];
    _accessibilityIsRTL = [self _accessibilityIsRTL];
    v10 = *v6;
    if (_accessibilityIsRTL)
    {
      v11 = *v6;
    }

    else
    {
      v11 = *v7;
    }

    if (_accessibilityIsRTL)
    {
      v10 = *v7;
    }

    if (_accessibilityIsVerticalAdjustableElement)
    {
      v12 = *v4;
    }

    else
    {
      v12 = v11;
    }

    v13 = *v5;
    if (!_accessibilityIsVerticalAdjustableElement)
    {
      v13 = v10;
    }

    v14 = MEMORY[0x1E69DCBA0];
    v15 = v13;
    v16 = v12;
    v17 = [v14 keyCommandWithInput:v16 modifierFlags:0 action:sel_accessibilityIncrement];
    v27[0] = v17;
    v18 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:v15 modifierFlags:0 action:sel_accessibilityDecrement];
    v27[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    [v2 addObjectsFromArray:v19];

    v5 = MEMORY[0x1E69DDE90];
    v7 = MEMORY[0x1E69DDF28];

    v6 = MEMORY[0x1E69DDF10];
  }

  if ([self _accessibilityShouldIncludeArrowKeyCommandsForDirectionalFocusMovement])
  {
    v20 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*v4 modifierFlags:0 action:sel__fkaMoveUp];
    v26[0] = v20;
    v21 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*v5 modifierFlags:0 action:sel__fkaMoveDown];
    v26[1] = v21;
    v22 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*v6 modifierFlags:0 action:sel__fkaMoveLeft];
    v26[2] = v22;
    v23 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*v7 modifierFlags:0 action:sel__fkaMoveRight];
    v26[3] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
    [v2 addObjectsFromArray:v24];
  }

  return v2;
}

- (id)_accessibilityElementToFocusForAppearanceScreenChange
{
  if ([self isAccessibilityElement] && (objc_msgSend(self, "isAccessibilityOpaqueElementProvider") & 1) == 0)
  {
    selfCopy = self;
  }

  else if ([self _accessibilityHasOrderedChildren])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__2;
    v11 = __Block_byref_object_dispose__2;
    v12 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __81__NSObject_AXPrivCategory___accessibilityElementToFocusForAppearanceScreenChange__block_invoke;
    v6[3] = &unk_1E78AB050;
    v6[4] = &v7;
    [self accessibilityEnumerateContainerElementsUsingBlock:v6];
    selfCopy = [v8[5] _accessibilityElementToFocusForAppearanceScreenChange];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    _accessibilitySortedElementsWithin = [self _accessibilitySortedElementsWithin];
    firstObject = [_accessibilitySortedElementsWithin firstObject];

    selfCopy = [firstObject _accessibilityElementToFocusForAppearanceScreenChange];
  }

  return selfCopy;
}

- (uint64_t)_accessibilityIsChartElement
{
  _accessibilityStoredChartDescriptor = [self _accessibilityStoredChartDescriptor];

  if (_accessibilityStoredChartDescriptor || ([self _accessibilitySupportsChartsV2] & 1) != 0)
  {
    return 1;
  }

  v5 = [self _accessibilityGetBlockForAttribute:30];
  v6 = v5;
  if (v5 && ((*(v5 + 16))(v5), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v3 = 1;
  }

  else
  {
    v3 = [self conformsToProtocol:&unk_1F1E1E130];
  }

  return v3;
}

- (id)_accessibilityChartDescriptor
{
  v2 = [self _accessibilityGetBlockForAttribute:30];
  v3 = v2;
  if (v2)
  {
    _accessibilityStoredChartDescriptor = (*(v2 + 16))(v2);
  }

  else
  {
    _accessibilityChartElement = [self _accessibilityChartElement];
    _accessibilityStoredChartDescriptor = [_accessibilityChartElement _accessibilityStoredChartDescriptor];
    if (!_accessibilityStoredChartDescriptor)
    {
      _accessibilityStoredChartDescriptor = [_accessibilityChartElement accessibilityChartDescriptor];
    }
  }

  return _accessibilityStoredChartDescriptor;
}

- (id)_accessibilityChartStructureDescription
{
  _accessibilityChartElement = [self _accessibilityChartElement];
  _accessibilityStoredChartDescriptor = [_accessibilityChartElement _accessibilityStoredChartDescriptor];
  if (!_accessibilityStoredChartDescriptor)
  {
    _accessibilityStoredChartDescriptor = [_accessibilityChartElement accessibilityChartDescriptor];
  }

  array = [MEMORY[0x1E695DF70] array];
  v4 = UIKitAccessibilityLocalizedString(@"audiograph.axis.description.x");
  v25 = UIKitAccessibilityLocalizedString(@"audiograph.axis.description.y");
  v5 = UIKitAccessibilityLocalizedString(@"audiograph.series.count");
  series = [_accessibilityStoredChartDescriptor series];
  v7 = [series count];

  xAxis = [_accessibilityStoredChartDescriptor xAxis];
  title = [xAxis title];
  v10 = [title length];

  if (v10)
  {
    xAxis2 = [_accessibilityStoredChartDescriptor xAxis];
    title2 = [xAxis2 title];
    v12 = AXCFormattedString();

    [array addObject:{v12, title2}];
  }

  yAxis = [_accessibilityStoredChartDescriptor yAxis];
  if (yAxis)
  {
    v14 = yAxis;
    yAxis2 = [_accessibilityStoredChartDescriptor yAxis];
    title3 = [yAxis2 title];
    v17 = [title3 length];

    if (v17)
    {
      yAxis3 = [_accessibilityStoredChartDescriptor yAxis];
      title4 = [yAxis3 title];
      v19 = AXCFormattedString();

      [array addObject:{v19, title4}];
    }
  }

  v20 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v5, v7];
  [array addObject:v20];
  v21 = [array componentsJoinedByString:{@", "}];

  return v21;
}

- (uint64_t)_accessibilityShouldUseHostContextIDForTap
{
  v1 = [self _accessibilityGetBlockForAttribute:5007];
  v2 = v1;
  if (v1)
  {
    v3 = (*(v1 + 16))(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)_accessibilityShouldUseHostContextIDForLongPress
{
  v1 = [self _accessibilityGetBlockForAttribute:5008];
  v2 = v1;
  if (v1)
  {
    v3 = (*(v1 + 16))(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)_accessibilitySecureName
{
  _accessibilityParentView = [self _accessibilityParentView];
  v2 = [_accessibilityParentView safeUnsignedIntForKey:@"_secureName"];

  return v2;
}

- (BOOL)_accessibilitySupportsAudiographs
{
  _accessibilityChartElement = [self _accessibilityChartElement];
  v2 = _accessibilityChartElement != 0;

  return v2;
}

- (uint64_t)_accessibilityScrollAcrossPageBoundaries
{
  _accessibilityUserDefinedScrollAcrossPageBoundaries = [self _accessibilityUserDefinedScrollAcrossPageBoundaries];
  bOOLValue = [_accessibilityUserDefinedScrollAcrossPageBoundaries BOOLValue];

  return bOOLValue;
}

- (void)_accessibilitySetScrollAcrossPageBoundaries:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _accessibilitySetUserDefinedScrollingEnabled:v2];
}

- (void)_accessibilitySetAllowedPagingOverlap:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [self _accessibilitySetRetainedValue:v2 forKey:@"_accessibilityAllowedPagingOverlap"];
}

- (BOOL)_accessibilityDidSetOpaqueElementProvider
{
  v1 = [self _accessibilityValueForKey:@"IsOpaqueProvider"];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)_accessibilityWantsOpaqueElementProviders
{
  if ([self _accessibilityShouldIgnoreOpaqueElementProviders])
  {
    return 0;
  }

  if (!UIAccessibilityIsSwitchControlRunning() && (!_AXSAutomationEnabled() || UIAccessibilityIsVoiceOverRunning()))
  {
    return 1;
  }

  return [self _accessibilityBoolValueForKey:@"WantsOpaqueProviders"];
}

- (uint64_t)isAccessibilityOpaqueElementProvider
{
  v1 = [self _accessibilityValueForKey:@"IsOpaqueProvider"];
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_accessibilityOpaqueElementParent
{
  accessibilityContainer = [self accessibilityContainer];
  if (accessibilityContainer)
  {
    v2 = accessibilityContainer;
    v3 = 0;
    do
    {
      if ([v2 isAccessibilityOpaqueElementProvider])
      {
        v4 = v2;

        v3 = v4;
      }

      accessibilityContainer2 = [v2 accessibilityContainer];

      v2 = accessibilityContainer2;
    }

    while (accessibilityContainer2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_accessibilityFirstOpaqueElement
{
  v2 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
  if (__60__NSObject_AXPrivCategory___accessibilityFirstOpaqueElement__block_invoke())
  {
    v3 = [self _accessibilitySortedElementsWithinWithOptions:v2];
    firstObject = [v3 firstObject];
  }

  else
  {
    firstObject = [self _accessibilityFirstOpaqueElementWithOptions:v2];
  }

  return firstObject;
}

- (id)_accessibilityFirstOpaqueElementWithOptions:()AXPrivCategory
{
  v4 = a3;
  if (__72__NSObject_AXPrivCategory___accessibilityFirstOpaqueElementWithOptions___block_invoke())
  {
    _accessibilityFirstOpaqueElement = [self _accessibilityFirstOpaqueElement];
  }

  else
  {
    v6 = [self _accessibilitySortedElementsWithinWithOptions:v4];
    _accessibilityFirstOpaqueElement = [v6 firstObject];
  }

  return _accessibilityFirstOpaqueElement;
}

- (id)_accessibilityFirstOpaqueElementForFocus
{
  v2 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
  if (__68__NSObject_AXPrivCategory___accessibilityFirstOpaqueElementForFocus__block_invoke())
  {
    [self _accessibilityFirstOpaqueElementWithOptions:v2];
  }

  else
  {
    [self _accessibilityFirstOpaqueElementForFocusWithOptions:v2];
  }
  v3 = ;

  return v3;
}

- (id)_accessibilityFirstOpaqueElementForFocusWithOptions:()AXPrivCategory
{
  v4 = a3;
  if (__80__NSObject_AXPrivCategory___accessibilityFirstOpaqueElementForFocusWithOptions___block_invoke())
  {
    [self _accessibilityFirstOpaqueElementForFocus];
  }

  else
  {
    [self _accessibilityFirstOpaqueElementWithOptions:v4];
  }
  v5 = ;

  return v5;
}

- (id)_accessibilityLastOpaqueElement
{
  v2 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
  if (__59__NSObject_AXPrivCategory___accessibilityLastOpaqueElement__block_invoke())
  {
    v3 = [self _accessibilitySortedElementsWithinWithOptions:v2];
    lastObject = [v3 lastObject];
  }

  else
  {
    lastObject = [self _accessibilityLastOpaqueElementWithOptions:v2];
  }

  return lastObject;
}

- (id)_accessibilityLastOpaqueElementWithOptions:()AXPrivCategory
{
  v4 = a3;
  if (__71__NSObject_AXPrivCategory___accessibilityLastOpaqueElementWithOptions___block_invoke())
  {
    _accessibilityLastOpaqueElement = [self _accessibilityLastOpaqueElement];
  }

  else
  {
    v6 = [self _accessibilitySortedElementsWithinWithOptions:v4];
    _accessibilityLastOpaqueElement = [v6 lastObject];
  }

  return _accessibilityLastOpaqueElement;
}

- (void)_accessibilityNextOpaqueElementsForTechnology:()AXPrivCategory startElement:direction:searchType:range:shouldScrollToVisible:honorsGroups:
{
  v41 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  if (!v12)
  {
    v12 = [self _accessibilityCurrentlyFocusedElementForTechnology:v11];
    [v12 _accessibilityHandleATFocused:1 assistiveTech:v11];
  }

  v33 = v11;
  v13 = AXLogOpaqueElements();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [NSObject(AXPrivCategory) _accessibilityNextOpaqueElementsForTechnology:startElement:direction:searchType:range:shouldScrollToVisible:honorsGroups:];
  }

  selfCopy = self;
  v15 = selfCopy;
  if (v12)
  {
    v15 = [v12 _accessibilityFindAncestor:&__block_literal_global_1383 startWithSelf:0];

    if (!v15)
    {
      v15 = selfCopy;
      v16 = AXLogOpaqueElements();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [NSObject(AXPrivCategory) _accessibilityNextOpaqueElementsForTechnology:startElement:direction:searchType:range:shouldScrollToVisible:honorsGroups:];
      }
    }
  }

  v17 = v12;
  v18 = v17;
  if (v12)
  {
    v19 = a9;
  }

  else
  {
    v19 = 0;
  }

  v32 = v17;
  while (1)
  {
    v38 = v15;
    LOWORD(v31) = a9;
    v20 = [v15 _accessibilitySearchSubtreesAfterChildElement:v18 direction:a5 searchType:a6 allowOutOfBoundsChild:v19 range:a7 shouldScrollToVisible:a8 honorGroups:v31 updatedContainer:&v38];
    v21 = v38;

    if (v21 == selfCopy || v21 == 0)
    {
      break;
    }

    v23 = v21;

    v15 = [v23 _accessibilityFindAncestor:&__block_literal_global_1386 startWithSelf:0];

    v24 = AXLogOpaqueElements();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v40 = v15;
      _os_log_debug_impl(&dword_1A9B83000, v24, OS_LOG_TYPE_DEBUG, "\tUP:  %{public}@", buf, 0xCu);
    }

    v18 = v23;
    if (v20)
    {
      goto LABEL_23;
    }
  }

  v23 = v18;
  v15 = v21;
LABEL_23:
  v25 = AXLogOpaqueElements();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [NSObject(AXPrivCategory) _accessibilityNextOpaqueElementsForTechnology:startElement:direction:searchType:range:shouldScrollToVisible:honorsGroups:];
  }

  v26 = AXRemoteElementFromObject();
  v27 = v26;
  if (v20 && !v26 && a9)
  {
    [v20 _accessibilityScrollToVisible];
  }

  if (a6 == 1 && v20 == v32 && v20)
  {
    _accessibilityOpaqueElementParent = [v20 _accessibilityOpaqueElementParent];
    [_accessibilityOpaqueElementParent _accessibilityDidFocusOnOpaqueElement:v20 technology:v33];
  }

  v29 = v20;

  return v20;
}

- (id)_accessibilityMoveFocusToNextOpaqueElementForTechnology:()AXPrivCategory direction:searchType:range:shouldScrollToVisible:honorsGroups:
{
  v15 = a3;
  BYTE1(v18) = a9;
  LOBYTE(v18) = a8;
  v16 = [self _accessibilityNextOpaqueElementsForTechnology:v15 startElement:0 direction:a4 searchType:a5 range:a6 shouldScrollToVisible:a7 honorsGroups:v18];
  [v16 _accessibilityHandleATFocused:1 assistiveTech:v15];

  return v16;
}

- (void)_accessibilitySetOpaqueElementScrollsContentIntoView:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self accessibilitySetUserDefinedOpaqueElementScrollsContentIntoView:v2];
}

- (uint64_t)_accessibilityOpaqueElementScrollsContentIntoView
{
  accessibilityUserDefinedOpaqueElementScrollsContentIntoView = [self accessibilityUserDefinedOpaqueElementScrollsContentIntoView];
  bOOLValue = [accessibilityUserDefinedOpaqueElementScrollsContentIntoView BOOLValue];

  return bOOLValue;
}

- (void)_accessibilityScrollOpaqueElementIntoView:()AXPrivCategory previousScroller:
{
  v6 = a4;
  if (([v6 safeBoolForKey:@"_forwardsToParentScroller"] & 1) == 0)
  {
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    if (v6)
    {
      [v6 bounds];
      [v7 convertRect:v6 fromView:?];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v7 contentOffset];
      v17 = v16;
      v19 = v18;
      [v7 contentSize];
      v27.size.width = v20;
      v27.size.height = v21;
      v27.origin.x = v17;
      v27.origin.y = v19;
      v28.origin.x = v9;
      v28.origin.y = v11;
      v28.size.width = v13;
      v28.size.height = v15;
      if (CGRectContainsRect(v27, v28))
      {
LABEL_4:
        [v7 _accessibilityOpaqueElementScrollCleanup];
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      [self _accessibilityOffsetForOpaqueElementDirection:a3];
      v9 = v22;
      v11 = v23;
      [v7 contentOffset];
      if (v25 == v9 && v24 == v11)
      {
        goto LABEL_4;
      }
    }

    [v7 accessibilityApplyScrollContent:0 sendScrollStatus:0 animated:{v9, v11}];
    [v7 _accessibilityOpaqueElementScrollCleanup];
    [v7 layoutIfNeeded];
    goto LABEL_10;
  }

LABEL_11:
}

- (double)_accessibilityOffsetForOpaqueElementDirection:()AXPrivCategory
{
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  [v5 adjustedContentInset];
  if (a3 == 1)
  {
    if ([self _accessibilityApplicationIsRTL])
    {
      [self _accessibilityRightOpaqueScrollViewContentOffsetLimit];
    }

    else
    {
      [self _accessibilityLeftOpaqueScrollViewContentOffsetLimit];
    }

    v8 = v6;
  }

  else
  {
    [v5 contentSize];
    [v5 bounds];
    if ([self _accessibilityApplicationIsRTL])
    {
      [self _accessibilityLeftOpaqueScrollViewContentOffsetLimit];
    }

    else
    {
      [self _accessibilityRightOpaqueScrollViewContentOffsetLimit];
    }

    v8 = v7;
  }

  return v8;
}

- (double)_accessibilityRightOpaqueScrollViewContentOffsetLimit
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 adjustedContentInset];
  v4 = v3;
  v6 = v5;
  [v2 contentSize];
  v8 = v7;
  [v2 bounds];
  v10 = v6 + v8 - v9;
  _accessibilityApplicationIsRTL = [self _accessibilityApplicationIsRTL];
  v12 = -v4;
  if (v10 >= -v4)
  {
    v12 = v10;
  }

  if (_accessibilityApplicationIsRTL)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

- (double)_accessibilityLeftOpaqueScrollViewContentOffsetLimit
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 adjustedContentInset];
  v4 = v3;
  v6 = -v5;
  if ([self _accessibilityApplicationIsRTL])
  {
    [v2 contentSize];
    v8 = v7;
    [v2 bounds];
    if (v4 + v8 - v9 <= v6)
    {
      v6 = v4 + v8 - v9;
    }
  }

  return v6;
}

- (id)_accessibilityFindElementInDirection:()AXPrivCategory searchType:allowOutOfBoundsChild:
{
  _accessibilityTouchContainer = [self _accessibilityTouchContainer];
  v10 = [self _accessibilityFindElementInDirection:a3 searchType:a4 allowOutOfBoundsChild:a5 startingTouchContainer:_accessibilityTouchContainer honorGroups:0];

  return v10;
}

- (id)_accessibilityFindElementInDirection:()AXPrivCategory searchType:allowOutOfBoundsChild:startingTouchContainer:honorGroups:
{
  LODWORD(v7) = a7;
  v70[1] = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = AXLogOpaqueElements();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [NSObject(AXPrivCategory) _accessibilityFindElementInDirection:searchType:allowOutOfBoundsChild:startingTouchContainer:honorGroups:];
  }

  if ([self isAccessibilityElement])
  {
    accessibilityTraits = [self accessibilityTraits];
    if ((UIAccessibilityTraitSpacer & ~accessibilityTraits) == 0)
    {
LABEL_5:
      v14 = 0;
      goto LABEL_87;
    }

    selfCopy = self;
    v18 = selfCopy;
    if (a4 <= 10)
    {
      if (a4 == 1)
      {
        accessibilityTraits2 = [selfCopy accessibilityTraits];
        v31 = MEMORY[0x1E6989060];
      }

      else
      {
        if (a4 != 10)
        {
          goto LABEL_78;
        }

        accessibilityTraits2 = [selfCopy accessibilityTraits];
        v31 = MEMORY[0x1E6989068];
      }
    }

    else
    {
      if (a4 != 11)
      {
        if (a4 == 35)
        {
          v45 = v11;
          _accessibilityTouchContainer = [v18 _accessibilityTouchContainer];

          if (_accessibilityTouchContainer == v45)
          {
            goto LABEL_5;
          }

          goto LABEL_79;
        }

        if (a4 == 36)
        {
          _accessibilityIsSpeakThisElement = [selfCopy _accessibilityIsSpeakThisElement];

          if (!_accessibilityIsSpeakThisElement)
          {
            goto LABEL_5;
          }

          goto LABEL_79;
        }

LABEL_78:

LABEL_79:
        if (!a5)
        {
          v69[0] = MEMORY[0x1E69E9820];
          v69[1] = 3221225472;
          v69[2] = __133__NSObject_AXPrivCategory___accessibilityFindElementInDirection_searchType_allowOutOfBoundsChild_startingTouchContainer_honorGroups___block_invoke;
          v69[3] = &unk_1E78AABC0;
          v69[4] = v18;
          v48 = _Block_copy(v69);
          v68[0] = MEMORY[0x1E69E9820];
          v68[1] = 3221225472;
          v68[2] = __133__NSObject_AXPrivCategory___accessibilityFindElementInDirection_searchType_allowOutOfBoundsChild_startingTouchContainer_honorGroups___block_invoke_2;
          v68[3] = &unk_1E78AABC0;
          v68[4] = v18;
          v49 = _Block_copy(v68);
          if ((v49[2]() & 1) != 0 || (v48[2](v48) & 1) == 0)
          {
            v14 = v18;
          }

          else
          {
            v14 = 0;
          }

          goto LABEL_87;
        }

        selfCopy2 = v18;
LABEL_81:
        v14 = selfCopy2;
        goto LABEL_87;
      }

      accessibilityTraits2 = [selfCopy accessibilityTraits];
      v31 = MEMORY[0x1E69890A8];
    }

    v47 = *v31 & ~accessibilityTraits2;

    if (v47)
    {
      goto LABEL_5;
    }

    goto LABEL_79;
  }

  if (v7 && [self _accessibilityIsGroupedParent])
  {
    selfCopy2 = self;
    goto LABEL_81;
  }

  v58 = a3;
  _accessibilityHasOrderedChildren = [self _accessibilityHasOrderedChildren];
  if (_accessibilityHasOrderedChildren)
  {
    accessibilityElementCount = [self accessibilityElementCount];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
      v21 = v20;
      if (v7)
      {
        v22 = v7;
        v23 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptionsHonoringGroups];

        leafNodePredicate = [v23 leafNodePredicate];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __133__NSObject_AXPrivCategory___accessibilityFindElementInDirection_searchType_allowOutOfBoundsChild_startingTouchContainer_honorGroups___block_invoke_3;
        v66[3] = &unk_1E78AAF48;
        v66[4] = self;
        v25 = leafNodePredicate;
        v67 = v25;
        [v23 setLeafNodePredicate:v66];
        _accessibilityGroupedParent = [self _accessibilityGroupedParent];
        v7 = _accessibilityGroupedParent;
        if (_accessibilityGroupedParent)
        {
          v70[0] = _accessibilityGroupedParent;
          [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
          v27 = v11;
          v29 = v28 = a4;
          [v23 setAllowedElementsForTraversal:v29];

          a4 = v28;
          v11 = v27;
        }

        LODWORD(v7) = v22;
      }

      else
      {
        v23 = v20;
      }

      v32 = [self _accessibilitySortedElementsWithinWithOptions:v23];
      accessibilityElementCount = [v32 count];

      a3 = v58;
      goto LABEL_29;
    }

    accessibilityElementCount = 0;
  }

  v32 = 0;
LABEL_29:
  if (a3 == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = accessibilityElementCount - 1;
  }

  v34 = v33 < accessibilityElementCount;
  if (a3 != 1)
  {
    v34 = v33 >= 0;
  }

  if (!v34)
  {
    v14 = 0;
    goto LABEL_71;
  }

  v52 = v60;
  v53 = v11;
  if (a3 == 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = -1;
  }

  v55 = a4;
  v54 = v7;
  v51 = v32;
  while (1)
  {
    if ([self _accessibilityHasOrderedChildren])
    {
      [self accessibilityElementAtIndex:v33];
    }

    else
    {
      [v32 objectAtIndex:v33];
    }
    v36 = ;
    if (v36 == self || UIAccessibilityIsWidgetExtension() && ([v36 _accessibilityIsFrameOutOfBounds] & 1) != 0)
    {
      goto LABEL_64;
    }

    v37 = AXRemoteElementFromObject();
    if (v37)
    {
      v14 = v36;
      goto LABEL_63;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    v60[0] = __133__NSObject_AXPrivCategory___accessibilityFindElementInDirection_searchType_allowOutOfBoundsChild_startingTouchContainer_honorGroups___block_invoke_4;
    v60[1] = &unk_1E78AB0A0;
    v38 = v58;
    v62 = v58;
    v63 = a4;
    v64 = a5;
    v39 = v53;
    v61 = v39;
    v65 = v7;
    v7 = _Block_copy(aBlock);
    if (!_accessibilityHasOrderedChildren)
    {
      goto LABEL_52;
    }

    if (v58 == 2)
    {
      [v36 _accessibilitySupplementaryFooterViews];
    }

    else
    {
      [v36 _accessibilitySupplementaryHeaderViews];
    }
    v40 = ;
    v14 = (*(v7 + 2))(v7, v40);

    v38 = v58;
    if (!v14)
    {
LABEL_52:
      v41 = [v36 _accessibilityFindElementInDirection:v38 searchType:v55 allowOutOfBoundsChild:a5 startingTouchContainer:v39 honorGroups:v54];
      if (v41)
      {
        v42 = 0;
      }

      else
      {
        v42 = _accessibilityHasOrderedChildren;
      }

      if (v42 == 1)
      {
        if (v38 == 2)
        {
          [v36 _accessibilitySupplementaryHeaderViews];
        }

        else
        {
          [v36 _accessibilitySupplementaryFooterViews];
        }
        v43 = ;
        v32 = v51;
        v14 = (*(v7 + 2))(v7, v43);

        goto LABEL_62;
      }

      v14 = v41;
    }

    v32 = v51;
LABEL_62:

    a4 = v55;
    LOBYTE(v7) = v54;
LABEL_63:

    a3 = v58;
    if (v14)
    {
      break;
    }

LABEL_64:

    v33 += v35;
    v44 = v33 < accessibilityElementCount;
    if (a3 != 1)
    {
      v44 = v33 >= 0;
    }

    if (!v44)
    {
      v14 = 0;
      goto LABEL_70;
    }
  }

LABEL_70:
  v11 = v53;
LABEL_71:

LABEL_87:

  return v14;
}

- (void)_accessibilityOpaqueElementScrollToDirection:()AXPrivCategory
{
  objc_opt_class();
  selfCopy = self;
  if (selfCopy)
  {
    v6 = selfCopy;
    v9 = 0;
    do
    {
      if (objc_opt_isKindOfClass())
      {
        if ([v6 _accessibilityOpaqueElementScrollsContentIntoView] && objc_msgSend(v6, "isScrollEnabled"))
        {
          [v6 _accessibilityScrollOpaqueElementIntoView:a3 previousScroller:v9];
        }

        v7 = v6;

        v9 = v7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 superview];
      }

      else
      {
        [v6 accessibilityContainer];
      }
      v8 = ;

      v6 = v8;
    }

    while (v8);
  }
}

- (id)_accessibilitySortedElementsWithin
{
  if (__62__NSObject_AXPrivCategory___accessibilitySortedElementsWithin__block_invoke())
  {
    v2 = 0;
  }

  else
  {
    v3 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
    v2 = [self _accessibilitySortedElementsWithinWithOptions:v3];
  }

  return v2;
}

- (id)_accessibilitySortedElementsWithinWithOptions:()AXPrivCategory
{
  if (__74__NSObject_AXPrivCategory___accessibilitySortedElementsWithinWithOptions___block_invoke())
  {
    _accessibilitySortedElementsWithin = [self _accessibilitySortedElementsWithin];
  }

  else
  {
    _accessibilitySortedElementsWithin = 0;
  }

  return _accessibilitySortedElementsWithin;
}

- (id)_accessibilityFocusAbsoluteFirstLastOpaqueElement:()AXPrivCategory technology:honorsGroups:shouldAlwaysScroll:
{
  if (([self isAccessibilityOpaqueElementProvider] & 1) == 0)
  {
    _AXAssert();
  }

  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  BYTE1(v11) = a5;
  LOBYTE(v11) = 1;
  v9 = [self _accessibilitySearchSubtreesAfterChildElement:0 direction:v8 searchType:0 allowOutOfBoundsChild:0 range:0x7FFFFFFFLL shouldScrollToVisible:0 honorGroups:v11 updatedContainer:0];
  [v9 _accessibilityScrollToVisible];
  [v9 _accessibilityHandleATFocused:1 assistiveTech:*MEMORY[0x1E69DD8F8]];

  return v9;
}

- (id)_accessibilitySearchSubtreesAfterChildElement:()AXPrivCategory direction:searchType:allowOutOfBoundsChild:range:shouldScrollToVisible:honorGroups:updatedContainer:
{
  v44 = a11;
  v62[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
  v17 = v16;
  if (a10)
  {
    v18 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptionsHonoringGroups];

    leafNodePredicate = [v18 leafNodePredicate];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __174__NSObject_AXPrivCategory___accessibilitySearchSubtreesAfterChildElement_direction_searchType_allowOutOfBoundsChild_range_shouldScrollToVisible_honorGroups_updatedContainer___block_invoke;
    v60[3] = &unk_1E78AAF48;
    v60[4] = self;
    v61 = leafNodePredicate;
    v20 = leafNodePredicate;
    [v18 setLeafNodePredicate:v60];
  }

  else
  {
    v18 = v16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a10)
    {
      v21 = [self _axNavigationalGroupParentOfChild:v15];
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      selfCopy = v21;
    }

    else
    {
      selfCopy = self;
    }

    v62[0] = selfCopy;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:{1, a11}];
    [v18 setAllowedElementsForTraversal:v23];
  }

  else
  {
    if ([self _accessibilityHasOrderedChildren])
    {
      goto LABEL_16;
    }

    v21 = AXLogOpaqueElements();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [NSObject(AXPrivCategory) _accessibilitySearchSubtreesAfterChildElement:direction:searchType:allowOutOfBoundsChild:range:shouldScrollToVisible:honorGroups:updatedContainer:];
    }
  }

LABEL_16:
  [v18 setDirection:{a4, v44}];
  [v18 setAlternateViewChildrenHandler:&__block_literal_global_1403];
  if (v15 != self)
  {
    if (a5 == 1)
    {
      v24 = [self _accessibilityOpaqueHeaderElementInDirection:a4 childElement:v15];
      v25 = AXLogOpaqueElements();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [NSObject(AXPrivCategory) _accessibilitySearchSubtreesAfterChildElement:direction:searchType:allowOutOfBoundsChild:range:shouldScrollToVisible:honorGroups:updatedContainer:];
      }

      if (v24)
      {
        null = [MEMORY[0x1E695DFB0] null];
        v27 = [v24 isEqual:null];

        if (v27)
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

        goto LABEL_60;
      }
    }

    _accessibilityTouchContainer = [v15 _accessibilityTouchContainer];
    if ((([self _accessibilityHasOrderedChildren]| a9 ^ 1) & 1) == 0)
    {
      if (v15)
      {
        [v15 _accessibilityScrollToVisibleForNextElementRetrieval:a4];
      }

      else
      {
        [self _accessibilityOpaqueElementScrollToDirection:a4];
      }
    }

    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__2;
    v58 = __Block_byref_object_dispose__2;
    v59 = 0;
    if (v15)
    {
      includeAncestorsOfSelfInSiblingMatch = [v18 includeAncestorsOfSelfInSiblingMatch];
      if ((includeAncestorsOfSelfInSiblingMatch & 1) == 0)
      {
        NSClassFromString(&cfstr_Uiremoteview.isa);
        [v18 setIncludeAncestorsOfSelfInSiblingMatch:objc_opt_isKindOfClass() & 1];
      }

      v53 = 0;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __174__NSObject_AXPrivCategory___accessibilitySearchSubtreesAfterChildElement_direction_searchType_allowOutOfBoundsChild_range_shouldScrollToVisible_honorGroups_updatedContainer___block_invoke_1405;
      v46[3] = &unk_1E78AB0E8;
      v48 = &v54;
      v49 = a4;
      v50 = a5;
      v51 = a6;
      v47 = _accessibilityTouchContainer;
      v52 = a10;
      v32 = [v15 _accessibilityEnumerateSiblingsWithParent:&v53 options:v18 usingBlock:v46];
      selfCopy2 = v53;
      [v18 setIncludeAncestorsOfSelfInSiblingMatch:includeAncestorsOfSelfInSiblingMatch];
      if (!v32)
      {
        v34 = AXLogOpaqueElements();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [NSObject(AXPrivCategory) _accessibilitySearchSubtreesAfterChildElement:direction:searchType:allowOutOfBoundsChild:range:shouldScrollToVisible:honorGroups:updatedContainer:];
        }
      }

      v35 = v47;
      goto LABEL_40;
    }

    if (![self isAccessibilityOpaqueElementProvider])
    {
LABEL_49:
      if (v55[5])
      {
        selfCopy2 = 0;
        goto LABEL_51;
      }

      v43 = [self _accessibilityFindElementInDirection:a4 searchType:a5 allowOutOfBoundsChild:a6 startingTouchContainer:_accessibilityTouchContainer honorGroups:a10];
      selfCopy2 = 0;
      v35 = v55[5];
      v55[5] = v43;
LABEL_40:

LABEL_51:
      if (v45)
      {
        if (selfCopy2)
        {
          if (selfCopy2 != self)
          {
            v40 = AXLogOpaqueElements();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              [NSObject(AXPrivCategory) _accessibilitySearchSubtreesAfterChildElement:direction:searchType:allowOutOfBoundsChild:range:shouldScrollToVisible:honorGroups:updatedContainer:];
            }
          }
        }

        else
        {
          selfCopy2 = self;
        }

        v41 = selfCopy2;
        *v45 = selfCopy2;
      }

      v28 = v55[5];

      _Block_object_dispose(&v54, 8);
      goto LABEL_60;
    }

    if (a4 == 2)
    {
      v36 = [self _accessibilityLastOpaqueElementWithOptions:v18];
    }

    else
    {
      if (a4 != 1)
      {
        v37 = 0;
        goto LABEL_48;
      }

      v36 = [self _accessibilityFirstOpaqueElementWithOptions:v18];
    }

    v37 = v36;
LABEL_48:
    v38 = [v37 _accessibilityFindElementInDirection:a4 searchType:a5 allowOutOfBoundsChild:a6 startingTouchContainer:_accessibilityTouchContainer honorGroups:a10];
    v39 = v55[5];
    v55[5] = v38;

    goto LABEL_49;
  }

  v30 = AXLogOpaqueElements();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [NSObject(AXPrivCategory) _accessibilitySearchSubtreesAfterChildElement:direction:searchType:allowOutOfBoundsChild:range:shouldScrollToVisible:honorGroups:updatedContainer:];
  }

  v28 = [self _accessibilityFirstOpaqueElementWithOptions:v18];
LABEL_60:

  return v28;
}

- (id)_accessibilityVisibleOpaqueElementsHonoringGroups:()AXPrivCategory sorted:
{
  v23 = *MEMORY[0x1E69E9840];
  if (([self isAccessibilityOpaqueElementProvider] & 1) == 0)
  {
    _AXAssert();
  }

  v7 = +[UIAccessibilityElementTraversalOptions options];
  v8 = v7;
  if (a3)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __85__NSObject_AXPrivCategory___accessibilityVisibleOpaqueElementsHonoringGroups_sorted___block_invoke;
    v21[3] = &unk_1E78AA760;
    v21[4] = self;
    [v7 setLeafNodePredicate:v21];
  }

  [v8 setShouldOnlyIncludeElementsWithVisibleFrame:1];
  [v8 setSorted:a4];
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [self _accessibilitySortedElementsWithinWithOptions:{v8, 0}];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * i) _accessibilityLeafDescendantsWithOptions:v8];
        [array addObjectsFromArray:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v12);
  }

  return array;
}

- (id)_accessibilityDescendantOfType:()AXPrivCategory
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__NSObject_AXPrivCategory___accessibilityDescendantOfType___block_invoke;
  v5[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v5[4] = a3;
  v3 = [self _accessibilityFindDescendant:v5];

  return v3;
}

- (BOOL)_accessibilityHasDescendantOfType:()AXPrivCategory
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__NSObject_AXPrivCategory___accessibilityHasDescendantOfType___block_invoke;
  v6[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v6[4] = a3;
  v3 = [self _accessibilityFindDescendant:v6];
  v4 = v3 != 0;

  return v4;
}

- (id)accessibilityViewWithIdentifier:()AXPrivCategory
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__NSObject_AXPrivCategory__accessibilityViewWithIdentifier___block_invoke;
  v8[3] = &unk_1E78AA760;
  v9 = v4;
  v5 = v4;
  v6 = [self _accessibilityFindDescendant:v8];

  return v6;
}

- (BOOL)_accessibilityIsViewDescendantOfElement:()AXPrivCategory
{
  v4 = a3;
  selfCopy = self;
  superview = selfCopy;
  for (i = selfCopy != 0; superview != v4 && superview; i = superview != 0)
  {
    v8 = superview;
    superview = [superview superview];
  }

  return i;
}

- (BOOL)_accessibilityIsDescendantOfElement:()AXPrivCategory
{
  v6 = a3;
  selfCopy = self;
  NSClassFromString(&cfstr_Uiaccessibilit_6.isa);
  NSClassFromString(&cfstr_Uitableviewcel.isa);
  NSClassFromString(&cfstr_Uicollectionvi.isa);
  v8 = selfCopy != 0;
  if (selfCopy != v6 && selfCopy)
  {
    while (1)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = [v6 safeValueForKey:@"view"];

        if (v9 == selfCopy)
        {
          break;
        }
      }

      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v3 = [v6 safeValueForKey:@"tableViewCell"];
        v11 = v3;
        if (v3 == selfCopy)
        {
          goto LABEL_32;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
      {
        v12 = [selfCopy safeValueForKey:@"tableViewCell"];

        if (isKindOfClass)
        {
        }

        if (v12 == v6)
        {
          break;
        }
      }

      else if (isKindOfClass)
      {
      }

      v13 = objc_opt_isKindOfClass();
      if (v13)
      {
        v4 = [v6 safeValueForKey:@"cell"];
        v11 = v4;
        if (v4 == selfCopy)
        {
LABEL_32:

          break;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
      {
        v14 = [selfCopy safeValueForKey:@"cell"];

        if (v13)
        {
        }

        if (v14 == v6)
        {
          break;
        }
      }

      else if (v13)
      {
      }

      accessibilityContainer = [selfCopy accessibilityContainer];
      v16 = AXRemoteElementFromObject();

      if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        superview = [selfCopy superview];
      }

      else
      {
        superview = [selfCopy accessibilityContainer];
      }

      v18 = superview;

      v8 = v18 != 0;
      if (v18 != v6)
      {
        selfCopy = v18;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    v8 = 1;
  }

  v18 = selfCopy;
LABEL_35:

  return v8;
}

- (id)_accessibilityFindViewAncestor:()AXPrivCategory startWithSelf:
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (!a4 ? ([self superview], v7 = objc_claimAutoreleasedReturnValue()) : (v7 = self), (v8 = v7) != 0))
  {
    while (1)
    {
      v11 = 0;
      if (v6[2](v6, v8, &v11))
      {
        superview = v8;
        goto LABEL_13;
      }

      if (v11 == 1)
      {
        break;
      }

      superview = [v8 superview];

      v8 = superview;
      if (!superview)
      {
        goto LABEL_14;
      }
    }

    superview = 0;
LABEL_13:
  }

  else
  {
    superview = 0;
  }

LABEL_14:

  return superview;
}

- (id)_accessibilityViewAncestorIsKindOf:()AXPrivCategory
{
  if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    selfCopy = self;
    if (selfCopy)
    {
      do
      {
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        superview = [selfCopy superview];

        selfCopy = superview;
      }

      while (superview);
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_accessibilityAncestorIsKindOf:()AXPrivCategory
{
  if (a3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__NSObject_AXPrivCategory___accessibilityAncestorIsKindOf___block_invoke;
    v6[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
    v6[4] = a3;
    v4 = [self _accessibilityFindAncestor:v6 startWithSelf:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)accessibilityEnumerateAncestorsUsingBlock:()AXPrivCategory
{
  v4 = a3;
  selfCopy = self;
  if (selfCopy)
  {
    v6 = selfCopy;
    while (1)
    {
      v8 = 0;
      v4[2](v4, v6, &v8);
      if (v8 == 1)
      {
        break;
      }

      accessibilityContainer = [v6 accessibilityContainer];

      v6 = accessibilityContainer;
      if (!accessibilityContainer)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:
}

- (id)_accessibilityFindAncestor:()AXPrivCategory startWithSelf:findTopmostAncestor:
{
  v8 = a3;
  if (a4)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self accessibilityContainer];
  }

  v10 = selfCopy;
  if (selfCopy)
  {
    v11 = 0;
    do
    {
      if (v8[2](v8, v10))
      {
        accessibilityContainer = v10;

        v11 = accessibilityContainer;
        if (!a5)
        {
          break;
        }
      }

      accessibilityContainer = [v10 accessibilityContainer];

      v10 = accessibilityContainer;
    }

    while (accessibilityContainer);
  }

  else
  {
    accessibilityContainer = 0;
    v11 = 0;
  }

  return v11;
}

- (id)_accessibilityFindDescendant:()AXPrivCategory shouldStopAtLeafNodes:
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__NSObject_AXPrivCategory___accessibilityFindDescendant_shouldStopAtLeafNodes___block_invoke;
  v6[3] = &unk_1E78AB1D8;
  v6[4] = self;
  v7 = a4;
  v4 = [self _accessibilityFindFirstAXDescendantPassingTest:a3 byYieldingElements:v6];

  return v4;
}

- (id)_accessibilityFindViewControllerDescendantOfType:()AXPrivCategory
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__NSObject_AXPrivCategory___accessibilityFindViewControllerDescendantOfType___block_invoke;
  v5[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v5[4] = a3;
  v3 = [self _accessibilityFindViewControllerDescendant:v5];

  return v3;
}

- (id)_accessibilityFindViewControllerAncestor:()AXPrivCategory
{
  v4 = a3;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__NSObject_AXPrivCategory___accessibilityFindViewControllerAncestor___block_invoke;
  v9[3] = &unk_1E78AB220;
  v5 = v4;
  v10 = v5;
  v11 = v19;
  v12 = &v13;
  v6 = [self _accessibilityFindAncestor:v9 startWithSelf:1];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(v19, 8);

  return v7;
}

- (id)_accessibilityFindViewControllerAncestorOfType:()AXPrivCategory
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__NSObject_AXPrivCategory___accessibilityFindViewControllerAncestorOfType___block_invoke;
  v5[3] = &__block_descriptor_40_e30_B24__0__UIViewController_8_B16lu32l8;
  v5[4] = a3;
  v3 = [self _accessibilityFindViewControllerAncestor:v5];

  return v3;
}

- (id)_accessibilityControlDescendantWithTarget:()AXPrivCategory
{
  v4 = a3;
  v5 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__NSObject_AXPrivCategory___accessibilityControlDescendantWithTarget___block_invoke;
  v9[3] = &unk_1E78AB268;
  v10 = v4;
  v11 = v5;
  v6 = v4;
  v7 = [self _accessibilityFindSubviewDescendant:v9];

  return v7;
}

- (id)_accessibilityControlDescendantWithAction:()AXPrivCategory
{
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(a3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__NSObject_AXPrivCategory___accessibilityControlDescendantWithAction___block_invoke;
  v10[3] = &unk_1E78AB268;
  v11 = v6;
  v12 = v5;
  v7 = v6;
  v8 = [self _accessibilityFindSubviewDescendant:v10];

  return v8;
}

- (void)_accessibilitySetAuditIssueDict:()AXPrivCategory
{
  v5 = a3;
  v4 = [self _accessibilityValueForKey:@"auditIssueSetAssociatedObjectKey"];
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    [self _accessibilitySetRetainedValue:v4 forKey:@"auditIssueSetAssociatedObjectKey"];
  }

  [v4 addObject:v5];
}

- (id)_accessibilityAuditIssuesWithOptions:()AXPrivCategory
{
  v0 = objc_opt_new();

  return v0;
}

- (id)_accessibilityVisibleElementsHonoringGroups:()AXPrivCategory respectGroupedParents:
{
  v7 = +[UIAccessibilityElementTraversalOptions options];
  v8 = v7;
  if (a3)
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __94__NSObject_AXPrivCategory___accessibilityVisibleElementsHonoringGroups_respectGroupedParents___block_invoke;
    v23[3] = &unk_1E78AB290;
    v24 = a4;
    v23[4] = self;
    [v7 setLeafNodePredicate:v23];
  }

  [v8 setShouldOnlyIncludeElementsWithVisibleFrame:1];
  v9 = [self _accessibilityLeafDescendantsWithOptions:v8];
  v10 = v9;
  if (a3)
  {
    v11 = objc_opt_new();
    v20 = v10;
    v12 = [MEMORY[0x1E695DF70] axArrayWithPossiblyNilArrays:{1, v10}];
    while ([v12 count])
    {
      ax_dequeueObject = [v12 ax_dequeueObject];
      [v11 axSafelyAddObject:ax_dequeueObject];
      v14 = +[UIAccessibilityElementTraversalOptions options];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __94__NSObject_AXPrivCategory___accessibilityVisibleElementsHonoringGroups_respectGroupedParents___block_invoke_2;
      v21[3] = &unk_1E78AA760;
      v15 = ax_dequeueObject;
      v22 = v15;
      [v14 setLeafNodePredicate:v21];
      [v8 setShouldOnlyIncludeElementsWithVisibleFrame:1];
      v16 = [v15 _accessibilityLeafDescendantsWithOptions:v14];
      firstObject = [v16 firstObject];
      v18 = [firstObject isEqual:v15];

      if ((v18 & 1) == 0)
      {
        [v12 axSafelyAddObjectsFromArray:v16];
      }
    }

    v10 = v20;
  }

  else
  {
    v11 = v9;
  }

  return v11;
}

- (id)_accessibilityRemoteParent
{
  selfCopy = self;
  if (selfCopy)
  {
    while (1)
    {
      v2 = AXRemoteElementFromObject();
      v3 = v2;
      if (v2)
      {
        if (([v2 onClientSide] & 1) == 0)
        {
          break;
        }
      }

      accessibilityContainer = [selfCopy accessibilityContainer];

      selfCopy = accessibilityContainer;
      if (!accessibilityContainer)
      {
        goto LABEL_7;
      }
    }

    selfCopy = selfCopy;
  }

LABEL_7:

  return selfCopy;
}

- (id)_accessibilityOrderedChildrenContainerWithinElements:()AXPrivCategory
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  accessibilityContainer = [self accessibilityContainer];
  if (accessibilityContainer)
  {
    while (([accessibilityContainer _accessibilityHasOrderedChildren] & 1) == 0)
    {
      v5AccessibilityContainer = [accessibilityContainer accessibilityContainer];

      accessibilityContainer = v5AccessibilityContainer;
      if (!v5AccessibilityContainer)
      {
        goto LABEL_19;
      }
    }

    if (v4)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              _accessibilityParentView = [accessibilityContainer _accessibilityParentView];
              v14 = [_accessibilityParentView _accessibilityIsViewDescendantOfElement:v12];

              if (v14)
              {
                goto LABEL_18;
              }
            }

            else if ([accessibilityContainer _accessibilityIsDescendantOfElement:{v12, v19}])
            {
              goto LABEL_18;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }

      v7 = accessibilityContainer;
      accessibilityContainer = 0;
LABEL_18:
    }
  }

LABEL_19:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [accessibilityContainer safeValueForKey:@"_accessibilityMockParent"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;

      accessibilityContainer = v17;
    }
  }

  return accessibilityContainer;
}

- (id)_accessibilityScannerElementsGrouped:()AXPrivCategory shouldIncludeNonScannerElements:
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = +[UIAccessibilityElementTraversalOptions defaultSwitchControlOptions];
  [v7 setShouldReturnScannerGroups:a3];
  if (a4)
  {
    [v7 setLeafNodePredicate:&__block_literal_global_1445];
  }

  v8 = [self _accessibilityLeafDescendantsWithOptions:v7];
  v9 = AXLogElementTraversal();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11[0] = 67109634;
    v11[1] = a3;
    v12 = 1024;
    v13 = a4;
    v14 = 2114;
    v15 = v8;
    _os_log_debug_impl(&dword_1A9B83000, v9, OS_LOG_TYPE_DEBUG, "*** Scanner elements (grouped: %i, include non scanner: %i) were %{public}@", v11, 0x18u);
  }

  return v8;
}

- (void)setAccessibilitySize:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696B098] axValueWithCGSize:?];
  [self _accessibilitySetRetainedValue:v2 forKey:@"_AX_Size"];
}

- (void)_accessibilitySetAllowedGeometryOverlap:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [self _accessibilitySetRetainedValue:v2 forKey:@"UIAccessibilityStorageKeyAllowedGeometryOverlap"];
}

- (double)_accessibilityAllowedGeometryOverlap
{
  v2 = 13.0;
  if ((AXDeviceIsPad() & 1) == 0)
  {
    if (AXDeviceIsWatch())
    {
      v2 = 4.0;
    }

    else
    {
      v2 = 8.0;
    }
  }

  v3 = [self _accessibilityValueForKey:@"UIAccessibilityStorageKeyAllowedGeometryOverlap"];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v2 = v5;
  }

  return v2;
}

- (uint64_t)_accessibilityOverridesInvisibility
{
  v2 = [self _accessibilityValueForKey:@"UIAccessibilityStorageKeyOverridesInvisibility"];

  if (!v2)
  {
    return 0;
  }

  return [self _accessibilityBoolValueForKey:@"UIAccessibilityStorageKeyOverridesInvisibility"];
}

- (uint64_t)_accessibilitySortPriorityWithReturningElement:()AXPrivCategory
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p-sortPriorityWithView", self];
  v6 = [AXServerCache objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [AXServerCache objectForKeyedSubscript:v5];
    *a3 = [v7 objectForKeyedSubscript:@"view"];

    selfCopy = [AXServerCache objectForKeyedSubscript:v5];
    v9 = [selfCopy objectForKeyedSubscript:@"priority"];
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = UIAccessibilityDefaultSortPriority;
    selfCopy = self;
    if (selfCopy)
    {
      while (1)
      {
        integerValue = [selfCopy _accessibilitySortPriority];
        if (integerValue != UIAccessibilityDefaultSortPriority)
        {
          break;
        }

        accessibilityContainer = [selfCopy accessibilityContainer];

        selfCopy = accessibilityContainer;
        if (!accessibilityContainer)
        {
          goto LABEL_8;
        }
      }

      v12 = selfCopy;
      *a3 = selfCopy;
    }

LABEL_8:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = dictionary;
    if (*a3)
    {
      [dictionary setObject:*a3 forKeyedSubscript:@"view"];
    }

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
    [v9 setObject:v14 forKeyedSubscript:@"priority"];

    [AXServerCache setObject:v9 forKeyedSubscript:v5];
  }

  return integerValue;
}

- (double)_handleRotatingFrame:()AXPrivCategory fromOrientation:toOrientation:
{
  if (a4)
  {
    AXDeviceGetMainScreenBounds();
    _UIConvertRectFromOrientationToOrientation();
    return v5;
  }

  return self;
}

- (double)_accessibilityChildrenUnionContentFrame
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x4010000000;
  v8 = "";
  v1 = *(MEMORY[0x1E695F058] + 16);
  v9 = *MEMORY[0x1E695F058];
  v10 = v1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__NSObject_AXPrivCategory___accessibilityChildrenUnionContentFrame__block_invoke;
  v4[3] = &unk_1E78AB050;
  v4[4] = &v5;
  [self accessibilityEnumerateContainerElementsUsingBlock:v4];
  v2 = v6[4];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (uint64_t)_accessibilityOrientationForCompareGeometryForApplication:()AXPrivCategory
{
  v4 = a3;
  if (AXProcessIsSpringBoard())
  {
    activeInterfaceOrientation = [v4 activeInterfaceOrientation];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      _accessibilityWindow = [self _accessibilityWindow];
      interfaceOrientation = [_accessibilityWindow interfaceOrientation];

      goto LABEL_7;
    }

    activeInterfaceOrientation = [v4 _accessibilityOrientationForCompareGeometry];
  }

  interfaceOrientation = activeInterfaceOrientation;
LABEL_7:

  return interfaceOrientation;
}

- (uint64_t)accessibilityCompareGeometry:()AXPrivCategory
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [self _accessibilityCompareGeometry:v4];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (double)_accessibilityVisibleFrame:()AXPrivCategory
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x4010000000;
  v26 = "";
  v5 = *(MEMORY[0x1E695F058] + 16);
  v27 = *MEMORY[0x1E695F058];
  v28 = v5;
  accessibilityPath = [self accessibilityPath];
  v7 = accessibilityPath;
  if (accessibilityPath)
  {
    BoundingBox = CGPathGetBoundingBox([accessibilityPath CGPath]);
  }

  else
  {
    [self _accessibilityContentFrame];
  }

  v24[1] = BoundingBox;
  _accessibilityVisibleFrameClippingAncestor = [self _accessibilityVisibleFrameClippingAncestor];
  v9 = _accessibilityVisibleFrameClippingAncestor;
  if (_accessibilityVisibleFrameClippingAncestor)
  {
    [_accessibilityVisibleFrameClippingAncestor accessibilityFrame];
    v31.origin.x = v10;
    v31.origin.y = v11;
    v31.size.width = v12;
    v31.size.height = v13;
    v30 = CGRectIntersection(v24[1], v31);
    v24[1] = v30;
  }

  if (a3)
  {
    v14 = MEMORY[0x1E69DDA98];
    if ([*MEMORY[0x1E69DDA98] _accessibilitySoftwareKeyboardCoversElement:self])
    {
      [*v14 _accessibilitySoftwareKeyboardAccessibilityFrame];
      AX_CGRectBySubtractingRect();
      p_x = &v24->origin.x;
      v24[1].origin.x = v16;
      p_x[5] = v17;
      p_x[6] = v18;
      p_x[7] = v19;
    }
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __55__NSObject_AXPrivCategory___accessibilityVisibleFrame___block_invoke;
  v22[3] = &unk_1E78AACB0;
  v22[4] = &v23;
  [self _accessibilityIterateScrollParentsUsingBlock:v22 includeSelf:0];
  x = v24[1].origin.x;

  _Block_object_dispose(&v23, 8);
  return x;
}

- (double)_accessibilityConvertSystemBoundedScreenRectToContextSpace:()AXPrivCategory
{
  _accessibilityWindow = [self _accessibilityWindow];
  if (_accessibilityWindow)
  {
    AXUIConvertRectFromScreenToContextSpace();
    a2 = v4;
  }

  return a2;
}

- (id)_accessibilityConvertSystemBoundedPathToContextSpace:()AXPrivCategory
{
  if (a3)
  {
    [a3 CGPath];
    Mutable = CGPathCreateMutable();
    v7 = MEMORY[0x1E69E9820];
    AX_CGPathEnumerateElementsUsingBlock();
    v5 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:{Mutable, v7, 3221225472, __81__NSObject_AXPrivCategory___accessibilityConvertSystemBoundedPathToContextSpace___block_invoke, &unk_1E78AB2C0, self, Mutable}];
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_accessibilityDisplayRectForSceneReferenceRect:()AXPrivCategory
{
  v22 = CGRectStandardize(*&a2);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  [self _accessibilityDisplayPointForSceneReferencePoint:?];
  v11 = v10;
  v13 = v12;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MaxY = CGRectGetMaxY(v24);
  [self _accessibilityDisplayPointForSceneReferencePoint:{MaxX, MaxY}];
  if (v11 != x || v13 != y || v16 != MaxX || v17 != MaxY)
  {
    if (v11 >= v16)
    {
      return v16;
    }

    else
    {
      return v11;
    }
  }

  return x;
}

- (__n128)_accessibilityJailTransform
{
  v1 = MEMORY[0x1E695EFD0];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  *self = *MEMORY[0x1E695EFD0];
  *(self + 16) = v2;
  result = v1[2];
  *(self + 32) = result;
  return result;
}

- (double)_accessibilityCompareFrameForScrollParent:()AXPrivCategory frame:fromOrientation:toOrientation:
{
  v10 = a4;
  if (v10)
  {
    if (objc_opt_respondsToSelector())
    {
      [v10 visibleBounds];
      x = UIAccessibilityFrameForBounds(v10, v11, v12, v13, v14);
      y = v16;
      width = v18;
      height = v20;
      [v10 _accessibilityContentFrame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v35.origin.x = v23;
      v35.origin.y = v25;
      v35.size.width = v27;
      v35.size.height = v29;
      if (!CGRectContainsRect(v32, v35))
      {
LABEL_7:
        [self _handleRotatingFrame:a5 fromOrientation:a6 toOrientation:{x, y, width, height}];
        a2 = v30;
        goto LABEL_8;
      }

      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v36.origin.x = v23;
      v36.origin.y = v25;
      v36.size.width = v27;
      v36.size.height = v29;
      v34 = CGRectIntersection(v33, v36);
    }

    else
    {
      [v10 accessibilityFrame];
    }

    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    goto LABEL_7;
  }

LABEL_8:

  return a2;
}

- (void)_accessibilitySetSortPriority:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [self _accessibilitySetRetainedValue:v2 forKey:@"AXSortPriority"];
}

- (void)_accessibilitySetIsSortPriorityContainer:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _accessibilitySetRetainedValue:v2 forKey:@"AXIsSortPriorityContainer"];
}

- (double)_axScreenBoundsForBoundsCheck
{
  _accessibilityWindow = [self _accessibilityWindow];
  [_accessibilityWindow frame];
  v4 = v3 == *MEMORY[0x1E695EFF8] && v2 == *(MEMORY[0x1E695EFF8] + 8);
  if (!v4 && ([_accessibilityWindow isKeyWindow] & 1) == 0)
  {
    keyWindow = [*MEMORY[0x1E69DDA98] keyWindow];

    _accessibilityWindow = keyWindow;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if ([mEMORY[0x1E69DC668] _accessibilityUseWindowBoundsForOutOfBoundsChecking])
  {
  }

  else
  {
    _accessibilityUseWindowBoundsForOutOfBoundsChecking = [_accessibilityWindow _accessibilityUseWindowBoundsForOutOfBoundsChecking];

    if (!_accessibilityUseWindowBoundsForOutOfBoundsChecking)
    {
      screen = [_accessibilityWindow screen];
      [screen bounds];
      v9 = v11;

      goto LABEL_12;
    }
  }

  [_accessibilityWindow bounds];
  v9 = v8;
LABEL_12:

  return v9;
}

- (id)_axOutermostScrollParent
{
  if (UIAccessibilityIsWidgetExtension())
  {
    v2 = 0;
  }

  else
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__2;
    v9 = __Block_byref_object_dispose__2;
    v10 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __52__NSObject_AXPrivCategory___axOutermostScrollParent__block_invoke;
    v4[3] = &unk_1E78AACB0;
    v4[4] = &v5;
    [self _accessibilityIterateScrollParentsUsingBlock:v4];
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return v2;
}

- (double)_axFrameForBoundsCheck:()AXPrivCategory
{
  [self accessibilityFrame];
  x = v14.origin.x;
  if (CGRectIsEmpty(v14))
  {
    return *MEMORY[0x1E695F050];
  }

  _accessibilityUIViewAccessibilityFrame = [self _accessibilityUIViewAccessibilityFrame];
  v7 = _accessibilityUIViewAccessibilityFrame;
  if (_accessibilityUIViewAccessibilityFrame)
  {
    [_accessibilityUIViewAccessibilityFrame CGRectValue];
    x = v8;
  }

  if (a3)
  {
    _axOutermostScrollParent = [self _axOutermostScrollParent];
    if (_axOutermostScrollParent)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _accessibilityUIViewAccessibilityFrame2 = [_axOutermostScrollParent _accessibilityUIViewAccessibilityFrame];
        [_accessibilityUIViewAccessibilityFrame2 CGRectValue];
        x = v11;
      }

      else
      {
        [_axOutermostScrollParent accessibilityFrame];
        x = v12;
      }
    }
  }

  return x;
}

- (uint64_t)_accessibilityIsFrameOutOfBoundsConsideringScrollParents:()AXPrivCategory
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p-_accessibilityIsFrameOutOfBoundsConsideringScrollParents", self];
  v6 = [AXServerCache objectForKeyedSubscript:v5];

  if (!v6)
  {
    if (![self _accessibilityOverridesInvalidFrames])
    {
      [self _axScreenBoundsForBoundsCheck];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      [self _axFrameForBoundsCheck:a3];
      x = v42.origin.x;
      y = v42.origin.y;
      width = v42.size.width;
      height = v42.size.height;
      if (CGRectIsNull(v42))
      {
        goto LABEL_7;
      }

      v38 = v12;
      v40 = v10;
      v43.origin.x = v10;
      v43.origin.y = v12;
      v43.size.width = v14;
      v43.size.height = v16;
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v44 = CGRectIntersection(v43, v51);
      v22 = v44.size.width;
      if (v44.size.width < 1.0 || (v23 = v44.size.height, v44.size.height < 1.0))
      {
        selfCopy = [self _axOutermostScrollParent];
        if (!selfCopy)
        {
          selfCopy = self;
        }

        _accessibilityHeaderElement = [selfCopy _accessibilityHeaderElement];

        if (_accessibilityHeaderElement)
        {
          _accessibilityParentView = [selfCopy _accessibilityParentView];
          [_accessibilityParentView bounds];
          v52.origin.x = UIAccessibilityFrameForBounds(_accessibilityParentView, v31, v32, v33, v34);
          v52.origin.y = v35;
          v52.size.width = v36;
          v52.size.height = v37;
          v49.origin.x = v40;
          v49.origin.y = v38;
          v49.size.width = v14;
          v49.size.height = v16;
          v50 = CGRectIntersection(v49, v52);
          if (v50.size.width > 0.0 && v50.size.height > 0.0)
          {
            [AXServerCache setObject:MEMORY[0x1E695E110] forKeyedSubscript:{v5, v50.origin.x, v50.origin.y}];

            bOOLValue = 0;
            goto LABEL_3;
          }
        }

        [AXServerCache setObject:MEMORY[0x1E695E118] forKeyedSubscript:v5];
        bOOLValue = 1;
        goto LABEL_3;
      }

      v39 = v44.origin.y;
      v41 = v44.origin.x;
      if ([self isAccessibilityElement])
      {
        v45.origin.x = x;
        v45.origin.y = y;
        v45.size.width = width;
        v45.size.height = height;
        v24 = CGRectGetWidth(v45);
        v46.origin.x = x;
        v46.origin.y = y;
        v46.size.width = width;
        v46.size.height = height;
        v25 = v24 * CGRectGetHeight(v46);
        v47.origin.x = v41;
        v47.origin.y = v39;
        v47.size.width = v22;
        v47.size.height = v23;
        v26 = CGRectGetWidth(v47);
        v48.origin.x = v41;
        v48.origin.y = v39;
        v48.size.width = v22;
        v48.size.height = v23;
        v27 = (v25 - v26 * CGRectGetHeight(v48)) / v25;
        [*MEMORY[0x1E69DDA98] _accessibilityMaximumAllowedOutOfBoundsPercent];
        if (v27 > v28)
        {
LABEL_7:
          [AXServerCache setObject:MEMORY[0x1E695E118] forKeyedSubscript:v5];
          bOOLValue = 1;
          goto LABEL_8;
        }
      }
    }

    [AXServerCache setObject:MEMORY[0x1E695E110] forKeyedSubscript:v5];
    bOOLValue = 0;
    goto LABEL_8;
  }

  selfCopy = [AXServerCache objectForKeyedSubscript:v5];
  bOOLValue = [selfCopy BOOLValue];
LABEL_3:

LABEL_8:
  return bOOLValue;
}

- (uint64_t)_accessibilityPerformCustomActionWithIdentifier:()AXPrivCategory
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = [v4 objectForKeyedSubscript:@"CustomActionIdentifier"];
  }

  v6 = v5;
LABEL_7:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  _accessibilityCustomActions = [self _accessibilityCustomActions];
  v8 = [_accessibilityCustomActions countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
LABEL_9:
    v11 = 0;
    while (1)
    {
      if (*v32 != v10)
      {
        objc_enumerationMutation(_accessibilityCustomActions);
      }

      v12 = *(*(&v31 + 1) + 8 * v11);
      if ([v12 _accessibilityMatchesCustomActionIdentifier:v6])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [_accessibilityCustomActions countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v9)
        {
          goto LABEL_9;
        }

        goto LABEL_25;
      }
    }

    actionHandler = [v12 actionHandler];

    if (actionHandler)
    {
      actionHandler2 = [v12 actionHandler];
      v15 = (actionHandler2)[2](actionHandler2, v12);
LABEL_18:

      goto LABEL_26;
    }

    target = [v12 target];

    if (target)
    {
      target2 = [v12 target];
      v18 = objc_opt_class();
      InstanceMethod = class_getInstanceMethod(v18, [v12 selector]);

      if (InstanceMethod)
      {
        actionHandler2 = [v12 target];
        v20 = method_copyReturnType(InstanceMethod);
        if (v20)
        {
          if (*v20 == 66)
          {
            v21 = v20[1];
            free(v20);
            if (!v21)
            {
              v22 = 0;
              goto LABEL_29;
            }
          }

          else
          {
            free(v20);
          }
        }

        v24 = NSStringFromSelector([v12 selector]);
        NSLog(&cfstr_ShouldReturnAB.isa, actionHandler2, v24);

        v22 = 1;
LABEL_29:
        target3 = [v12 target];
        [v12 selector];
        v26 = objc_opt_respondsToSelector();

        if (v26)
        {
          target4 = [v12 target];
          v28 = [target4 methodForSelector:{objc_msgSend(v12, "selector")}];

          target5 = [v12 target];
          v30 = v28(target5, [v12 selector], v12);

          v15 = v22 | v30;
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_18;
      }
    }
  }

LABEL_25:
  v15 = 0;
LABEL_26:

  return v15 & 1;
}

- (uint64_t)accessibilityZoomInAtPoint:()AXPrivCategory
{
  accessibilityContainer = [self accessibilityContainer];
  v6 = [accessibilityContainer accessibilityZoomInAtPoint:{a2, a3}];

  return v6;
}

- (uint64_t)accessibilityZoomOutAtPoint:()AXPrivCategory
{
  accessibilityContainer = [self accessibilityContainer];
  v6 = [accessibilityContainer accessibilityZoomOutAtPoint:{a2, a3}];

  return v6;
}

- (void)accessibilityIncreaseTrackingDetail
{
  accessibilityContainer = [self accessibilityContainer];
  [accessibilityContainer accessibilityIncreaseTrackingDetail];
}

- (void)accessibilityDecreaseTrackingDetail
{
  accessibilityContainer = [self accessibilityContainer];
  [accessibilityContainer accessibilityDecreaseTrackingDetail];
}

- (uint64_t)_accessibilityTextOperationAction:()AXPrivCategory
{
  v4 = a3;
  _accessibilityTextViewTextOperationResponder = [self _accessibilityTextViewTextOperationResponder];
  if (([_accessibilityTextViewTextOperationResponder accessibilityEditOperationAction:v4] & 1) == 0)
  {
    if ([v4 isEqualToString:*MEMORY[0x1E6989170]])
    {
      [self _accessibilityCopy];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891C0]])
    {
      [self _accessibilityScanText];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E6989178]])
    {
      [self _accessibilityCut];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891A8]])
    {
      [self _accessibilityPaste];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891D0]])
    {
      [self _accessibilitySelectAll];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891A0]])
    {
      [self _accessibilityMoveUp];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E6989198]])
    {
      [self _accessibilityMoveDown];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891C8]])
    {
      [self _accessibilitySelect];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E6989188]])
    {
      [self _accessibilityDelete];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891B8]])
    {
      [self _accessibilityReplace];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E6989180]])
    {
      [self _accessibilityDefine];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891D8]])
    {
      [self _accessibilityShare];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891F8]])
    {
      [self _accessibilityUnderline];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E6989168]])
    {
      [self _accessibilityBold];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E6989190]])
    {
      [self _accessibilityItalic];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E6989200]])
    {
      [self _accessibilityUndo];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891B0]])
    {
      [self _accessibilityRedo];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891E0]])
    {
      [self _accessibilitySpeak];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891E8]])
    {
      [self _accessibilitySpeakSentence];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891F0]])
    {
      [self _accessibilitySpeakSpellOut];
    }

    else
    {
      if (![v4 isEqualToString:*MEMORY[0x1E6989208]])
      {
        v6 = 0;
        goto LABEL_45;
      }

      [self _accessibilityShowWritingTools];
    }
  }

  v6 = 1;
LABEL_45:

  return v6;
}

- (uint64_t)_accessibilityAuthenticatedPasteWithValue:()AXPrivCategory
{
  v4 = MEMORY[0x1E696ACD0];
  v5 = a3;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:0];

  v9 = v6;
  v7 = v6;
  AXPerformSafeBlock();
  [self _accessibilityPaste];

  return 1;
}

- (void)_accessibilityShowKeyboard
{
  mEMORY[0x1E69DCBE0] = [MEMORY[0x1E69DCBE0] sharedInstance];
  [mEMORY[0x1E69DCBE0] showKeyboardWithoutSuppressionPolicy];
}

- (void)_accessibilityHideKeyboard
{
  mEMORY[0x1E69DCBE0] = [MEMORY[0x1E69DCBE0] sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    mEMORY[0x1E69DCBE0]2 = [MEMORY[0x1E69DCBE0] sharedInstance];
    [mEMORY[0x1E69DCBE0]2 hideKeyboard];
  }
}

- (id)_accessibilityCustomRotorResultHelper:()AXPrivCategory array:
{
  v5 = a4;
  v6 = a3;
  currentItem = [v6 currentItem];
  targetElement = [currentItem targetElement];
  if (targetElement)
  {
    v9 = targetElement;
    currentItem2 = [v6 currentItem];
    targetElement2 = [currentItem2 targetElement];
    v12 = [v5 indexOfObject:targetElement2];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = -1;
    }

    else
    {
      v13 = v12;
    }

    searchDirection = [v6 searchDirection];

    if (searchDirection != 1)
    {
      if (v13 != -1)
      {
LABEL_12:
        v16 = v13 - 1;
        goto LABEL_13;
      }

LABEL_11:
      v13 = [v5 count];
      goto LABEL_12;
    }
  }

  else
  {

    searchDirection2 = [v6 searchDirection];
    if (searchDirection2 != 1)
    {
      goto LABEL_11;
    }

    v13 = -1;
  }

  v16 = v13 + 1;
LABEL_13:
  v17 = [v5 count];
  v18 = 0;
  if ((v16 & 0x8000000000000000) == 0 && v16 < v17)
  {
    v19 = objc_alloc(MEMORY[0x1E69DC5F8]);
    v20 = [v5 objectAtIndexedSubscript:v16];
    v18 = [v19 initWithTargetElement:v20 targetRange:0];
  }

  return v18;
}

- (uint64_t)_accessibilityPerformEscape
{
  if (!_accessibilityPerformEscape_BaseNSObjectMethod)
  {
    v2 = objc_opt_class();
    _accessibilityPerformEscape_BaseNSObjectMethod = class_getInstanceMethod(v2, sel_accessibilityPerformEscape);
  }

  selfCopy = self;
  if (selfCopy)
  {
    v4 = selfCopy;
    while (1)
    {
      v5 = objc_opt_class();
      if (class_getInstanceMethod(v5, sel_accessibilityPerformEscape) != _accessibilityPerformEscape_BaseNSObjectMethod && ([v4 accessibilityPerformEscape] & 1) != 0)
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!_accessibilityPerformEscape_AXUIViewControllerClass)
        {
          _accessibilityPerformEscape_AXUIViewControllerClass = NSClassFromString(&cfstr_Uiviewcontroll.isa);
        }

        NSClassFromString(&cfstr_Uilayoutcontai.isa);
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v7 = __55__NSObject_AXPrivCategory___accessibilityPerformEscape__block_invoke_3(isKindOfClass, v4);
          if ((v7 & 1) != 0 || __55__NSObject_AXPrivCategory___accessibilityPerformEscape__block_invoke(v7, v4))
          {
            break;
          }
        }

        else
        {
          v8 = __55__NSObject_AXPrivCategory___accessibilityPerformEscape__block_invoke(isKindOfClass, v4);
          if (v8 || (__55__NSObject_AXPrivCategory___accessibilityPerformEscape__block_invoke_3(v8, v4) & 1) != 0)
          {
            break;
          }
        }
      }

      accessibilityContainer = [v4 accessibilityContainer];

      v4 = accessibilityContainer;
      if (!accessibilityContainer)
      {
        goto LABEL_17;
      }
    }

    return 1;
  }

  else
  {
LABEL_17:
    v10 = *MEMORY[0x1E69DDA98];

    return [v10 accessibilityPerformEscape];
  }
}

- (id)_accessibilityTextOperations
{
  _accessibilityTextViewTextOperationResponder = [self _accessibilityTextViewTextOperationResponder];
  v3 = _accessibilityTextViewTextOperationResponder;
  if (_accessibilityTextViewTextOperationResponder == self)
  {
    _accessibilityTextOperations = 0;
  }

  else
  {
    _accessibilityTextOperations = [_accessibilityTextViewTextOperationResponder _accessibilityTextOperations];
  }

  return _accessibilityTextOperations;
}

- (uint64_t)_accessibilityHasTextOperations
{
  _accessibilityTextViewTextOperationResponder = [self _accessibilityTextViewTextOperationResponder];
  v3 = _accessibilityTextViewTextOperationResponder;
  if (_accessibilityTextViewTextOperationResponder == self)
  {
    _accessibilityTextOperations = [self _accessibilityTextOperations];
    _accessibilityHasTextOperations = [_accessibilityTextOperations count] != 0;
  }

  else
  {
    _accessibilityHasTextOperations = [_accessibilityTextViewTextOperationResponder _accessibilityHasTextOperations];
  }

  return _accessibilityHasTextOperations;
}

- (uint64_t)_accessibilityPerformOrbGesture:()AXPrivCategory
{
  if ([self _accessibilityBasePerformOrbGesture:?])
  {
    return 1;
  }

  if (__AXRuntimeApplicationElement())
  {
    v3 = __AXRuntimeApplicationElement();
    v4 = v3();
    v5 = _AXCreateAXUIElementWithElement();
  }

  else
  {
    v5 = _AXCreateAXUIElementWithElement();
  }

  AXDeviceGetMainScreenBounds();
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetMidY(v12);
  [self _accessibilityDisplayId];
  _AXUIElementCopyElementAtPositionWithParams();
  v2 = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  return v2;
}

- (uint64_t)_accessibilityBasePerformOrbGesture:()AXPrivCategory
{
  v20 = *MEMORY[0x1E69E9840];
  _accessibilityParentView = [self _accessibilityParentView];
  if (_accessibilityParentView)
  {
    v5 = _accessibilityParentView;
    v6 = 0;
    do
    {
      if ([v5 isUserInteractionEnabled])
      {
        gestureRecognizers = [v5 gestureRecognizers];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = [gestureRecognizers countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v16;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v16 != v10)
              {
                objc_enumerationMutation(gestureRecognizers);
              }

              v12 = *(*(&v15 + 1) + 8 * i);
              if ([v12 isEnabled] && (objc_opt_respondsToSelector() & 1) != 0)
              {
                [v12 _accessibilitySimulateOrbGestureWithState:a3];
                v6 = 1;
              }
            }

            v9 = [gestureRecognizers countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v9);
        }
      }

      superview = [v5 superview];

      v5 = superview;
    }

    while (superview);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (uint64_t)_accessibilityCameraIrisOpen
{
  v1 = objc_getAssociatedObject(self, @"__ax_camera_iris_open");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)_accessibilitySetCameraIrisOpen:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, @"__ax_camera_iris_open", v2, 1);
}

- (uint64_t)_accessibilityIsTourGuideRunning
{
  v1 = objc_getAssociatedObject(self, @"__ax_is_tour_guide_running");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)_accessibilitySetIsTourGuideRunning:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, @"__ax_is_tour_guide_running", v2, 1);
}

- (uint64_t)_accessibilityPlayKeyboardClickSound
{
  result = UIAccessibilityIsVoiceOverRunning();
  if (result)
  {

    return [self _accessibilityPlaySystemSound:1104];
  }

  return result;
}

- (uint64_t)accessibilityElementIsFocused
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [__UIAccessibilityFocusedElements allValues];
  v3 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        if (*(*(&v9 + 1) + 8 * v6) == self)
        {
          v7 = 1;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (id)accessibilityAssistiveTechnologyFocusedIdentifiers
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [__UIAccessibilityFocusedElements allKeys];
  v3 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [__UIAccessibilityFocusedElements objectForKeyedSubscript:v8];

        if (v9 == self)
        {
          if (!v5)
          {
            v5 = [MEMORY[0x1E695DFA8] set];
          }

          [v5 addObject:v8];
        }
      }

      v4 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v10 = [v5 copy];

  return v10;
}

- (void)_accessibilitySetAnimationsInProgress:()AXPrivCategory
{
  if ((a3 & 1) != 0 || _AXAnimationsInProgressCount >= 1)
  {
    if (a3)
    {
      atomic_fetch_add_explicit(&_AXAnimationsInProgressCount, 1u, memory_order_relaxed);
    }

    else if (atomic_fetch_add_explicit(&_AXAnimationsInProgressCount, 0xFFFFFFFF, memory_order_relaxed) == 1 && _AXAnimationsCompletedShouldNotify == 1)
    {
      _AXAnimationsCompletedShouldNotify = 0;
      UIAccessibilityPostNotification(0xFA2u, &unk_1F1DC2B00);
    }
  }

  v3 = AXLogUIA();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [NSObject(AXPrivCategory) _accessibilitySetAnimationsInProgress:];
  }
}

- (void)_accessibilityDetectAnimationsNonActive
{
  if ([self _accessibilityAnimationsInProgress])
  {
    _AXAnimationsCompletedShouldNotify = 1;
  }

  else
  {

    UIAccessibilityPostNotification(0xFA2u, &unk_1F1DC2B28);
  }
}

- (double)accessibilityBoundsForTextMarkers:()AXPrivCategory
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = _beaxTextMarkerRangeForArray(v4);
    [self accessibilityBoundsForTextMarkerRange:v5];
    v7 = v6;
  }

  else
  {
    v7 = *MEMORY[0x1E695F058];
  }

  return v7;
}

- (id)accessibilityStringForTextMarkers:()AXPrivCategory
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = _beaxTextMarkerRangeForArray(v4);
    v6 = [self accessibilityContentForTextMarkerRange:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_accessibilityLineRangeForPosition:()AXPrivCategory
{
  InstanceMethod = _accessibilityLineRangeForPosition__BaseMethod;
  if (!_accessibilityLineRangeForPosition__BaseMethod)
  {
    v6 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v6, sel_accessibilityLineRangeForPosition_);
    _accessibilityLineRangeForPosition__BaseMethod = InstanceMethod;
  }

  v7 = objc_opt_class();
  if (InstanceMethod == class_getInstanceMethod(v7, sel_accessibilityLineRangeForPosition_))
  {
    return 0x7FFFFFFFLL;
  }

  return [self accessibilityLineRangeForPosition:a3];
}

- (void)_accessibilitySetSelectedTextRange:()AXPrivCategory
{
  if (!_accessibilitySetSelectedTextRange__BaseFrameForBrowserRangeMethod)
  {
    v7 = objc_opt_class();
    _accessibilitySetSelectedTextRange__BaseFrameForBrowserRangeMethod = class_getInstanceMethod(v7, sel_browserAccessibilitySetSelectedTextRange_);
  }

  v8 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v8, sel_browserAccessibilitySetSelectedTextRange_);
  if ((objc_opt_respondsToSelector() & 1) == 0 || InstanceMethod == _accessibilitySetSelectedTextRange__BaseFrameForBrowserRangeMethod)
  {
    _accessibilityTextViewTextOperationResponder = [self _accessibilityTextViewTextOperationResponder];
    if (_accessibilityTextViewTextOperationResponder && _accessibilityTextViewTextOperationResponder != self)
    {
      v11 = _accessibilityTextViewTextOperationResponder;
      [_accessibilityTextViewTextOperationResponder _accessibilitySetSelectedTextRange:{a3, a4}];
      _accessibilityTextViewTextOperationResponder = v11;
    }
  }

  else
  {

    [self browserAccessibilitySetSelectedTextRange:{a3, a4}];
  }
}

- (uint64_t)_accessibilitySelectedTextRange
{
  if (!_accessibilitySelectedTextRange_BaseFrameForBrowserRangeMethod)
  {
    v2 = objc_opt_class();
    _accessibilitySelectedTextRange_BaseFrameForBrowserRangeMethod = class_getInstanceMethod(v2, sel_browserAccessibilitySelectedTextRange);
  }

  v3 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v3, sel_browserAccessibilitySelectedTextRange);
  if ((objc_opt_respondsToSelector() & 1) == 0 || InstanceMethod == _accessibilitySelectedTextRange_BaseFrameForBrowserRangeMethod)
  {
    _accessibilityTextViewTextOperationResponder = [self _accessibilityTextViewTextOperationResponder];
    v7 = _accessibilityTextViewTextOperationResponder;
    _accessibilitySelectedTextRange = 0x7FFFFFFFLL;
    if (_accessibilityTextViewTextOperationResponder && _accessibilityTextViewTextOperationResponder != self)
    {
      _accessibilitySelectedTextRange = [_accessibilityTextViewTextOperationResponder _accessibilitySelectedTextRange];
    }

    return _accessibilitySelectedTextRange;
  }

  else
  {

    return [self safeRangeForKey:@"browserAccessibilitySelectedTextRange"];
  }
}

- (uint64_t)_accessibilityLineEndPosition
{
  InstanceMethod = _accessibilityLineEndPosition_BaseMethod;
  if (!_accessibilityLineEndPosition_BaseMethod)
  {
    v3 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v3, sel_accessibilityLineEndPositionFromCurrentSelection);
    _accessibilityLineEndPosition_BaseMethod = InstanceMethod;
  }

  v4 = objc_opt_class();
  if (InstanceMethod == class_getInstanceMethod(v4, sel_accessibilityLineEndPositionFromCurrentSelection))
  {
    return 0x7FFFFFFFLL;
  }

  return [self accessibilityLineEndPositionFromCurrentSelection];
}

- (uint64_t)_accessibilityLineStartPosition
{
  InstanceMethod = _accessibilityLineStartPosition_BaseMethod;
  if (!_accessibilityLineStartPosition_BaseMethod)
  {
    v3 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v3, sel_accessibilityLineStartPositionFromCurrentSelection);
    _accessibilityLineStartPosition_BaseMethod = InstanceMethod;
  }

  v4 = objc_opt_class();
  if (InstanceMethod == class_getInstanceMethod(v4, sel_accessibilityLineStartPositionFromCurrentSelection))
  {
    return 0x7FFFFFFFLL;
  }

  return [self accessibilityLineStartPositionFromCurrentSelection];
}

- (id)_accessibilityLineStartMarker:()AXPrivCategory
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [self accessibilityLineStartMarkerForMarker:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessibilityMarkerForPoint:()AXPrivCategory
{
  if (objc_opt_respondsToSelector())
  {
    v6 = [self accessibilityMarkerForPoint:{a2, a3}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_accessibilityLineEndMarker:()AXPrivCategory
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [self accessibilityLineEndMarkerForMarker:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessibilityNextMarker:()AXPrivCategory
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [self accessibilityNextTextMarker:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessibilityPreviousMarker:()AXPrivCategory
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [self accessibilityPreviousTextMarker:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessibilityTextMarkerRange
{
  if (objc_opt_respondsToSelector())
  {
    accessibilityTextMarkerRange = [self accessibilityTextMarkerRange];
    v3 = _beaxRangeToArray(accessibilityTextMarkerRange);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)_accessibilityRangeForTextMarkers:()AXPrivCategory
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = _beaxTextMarkerRangeForArray(v4);
    v6 = [self accessibilityRangeForTextMarkerRange:v5];
  }

  else
  {
    v6 = 0x7FFFFFFFLL;
  }

  return v6;
}

- (id)_accessibilityTextMarkerRangeForSelection
{
  if (objc_opt_respondsToSelector())
  {
    accessibilityTextMarkerRangeForCurrentSelection = [self accessibilityTextMarkerRangeForCurrentSelection];
    v3 = _beaxRangeToArray(accessibilityTextMarkerRangeForCurrentSelection);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_accessibilityTextMarkerForPosition:()AXPrivCategory
{
  if (objc_opt_respondsToSelector())
  {
    v5 = [self accessibilityTextMarkerForPosition:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_accessibilityTextCursorFrame
{
  accessibilityTraits = [self accessibilityTraits];
  if ((*MEMORY[0x1E6989090] & ~accessibilityTraits) != 0)
  {
    return *MEMORY[0x1E695F058];
  }

  if (![self conformsToProtocol:&unk_1F1E10CA0])
  {
    return *MEMORY[0x1E695F058];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return *MEMORY[0x1E695F058];
  }

  selfCopy = self;
  selectedTextRange = [selfCopy selectedTextRange];
  [selfCopy firstRectForRange:selectedTextRange];
  v9 = UIAccessibilityFrameForBounds(selfCopy, v5, v6, v7, v8);

  return v9;
}

- (double)_accessibilityKeyboardFrame
{
  if (!AXUIKeyboardIsOnScreen())
  {
    return *MEMORY[0x1E695F058];
  }

  AXUIKeyboardScreenFrame();
  return result;
}

- (__CFString)accessibilityLabelForRange:()AXPrivCategory
{
  v4 = [self _accessibilityPotentiallyAttributedValueForNonAttributedSelector:sel_accessibilityLabel attributedSelector:sel_accessibilityAttributedLabel];
  if (!v4)
  {
    v9 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _AXAssert();
    }

    v10 = v4;
    v6 = v10;
    if (a3)
    {
      v15.length = [(__CFString *)v10 length];
      v15.location = 0;
      v11 = NSIntersectionRange(*a3, v15);
      if (v11.length)
      {
        v8 = [(__CFString *)v6 attributedSubstringFromRange:v11.location, v11.length];
        goto LABEL_13;
      }

LABEL_14:
      v9 = 0;
      goto LABEL_15;
    }

LABEL_12:
    v8 = v6;
    goto LABEL_13;
  }

  v5 = v4;
  v6 = v5;
  if (!a3)
  {
    goto LABEL_12;
  }

  v14.length = CFStringGetLength(v5);
  v14.location = 0;
  v7 = NSIntersectionRange(*a3, v14);
  if (!v7.length)
  {
    goto LABEL_14;
  }

  v8 = [(__CFString *)v6 substringWithRange:v7.location, v7.length];
LABEL_13:
  v9 = v8;
LABEL_15:

LABEL_16:

  return v9;
}

- (id)_accessibilityMarkersForPoints:()AXPrivCategory
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * i) pointValue];
        v11 = [self _accessibilityMarkerForPoint:?];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)_accessibilityMarkersForRange:()AXPrivCategory
{
  if (objc_opt_respondsToSelector())
  {
    v7 = [self accessibilityTextMarkerRangeForRange:{a3, a4}];
    array = _beaxRangeToArray(v7);
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v9 = [self _accessibilityTextMarkerForPosition:a3];
    if (v9)
    {
      [array addObject:v9];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [array addObject:null];
    }

    v7 = [self _accessibilityTextMarkerForPosition:a3 + a4];

    if (v7)
    {
      [array addObject:v7];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [array addObject:null2];
    }
  }

  return array;
}

- (id)_accessibilityMarkerLineEndsForMarkers:()AXPrivCategory
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self _accessibilityLineEndMarker:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (uint64_t)__accessibilityReadAllOnFocus
{
  selfCopy = self;
  if (!selfCopy)
  {
    return 0;
  }

  v2 = selfCopy;
  do
  {
    _accessibilityReadAllOnFocus = [v2 _accessibilityReadAllOnFocus];
    if (_accessibilityReadAllOnFocus)
    {
      break;
    }

    accessibilityContainer = [v2 accessibilityContainer];

    v2 = accessibilityContainer;
  }

  while (accessibilityContainer);

  return _accessibilityReadAllOnFocus;
}

- (id)_accessibilityValueForRange:()AXPrivCategory
{
  if (!_accessibilityValueForRange__BaseFrameForBrowserRangeMethod)
  {
    v5 = objc_opt_class();
    _accessibilityValueForRange__BaseFrameForBrowserRangeMethod = class_getInstanceMethod(v5, sel_browserAccessibilityValueInRange_);
  }

  v6 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v6, sel_browserAccessibilityValueInRange_);
  if (a3)
  {
    v8 = InstanceMethod;
    if ((objc_opt_respondsToSelector() & 1) != 0 && v8 != _accessibilityValueForRange__BaseFrameForBrowserRangeMethod)
    {
      length = [self browserAccessibilityValueInRange:{a3->location, a3->length}];
      goto LABEL_17;
    }
  }

  _accessibilityAXAttributedValue = [self _accessibilityAXAttributedValue];
  v11 = _accessibilityAXAttributedValue;
  if (!a3 || !_accessibilityAXAttributedValue)
  {
    v13 = _accessibilityAXAttributedValue;
LABEL_15:
    length = v13;
    goto LABEL_16;
  }

  v16.length = [_accessibilityAXAttributedValue length];
  v16.location = 0;
  v12 = NSIntersectionRange(*a3, v16);
  length = v12.length;
  if (v12.length)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 attributedSubstringFromRange:{v12.location, v12.length}];
    }

    else
    {
      [v11 substringWithRange:{v12.location, v12.length}];
    }
    v13 = ;
    goto LABEL_15;
  }

LABEL_16:

LABEL_17:

  return length;
}

- (uint64_t)_accessibilitySupportsFrameForRange
{
  result = [self conformsToProtocol:&unk_1F1E1E028];
  if (result)
  {
    if (!_accessibilitySupportsFrameForRange_BaseFrameForRangeMethod)
    {
      v2 = objc_opt_class();
      _accessibilitySupportsFrameForRange_BaseFrameForRangeMethod = class_getInstanceMethod(v2, sel__accessibilityFrameForRange_);
    }

    v3 = objc_opt_class();
    return _accessibilitySupportsFrameForRange_BaseFrameForRangeMethod != class_getInstanceMethod(v3, sel__accessibilityFrameForRange_);
  }

  return result;
}

- (BOOL)_accessibilitySupportsRangeForLineNumber
{
  if (!_accessibilitySupportsRangeForLineNumber_BaseRangeForLineNumberMethod)
  {
    v0 = objc_opt_class();
    _accessibilitySupportsRangeForLineNumber_BaseRangeForLineNumberMethod = class_getInstanceMethod(v0, sel__accessibilityRangeForLineNumber_);
  }

  v1 = objc_opt_class();
  return _accessibilitySupportsRangeForLineNumber_BaseRangeForLineNumberMethod != class_getInstanceMethod(v1, sel__accessibilityRangeForLineNumber_);
}

+ (id)_accessibilityTextChecker
{
  v0 = _AXTextChecker;
  if (!_AXTextChecker)
  {
    v1 = [objc_alloc(MEMORY[0x1E69DD080]) _initWithAsynchronousLoading:1];
    v2 = _AXTextChecker;
    _AXTextChecker = v1;

    v0 = _AXTextChecker;
  }

  if ([v0 _doneLoading])
  {
    v3 = _AXTextChecker;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_accessibilitySetTextViewShouldBreakUpParagraphs:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _accessibilitySetValue:v2 forKey:@"AXTextViewBreakUpParagraphs" storageMode:0];
}

- (uint64_t)_accessibilityTextViewShouldBreakUpParagraphs
{
  v1 = [self _accessibilityValueForKey:@"AXTextViewBreakUpParagraphs"];
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (uint64_t)_accessibilityActivateParagraphInTextViewRange:()AXPrivCategory
{
  v6 = [self _accessibilityGetBlockForAttribute:24];
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 16))(v6, a3, a4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_accessibilitySetIncreaseLayoutBounds:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [self _accessibilitySetValue:v2 forKey:@"AXIncreaseLayoutBounds" storageMode:0];
}

- (uint64_t)_accessibilityIncreaseLayoutBounds
{
  v1 = [self _accessibilityValueForKey:@"AXIncreaseLayoutBounds"];
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)_accessibilitySetValue:()AXPrivCategory
{
  v5 = a3;
  _accessibilityTextViewTextOperationResponder = [self _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [_accessibilityTextViewTextOperationResponder setText:v5];
    }
  }
}

- (void)_accessibilityConvertStyleAttributesToAccessibility:()AXPrivCategory
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = [v3 length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__NSObject_AXPrivCategory___accessibilityConvertStyleAttributesToAccessibility___block_invoke;
  v7[3] = &unk_1E78AA718;
  v8 = v4;
  v6 = v4;
  [v3 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v7}];
  [v3 setAttributedString:v6];
}

- (void)_accessibilityAddAutoCorrectionAttributes:()AXPrivCategory
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  v5 = [activeInstance safeValueForKey:@"_textChoicesAssistant"];

  v6 = [v5 safeValueForKey:@"underlinedWordData"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = *MEMORY[0x1E695E4D0];
    v11 = MEMORY[0x1E6988F30];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = NSRangeFromString(*(*(&v14 + 1) + 8 * i));
        if (v13.location + v13.length < [v3 length])
        {
          [v3 addAttribute:*v11 value:v10 range:{v13.location, v13.length}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)_accessibilityAddMispellingsToAttributedString:()AXPrivCategory
{
  v20 = a3;
  if (v20)
  {
    selfCopy = self;
    NSClassFromString(&cfstr_Uiaccessibilit_16.isa);
    accessibilityContainer = selfCopy;
    if (objc_opt_isKindOfClass())
    {
      accessibilityContainer = [selfCopy accessibilityContainer];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || [accessibilityContainer spellCheckingType] != 1)
    {
      if (AXRequestingClient() == 3)
      {
        v6 = *MEMORY[0x1E6988F38];
        v7 = [v20 length];
        [v20 addAttribute:v6 value:MEMORY[0x1E695E118] range:{0, v7}];
      }

      else
      {
        _accessibilityTextChecker = [selfCopy _accessibilityTextChecker];
        if (_accessibilityTextChecker)
        {
          string = [v20 string];
          v10 = [string length];
          mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
          v12 = 0;
          v13 = *MEMORY[0x1E695E4D0];
          while (1)
          {
            currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
            if (!currentInputMode)
            {
              currentInputMode = [mEMORY[0x1E69DCBF0] currentSystemInputMode];
            }

            primaryLanguage = [currentInputMode primaryLanguage];
            v16 = [_accessibilityTextChecker rangeOfMisspelledWordInString:string range:0 startingAt:v10 wrap:v12 language:{0, primaryLanguage}];
            v18 = v17;

            if (v16 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            v22.location = 0;
            v22.length = v10;
            v23.location = v16;
            v23.length = v18;
            v19 = NSIntersectionRange(v22, v23);
            [v20 addAttribute:*MEMORY[0x1E6988EC8] value:v13 range:{v19.location, v19.length}];
            v12 = v16 + v18;

            if (v12 >= v10)
            {
              goto LABEL_16;
            }
          }

LABEL_16:
        }
      }
    }
  }
}

- (id)_accessibilityAttributedValueForRange:()AXPrivCategory
{
  if (!_accessibilityAttributedValueForRange__BaseFrameForBrowserRangeMethod)
  {
    v5 = objc_opt_class();
    _accessibilityAttributedValueForRange__BaseFrameForBrowserRangeMethod = class_getInstanceMethod(v5, sel_browserAccessibilityAttributedValueInRange_);
  }

  v6 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v6, sel_browserAccessibilityAttributedValueInRange_);
  if (a3)
  {
    v8 = InstanceMethod;
    if ((objc_opt_respondsToSelector() & 1) != 0 && v8 != _accessibilityAttributedValueForRange__BaseFrameForBrowserRangeMethod)
    {
      v9 = [self browserAccessibilityAttributedValueInRange:{*a3, a3[1]}];
      goto LABEL_18;
    }
  }

  v10 = [self _accessibilityValueForRange:a3];
  if ([v10 length])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [objc_msgSend(v10 "cfAttributedString")];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 mutableCopyWithZone:0];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v9 = 0;
          goto LABEL_16;
        }

        v11 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithString:v10];
      }
    }

    v9 = v11;
LABEL_16:
    [self _accessibilityAddAutoCorrectionAttributes:v9];
    [self _accessibilityConvertStyleAttributesToAccessibility:v9];
    [self _accessibilityAddMispellingsToAttributedString:v9];
    goto LABEL_17;
  }

  v9 = objc_alloc_init(MEMORY[0x1E696AAB0]);
LABEL_17:

LABEL_18:

  return v9;
}

- (void)_accessibilityPostValueChangedNotificationWithChangeType:()AXPrivCategory insertedText:keyInputDelegate:
{
  v6 = a4;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)_accessibilityPostHoverTypingOnlyValueChangedNotificationWithInsertedText:()AXPrivCategory inputFrame:isSecureText:
{
  v18 = a7;
  if (AXDeviceSupportsHoverTextTyping())
  {
    mEMORY[0x1E6989890] = [MEMORY[0x1E6989890] sharedInstance];
    hoverTextTypingEnabled = [mEMORY[0x1E6989890] hoverTextTypingEnabled];

    if (hoverTextTypingEnabled)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      if ([v18 length])
      {
        [dictionary setObject:v18 forKeyedSubscript:@"InsertedText"];
      }

      [dictionary setObject:*MEMORY[0x1E6989230] forKeyedSubscript:*MEMORY[0x1E6989238]];
      v16 = [MEMORY[0x1E696AD98] numberWithBool:a8];
      [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x1E6989250]];

      [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6989248]];
      v17 = [MEMORY[0x1E696B098] valueWithCGRect:{self, a2, a3, a4}];
      [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x1E6989258]];

      UIAccessibilityPostNotification(UIAccessibilityValueChangedNotification, dictionary);
    }
  }
}

- (id)_accessibilityHandwritingElement
{
  accessibilityTraits = [self accessibilityTraits];
  if ((*MEMORY[0x1E6989098] & accessibilityTraits) != 0 || ([self _accessibilityTextHandlingAncestorMatchingBlock:&__block_literal_global_1855], (_accessibilityHandwritingElement = objc_claimAutoreleasedReturnValue()) == 0))
  {
    _accessibilityFirstResponderForKeyWindow = [self _accessibilityFirstResponderForKeyWindow];
    v4 = _accessibilityFirstResponderForKeyWindow;
    if (_accessibilityFirstResponderForKeyWindow == self)
    {
      _accessibilityHandwritingElement = 0;
    }

    else
    {
      _accessibilityHandwritingElement = [_accessibilityFirstResponderForKeyWindow _accessibilityHandwritingElement];
    }
  }

  return _accessibilityHandwritingElement;
}

- (id)_accessibilityTextHandlingAncestorMatchingBlock:()AXPrivCategory
{
  v4 = a3;
  selfCopy = self;
  v6 = selfCopy;
  if (!selfCopy)
  {
    goto LABEL_9;
  }

  v7 = selfCopy;
  while (1)
  {
    if (v4[2](v4, v7))
    {
      _accessibilityViewController = v7;
      goto LABEL_16;
    }

    _accessibilityViewController = [v7 _accessibilityViewController];
    if (v4[2](v4, _accessibilityViewController))
    {
      break;
    }

    accessibilityContainer = [v7 accessibilityContainer];

    v7 = accessibilityContainer;
    if (!accessibilityContainer)
    {
      goto LABEL_9;
    }
  }

  if (!_accessibilityViewController)
  {
LABEL_9:
    _accessibilityWindow = [v6 _accessibilityWindow];
    firstResponder = [_accessibilityWindow firstResponder];

    if (firstResponder)
    {
      while (1)
      {
        if (v4[2](v4, firstResponder))
        {
          _accessibilityViewController = firstResponder;
          goto LABEL_16;
        }

        _accessibilityViewController = [firstResponder _accessibilityViewController];
        if (v4[2](v4, _accessibilityViewController))
        {
          break;
        }

        accessibilityContainer2 = [firstResponder accessibilityContainer];

        firstResponder = accessibilityContainer2;
        if (!accessibilityContainer2)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      _accessibilityViewController = 0;
    }
  }

LABEL_16:

  return _accessibilityViewController;
}

- (uint64_t)_accessibilitySupportsHandwriting
{
  v2 = UIAccessibilityTraitLaunchIcon | UIAccessibilityTraitWebContent | UIAccessibilityTraitFolderIcon | UIAccessibilityTraitSecureTextField | UIAccessibilityTraitTableIndex;
  if (([self accessibilityTraits] & v2) != 0)
  {
    return 1;
  }

  return [self _accessibilitySupportsTextInsertionAndDeletion];
}

- (id)_accessibilityHandwritingAttributes
{
  v14[7] = *MEMORY[0x1E69E9840];
  if ([self _accessibilitySupportsHandwriting])
  {
    v13[0] = *MEMORY[0x1E6989838];
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "_accessibilityHandwritingAttributePreferredCharacterSet")}];
    v14[0] = v2;
    v13[1] = *MEMORY[0x1E6989828];
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "_accessibilityHasDeletableText")}];
    v14[1] = v3;
    v13[2] = *MEMORY[0x1E6989840];
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "_accessibilityHandwritingAttributeShouldEchoCharacter")}];
    v14[2] = v4;
    v13[3] = *MEMORY[0x1E6989848];
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "_accessibilityHandwritingAttributeShouldPlayKeyboardSecureClickSound")}];
    v14[3] = v5;
    v13[4] = *MEMORY[0x1E6989818];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "_accessibilitySupportsTextInsertionAndDeletion")}];
    v14[4] = v6;
    v13[5] = *MEMORY[0x1E6989820];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "_accessibilityHandwritingAttributeAllowedCharacterSets")}];
    v14[5] = v7;
    v13[6] = *MEMORY[0x1E6989810];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "_accessibilityHandwritingAttributeAcceptsContractedBraille")}];
    v14[6] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:7];

    _accessibilityHandwritingAttributeLanguage = [self _accessibilityHandwritingAttributeLanguage];
    if (_accessibilityHandwritingAttributeLanguage)
    {
      v11 = [v9 mutableCopy];
      [v11 setObject:_accessibilityHandwritingAttributeLanguage forKeyedSubscript:*MEMORY[0x1E6989830]];

      v9 = v11;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)_accessibilityHandwritingAttributePreferredCharacterSetForKeyboardType:()AXPrivCategory
{
  if ((a3 - 2) > 6)
  {
    return 1;
  }

  else
  {
    return qword_1A9BF3588[a3 - 2];
  }
}

- (uint64_t)_accessibilityHandwritingAttributePreferredCharacterSet
{
  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  defaultTextInputTraits = [activeKeyboard defaultTextInputTraits];

  v4 = [self _accessibilityHandwritingAttributePreferredCharacterSetForKeyboardType:{objc_msgSend(defaultTextInputTraits, "keyboardType")}];
  return v4;
}

- (uint64_t)_accessibilityHandwritingAttributeAllowedCharacterSetsForKeyboardType:()AXPrivCategory
{
  if ((a3 - 2) > 6)
  {
    return 15;
  }

  else
  {
    return qword_1A9BF35C0[a3 - 2];
  }
}

- (uint64_t)_accessibilityHandwritingAttributeAllowedCharacterSets
{
  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  defaultTextInputTraits = [activeKeyboard defaultTextInputTraits];

  if (defaultTextInputTraits)
  {
    v4 = [self _accessibilityHandwritingAttributeAllowedCharacterSetsForKeyboardType:{objc_msgSend(defaultTextInputTraits, "keyboardType")}];
  }

  else
  {
    v4 = 15;
  }

  return v4;
}

- (uint64_t)_accessibilityHasDeletableText
{
  if (![self conformsToProtocol:&unk_1F1E0FC10])
  {
    return 1;
  }

  return [self hasText];
}

- (id)_accessibilityHandwritingAttributeLanguage
{
  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];

  if (activeKeyboard)
  {
    mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
    currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
    activeKeyboard = [currentInputMode primaryLanguage];
  }

  return activeKeyboard;
}

- (uint64_t)_accessibilityReplaceTextInRange:()AXPrivCategory withString:
{
  v8 = a5;
  if ([self conformsToProtocol:&unk_1F1E10CA0])
  {
    selfCopy = self;
    beginningOfDocument = [selfCopy beginningOfDocument];
    v11 = [selfCopy positionFromPosition:beginningOfDocument offset:a3];

    beginningOfDocument2 = [selfCopy beginningOfDocument];
    v13 = [selfCopy positionFromPosition:beginningOfDocument2 offset:a3 + a4];

    v14 = [selfCopy textRangeFromPosition:v11 toPosition:v13];
    [selfCopy replaceRange:v14 withText:v8];

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_accessibilityReplaceCharactersAtCursor:()AXPrivCategory withString:
{
  v6 = a4;
  if (_accessibilityReplaceCharactersAtCursor_withString__BaseFrameForBrowserDeleteTextMethod)
  {
    v7 = _accessibilityReplaceCharactersAtCursor_withString__BaseFrameForBrowserInsertTextMethod == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = objc_opt_class();
    _accessibilityReplaceCharactersAtCursor_withString__BaseFrameForBrowserDeleteTextMethod = class_getInstanceMethod(v8, sel_browserAccessibilityDeleteTextAtCursor_);
    v9 = objc_opt_class();
    _accessibilityReplaceCharactersAtCursor_withString__BaseFrameForBrowserInsertTextMethod = class_getInstanceMethod(v9, sel_browserAccessibilityInsertTextAtCursor_);
  }

  v10 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v10, sel_browserAccessibilityDeleteTextAtCursor_);
  v12 = objc_opt_class();
  v13 = class_getInstanceMethod(v12, sel_browserAccessibilityInsertTextAtCursor_);
  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || _accessibilityReplaceCharactersAtCursor_withString__BaseFrameForBrowserDeleteTextMethod == InstanceMethod || _accessibilityReplaceCharactersAtCursor_withString__BaseFrameForBrowserInsertTextMethod == v13)
  {
    objc_opt_class();
    v15 = __UIAccessibilityCastAsClass();
    isFirstResponder = [v15 isFirstResponder];

    if (isFirstResponder)
    {
      mEMORY[0x1E69DCBE0] = [MEMORY[0x1E69DCBE0] sharedInstance];
      _UIAccessibilityBlockPostingOfAllNotifications();
      for (; a3; --a3)
      {
        [mEMORY[0x1E69DCBE0] deleteFromInputWithFlags:128];
      }

      if ([v6 length])
      {
        [mEMORY[0x1E69DCBE0] addInputString:v6 withFlags:128];
      }

      AXPerformBlockAsynchronouslyOnMainThread();
    }

    else
    {
      v18 = AXLogAppAccessibility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [NSObject(AXPrivCategory) _accessibilityReplaceCharactersAtCursor:withString:];
      }

      if (![self conformsToProtocol:&unk_1F1E0FC10])
      {
        goto LABEL_30;
      }

      for (; a3; --a3)
      {
        [self deleteBackward];
      }

      if ([v6 length])
      {
        [self insertText:v6];
      }

      mEMORY[0x1E69DCBE0] = [MEMORY[0x1E69DCBE0] sharedInstance];
      [mEMORY[0x1E69DCBE0] updateReturnKey:0];
    }

LABEL_30:
    mEMORY[0x1E69DCBE0]2 = [MEMORY[0x1E69DCBE0] sharedInstance];
    v20 = [mEMORY[0x1E69DCBE0]2 safeValueForKey:@"taskQueue"];

    v21 = v20;
    AXPerformSafeBlock();

    goto LABEL_31;
  }

  if (a3 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = a3;
  }

  [self browserAccessibilityDeleteTextAtCursor:v14];
  [self browserAccessibilityInsertTextAtCursor:v6];
LABEL_31:
}

- (void)_accessibilityInsertText:()AXPrivCategory atPosition:
{
  if (a4 < 0)
  {
    return [self _accessibilityInsertText:?];
  }

  return self;
}

- (void)_accessibilityInsertText:()AXPrivCategory
{
  v4 = a3;
  if (v4)
  {
    _UIAccessibilityBlockPostingOfAllNotifications();
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    if ([v5 isFirstResponder])
    {
    }

    else
    {
      objc_opt_class();
      _accessibilityTextViewTextOperationResponder = [self _accessibilityTextViewTextOperationResponder];
      v7 = __UIAccessibilityCastAsClass();

      LODWORD(_accessibilityTextViewTextOperationResponder) = [v7 isFirstResponder];
      if (!_accessibilityTextViewTextOperationResponder)
      {
        v10 = AXLogAppAccessibility();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [NSObject(AXPrivCategory) _accessibilityInsertText:];
        }

        if (![self conformsToProtocol:&unk_1F1E0FC10])
        {
          goto LABEL_7;
        }

        [self insertText:v4];
        mEMORY[0x1E69DCBE0] = [MEMORY[0x1E69DCBE0] sharedInstance];
        [mEMORY[0x1E69DCBE0] updateReturnKey:0];
LABEL_6:

LABEL_7:
        v9 = AXUIKeyboardEntryNotificationBlockTimer();
        [v9 afterDelay:&__block_literal_global_1867 processBlock:0.15];

        goto LABEL_8;
      }
    }

    mEMORY[0x1E69DCBE0] = [MEMORY[0x1E69DCBE0] sharedInstance];
    [mEMORY[0x1E69DCBE0] addInputString:v4 withFlags:128];
    goto LABEL_6;
  }

LABEL_8:
}

- (BOOL)_accessibilityActivateKeyboardReturnKey
{
  v0 = UIAccessibilityGetKeyboardLayoutStar();
  v1 = [v0 _accessibilityKeyboardKeyForString:@"\n"];

  if (v1)
  {
    [v1 accessibilityActivate];
  }

  return v1 != 0;
}

- (uint64_t)_accessibilityActivateKeyboardDeleteKey
{
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  v1 = activeInstance;
  if (activeInstance)
  {
    v2 = [activeInstance safeValueForKey:@"_layout"];
    v3 = [v2 safeValueForKey:@"window"];

    if (v3)
    {
      NSClassFromString(&cfstr_Uikeyboardlayo.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _AXAssert();
      }

      v4 = [v2 _accessibilityKeyboardKeyForString:@"\b"];
      v5 = v4;
      v3 = v4 != 0;
      if (v4)
      {
        [v4 accessibilityActivate];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)accessibilitySortDirection
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([self safeValueForKey:@"_browserAccessibilityStoredValueSortDirection"], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = [self safeStringForKey:@"browserAccessibilitySortDirection"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)_accessibilityIsRealtimeElement
{
  v1 = [self _accessibilityGetBlockForAttribute:20];
  v2 = v1;
  if (v1)
  {
    v3 = (*(v1 + 16))(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_accessibilitySupplementaryViewSectionHeaderIdentifiers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = [self _accessibilityGetBlockForAttribute:29];
  v2 = v1;
  if (v1)
  {
    v3 = (*(v1 + 16))(v1);
  }

  else
  {
    v6[0] = *MEMORY[0x1E69DDC08];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  v4 = v3;

  return v4;
}

- (uint64_t)_accessibilityIsInJindo
{
  _accessibilityWindow = [self _accessibilityWindow];
  windowScene = [_accessibilityWindow windowScene];
  v3 = objc_opt_respondsToSelector();

  _accessibilityIsInJindo = [_accessibilityWindow _accessibilityIsInJindo];
  sBUI_isHostedBySystemAperture = v3 | _accessibilityIsInJindo;
  if ((v3 & 1) != 0 && (_accessibilityIsInJindo & 1) == 0)
  {
    windowScene2 = [_accessibilityWindow windowScene];
    sBUI_isHostedBySystemAperture = [windowScene2 SBUI_isHostedBySystemAperture];
  }

  return sBUI_isHostedBySystemAperture & 1;
}

- (uint64_t)_accessibilityIsInMenuBar
{
  v1 = [self _accessibilityValueForKey:@"IsInMenuBar"];
  v2 = v1;
  if (v1)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (uint64_t)_accessibilityPerformUserTestingAction:()AXPrivCategory
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v4 objectAtIndexedSubscript:0];
      v8 = 0;
      if ([v4 count] >= 2)
      {
        v8 = [v4 objectAtIndexedSubscript:1];
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      _accessibilityUserTestingActions = [self _accessibilityUserTestingActions];
      v10 = [_accessibilityUserTestingActions countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v10)
      {
        v17 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v11 = v10;
      v25 = v8;
      v12 = *v27;
LABEL_7:
      v13 = 0;
      while (1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(_accessibilityUserTestingActions);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        identifier = [v14 identifier];
        v16 = [identifier isEqualToString:v7];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [_accessibilityUserTestingActions countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v11)
          {
            goto LABEL_7;
          }

          goto LABEL_25;
        }
      }

      v18 = objc_opt_class();
      InstanceMethod = class_getInstanceMethod(v18, [v14 selector]);
      if (!InstanceMethod)
      {
        goto LABEL_25;
      }

      v20 = method_copyReturnType(InstanceMethod);
      if (v20)
      {
        if (*v20 == 66)
        {
          v21 = v20[1];
          free(v20);
          if (!v21)
          {
            v22 = 0;
LABEL_23:
            [v14 selector];
            if (objc_opt_respondsToSelector())
            {
              v8 = v25;
              v17 = v22 | ([self methodForSelector:{objc_msgSend(v14, "selector")}])(self, objc_msgSend(v14, "selector"), v25);
              goto LABEL_26;
            }

LABEL_25:
            v17 = 0;
            v8 = v25;
            goto LABEL_26;
          }
        }

        else
        {
          free(v20);
        }
      }

      v23 = NSStringFromSelector([v14 selector]);
      NSLog(&cfstr_ShouldReturnAB_0.isa, self, v23);

      v22 = 1;
      goto LABEL_23;
    }
  }

  v17 = 0;
LABEL_27:

  return v17 & 1;
}

- (id)_accessibilityUserTestingActionIdentifiers
{
  v18 = *MEMORY[0x1E69E9840];
  _accessibilityUserTestingActions = [self _accessibilityUserTestingActions];
  if ([_accessibilityUserTestingActions count])
  {
    v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(_accessibilityUserTestingActions, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = _accessibilityUserTestingActions;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          identifier = [v8 identifier];
          v10 = [identifier length];

          if (!v10)
          {
            [NSObject(AXPrivCategory) _accessibilityUserTestingActionIdentifiers];
          }

          if (![v8 selector])
          {
            [NSObject(AXPrivCategory) _accessibilityUserTestingActionIdentifiers];
          }

          identifier2 = [v8 identifier];
          [v2 addObject:identifier2];
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_accessibilityShouldApplySemanticGroupContainerType
{
  InstanceMethod = _accessibilityShouldApplySemanticGroupContainerType_BaseTouchContainer;
  if (!_accessibilityShouldApplySemanticGroupContainerType_BaseTouchContainer)
  {
    v3 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v3, sel__accessibilityIsTouchContainer);
    _accessibilityShouldApplySemanticGroupContainerType_BaseTouchContainer = InstanceMethod;
  }

  v4 = objc_opt_class();
  if (InstanceMethod == class_getInstanceMethod(v4, sel__accessibilityIsTouchContainer))
  {
    return 0;
  }

  return [self _accessibilityIsTouchContainer];
}

- (id)_accessibilityString:()AXPrivCategory withSpeechHint:
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v24 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E6988D60] axAttributedStringWithString:v5];
    }
  }

  v8 = v7;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    v13 = *MEMORY[0x1E695E4D0];
    v14 = MEMORY[0x1E6988EA8];
    v15 = MEMORY[0x1E6988F70];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v18 = [v17 isEqualToString:@"spell-out"];
        v19 = v14;
        if ((v18 & 1) == 0)
        {
          v20 = [v17 isEqualToString:@"digits"];
          v19 = v15;
          if ((v20 & 1) == 0)
          {
            v21 = [v17 isEqualToString:@"literal-punctuation"];
            v19 = MEMORY[0x1E6988F78];
            if ((v21 & 1) == 0)
            {
              v22 = [v17 isEqualToString:@"no-punctuation"];
              v19 = MEMORY[0x1E6988F80];
              if (!v22)
              {
                continue;
              }
            }
          }
        }

        [v8 setAttribute:v13 forKey:*v19];
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)_accessibilitySemanticContext
{
  selfCopy = self;
  v2 = selfCopy;
  if (selfCopy)
  {
    delegate = selfCopy;
    while (1)
    {
      v4 = [delegate _accessibilitySemanticContextForElement:v2];
      if (v4)
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [MEMORY[0x1E69DD258] viewControllerForView:delegate];
        v6 = [v5 _accessibilitySemanticContextForElement:v2];

        if (v6)
        {
          goto LABEL_10;
        }
      }

      accessibilityContainer = [delegate accessibilityContainer];

      delegate = accessibilityContainer;
      if (!accessibilityContainer)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v8 = MEMORY[0x1E69DDA98];
    v6 = [*MEMORY[0x1E69DDA98] _accessibilitySemanticContextForElement:v2];
    if (v6)
    {
      goto LABEL_11;
    }

    delegate = [*v8 delegate];
    v4 = [delegate _accessibilitySemanticContextForElement:v2];
  }

  v6 = v4;
LABEL_10:

LABEL_11:

  return v6;
}

+ (void)_accessibilitySetUnitTestingOrientation:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  objc_setAssociatedObject(self, &_UnitTestingOrientationStorageKey, v2, 0x301);
}

+ (uint64_t)_accessibilityUnitTestingOrientation
{
  v1 = objc_getAssociatedObject(self, &_UnitTestingOrientationStorageKey);
  integerValue = [v1 integerValue];

  return integerValue;
}

- (id)_axSuperviews
{
  string = [MEMORY[0x1E696AD60] string];
  selfCopy = self;
  if (selfCopy)
  {
    v4 = selfCopy;
    v21 = string;
    do
    {
      [string appendFormat:@"%@ [%p]", objc_opt_class(), v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
        v6 = &stru_1F1DB9E20;
        if (objc_opt_respondsToSelector())
        {
          v7 = MEMORY[0x1E696AEC0];
          delegate = [v5 delegate];
          v9 = objc_opt_class();
          delegate2 = [v5 delegate];
          v6 = [v7 stringWithFormat:@"Delegate:[%@:%p] ", v9, delegate2];
        }

        v11 = [MEMORY[0x1E69DD258] viewControllerForView:v5];
        v23 = v6;
        if (v11)
        {
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VC:[%@] ", v11];
        }

        else
        {
          v12 = &stru_1F1DB9E20;
        }

        accessibilityIgnoresInvertColors = [v5 accessibilityIgnoresInvertColors];
        layer = [v5 layer];
        filters = [layer filters];
        v15 = [filters ax_containsObjectUsingBlock:&__block_literal_global_1933];
        backgroundColor = [v5 backgroundColor];
        v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v20 = v15;
        string = v21;
        [v21 appendFormat:@"[INV:%d(L:%d), BG:{%@}] %@%@ {%@}\n", accessibilityIgnoresInvertColors, v20, backgroundColor, v12, v23, v17];
      }

      else
      {
        [string appendString:@"\n"];
      }

      accessibilityContainer = [v4 accessibilityContainer];

      v4 = accessibilityContainer;
    }

    while (accessibilityContainer);
  }

  return string;
}

- (id)_axDebugTraits
{
  [self accessibilityTraits];
  v1 = _AXTraitsAsString();

  return v1;
}

- (uint64_t)accessibilityRequired
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v2 = [self safeValueForKey:@"_browserAccessibilityStoredValueIsRequired"];

  if (!v2)
  {
    return 0;
  }

  return [self safeBoolForKey:@"browserAccessibilityIsRequired"];
}

- (id)_accessibilitySupportedLanguages
{
  if (_accessibilitySupportedLanguages_onceToken != -1)
  {
    [NSObject(AXPrivCategory) _accessibilitySupportedLanguages];
  }

  v1 = _accessibilitySupportedLanguages_Supported;

  return v1;
}

- (void)_accessibilityAnnouncementComplete:()AXPrivCategory
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = *MEMORY[0x1E69DD878];
  v3 = a3;
  v4 = [v3 objectForKey:@"String"];
  v9[0] = v4;
  v8[1] = *MEMORY[0x1E69DD880];
  v5 = [v3 objectForKey:@"DidFinish"];

  v9[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69DD870] object:0 userInfo:v6];
}

- (void)_accessibilityHandleATFocused:()AXPrivCategory assistiveTech:
{
  v8 = a4;
  v6 = [__UIAccessibilityFocusedElements objectForKeyedSubscript:?];
  v7 = v6;
  if (a3)
  {
    if (v6 == self)
    {
      goto LABEL_6;
    }

    _UIAccessibilitySetFocusedElement(self, v8);
    [v7 accessibilityElementDidLoseFocus];
    _UIAccessibilityIsSettingFocus = 1;
    [self accessibilityElementDidBecomeFocused];
  }

  else
  {
    _UIAccessibilitySetFocusedElement(0, v8);
    [v7 accessibilityElementDidLoseFocus];
    self = 0;
  }

  [MEMORY[0x1E69E58C0] _accessibilityUpdateOpaqueFocusStateForTechnology:v8 oldElement:v7 newElement:self];
LABEL_6:
  _UIAccessibilityIsSettingFocus = 0;
}

- (void)accessibilityPostNotification:()AXPrivCategory withObject:afterDelay:
{
  v12 = a5;
  v8 = MEMORY[0x1E695DEC8];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  if (v12)
  {
    v10 = [v8 arrayWithObjects:{v9, v12, 0}];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v10 = [v8 arrayWithObjects:{v9, null, 0}];
  }

  [self performSelector:sel__accessibilityPostNotificationHelper_ withObject:v10 afterDelay:a2];
}

- (void)_accessibilityPostNotificationHelper:()AXPrivCategory
{
  v3 = a3;
  v4 = [v3 objectAtIndex:0];
  unsignedIntValue = [v4 unsignedIntValue];

  v8 = [v3 objectAtIndex:1];

  null = [MEMORY[0x1E695DFB0] null];
  if (v8 == null)
  {
    v7 = 0;
  }

  else
  {
    v7 = v8;
  }

  UIAccessibilityPostNotification(unsignedIntValue, v7);
}

- (void)_accessibilityPostPasteboardTextForOperation:()AXPrivCategory associatedObject:
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:*MEMORY[0x1E69891A8]])
  {
    UIAccessibilityPostNotification(UIAccessibilityPasteOperationOccurredNotification, 0);
  }

  if ([v5 isEqualToString:_Operation])
  {
    v7 = _Operation;
    _Operation = 0;
  }

  else
  {
    if (_accessibilityPostPasteboardTextForOperation_associatedObject__onceToken != -1)
    {
      [NSObject(AXPrivCategory) _accessibilityPostPasteboardTextForOperation:associatedObject:];
    }

    v8 = _accessibilityPostPasteboardTextForOperation_associatedObject__pasteBoardQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __90__NSObject_AXPrivCategory___accessibilityPostPasteboardTextForOperation_associatedObject___block_invoke_2;
    v9[3] = &unk_1E78AAB60;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, v9);

    v7 = v10;
  }
}

- (uint64_t)_accessibilityHasDragSources
{
  if ([self isAccessibilityElement] & 1) == 0 && (objc_msgSend(self, "_accessibilityIsGroupedParent"))
  {
    return 0;
  }

  _accessibilityParentView = [self _accessibilityParentView];
  if (_accessibilityParentView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    _accessibilityCanDrag = [_accessibilityParentView _accessibilityCanDrag];
  }

  else
  {
    _accessibilityCanDrag = 0;
  }

  return _accessibilityCanDrag;
}

- (uint64_t)_accessibilityHasDragDestinations
{
  if ([self isAccessibilityElement] & 1) == 0 && (objc_msgSend(self, "_accessibilityIsGroupedParent"))
  {
    return 0;
  }

  _accessibilityParentView = [self _accessibilityParentView];
  if (_accessibilityParentView && (objc_opt_respondsToSelector() & 1) != 0)
  {
    _accessibilityCanDrop = [_accessibilityParentView _accessibilityCanDrop];
  }

  else
  {
    _accessibilityCanDrop = 0;
  }

  return _accessibilityCanDrop;
}

- (BOOL)_accessibilityIsDraggableElementAttribute
{
  if (![self isAccessibilityElement])
  {
    return 0;
  }

  v2 = 1;
  v3 = [self _accessibilityFindAncestor:&__block_literal_global_1973 startWithSelf:1];
  if (!v3)
  {
    v4 = [self _accessibilityFindDescendant:&__block_literal_global_1975];
    v2 = v4 != 0;
  }

  return v2;
}

- (void)_accessibilityAllDragSourceDescriptors
{
  accessibilityDragSourceDescriptors = [self accessibilityDragSourceDescriptors];
  v2 = accessibilityDragSourceDescriptors;
  if (accessibilityDragSourceDescriptors)
  {
    v3 = accessibilityDragSourceDescriptors;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;

  return v3;
}

- (id)_accessibilityDragSourceDescriptorDictionaryRepresentations
{
  _accessibilityAllDragSourceDescriptors = [self _accessibilityAllDragSourceDescriptors];
  accessibilityTraits = [self accessibilityTraits];
  if ((*MEMORY[0x1E6989268] & ~accessibilityTraits) != 0 || ([self _accessibilityRemoteParent], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [self _accessibilityFilterInteractionLocationDescriptorsForVisible:_accessibilityAllDragSourceDescriptors];

    _accessibilityAllDragSourceDescriptors = v5;
  }

  v6 = [_accessibilityAllDragSourceDescriptors axFilterObjectsUsingBlock:&__block_literal_global_1980];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__NSObject_AXPrivCategory___accessibilityDragSourceDescriptorDictionaryRepresentations__block_invoke_2;
  v9[3] = &unk_1E78AB3E8;
  v9[4] = self;
  v7 = [v6 axMapObjectsUsingBlock:v9];

  return v7;
}

- (void)_accessibilityAllDropPointDescriptors
{
  accessibilityDropPointDescriptors = [self accessibilityDropPointDescriptors];
  v2 = accessibilityDropPointDescriptors;
  if (accessibilityDropPointDescriptors)
  {
    v3 = accessibilityDropPointDescriptors;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;

  return v3;
}

- (id)_accessibilityDropPointDescriptorDictionaryRepresentations
{
  _accessibilityAllDropPointDescriptors = [self _accessibilityAllDropPointDescriptors];
  v3 = [self _accessibilityFilterInteractionLocationDescriptorsForVisible:_accessibilityAllDropPointDescriptors];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__NSObject_AXPrivCategory___accessibilityDropPointDescriptorDictionaryRepresentations__block_invoke;
  v6[3] = &unk_1E78AB3E8;
  v6[4] = self;
  v4 = [v3 axMapObjectsUsingBlock:v6];

  return v4;
}

- (UIAccessibilityAddToDragSessionCustomAction)_accessibilityAddToDragSessionCustomAction
{
  v23 = *MEMORY[0x1E69E9840];
  if ([self __accessibilitySupportsActivateAction])
  {
    _accessibilityAllDragSourceDescriptors = [self _accessibilityAllDragSourceDescriptors];
    v3 = [self _accessibilityFilterInteractionLocationDescriptorsForVisible:_accessibilityAllDragSourceDescriptors];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = *v19;
      while (2)
      {
        for (i = 0; i != v5; i = (i + 1))
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          view = [v8 view];
          _accessibilityCanAddItemsToDragSession = [view _accessibilityCanAddItemsToDragSession];

          if (_accessibilityCanAddItemsToDragSession)
          {
            v11 = [UIAccessibilityAddToDragSessionCustomAction alloc];
            [v8 point];
            v13 = v12;
            v15 = v14;
            view2 = [v8 view];
            v5 = [(UIAccessibilityAddToDragSessionCustomAction *)v11 initWithPoint:view2 inSourceView:v13, v15];

            goto LABEL_13;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)_accessibilityUseContextlessPassthroughForDrag
{
  _accessibilityAllDragSourceDescriptors = [self _accessibilityAllDragSourceDescriptors];
  v3 = [_accessibilityAllDragSourceDescriptors count];

  if (v3)
  {
    return 1;
  }

  v5 = [self _accessibilityFindAncestor:&__block_literal_global_1984 startWithSelf:1];
  v4 = v5 != 0;

  return v4;
}

- (id)_accessibilityFindSubviewDescendantsPassingTest:()AXPrivCategory
{
  v4 = [self _accessibilityFindAXDescendantsPassingTest:a3 byYieldingElements:&__block_literal_global_1431];
  [self _accessibilitySortElementsUsingGeometry:v4];

  return v4;
}

- (void)_accessibilityBaseScrollToVisible
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_accessibilityIsSpeakThisElement
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_accessibilityChildrenForContinuityDisplay
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_accessibilityProcessChildrenForParameter:()AXPrivCategory .cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_iosAccessibilityAttributeValue:()AXPrivCategory forParameter:.cold.1(int a1, NSRange range)
{
  v2 = NSStringFromRange(range);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_14(v3, v4, v5, v6, v7);
}

- (void)_iosAccessibilityAttributeValue:()AXPrivCategory forParameter:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_accessibilityStatusBar
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_24();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_accessibilityNextOpaqueElementsForTechnology:()AXPrivCategory startElement:direction:searchType:range:shouldScrollToVisible:honorsGroups:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 accessibilityLabel];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x20u);
}

- (void)_accessibilityNextOpaqueElementsForTechnology:()AXPrivCategory startElement:direction:searchType:range:shouldScrollToVisible:honorsGroups:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_accessibilityNextOpaqueElementsForTechnology:()AXPrivCategory startElement:direction:searchType:range:shouldScrollToVisible:honorsGroups:.cold.3()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 accessibilityLabel];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x20u);
}

- (void)_accessibilityFindElementInDirection:()AXPrivCategory searchType:allowOutOfBoundsChild:startingTouchContainer:honorGroups:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_accessibilitySearchSubtreesAfterChildElement:()AXPrivCategory direction:searchType:allowOutOfBoundsChild:range:shouldScrollToVisible:honorGroups:updatedContainer:.cold.1()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_24();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_accessibilitySearchSubtreesAfterChildElement:()AXPrivCategory direction:searchType:allowOutOfBoundsChild:range:shouldScrollToVisible:honorGroups:updatedContainer:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_accessibilitySearchSubtreesAfterChildElement:()AXPrivCategory direction:searchType:allowOutOfBoundsChild:range:shouldScrollToVisible:honorGroups:updatedContainer:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_accessibilitySearchSubtreesAfterChildElement:()AXPrivCategory direction:searchType:allowOutOfBoundsChild:range:shouldScrollToVisible:honorGroups:updatedContainer:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_accessibilitySearchSubtreesAfterChildElement:()AXPrivCategory direction:searchType:allowOutOfBoundsChild:range:shouldScrollToVisible:honorGroups:updatedContainer:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_accessibilityUserTestingActionIdentifiers
{
  OUTLINED_FUNCTION_22();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:v1 object:v0 file:@"NSObjectAccessibility.m" lineNumber:16534 description:@"UIAccessibilityAutomationAction must have a selector."];
}

@end