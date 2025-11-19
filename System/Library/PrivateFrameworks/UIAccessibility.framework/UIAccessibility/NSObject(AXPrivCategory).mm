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
    _UIAccessibilityCompleteUnregistration(a1);

    _UIAXCleanupRotorCache(a1);
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
    v2 = a1;
  }

  else
  {
    v3 = [a1 _accessibilityParentView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = [v3 window];
    }

    v2 = v4;
    if (v3 == a1 && !v4)
    {
      v5 = [a1 accessibilityContainer];
      if (v5)
      {
        do
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          v6 = [v5 accessibilityContainer];

          v5 = v6;
        }

        while (v6);
      }

      v7 = [v5 _accessibilityParentView];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = [v7 window];
      }

      v2 = v8;
    }
  }

  return v2;
}

- (id)_accessibilityParentView
{
  objc_opt_class();
  v2 = a1;
  do
  {
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v3 = [v2 accessibilityContainer];

    v2 = v3;
  }

  while (v3);

  return v2;
}

- (id)_accessibilityElements
{
  v2 = [a1 accessibilityContainerElements];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [a1 accessibilityElements];
  }

  v5 = v4;
  [a1 _accessibilityUpdateContainerElementReferencesIfNeededForNewElements:v4];

  return v5;
}

- (double)_accessibilityFrameForSorting
{
  v2 = [a1 _accessibilityGetBlockForAttribute:23];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p-_accessibilityFrameForSorting", a1];
    v6 = [AXServerCache objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = [AXServerCache objectForKeyedSubscript:v5];
      [v7 rectValue];
      v4 = v8;
    }

    else
    {
      if ([a1 _accessibilityHasOrderedChildren] && objc_msgSend(a1, "_accessibilityUsesChildrenFramesForSorting"))
      {
        [a1 _accessibilityChildrenUnionContentFrame];
      }

      else
      {
        [a1 _accessibilityContentFrame];
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
  v1 = objc_getAssociatedObject(a1, &_UnitTestingOrientationStorageKey);
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)_accessibilitySortPriority
{
  v1 = UIAccessibilityDefaultSortPriority;
  v2 = [a1 _accessibilityValueForKey:@"AXSortPriority"];
  v3 = v2;
  if (v2)
  {
    v1 = [v2 integerValue];
  }

  return v1;
}

- (id)_accessibilitySortPriorityContainer
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p-_accessibilitySortPriorityContainer", a1];
  v9 = 0;
  PossiblyNilObjectForKey = _AXServerCacheGetPossiblyNilObjectForKey(v2, &v9);
  v4 = v9;
  if (!PossiblyNilObjectForKey)
  {
    v5 = a1;

    v4 = 0;
    if (v5)
    {
      do
      {
        if ([v5 _accessibilityIsSortPriorityContainer])
        {
          v6 = v5;

          v4 = v6;
        }

        v7 = [v5 accessibilityContainer];

        v5 = v7;
      }

      while (v7);
    }

    _AXServerCacheInsertPossiblyNilObjectForKey(v2, v4);
  }

  return v4;
}

- (uint64_t)_accessibilityIsSortPriorityContainer
{
  v1 = [a1 _accessibilityValueForKey:@"AXIsSortPriorityContainer"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_accessibilityContainingParentForOrdering
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p-_axContainingParentForOrdering", a1];
  v11 = 0;
  PossiblyNilObjectForKey = _AXServerCacheGetPossiblyNilObjectForKey(v2, &v11);
  v4 = v11;
  if (!PossiblyNilObjectForKey)
  {
    v5 = a1;

    if (v5)
    {
      v4 = v5;
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

        v6 = [v4 accessibilityContainer];
        if (!v6)
        {
          if ([v4 conformsToProtocol:&unk_1F1DDB1C0])
          {
            v7 = [v4 parentFocusEnvironment];
            v8 = [v7 focusItemContainer];

            if (v8 == v4)
            {
              v9 = 0;
            }

            else
            {
              v9 = v8;
            }

            v6 = v9;
          }

          else
          {
            v6 = 0;
          }
        }

        v4 = v6;
        if (!v6)
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
  v1 = [a1 _accessibilityValueForKey:@"AXUsesScrollParentForOrderingKey"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
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
  [a1 _accessibilityIterateScrollParentsUsingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

- (uint64_t)_accessibilityShouldUseViewHierarchyForFindingScrollParent
{
  v1 = [a1 _accessibilityValueForKey:@"_accessibilityShouldUseViewHierarchyForFindingScrollParent"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)_accessibilityIsRTL
{
  v2 = LocalDirectionModeValue;
  if (UIAccessibilityIsVoiceOverRunning() && v2)
  {
    return v2 == 1;
  }

  return [a1 _accessibilityHierarchyIsRTL];
}

- (BOOL)_accessibilityHierarchyIsRTL
{
  v1 = [a1 _accessibilityParentView];
  v2 = [v1 effectiveUserInterfaceLayoutDirection] == 1;

  return v2;
}

- (id)_accessibilityHitTest:()AXPrivCategory withEvent:
{
  v8 = a5;
  if (([a1 _accessibilityBoolValueForKey:@"AXInHitTestOverride"] & 1) != 0 || !__60__NSObject_AXPrivCategory___accessibilityHitTest_withEvent___block_invoke())
  {
    v9 = [a1 _accessibilityBaseHitTest:v8 withEvent:{a2, a3}];
  }

  else
  {
    [a1 _accessibilitySetBoolValue:1 forKey:@"AXInHitTestOverride"];
    v9 = [a1 accessibilityHitTest:v8 withEvent:{a2, a3}];
    [a1 _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
  }

  return v9;
}

- (id)_accessibilityHitTestAdditionalElements:()AXPrivCategory event:
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if ([a1 _axAdditionalElementHitTestingInProgress])
  {
    v9 = 0;
    goto LABEL_23;
  }

  [a1 _axSetAdditionalElementHitTestingInProgress:1];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = [a1 _accessibilityAdditionalElements];
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  v44 = a1;
  v9 = 0;
  v13 = *v46;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v46 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = [*(*(&v45 + 1) + 8 * i) _accessibilityHitTest:v8 withEvent:{a2, a3}];
      v16 = v15;
      if (v15)
      {
        if (v9)
        {
          [v15 accessibilityFrame];
          [v9 accessibilityFrame];
          v17 = [MEMORY[0x1E69DCEB0] mainScreen];
          UIRoundToScreenScale();
          v19 = v18;
          v20 = [MEMORY[0x1E69DCEB0] mainScreen];
          UIRoundToScreenScale();
          v22 = v19 * v21;

          v23 = [MEMORY[0x1E69DCEB0] mainScreen];
          UIRoundToScreenScale();
          v25 = v24;
          v26 = [MEMORY[0x1E69DCEB0] mainScreen];
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

    v12 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
  }

  while (v12);

  if (!v9)
  {
    a1 = v44;
    goto LABEL_22;
  }

  a1 = v44;
  v30 = [v44 _accessibilityHitTest:v8 withEvent:{a2, a3}];
  v10 = v30;
  if (v30)
  {
    [v30 accessibilityFrame];
    [v9 accessibilityFrame];
    v31 = [MEMORY[0x1E69DCEB0] mainScreen];
    UIRoundToScreenScale();
    v33 = v32;
    v34 = [MEMORY[0x1E69DCEB0] mainScreen];
    UIRoundToScreenScale();
    v36 = v33 * v35;

    v37 = [MEMORY[0x1E69DCEB0] mainScreen];
    UIRoundToScreenScale();
    v39 = v38;
    v40 = [MEMORY[0x1E69DCEB0] mainScreen];
    UIRoundToScreenScale();
    v42 = v39 * v41;

    if (v36 < v42)
    {

LABEL_19:
      v9 = 0;
    }
  }

LABEL_22:
  [a1 _axSetAdditionalElementHitTestingInProgress:0];
LABEL_23:

  return v9;
}

- (id)_accessibilityHitTestSupplementaryViews:()AXPrivCategory event:
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [a1 _accessibilitySupplementaryHeaderViews];
  v10 = [a1 _accessibilitySupplementaryFooterViews];
  v11 = [MEMORY[0x1E695DF70] array];
  if ([v9 count])
  {
    [v11 addObjectsFromArray:v9];
  }

  if ([v10 count])
  {
    [v11 addObjectsFromArray:v10];
  }

  v12 = [a1 _accessibilityParentView];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v11;
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
          [v18 convertPoint:v12 fromView:{a2, a3, v25}];
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

  v12 = [a1 _accessibilityParentView];
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
  v40 = a1;
  v16 = *v48;
  v41 = v13;
  v42 = v12;
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
        [v18 convertPoint:v12 fromView:{a2, a3}];
      }

      v22 = [v18 _accessibilityHitTest:v11 withEvent:{v21, v20, v39}];
      v23 = v22;
      if (v22 && ([v22 isAccessibilityElement] & 1) != 0)
      {
        goto LABEL_35;
      }

      if ((isKindOfClass & [a1 _accessibilityHitTestShouldFallbackToNearestChild]) == 1 && (objc_msgSend(v11, "_accessibilityAutomationHitTest") & 1) == 0)
      {
        [v18 convertPoint:v12 fromView:{a2, a3}];
        if ([v18 pointInside:v11 withEvent:?])
        {
          UIAccessibilityPointForPoint(v12, a2, a3);
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
          v12 = v42;
          a1 = v40;
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
  v4 = [a3 _accessibilityHitTestOptions];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[UIAccessibilityHitTestOptions defaultOptions];
  }

  v7 = v6;

  v8 = [v7 outOfBoundsHitTestElements];
  v9 = [v8 containsObject:a1];

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
    v134 = a1;
    v135 = 2112;
    v136 = v10;
    _os_log_impl(&dword_1A9B83000, v9, OS_LOG_TYPE_INFO, "In base hit test for %@ with point %@", buf, 0x16u);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if ([a1 _accessibilityIsFrameOutOfBounds])
    {
      v12 = 0;
      goto LABEL_146;
    }

    v13 = [a1 pointInside:v8 withEvent:{a2, a3}];
  }

  else
  {
    v13 = 0;
  }

  [a1 accessibilityFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [a1 _accessibilityParentView];
  [v22 convertPoint:0 toView:{a2, a3}];
  v24 = v23;
  v26 = v25;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v22;
  }

  else
  {
    v27 = [v22 window];
  }

  [v27 convertPoint:0 toWindow:{v24, v26}];
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
    v32 = [a1 accessibilityPath];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 CGPath];
      v140.x = v29;
      v140.y = v31;
      v35 = CGPathContainsPoint(v34, 0, v140, 0);

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

  if (![a1 _accessibilityAllowOutOfBoundsHitTestAtPoint:v8 withEvent:{a2, a3}])
  {
    v12 = 0;
    goto LABEL_145;
  }

LABEL_19:
  if (_AXSAutomationEnabled())
  {
    v36 = [v8 _accessibilityAutomationHitTest];
  }

  else
  {
    v36 = 0;
  }

  v37 = [v8 _accessibilityHitTestOptions];
  v38 = v37;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = +[UIAccessibilityHitTestOptions defaultOptions];
  }

  if ((v36 & 1) == 0)
  {
    v40 = [v39 leafNodePredicate];
    v41 = (v40)[2](v40, a1);

    if (v41)
    {
      v12 = a1;
      goto LABEL_144;
    }
  }

  v42 = [a1 _accessibilitySupplementaryHeaderViews];
  v43 = [a1 _accessibilityHitTestSupplementaryViews:v42 point:v8 withEvent:{a2, a3}];

  if (v43)
  {
    v44 = v43;
    v12 = v44;
    goto LABEL_143;
  }

  if (v36)
  {
    v45 = [a1 automationElements];

    if (v45)
    {
      goto LABEL_38;
    }
  }

  v46 = [a1 _accessibilityFuzzyHitTestElements];
  if (v46)
  {
    v45 = v46;
LABEL_38:
    v48 = [v45 count];
    goto LABEL_39;
  }

  v45 = [a1 _accessibilityElements];
  if (![v45 count])
  {
    v47 = [a1 _accessibilityAdditionalHitTestElements];

    v45 = v47;
  }

  if (v45)
  {
    goto LABEL_38;
  }

  v48 = [a1 accessibilityElementCount];
LABEL_39:
  v49 = v48;
  if (!v48)
  {
    if ([v39 shouldHitTestUserTestingChildren])
    {
      v50 = [a1 automationElements];

      v49 = [v50 count];
      v45 = v50;
    }

    else
    {
      v49 = 0;
    }
  }

  if ([a1 _accessibilityHitTestShouldFallbackToNearestChild])
  {
    v110 = [v8 _accessibilityAutomationHitTest] ^ 1;
  }

  else
  {
    v110 = 0;
  }

  v107 = v8;
  v114 = v45;
  v115 = v49;
  v109 = v39;
  v106 = v36;
  if ((![v8 _accessibilityAutomationHitTest] || (objc_msgSend(a1, "_accessibilityAutomationHitTestReverseOrder") & 1) == 0) && !objc_msgSend(a1, "_accessibilityHitTestReverseOrder"))
  {
    if (v49 >= 1)
    {
      v101 = v19;
      v102 = v17;
      v103 = v15;
      v104 = v27;
      v105 = v22;
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
  v104 = v27;
  v105 = v22;
  v51 = v49 - 1;
  v112 = -1;
  v113 = 1;
LABEL_53:
  v52 = 0;
  v53 = 0;
  v54 = 1.79769313e308;
  v111 = a1;
  while (1)
  {
    if (v45)
    {
      [v45 objectAtIndex:v51];
    }

    else
    {
      [a1 accessibilityElementAtIndex:v51];
    }
    v55 = ;

    if (!v55)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) == 0 || ([v55 alpha], v56 != 0.0) || (objc_msgSend(v55, "_accessibilityOverridesInvisibility"))
    {
      v57 = [v55 accessibilityPath];
      v116 = v57;
      if (!v57)
      {
        goto LABEL_65;
      }

      v58 = [v57 CGPath];
      v141.x = v29;
      v141.y = v31;
      if (CGPathContainsPoint(v58, 0, v141, 0))
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

          [a1 convertPoint:v55 toView:{a2, a3}];
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
      aBlock[4] = a1;
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
        v65 = [v109 leafNodePredicate];
        v66 = (v65)[2](v65, v60);

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
        v73 = [MEMORY[0x1E695DF70] array];
        if ([v60 isAccessibilityElement])
        {
          [v73 addObject:v60];
        }

        else if ([v60 _accessibilityHasOrderedChildren])
        {
          v121[0] = MEMORY[0x1E69E9820];
          v121[1] = 3221225472;
          v121[2] = __64__NSObject_AXPrivCategory___accessibilityBaseHitTest_withEvent___block_invoke_3;
          v121[3] = &unk_1E78AAC38;
          v122 = v73;
          [v60 accessibilityEnumerateContainerElementsUsingBlock:v121];
        }

        v108 = v69;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v74 = v73;
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
      a1 = v111;
      v45 = v114;
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
    v27 = v104;
    v22 = v105;
    goto LABEL_125;
  }

  v27 = v104;
  v22 = v105;
  v17 = v102;
  v15 = v103;
  v19 = v101;
LABEL_114:
  v87 = [a1 _accessibilitySupplementaryFooterViews];
  v69 = [a1 _accessibilityHitTestSupplementaryViews:v87 point:v8 withEvent:{a2, a3}];

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
      v94 = [a1 _accessibilityShouldHitTestRemoteElementProcess];
      v95 = AXLogUIA();
      v96 = os_log_type_enabled(v95, OS_LOG_TYPE_INFO);
      if (v94)
      {
        if (v96)
        {
          *buf = 138412290;
          v134 = v93;
          _os_log_impl(&dword_1A9B83000, v95, OS_LOG_TYPE_INFO, "Will attempt to hit test remote process %@", buf, 0xCu);
        }

        a1 = v93;
        goto LABEL_140;
      }

      if (v96)
      {
        *buf = 138412290;
        v134 = 0;
        _os_log_impl(&dword_1A9B83000, v95, OS_LOG_TYPE_INFO, "Not returning remote element for hit-testing %@", buf, 0xCu);
      }

      v8 = v107;
    }

    if ((v106 & v86) == 1)
    {
      if ([a1 isAccessibilityElement])
      {
        goto LABEL_141;
      }

      v97 = [v109 leafNodePredicate];
      v98 = (v97)[2](v97, a1);

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
      v134 = v99;
      _os_log_impl(&dword_1A9B83000, v95, OS_LOG_TYPE_INFO, "Base hit test returning %@", buf, 0xCu);
    }

    a1 = v69;
LABEL_140:

    v8 = v107;
LABEL_141:
    v91 = v69;
    v12 = a1;

    v45 = v114;
    goto LABEL_142;
  }

  v148.origin.x = v15;
  v148.origin.y = v17;
  v148.size.width = v19;
  v148.size.height = v21;
  v144.x = v29;
  v144.y = v31;
  if (!CGRectContainsPoint(v148, v144) || ([v109 fallbackPredicate], v89 = objc_claimAutoreleasedReturnValue(), v90 = (v89)[2](v89, a1), v89, !v90))
  {
    v69 = 0;
    v86 = 1;
    goto LABEL_125;
  }

  v12 = a1;
  v91 = 0;
LABEL_142:

  v39 = v109;
  v44 = v91;
LABEL_143:

LABEL_144:
LABEL_145:

LABEL_146:

  return v12;
}

- (uint64_t)_accessibilitySelfFoundByHitTesting
{
  [a1 accessibilityFrame];
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
  v8 = [a1 safeValueForKey:@"window"];
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

  if (v10 == a1)
  {
    v12 = 1;
  }

  else
  {
    v12 = [v10 _accessibilityIsDescendantOfElement:a1];
  }

  return v12;
}

- (uint64_t)_accessibilityWindowVisible
{
  v1 = [a1 accessibilityUserDefinedWindowVisible];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)_setAccessibilityWindowVisible:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _accessibilitySetRetainedValue:v2 forKey:@"_AX_WindowVisible"];
}

- (uint64_t)_accessibilityIsMainWindow
{
  v1 = [a1 accessibilityUserDefinedIsMainWindow];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)_setAccessibilityIsMainWindow:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _accessibilitySetRetainedValue:v2 forKey:@"_AX_WindowIsMain"];
}

- (uint64_t)_accessibilityTextInputElementRangeAsNSRange
{
  v2 = [a1 _accessibilityTextInputElementRange];
  if (v2)
  {
    v3 = [a1 _accessibilityTextInputElement];
    v4 = [v3 _accessibilityRawRangeForUITextRange:v2];
  }

  else
  {
    v4 = 0x7FFFFFFFLL;
  }

  return v4;
}

- (uint64_t)_accessibilityRemoteElementShouldHitTestHostProcess
{
  v1 = [a1 _accessibilityGetBlockForAttribute:5009];
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
  [a1 _accessibilitySetUserDefinedScrollingEnabled:v2];
}

- (uint64_t)_accessibilityScrollingEnabled
{
  v1 = [a1 _accessibilityUserDefinedScrollingEnabled];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)_setAccessibilityShouldUseViewHierarchyForFindingScrollParent:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _accessibilitySetRetainedValue:v2 forKey:@"_accessibilityShouldUseViewHierarchyForFindingScrollParent"];
}

- (BOOL)_accessibilityIsPressed
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 safeValueForKey:@"_browserAccessibilityStoredValuePressedState"];

  if (!v2)
  {
    return 0;
  }

  if ([a1 safeIntegerForKey:@"browserAccessibilityPressedState"] == 2)
  {
    return 1;
  }

  return [a1 safeIntegerForKey:@"browserAccessibilityPressedState"] == 3;
}

- (uint64_t)_accessibilityExpandedStatus
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [a1 safeIntegerForKey:@"accessibilityExpandedStatus"];
}

- (id)_accessibilityFirstResponderForKeyWindow
{
  v2 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  v3 = [a1 _accessibilityFirstResponderForWindow:v2];

  return v3;
}

- (id)_accessibilityResponderChainForWindow:()AXPrivCategory
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [v3 firstResponder];
  if (v5)
  {
    v6 = v5;
    do
    {
      [v4 addObject:v6];
      v7 = [v6 nextResponder];

      v6 = v7;
    }

    while (v7);
  }

  return v4;
}

- (id)_accessibilityResponderChainForKeyWindow
{
  v2 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
  v3 = [a1 _accessibilityResponderChainForWindow:v2];

  return v3;
}

- (void)_accessibilityIterateScrollParentsUsingBlock:()AXPrivCategory includeSelf:
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a1 _accessibilityShouldUseViewHierarchyForFindingScrollParent];
    v8 = a1;
    v9 = v8;
    if (a4)
    {
      goto LABEL_9;
    }

    if (v7)
    {
      v9 = [v8 superview];
      v7 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = a1;
    if (a4)
    {
      v9 = v10;
      v7 = 0;
      goto LABEL_9;
    }
  }

  v9 = [a1 _accessibilityParentForFindingScrollParent];
  v7 = 0;
LABEL_8:

  if (v9 == a1)
  {
    _AXAssert();
    goto LABEL_19;
  }

LABEL_9:
  v13 = 0;
  if (v9)
  {
    while (1)
    {
      v6[2](v6, v9, &v13);
      v11 = v9;
      v12 = v11;
      if (v7)
      {
        [v11 superview];
      }

      else
      {
        [v11 _accessibilityParentForFindingScrollParent];
      }
      v9 = ;

      if (v12 == v9)
      {
        break;
      }

      if (!v9 || (v13 & 1) != 0)
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
  [a1 _accessibilityIterateScrollParentsUsingBlock:v5];
  v3 = v8[4];
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (void)setIsAccessibilityScrollAncestor:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _accessibilitySetRetainedValue:v2 forKey:@"_AX_IsScrollAncestor"];
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
  [a1 _accessibilityIterateScrollParentsUsingBlock:v5 includeSelf:0];
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
  [a1 _accessibilityIterateScrollParentsUsingBlock:v9 includeSelf:0];
  v2 = v11[5];
  if (!v2)
  {
    v3 = [a1 _accessibilityScrollAncestor];
    v4 = v3;
    if (v3 != a1)
    {
      v5 = [v3 _accessibilityScrollStatus];
      v6 = v11[5];
      v11[5] = v5;
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

    v9 = [a1 _accessibilityScrollAncestor];
    v10 = AXRemoteElementFromObject();
    if (v10)
    {
      objc_storeStrong(v24 + 5, v10);
    }

    if (v9)
    {
      while (1)
      {
        if (objc_opt_respondsToSelector())
        {
          v11 = [v9 safeValueForKey:v8];
          v12 = [v11 BOOLValue];

          if ((v12 & 1) != 0 || a4 && sel_accessibilityScrollUpPage == aSelector)
          {
            break;
          }
        }

        v13 = [v9 accessibilityContainer];
        v14 = [v13 _accessibilityScrollAncestor];

        v9 = v14;
        if (!v14)
        {
          goto LABEL_13;
        }
      }

      v15 = v24[5];
      v24[5] = v9;
      v16 = v9;
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
    [a1 _accessibilityIterateScrollParentsUsingBlock:v19];
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
  [a1 _accessibilityIterateScrollParentsUsingBlock:v8];
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
  v4 = [a1 _accessibilityIterateParentsForTestBlock:v10];
  if ((v4 & 1) != 0 || *(v18 + 24) == 1)
  {
    v5 = (_switchControlNegatesPerformEscapeAnswer(v12[5]) ^ 1) & v4;
  }

  else
  {
    v7 = MEMORY[0x1E69DDA98];
    v8 = objc_opt_class();
    if (class_getInstanceMethod(v8, sel__accessibilityCanPerformEscapeAction) == _accessibilityIsEscapable_BaseCanPerformMethod)
    {
      v9 = objc_opt_class();
      v5 = class_getInstanceMethod(v9, sel_accessibilityPerformEscape) != _accessibilityIsEscapable_BaseNSObjectMethod;
    }

    else
    {
      v5 = [*v7 _accessibilityCanPerformEscapeAction];
    }
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v5;
}

- (uint64_t)_accessibilityIsScrollable
{
  v2 = [a1 _accessibilityValueForKey:@"AXIsScrollable"];

  if (v2)
  {

    return [a1 _accessibilityBoolValueForKey:@"AXIsScrollable"];
  }

  else
  {
    v4 = [a1 _accessibilityIterateParentsForTestBlock:&__block_literal_global_398];
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v6 = [a1 _accessibilityScrollAncestor];
      v5 = v6 != 0;
    }

    [a1 _accessibilitySetBoolValue:v4 | v5 forKey:@"AXIsScrollable"];
    return v4 | v5;
  }
}

- (uint64_t)_accessibilityIsInTabBar
{
  v2 = [a1 _axCachedHasTabBarAncestor];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v5 = [a1 _accessibilityTabBarAncestor];
    v4 = v5 != 0;

    v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    [a1 _axSetCachedHasTabBarAncestor:v6];
  }

  return v4;
}

- (uint64_t)_accessibilityCanScrollInAtLeastOneDirection
{
  if ([a1 _accessibilityCanPerformAction:2006] & 1) != 0 || (objc_msgSend(a1, "_accessibilityCanPerformAction:", 2007) & 1) != 0 || (objc_msgSend(a1, "_accessibilityCanPerformAction:", 2009))
  {
    return 1;
  }

  return [a1 _accessibilityCanPerformAction:2008];
}

- (uint64_t)_accessibilityShowContextMenuWithTargetPointValue:()AXPrivCategory
{
  v4 = a3;
  v5 = [a1 _accessibilityParentView];
  v6 = [v5 _accessibilityShowContextMenuForElement:a1 targetPointValue:v4];

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
  v5[4] = a1;
  v5[5] = &v6;
  [a1 _accessibilityIterateScrollParentsUsingBlock:v5];
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
  [a1 _accessibilityDisplayId];
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
  v6 = [a1 _accessibilityScrollAncestor];
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
  v10 = [a1 _accessibilityScrollAncestor];
  if (objc_opt_respondsToSelector())
  {
    v5 = a2 >= 0.0 && a2 <= 1.0;
    if (v5 && a3 >= 0.0 && a3 <= 1.0)
    {
      [v10 contentSize];
      [v10 _accessibilityScrollToFrame:v10 forView:{a2 * v6, a3 * v7, 1.0, 1.0}];
      v8 = [v10 _accessibilityScrollStatus];
      UIAccessibilityPostNotification(*MEMORY[0x1E69DD908], v8);
    }

    else
    {
      NSLog(&cfstr_ScrollToPointO.isa, v10);
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
  [a1 _accessibilityIterateScrollParentsUsingBlock:v7 includeSelf:1];
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
  v5[4] = a1;
  [a1 _accessibilityIterateScrollParentsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_accessibilitySendPageScrollFailedIfNecessary
{
  v2 = [a1 _accessibilityRemoteParent];
  if (!v2 || (v3 = v2, v4 = [a1 _accessibilityShouldScrollRemoteParent], v3, (v4 & 1) == 0))
  {
    v5 = *MEMORY[0x1E69DD908];
    v6 = *MEMORY[0x1E69890E8];

    UIAccessibilityPostNotification(v5, v6);
  }
}

- (uint64_t)_accessibilityTryScrollWithSelector:()AXPrivCategory shouldSendScrollFailed:
{
  v13 = 0;
  v7 = [a1 _accessibilityScrollAncestorForSelector:?];
  if (v7)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (v8 = MEMORY[0x1E695DF50], [objc_opt_class() instanceMethodSignatureForSelector:a3], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "invocationWithMethodSignature:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, objc_msgSend(v10, "setSelector:", a3), objc_msgSend(v10, "setTarget:", v7), objc_msgSend(v10, "invoke"), objc_msgSend(v10, "getReturnValue:", &v13), v10, (v13))
    {
      a4 = 1;
    }

    else
    {
      v11 = [v7 accessibilityContainer];
      a4 = [v11 _accessibilityTryScrollWithSelector:a3 shouldSendScrollFailed:a4];
    }
  }

  else if (a4)
  {
    [a1 _accessibilitySendPageScrollFailedIfNecessary];
    a4 = 0;
  }

  return a4;
}

- (uint64_t)_accessibilityScrollPageInDirection:()AXPrivCategory shouldSendScrollFailed:
{
  if ([a1 _accessibilityHandlePublicScroll:?])
  {
    return 1;
  }

  v8 = [a1 _accessibilityScrollSelectorForDirection:a3];

  return [a1 _accessibilityTryScrollWithSelector:v8 shouldSendScrollFailed:a4];
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
  [a1 _axScreenBoundsForBoundsCheck];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [a1 _axFrameForBoundsCheck:0];
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
  v2 = [a1 _accessibilityUserDefinedMediaAnalysisOptions];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongValue];
  }

  else if ([a1 _accessibilityIsGroupedParent])
  {
    v4 = 0;
  }

  else
  {
    v4 = 40959;
  }

  v5 = [a1 _accessibilityBrailleMap];

  if (v5)
  {
    v6 = v4 | 0x100000;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (uint64_t)_accessibilityEffectiveMediaAnalysisOptions
{
  v2 = [a1 _accessibilityMediaAnalysisOptions];
  if ((v2 & 0x8000) != 0)
  {
    if ([a1 _accessibilityFrameSupportsMediaAnalysis])
    {
      return v2;
    }

    else
    {
      return v2 & 0xFFFF7FFF;
    }
  }

  return v2;
}

- (uint64_t)_accessibilityCanBeConsideredMediaAnalysisElement
{
  v2 = [a1 accessibilityTraits];
  if ((*MEMORY[0x1E69DD9D0] & v2) == 0)
  {
    return 0;
  }

  [a1 accessibilityFrame];
  if (v4 < *MEMORY[0x1E6988358] || v3 < *MEMORY[0x1E6988350])
  {
    return 0;
  }

  v7 = objc_opt_respondsToSelector();
  if ((v7 & 1) == 0)
  {
    return 1;
  }

  result = [a1 _accessibilityViewIsVisible];
  if (result)
  {
    return 1;
  }

  return result;
}

- (void)_accessibilityMediaAnalysisElement
{
  v1 = a1;
  v2 = [a1 _accessibilityFindSubviewDescendant:&__block_literal_global_443];
  v3 = v2;
  if (v2)
  {
    v1 = v2;
  }

  v4 = v1;

  return v1;
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
  if ([a1 accessibilityShouldEnumerateContainerElementsArrayDirectly])
  {
    v6 = [a1 _accessibilityElements];
    v7 = [v6 copy];

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
    v14 = [a1 accessibilityElementCount];
    if (v14)
    {
      v15 = v14;
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = v14 - 1;
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

          v19 = [a1 accessibilityElementAtIndex:v18];
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
  if ([a1 _accessibilityHitTestReverseOrder])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [a1 accessibilityEnumerateContainerElementsWithOptions:v4 usingBlock:v5];
}

- (id)_accessibilityContainerInDirection:()AXPrivCategory
{
  v5 = +[UIAccessibilityElementTraversalOptions options];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__NSObject_AXPrivCategory___accessibilityContainerInDirection___block_invoke;
  aBlock[3] = &unk_1E78AA760;
  aBlock[4] = a1;
  v6 = _Block_copy(aBlock);
  v7 = [a1 _accessibilityFindAncestor:v6 startWithSelf:0];
  if (!v7)
  {
    v7 = a1;
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
  v9 = [a1 _accessibilityOpaqueElementParent];
  if (v9 && (LOBYTE(v15) = 0, [v9 _accessibilityMoveFocusToNextOpaqueElementForTechnology:*MEMORY[0x1E69DD8F8] direction:objc_msgSend(v5 searchType:"direction") range:35 shouldScrollToVisible:0x7FFFFFFFLL honorsGroups:{0, 1, v15}], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v12 = [v10 _accessibilityTouchContainer];
  }

  else
  {
    v11 = [v7 _accessibilityElementsInDirectionWithCount:1 options:v5];
    v12 = [v11 firstObject];
  }

  v13 = v12;

  return v13;
}

- (id)_accessibilityGuideElementInDirection:()AXPrivCategory
{
  v5 = +[UIAccessibilityElementTraversalOptions options];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__NSObject_AXPrivCategory___accessibilityGuideElementInDirection___block_invoke;
  aBlock[3] = &unk_1E78AA760;
  aBlock[4] = a1;
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
  v8 = [a1 _accessibilityElementsInDirectionWithCount:1 options:v5];
  v9 = [v8 firstObject];

  return v9;
}

- (void)_accessibilityUpdateContainerElementReferencesIfNeededForNewElements:()AXPrivCategory
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [a1 _accessibilityLastElementsUpdatedWithContainerElementReferences];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v28 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v21 + 1) + 8 * i) setAccessibilityContainer:0];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v28 count:16];
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
        if (v15 == a1)
        {
          v16 = AXLogAppAccessibility();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = a1;
            _os_log_error_impl(&dword_1A9B83000, v16, OS_LOG_TYPE_ERROR, "An object shouldn't return itself in accessibilityElements. Element: %@", buf, 0xCu);
          }
        }

        else
        {
          [v15 setAccessibilityContainer:a1];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v12);
  }

  [a1 _accessibilitySetLastElementsUpdatedWithContainerElementReferences:v10];
}

- (id)_accessibilitySwipeIsland
{
  v1 = a1;
  if (v1)
  {
    while (1)
    {
      v2 = [v1 _accessibilitySwipeIslandIdentifier];
      if (v2)
      {
        break;
      }

      v3 = [v1 accessibilityContainer];

      v1 = v3;
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

LABEL_7:

  return v3;
}

- (uint64_t)__accessibilitySupportsActivateAction
{
  if (!__accessibilitySupportsActivateAction_BaseSupportsActivateAction)
  {
    v2 = objc_opt_class();
    __accessibilitySupportsActivateAction_BaseSupportsActivateAction = class_getInstanceMethod(v2, sel__accessibilitySupportsActivateAction);
  }

  v3 = [a1 _accessibilitySupportsActivateAction];
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
    v3 |= v10;
  }

  return v3 & 1;
}

- (id)_accessibilityHeadingLevel
{
  v2 = [a1 _accessibilityGetBlockForAttribute:27];
  v3 = v2;
  if (!v2)
  {
    v5 = [a1 _accessibilityValueForKey:@"AXHeadingLevel"];
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
  v3 = 1;
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
        return v3;
      }

      v5 = sel_accessibilityScrollUpPage;
    }

LABEL_12:
    v4 = [a1 _accessibilityScrollAncestorForSelector:v5];
    v3 = v4 != 0;
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
      v4 = [a1 _accessibilityScrollAncestor];
      v3 = [v4 accessibilityScrollToTopSupported];
LABEL_13:

      break;
  }

  return v3;
}

- (id)_accessibilityRetrieveLinkedUIElementsFromContainerChain
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    while (1)
    {
      v3 = [v2 _accessibilityLinkedUIElements];
      if ([v3 count])
      {
        break;
      }

      v4 = [v2 accessibilityContainer];

      v2 = v4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v3 = 0;
  }

  return v3;
}

- (id)_accessibilityLinkedUIElements
{
  v2 = [a1 _accessibilityGetBlockForAttribute:15];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2);
  }

  else
  {
    [a1 _accessibilityUserDefinedLinkedUIElements];
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
    v5 = 0;
    goto LABEL_13;
  }

  v5 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
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

        [v5 addPointer:*(*(&v15 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

LABEL_13:
  objc_setAssociatedObject(a1, &AXLinkedUIElementsIdentifier, v5, 0x301);
}

- (id)_accessibilityUserDefinedLinkedUIElements
{
  v1 = objc_getAssociatedObject(a1, &AXLinkedUIElementsIdentifier);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 allObjects];

    v1 = v2;
  }

  return v1;
}

- (id)_accessibilityGuideElementHeaderText
{
  v2 = [a1 _accessibilityGetBlockForAttribute:16];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
  }

  else
  {
    v4 = [a1 _accessibilityUserDefinedGuideElementHeaderText];
    if (![v4 length])
    {
      v5 = [a1 _accessibilityRetieveHeaderElementText];

      v4 = v5;
    }
  }

  return v4;
}

- (id)_accessibilityRetieveHeaderElementText
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = [a1 _accessibilityRetrieveHeaderElements];
  v2 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v1);
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
      v3 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:{16, v9, v12, @"__AXStringForVariablesSentinel"}];
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
  v1 = [a1 _accessibilityGetBlockForAttribute:17];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)_accessibilityCanPerformEscapeAction
{
  v1 = [a1 _accessibilityGetBlockForAttribute:25];
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
  v13 = [a1 _accessibilityValueForKey:@"AXContainerAncestorTypeKey"];
  v2 = v9[5];
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v4 = v9[5];
    v9[5] = v3;

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__NSObject_AXPrivCategory___axAncestorTypes__block_invoke;
    v7[3] = &unk_1E78AAE38;
    v7[4] = a1;
    v7[5] = &v8;
    [a1 accessibilityEnumerateAncestorsUsingBlock:v7];
    [a1 _accessibilitySetRetainedValue:v9[5] forKey:@"AXContainerAncestorTypeKey"];
    v2 = v9[5];
  }

  v5 = v2;
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)_accessibilityAncestorForSiblingsWithType:()AXPrivCategory
{
  v4 = [a1 _axAncestorTypes];
  v5 = v4;
  if (a3)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
    v7 = [v5 objectForKey:v6];
  }

  else
  {
    v6 = [v4 objectEnumerator];
    v8 = [v6 allObjects];
    v7 = [v8 firstObject];
  }

  return v7;
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
    v15[4] = a1;
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
  v2 = [a1 _accessibilityAncestorForSiblingsWithType:0];
  v3 = [a1 _accessibilitySiblingWithAncestor:v2 isFirst:1 isLast:0];

  return v3;
}

- (uint64_t)_accessibilityIsLastSibling
{
  v2 = [a1 _accessibilityAncestorForSiblingsWithType:0];
  v3 = [a1 _accessibilitySiblingWithAncestor:v2 isFirst:0 isLast:1];

  return v3;
}

- (uint64_t)_accessibilityIsFirstSiblingForType:()AXPrivCategory
{
  v2 = [a1 _accessibilityAncestorForSiblingsWithType:?];
  v3 = [a1 _accessibilitySiblingWithAncestor:v2 isFirst:1 isLast:0];

  return v3;
}

- (uint64_t)_accessibilityIsLastSiblingForType:()AXPrivCategory
{
  v2 = [a1 _accessibilityAncestorForSiblingsWithType:?];
  v3 = [a1 _accessibilitySiblingWithAncestor:v2 isFirst:0 isLast:1];

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
  v3[4] = a1;
  v3[5] = &v4;
  [a1 accessibilityEnumerateAncestorsUsingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

- (id)accessibilityMathEquation
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 safeValueForKey:@"accessibilityMathExpression"];
    v3 = [a1 _accessibilityConvertMathExpression:v2];
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
    v5 = [a1 _accessibilityProcessMathExpression:v4];
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
    v7 = v6;
    v8 = [v6 content];
    [v5 setObject:v8 forKeyedSubscript:@"AXMContent"];

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
    v7 = [v10 content];

    if ([v7 length] == 1)
    {
      v11 = @"AXMUnichar";
    }

    else
    {
      v11 = @"AXMContent";
    }

    [v5 setObject:v7 forKeyedSubscript:v11];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"Fenced" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    v12 = [v7 openString];
    [v5 setObject:v12 forKeyedSubscript:@"AXMOpenOperator"];

    v13 = [v7 closeString];
    [v5 setObject:v13 forKeyedSubscript:@"AXMCloseOperator"];

LABEL_28:
    v15 = [v7 expressions];
    v16 = [a1 _processMathChildrenExpressions:v15];
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
    v7 = v14;
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
    v7 = __UIAccessibilityCastAsClass();
    v18 = [v7 baseExpression];
    v19 = [a1 _accessibilityProcessMathExpression:v18];
    [v5 setObject:v19 forKeyedSubscript:@"AXMBaseObject"];

    v20 = [v7 underExpression];
    v21 = [a1 _accessibilityProcessMathExpression:v20];
    [v5 setObject:v21 forKeyedSubscript:@"AXMUnderObject"];

    v15 = [v7 overExpression];
    v22 = [a1 _accessibilityProcessMathExpression:v15];
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
    v7 = __UIAccessibilityCastAsClass();
    v23 = [v7 numeratorExpression];
    v24 = [a1 _accessibilityProcessMathExpression:v23];
    [v5 setObject:v24 forKeyedSubscript:@"AXMNumeratorObject"];

    v15 = [v7 denimonatorExpression];
    v16 = [a1 _accessibilityProcessMathExpression:v15];
    v17 = @"AXMDenominatorObject";
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"SubSuperScript" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    v25 = [v7 baseExpression];
    v26 = [a1 _accessibilityProcessMathExpression:v25];
    [v5 setObject:v26 forKeyedSubscript:@"AXMBaseObject"];

    v27 = [v7 subscriptExpressions];
    v28 = [a1 _processMathChildrenExpressions:v27];
    [v5 setObject:v28 forKeyedSubscript:@"AXMUnderObject"];

    v15 = [v7 superscriptExpressions];
    v22 = [a1 _processMathChildrenExpressions:v15];
    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"Multiscript" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    v29 = [v7 baseExpression];
    v30 = [a1 _accessibilityProcessMathExpression:v29];
    [v5 setObject:v30 forKeyedSubscript:@"AXMBaseObject"];

    v31 = [v7 prescriptExpressions];
    v32 = [a1 _processMathMultiscriptExpressions:v31];
    [v5 setObject:v32 forKeyedSubscript:@"AXMMultiscriptPrescripts"];

    v15 = [v7 postscriptExpressions];
    v16 = [a1 _processMathMultiscriptExpressions:v15];
    v17 = @"AXMMultiscriptPostscripts";
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setObject:@"RootOperation" forKeyedSubscript:@"AXMType"];
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    v33 = [v7 radicandExpressions];
    v15 = [a1 _processMathChildrenExpressions:v33];

    v34 = objc_opt_new();
    [v34 setObject:@"Row" forKeyedSubscript:@"AXMType"];
    [v34 setObject:v15 forKeyedSubscript:@"AXMChildren"];
    [v5 setObject:v34 forKeyedSubscript:@"AXMRadicandObject"];
    v35 = [v7 rootIndexExpression];
    v36 = [a1 _accessibilityProcessMathExpression:v35];
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
  v5 = [MEMORY[0x1E695DF70] array];
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
          v12 = [a1 _accessibilityProcessMathExpression:{v11, v14}];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
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

        v11 = [a1 _accessibilityProcessMathExpression:{*(*(&v13 + 1) + 8 * i), v13}];
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
    v2 = [a1 safeStringForKey:@"browserAccessibilityCurrentStatus"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)accessibilityRowCount
{
  v1 = [a1 _accessibilityGetBlockForAttribute:5001];
  v2 = v1;
  if (v1)
  {
    v3 = (*(v1 + 16))(v1);
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)accessibilityColumnCount
{
  v1 = [a1 _accessibilityGetBlockForAttribute:5000];
  v2 = v1;
  if (v1)
  {
    v3 = (*(v1 + 16))(v1);
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
    v3 = [a1 safeValueForKey:@"attributedText"];
    if ([v3 length])
    {
      v4 = [a1 _accessibilityValueForKey:@"AXLinks"];
      if (v4)
      {
        v5 = v4;
      }

      else
      {
        v28 = [MEMORY[0x1E695DF70] array];
        [a1 _accessibilitySetRetainedValue:? forKey:?];
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
              v16 = [(UIAccessibilityLinkSubelement *)v7 range];
              v17 = v31 + v30;
              v18 = v17 - [(UIAccessibilityLinkSubelement *)v7 range];
              v19 = v7;
              [(UIAccessibilityLinkSubelement *)v19 setRange:v16, v18];
              v20 = [v3 string];
              v21 = [(UIAccessibilityLinkSubelement *)v19 range];
              v23 = [v20 substringWithRange:{v21, v22}];
              [(UIAccessibilityLinkSubelement *)v19 setAccessibilityLabel:v23];
            }

            else
            {
              v19 = [[UIAccessibilityLinkSubelement alloc] initWithAccessibilityContainer:a1];
              [(UIAccessibilityLinkSubelement *)v19 setRange:v30, v31];
              v24 = [v3 string];
              v25 = [v24 substringWithRange:{v30, v31}];
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

              [v28 addObject:v19];
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
        v5 = v28;
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
  v2 = [a1 _accessibilityInternalTextLinks];
  if ([v2 count])
  {
    v3 = [a1 _accessibilityValueForKey:@"LinkRotor"];
    if (!v3)
    {
      objc_initWeak(&location, a1);
      v4 = objc_alloc(MEMORY[0x1E69DC5F0]);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __70__NSObject_AXPrivCategory___accessibilityInternalTextLinkCustomRotors__block_invoke;
      v8[3] = &unk_1E78AAE88;
      objc_copyWeak(&v10, &location);
      v9 = v2;
      v3 = [v4 initWithSystemType:1 itemSearchBlock:v8];
      v5 = [a1 _accessibilityInternalTextLinks];
      [v3 setLinkCount:{objc_msgSend(v5, "count")}];

      [a1 _accessibilitySetRetainedValue:v3 forKey:@"LinkRotor"];
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
  v2 = AXUIKeyboardWindow();
  v3 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  v4 = v3;
  if (v2)
  {
    v5 = [v3 window];

    if (v5 != v2)
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
      v13 = [v2 _accessibilityFindDescendant:v16];
      v14 = v13;
      if (v13 == a1)
      {
        v8 = 0;
      }

      else
      {
        v8 = [v13 _accessibilityActiveKeyboard];
      }

      goto LABEL_12;
    }

    v8 = v4;
  }

  else
  {
    if (!_UIApplicationIsExtension())
    {
      v2 = [*MEMORY[0x1E69DDA98] _accessibilityMainWindow];
      goto LABEL_8;
    }

    v6 = NSClassFromString(&cfstr_Uiinputview.isa);
    v2 = [*MEMORY[0x1E69DDA98] _accessibilityWindows];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __56__NSObject_AXPrivCategory___accessibilityActiveKeyboard__block_invoke;
    v19[3] = &unk_1E78AA760;
    v20 = v6;
    v7 = v6;
    v8 = [v2 _accessibilityFindSubviewDescendant:v19];
  }

LABEL_12:

  return v8;
}

- (id)_accessibilityAccessibleDescendants
{
  v2 = +[UIAccessibilityElementTraversalOptions options];
  [v2 setLeafNodePredicate:&__block_literal_global_728];
  v3 = [a1 _accessibilityLeafDescendantsWithOptions:v2];

  return v3;
}

- (id)_accessibilityWatchAutoSpeakElements
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[UIAccessibilityElementTraversalOptions options];
  [v2 setLeafNodePredicate:&__block_literal_global_730];
  v3 = [a1 _accessibilityParentView];
  v4 = [v3 window];

  v5 = [v4 _accessibilityLeafDescendantsWithOptions:v2];
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
  v5 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
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

        v12 = [*(*(&v16 + 1) + 8 * i) stringByTrimmingCharactersInSet:{v5, v16}];
        v13 = [a1 safeValueForKey:v12];
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
  v1 = [a1 accessibilityContainer];
  if (v1)
  {
    do
    {
      if ([v1 isAccessibilityElement])
      {
        break;
      }

      v2 = [v1 accessibilityContainer];

      v1 = v2;
    }

    while (v2);
  }

  return v1;
}

- (uint64_t)_accessibilityPerformLegacyCustomAction:()AXPrivCategory
{
  v4 = [a3 actionIndex];

  return [a1 accessibilityPerformCustomAction:v4];
}

- (id)_retrieveCustomActionsForElement:()AXPrivCategory
{
  [a1 _accessibilitySetPrivateCustomActionsElement:?];
  v2 = [a1 _privateAccessibilityCustomActions];
  [a1 _accessibilitySetPrivateCustomActionsElement:0];
  v3 = [a1 accessibilityCustomActions];
  v4 = [v3 count];
  v5 = [v3 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v9 = [v3 objectAtIndexedSubscript:i];
        if ([v9 length])
        {
          v10 = [[UIAccessibilityLegacyCustomAction alloc] initWithName:v9 target:a1 selector:sel__accessibilityPerformLegacyCustomAction_];
          [(UIAccessibilityLegacyCustomAction *)v10 setActionIndex:i];
          [v7 addObject:v10];
        }
      }
    }
  }

  else
  {
    v7 = v3;
  }

  v11 = [MEMORY[0x1E695DEC8] axArrayWithPossiblyNilArrays:{2, v2, v7}];

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
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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

      v9 = [v4 _accessibilityShouldIncludeParentCustomActions];

      if (!v9)
      {
        break;
      }

      v10 = [v5 accessibilityContainer];

      v5 = v10;
    }

    while (v10);
  }

  v11 = [v4 _accessibilityAddToDragSessionCustomAction];
  v12 = v11;
  if (v11)
  {
    v23[0] = v11;
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
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
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

      v6 = [v3 accessibilityContainer];

      v3 = v6;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    LODWORD(v6) = 1;
LABEL_9:
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v7 = [v2 _accessibilityAddToDragSessionCustomAction];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (BOOL)_accessibilityRespondsToUserInteractionForElement:()AXPrivCategory
{
  v1 = [a1 _retrieveCustomActionsForElement:?];
  v2 = [v1 count] != 0;

  return v2;
}

- (uint64_t)_accessibilityRemoveTrait:()AXPrivCategory
{
  v4 = [a1 accessibilityTraits] & ~a3;

  return [a1 setAccessibilityTraits:v4];
}

- (uint64_t)_accessibilityAddTrait:()AXPrivCategory
{
  v4 = [a1 accessibilityTraits] | a3;

  return [a1 setAccessibilityTraits:v4];
}

- (uint64_t)_accessibilityIsGuideElement
{
  if ([a1 _accessibilityUserDefinedIsGuideElement])
  {
    return 1;
  }

  v3 = [a1 accessibilityContainer];
  if (v3)
  {
    do
    {
      if ([v3 accessibilityContainerType] == 3)
      {
        break;
      }

      v4 = [v3 accessibilityContainer];

      v3 = v4;
    }

    while (v4);
  }

  if ([v3 accessibilityContainerType] == 3)
  {
    v5 = [v3 _accessibilityFindElementInDirection:1 searchType:0 allowOutOfBoundsChild:1];
    v2 = v5 == a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_accessibilityTouchContainerStartingWithSelf:()AXPrivCategory
{
  v4 = a1;
  v5 = v4;
  if ((a3 & 1) == 0)
  {
    v6 = [v4 accessibilityContainer];

    v5 = v6;
  }

  if (v5)
  {
    do
    {
      if ([v5 _accessibilityIsTouchContainer])
      {
        break;
      }

      v7 = [v5 accessibilityContainer];

      v5 = v7;
    }

    while (v7);
  }

  return v5;
}

- (id)_accessibilityImageData
{
  v1 = [a1 _accessibilityValueForKey:@"AXAssetName"];
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
  v1 = [a1 _accessibilityVisibleFrameClippingAncestor];
  v2 = v1;
  if (v1)
  {
    [v1 accessibilityFrame];
    v4 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 bounds];
    v4 = v6;
  }

  return v4;
}

- (uint64_t)_accessibilityVisiblePoint
{
  v2 = AXDoesRequestingClientDeserveAutomation() != 0;

  return [a1 _accessibilityVisiblePointHitTestingAnyElement:v2];
}

- (uint64_t)_accessibilityMarkElementForVisiblePointHitTest:()AXPrivCategory
{
  _AXUIElementSetElementBeingHitTested();

  return [a1 _accessibilitySetBoolValue:a3 forKey:@"AXPerformingVisiblePointHitTest"];
}

- (double)_accessibilityVisiblePointHitTestingAnyElement:()AXPrivCategory
{
  v125[12] = *MEMORY[0x1E69E9840];
  if (!__AXRuntimeApplicationElement())
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    [a1 accessibilityFrame];
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

  if (v5 == a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (_UIAXObjectIsCompletelyBehindKeyboard(a1))
  {
    return -1.0;
  }

  [a1 _accessibilityMarkElementForVisiblePointHitTest:1];
  v6 = [a1 _accessibilityUserTestingProxyView];
  [v6 _accessibilityMarkElementForVisiblePointHitTest:1];

  v7 = [a1 _accessibilityContextId];
  [a1 _accessibilityDisplayId];
  [a1 accessibilityFrame];
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
      v120 = a1;
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
      v120 = a1;
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
  [a1 accessibilityVisibleContentRect];
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
  [a1 _accessibilityStartingPointForIsVisible];
  obja = [v26 valueWithPoint:?];
  v125[0] = obja;
  v27 = MEMORY[0x1E696B098];
  [a1 accessibilityActivationPoint];
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
      v55 = UIAXMassageElementDescription(a1);
      v56 = [a1 accessibilityContainer];
      v57 = [a1 _accessibilityWindow];
      *buf = 138740483;
      v120 = v55;
      v121 = 2112;
      v122 = v56;
      v123 = 2112;
      v124 = v57;
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

          [a1 _accessibilityConvertSystemBoundedScreenRectToContextSpace:{MidX, v68, v109, v63}];
          v72 = v71;
          v74 = v73;
          if (v7)
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
            v78 = UIAXMassageElementDescription(a1);
            v126.x = v72;
            v126.y = v74;
            v79 = NSStringFromPoint(v126);
            [v66 pointValue];
            v80 = NSStringFromPoint(v127);
            *buf = 138740483;
            v120 = v78;
            v121 = 2112;
            v122 = v79;
            v123 = 2112;
            v124 = v80;
            _os_log_impl(&dword_1A9B83000, v77, OS_LOG_TYPE_INFO, "Trying pt[%{sensitive}@]: %@ (original: %@)", buf, 0x20u);

            v64 = v101;
          }

          if ([a1 _accessibilityVisiblePointHonorsScreenBounds])
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
                v120 = v82;
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
              v120 = v84;
              _os_log_impl(&dword_1A9B83000, v85, OS_LOG_TYPE_INFO, "Hit testing found: %@", buf, 0xCu);
            }

            if ([v84 _accessibilityIsDescendantOfElement:a1])
            {
              v86 = [a1 _accessibilitySupplementaryFooterViews];
              if ([v86 containsObject:v84])
              {
              }

              else
              {
                v87 = [a1 _accessibilitySupplementaryHeaderViews];
                v88 = [v87 containsObject:v84];

                if ((v88 & 1) == 0)
                {
                  v92 = AXLogUIA();
                  if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138739971;
                    v120 = a1;
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
              v89 = [a1 _accessibilityUserTestingVisibleAncestor];
              v90 = AXLogUIA();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v120 = v89;
                _os_log_impl(&dword_1A9B83000, v90, OS_LOG_TYPE_INFO, "Checking visible ancestor %@", buf, 0xCu);
              }

              if (v89 && [v84 _accessibilityIsDescendantOfElement:v89])
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

  [a1 _accessibilityMarkElementForVisiblePointHitTest:0];
  v93 = [a1 _accessibilityUserTestingProxyView];
  [v93 _accessibilityMarkElementForVisiblePointHitTest:0];

  if (MidX >= 0.0)
  {
    if ([a1 _accessibilityVisiblePointHonorsScreenBounds])
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
          v120 = v95;
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
  if (*MEMORY[0x1E69DDA98] == a1)
  {
    return [*MEMORY[0x1E69DDA98] applicationState] == 0;
  }

  if (a3 && _UIAXObjectIsCompletelyBehindKeyboard(a1))
  {
    return 0;
  }

  v5 = AXLogUIA();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = UIAXMassageElementDescription(a1);
    v15 = 138477827;
    v16 = v6;
    _os_log_impl(&dword_1A9B83000, v5, OS_LOG_TYPE_INFO, "Checking visibility for %{private}@", &v15, 0xCu);
  }

  [a1 _accessibilityVisiblePoint];
  v8 = v7;
  v10 = v9;
  v11 = AXLogUIA();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v20.x = v8;
    v20.y = v10;
    v12 = NSStringFromPoint(v20);
    v13 = UIAXMassageElementDescription(a1);
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
      v4 = [a1 window];
      if (!v4)
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

      v4 = [a1 _accessibilityParentView];
    }

    v2 = v4;
    v5 = [v4 _accessibilityIsStarkElement];
    goto LABEL_11;
  }

  v2 = [a1 screen];
  if (([v2 _isCarScreen] & 1) == 0)
  {
    v5 = [v2 _isCarInstrumentsScreen];
LABEL_11:
    v3 = v5;
    goto LABEL_12;
  }

  v3 = 1;
LABEL_12:

  return v3;
}

- (uint64_t)_accessibilityServesAsFirstElement
{
  v1 = [a1 accessibilityUserDefinedServesAsFirstElement];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)_setAccessibilityServesAsFirstElement:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _accessibilitySetRetainedValue:v2 forKey:@"_AX_ServesAsFirstElement"];
}

- (uint64_t)_accessibilityIsNotFirstElement
{
  v1 = [a1 accessibilityUserDefinedNotFirstElement];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)_setAccessibilityIsNotFirstElement:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _accessibilitySetRetainedValue:v2 forKey:@"_AX_NotFirstElement"];
}

- (id)_accessibilityFirstElementForFocusHonoringGroups:()AXPrivCategory
{
  if (a3)
  {
    v4 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptionsHonoringGroups];
    v5 = [a1 _accessibilityFirstElementForFocusWithOptions:v4];
  }

  else
  {
    v5 = [a1 _accessibilityFirstElementForFocus];
  }

  return v5;
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
    v2 = [a1 _accessibilityFirstElementForFocusWithOptions:v3];
  }

  return v2;
}

- (id)_accessibilityFirstElementForFocusWithOptions:()AXPrivCategory
{
  if (__74__NSObject_AXPrivCategory___accessibilityFirstElementForFocusWithOptions___block_invoke())
  {
    v2 = [a1 _accessibilityFirstOpaqueElement];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_accessibilityFirstDescendant
{
  v2 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
  v3 = [a1 _accessibilityLeafDescendantsWithCount:1 options:v2];
  v4 = [v3 firstObject];

  return v4;
}

- (id)_accessibilityFirstWebElement
{
  v2 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
  v3 = [v2 leafNodePredicate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__NSObject_AXPrivCategory___accessibilityFirstWebElement__block_invoke;
  v8[3] = &unk_1E78AAF20;
  v9 = v3;
  v4 = v3;
  [v2 setLeafNodePredicate:v8];
  v5 = [a1 _accessibilityLeafDescendantsWithCount:1 options:v2];
  v6 = [v5 firstObject];

  return v6;
}

- (id)_accessibilityFirstContainedElementForTechnology:()AXPrivCategory honoringGroups:shouldAlwaysScroll:
{
  v8 = a3;
  if ([a1 isAccessibilityOpaqueElementProvider])
  {
    v9 = [a1 _accessibilityFocusAbsoluteFirstLastOpaqueElement:1 technology:v8 honorsGroups:a4 shouldAlwaysScroll:a5];
  }

  else
  {
    v10 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
    if (a4)
    {
      v11 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptionsHonoringGroups];

      v12 = [v11 leafNodePredicate];
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __111__NSObject_AXPrivCategory___accessibilityFirstContainedElementForTechnology_honoringGroups_shouldAlwaysScroll___block_invoke;
      v19 = &unk_1E78AAF48;
      v20 = a1;
      v21 = v12;
      v13 = v12;
      [v11 setLeafNodePredicate:&v16];

      v10 = v11;
    }

    v14 = [a1 _accessibilityLeafDescendantsWithCount:1 options:{v10, v16, v17, v18, v19, v20}];
    v9 = [v14 firstObject];
  }

  return v9;
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
    v4 = [a1 _accessibilityLeafDescendantsWithCount:v5 options:v6];
  }

  else
  {
    v3 = [a1 _accessibilitySpeakThisElementsAndStrings];
    v4 = [v3 mutableCopy];

    [v4 addObject:@"SpeakThis-LegacyMethodWasUsed"];
  }

  return v4;
}

- (id)_accessibilitySpeakThisLeafDescendants
{
  v2 = +[UIAccessibilityElementTraversalOptions defaultSpeakScreenOptions];
  v3 = [a1 _accessibilityLeafDescendantsWithOptions:v2];

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
  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  v8 = [v7 _accessibilitySpeakThisViewController];

  v9 = objc_opt_class();
  v10 = class_getInstanceMethod(v9, sel__accessibilitySpeakThisElementsAndStrings);
  if (InstanceMethod == _accessibilityElementsForReadingInDirection__speakThisElementsBaseMethod && (!v8 || v10 == _accessibilityElementsForReadingInDirection__speakThisElementsVCBaseMethod))
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

    v11 = [a1 _accessibilityElementsInDirectionWithCount:v13 options:v15];
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
    v14 = [v11 itemSearchBlock];
    v15 = (v14)[2](v14, v13);
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
  v2 = [a1 _accessibilityCustomRotorTypeForString:?];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [RotorCache allValues];
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
        v9 = [v8 targetElement];
        if ([a1 _accessibilityIsDescendantOfElement:v9])
        {
          v10 = [v8 systemRotorType];

          if (v10 == v2)
          {
            v11 = [v8 uuid];
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)accessibilityHeaderElementsForColumn:()AXPrivCategory
{
  v4 = [a1 _accessibilityGetBlockForAttribute:5004];
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
  [a1 accessibilityEnumerateAncestorsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)accessibilityHeaderElementsForRow:()AXPrivCategory
{
  v4 = [a1 _accessibilityGetBlockForAttribute:5005];
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
  [a1 accessibilityEnumerateAncestorsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (uint64_t)_accessibilityPublicCustomRotorVisibleInTouchRotor:()AXPrivCategory
{
  v0 = [RotorCache objectForKey:?];
  v1 = [v0 visibleInTouchRotor];

  return v1;
}

- (id)_accessibilityPublicCustomRotorName:()AXPrivCategory
{
  v2 = [RotorCache objectForKey:?];
  v3 = [v2 _accessibilityAXAttributedName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 _accessibilityRotorTypeStringForCustomRotor:{objc_msgSend(v2, "systemRotorType")}];
  }

  v6 = v5;

  return v6;
}

- (uint64_t)_accessibilityPublicCustomRotorLinkCount:()AXPrivCategory
{
  v0 = [RotorCache objectForKey:?];
  v1 = [v0 linkCount];

  return v1;
}

- (void)_addPublicRotorsToArray:()AXPrivCategory forElement:
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 view];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = v6;
  v9 = [v6 accessibilityCustomRotors];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 uuid];

        if (v15)
        {
          v16 = [v14 uuid];
          v17 = [v5 containsObject:v16];

          if (v17)
          {
            continue;
          }

          v18 = RotorCache;
          v19 = [v14 uuid];
          [v18 setObject:v14 forKey:v19];

          [v14 setTargetElement:v8];
          v20 = [v14 uuid];
          [v5 addObject:v20];
        }

        else
        {
          v20 = AXLogAppAccessibility();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v27 = v14;
            _os_log_error_impl(&dword_1A9B83000, v20, OS_LOG_TYPE_ERROR, "UIAccessibilityCustomRotor: no UUID? %@", buf, 0xCu);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
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

  v2 = [MEMORY[0x1E695DF70] array];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    do
    {
      [v4 _addPublicRotorsToArray:v2 forElement:v5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [MEMORY[0x1E69DD258] viewControllerForView:v5];
        [v4 _addPublicRotorsToArray:v2 forElement:v6];
      }

      v7 = [v5 _accessibilityContainerForAccumulatingCustomRotorItems];

      v5 = v7;
    }

    while (v7);
  }

  v8 = MEMORY[0x1E69DDA98];
  v9 = [*MEMORY[0x1E69DDA98] delegate];
  [v4 _addPublicRotorsToArray:v2 forElement:v9];

  [v4 _addPublicRotorsToArray:v2 forElement:*v8];

  return v2;
}

- (id)_accessibilityCustomActionNamesAndIdentifiers
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = [a1 _accessibilityCustomActions];
  if ([v1 count])
  {
    v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v41 = v1;
    v2 = v1;
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
        v8 = [v7 _accessibilityAXAttributedName];
        v9 = [v8 length];

        if (!v9)
        {
          v15 = AXLogCommon();
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_25;
          }

          *buf = 138543362;
          v52 = a1;
          v33 = v15;
          v34 = "UIAccessibilityCustomAction must have a name. Object: %{public}@";
          goto LABEL_18;
        }

        if ([v7 selector] || (objc_msgSend(v7, "actionHandler"), v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
        {
          v11 = MEMORY[0x1E695DF90];
          v49[0] = @"CustomActionName";
          v12 = [v7 _accessibilityAXAttributedName];
          v49[1] = @"CustomActionIdentifier";
          v50[0] = v12;
          v13 = [v7 _accessibilityCustomActionIdentifier];
          v50[1] = v13;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
          v15 = [v11 dictionaryWithDictionary:v14];

          v16 = [v7 image];

          if (v16)
          {
            v17 = [v7 image];
            v18 = UIImagePNGRepresentation(v17);
            [v15 setObject:v18 forKeyedSubscript:@"CustomActionImage"];

            v19 = MEMORY[0x1E696AD98];
            v20 = [v7 image];
            v21 = [v19 numberWithInteger:{objc_msgSend(v20, "imageOrientation")}];
            [v15 setObject:v21 forKeyedSubscript:@"CustomActionImageOrientation"];
          }

          v22 = MEMORY[0x1E696B098];
          [v7 activationPoint];
          v44[0] = v23;
          v44[1] = v24;
          v25 = [v22 valueWithBytes:v44 objCType:"{CGPoint=dd}"];
          [v15 setObject:v25 forKeyedSubscript:@"CustomActionActivationPoint"];

          v26 = [v7 _shortName];

          if (v26)
          {
            v27 = [v7 _shortName];
            [v15 setObject:v27 forKeyedSubscript:@"CustomActionShortName"];
          }

          v28 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "ignoreWhenVoiceOverTouches")}];
          [v15 setObject:v28 forKeyedSubscript:@"CustomActionIgnoreWhenVoiceOverTouches"];

          v29 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "shouldPersistActionMenu")}];
          [v15 setObject:v29 forKeyedSubscript:@"CustomActionShouldPersistActionMenu"];

          v30 = [v7 category];
          v31 = [v30 length];

          if (v31)
          {
            v32 = [v7 category];
            goto LABEL_21;
          }

          v35 = [v7 localizedActionRotorCategory];

          if (v35)
          {
            v32 = [v7 localizedActionRotorCategory];
LABEL_21:
            v36 = v32;
            [v15 setObject:v32 forKeyedSubscript:@"CustomActionCategoryName"];
          }

          v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "sortPriority")}];
          [v15 setObject:v37 forKeyedSubscript:@"CustomActionSortPriority"];

          v38 = [v7 accessibilityLanguage];
          if (v38)
          {
            [v15 setObject:v38 forKeyedSubscript:@"CustomActionLanguage"];
          }

          [v43 addObject:v15];

          goto LABEL_25;
        }

        v15 = AXLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v52 = a1;
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

        v1 = v41;
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
  v1 = [a1 _accessibilityScrollAncestor];
  v2 = [v1 _accessibilityFirstVisibleItem];

  return v2;
}

- (double)_accessibilityDelayBeforeUpdatingOnActivation
{
  v1 = [a1 _accessibilityUpdatesOnActivationAfterDelay];
  result = 0.0;
  if (v1)
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
  v2 = [a1 _accessibilityValueForKey:@"UIAccessibilityStorageKeyUpdatesOnActivationAfterDelay"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v5 = [a1 accessibilityTraits];
    v4 = (*MEMORY[0x1E69DDA30] & v5) != 0 && (v6 = [a1 accessibilityTraits], (*MEMORY[0x1E6989268] & v6) != 0) || ((*MEMORY[0x1E69DD9A8] | *MEMORY[0x1E69DDA38]) & v5) != 0;
  }

  return v4;
}

- (id)_accessibilityEquivalenceTag
{
  v2 = [a1 accessibilityLabel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 string];

    v2 = v3;
  }

  v4 = [a1 accessibilityValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 string];

    v4 = v5;
  }

  v6 = [a1 accessibilityTraits];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%lu", v2, v4, v6 & ~(*MEMORY[0x1E6989218] | *MEMORY[0x1E6989128] | *MEMORY[0x1E69890D8] | *MEMORY[0x1E6989210])];

  return v7;
}

- (id)__accessibilityRoleDescription
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([a1 safeStringForKey:@"browserAccessibilityRoleDescription"], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = [a1 safeStringForKey:@"browserAccessibilityRoleDescription"];
  }

  else
  {
    v3 = [a1 _accessibilityRoleDescription];
  }

  return v3;
}

- (uint64_t)_accessibilityIsSpeakThisElement
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 _accessibilityRawIsSpeakThisElement];
  v3 = AXRemoteElementFromObject();
  v4 = v3;
  if (v2)
  {
    v5 = [v2 BOOLValue];
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
      v5 = [v3 onClientSide];
      goto LABEL_7;
    }

    v8 = [a1 accessibilityTraits];
    v5 = ((UIAccessibilityTraitBookContent | *MEMORY[0x1E69DDA18] | *MEMORY[0x1E69DD9C0]) & v8) != 0 || ((*MEMORY[0x1E69DD9A8] | *MEMORY[0x1E69DD9B8] | *MEMORY[0x1E69DD9D0] | *MEMORY[0x1E69DDA00] | UIAccessibilityTraitStatusBarElement | UIAccessibilityTraitTableIndex | *MEMORY[0x1E69DDA30]) & v8) == 0;
    v6 = _AXTraitsAsString();
    v9 = AXLogSpeakScreen();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138543874;
      v11 = a1;
      v12 = 2114;
      v13 = v6;
      v14 = 1024;
      v15 = v5;
      _os_log_debug_impl(&dword_1A9B83000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ had traits %{public}@, so was speak this element: %i", &v10, 0x1Cu);
    }
  }

LABEL_7:
  return v5;
}

- (void)_accessibilitySetIsSpeakThisElement:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _accessibilityRawSetIsSpeakThisElement:v2];
}

- (id)_accessibilitySpeakThisStringValue
{
  v2 = [a1 accessibilityTraits];
  v3 = v2;
  if ((*MEMORY[0x1E6989268] & v2) != 0)
  {
    if (((*MEMORY[0x1E69DD9C8] | *MEMORY[0x1E69DDA30]) & v2) != 0)
    {
      v4 = 0;
    }

    else
    {
      v4 = [a1 _accessibilityAXAttributedValue];
    }
  }

  else
  {
    v5 = [a1 _accessibilityAXAttributedValue];
    v4 = v5;
    if ((*MEMORY[0x1E69DDA30] & v3) == 0)
    {
      goto LABEL_13;
    }

    if ([v5 isEqualToString:@"0"])
    {
      v6 = @"toggle.off";
    }

    else if ([v4 isEqualToString:@"1"])
    {
      v6 = @"toggle.on";
    }

    else
    {
      if (![v4 isEqualToString:@"2"])
      {
        goto LABEL_13;
      }

      v6 = @"toggle.mixed";
    }

    v7 = UIKitAccessibilityLocalizedString(v6);

    v4 = v7;
  }

LABEL_13:

  return v4;
}

- (id)_accessibilitySpeakThisString
{
  v2 = [a1 _iosAccessibilityAttributeValue:2301];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = [a1 _iosAccessibilityAttributeValue:2302];
  }

  else
  {
    v5 = [a1 _accessibilityAXAttributedLabel];
    v7 = [a1 _accessibilitySpeakThisStringValue];
    v4 = __UIAXStringForVariables();
  }

  return v4;
}

- (uint64_t)_accessibilityDirectTouchOptionsAttribute
{
  v2 = [a1 accessibilityDirectTouchOptions];
  v3 = [a1 _accessibilityShouldAvoidAnnouncing];
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithUnsignedInteger:v2 | v3];
}

- (id)_accessibilityProcessedLabelAttribute
{
  v2 = [a1 _accessibilityAXAttributedLabel];
  v3 = [a1 accessibilitySpeechHint];
  if ([v3 count])
  {
    v4 = [a1 _accessibilityAXAttributedValue];
    v5 = [v4 length];

    if (!v5)
    {
      v6 = [a1 _accessibilityString:v2 withSpeechHint:v3];

      v2 = v6;
    }
  }

  v7 = [a1 _accessibilityPostProcessValueForAutomation:v2];

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
  v7 = [a1 _accessibilityOverridesPotentiallyAttributedAPISelector:?];
  if ([a1 _accessibilityOverridesPotentiallyAttributedAPISelector:a4] & 1 | ((v7 & 1) == 0))
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

  return [a1 methodForSelector:a3];
}

+ (void)_accessibilityUndoAttributedDecisionCaching:()AXPrivCategory
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    sel_getName(a2);
    _AXAssert();
  }

  if (objc_opt_class() != a1)
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
      class_replaceMethod(a1, v6, Implementation, TypeEncoding);
      ++v4;
    }

    while (v4 != 3);
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 removeObserver:objc_opt_class() name:*MEMORY[0x1E69E4B50] object:0];
  }
}

- (BOOL)_accessibilityPrefersNonAttributedAttributeWithOverrideSelector:()AXPrivCategory nonAttributedSelector:attributedSelector:
{
  if (_accessibilityPrefersNonAttributedAttributeWithOverrideSelector_nonAttributedSelector_attributedSelector__onceToken != -1)
  {
    [NSObject(AXPrivCategory) _accessibilityPrefersNonAttributedAttributeWithOverrideSelector:nonAttributedSelector:attributedSelector:];
  }

  v9 = [a1 _accessibilityPotentiallyAttributedSelectorForNonAttributedSelector:a4 attributedSelector:a5];
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
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = objc_opt_class();
    v17 = *MEMORY[0x1E69E4B50];
    [v15 removeObserver:v16 name:*MEMORY[0x1E69E4B50] object:0];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:objc_opt_class() selector:sel__accessibilityUndoAttributedDecisionCaching_ name:v17 object:0];
  }

  return v9 == a4;
}

- (uint64_t)_accessibilityWarmPrefersNonAttributedLabelValueHintCache
{
  [a1 _accessibilityPrefersNonAttributedAttributeWithOverrideSelector:sel__accessibilityPrefersNonAttributedLabel nonAttributedSelector:sel_accessibilityLabel attributedSelector:sel_accessibilityAttributedLabel];
  [a1 _accessibilityPrefersNonAttributedAttributeWithOverrideSelector:sel__accessibilityPrefersNonAttributedValue nonAttributedSelector:sel_accessibilityValue attributedSelector:sel_accessibilityAttributedValue];

  return [a1 _accessibilityPrefersNonAttributedAttributeWithOverrideSelector:sel__accessibilityPrefersNonAttributedHint nonAttributedSelector:sel_accessibilityHint attributedSelector:sel_accessibilityAttributedHint];
}

- (id)_accessibilityPotentiallyAttributedValueForNonAttributedSelector:()AXPrivCategory attributedSelector:
{
  if (_accessibilityPotentiallyAttributedValueForNonAttributedSelector_attributedSelector__onceToken != -1)
  {
    [NSObject(AXPrivCategory) _accessibilityPotentiallyAttributedValueForNonAttributedSelector:attributedSelector:];
  }

  if (([processedClasses containsObject:objc_opt_class()] & 1) == 0)
  {
    [a1 _accessibilityWarmPrefersNonAttributedLabelValueHintCache];
    [processedClasses addObject:objc_opt_class()];
  }

  if (_accessibilityPotentiallyAttributedValueForNonAttributedSelector_attributedSelector__accessibilityLabelSEL == a3)
  {
    v8 = [a1 _accessibilityPrefersNonAttributedLabel];
  }

  else if (_accessibilityPotentiallyAttributedValueForNonAttributedSelector_attributedSelector__accessibilityValueSEL == a3)
  {
    v8 = [a1 _accessibilityPrefersNonAttributedValue];
  }

  else
  {
    if (_accessibilityPotentiallyAttributedValueForNonAttributedSelector_attributedSelector__accessibilityHintSEL != a3)
    {
      v7 = [a1 _accessibilityPotentiallyAttributedSelectorForNonAttributedSelector:a3 attributedSelector:a4] == a3;
      goto LABEL_13;
    }

    v8 = [a1 _accessibilityPrefersNonAttributedHint];
  }

  v7 = v8;
LABEL_13:
  if (v7)
  {
    [a1 a3];
  }

  else
  {
    [a1 a4];
  }
  v9 = ;
  if (!v9)
  {
    if (v7)
    {
      [a1 a4];
    }

    else
    {
      [a1 a3];
    }
    v9 = ;
  }

  return v9;
}

- (id)_accessibilityAXAttributedLabel
{
  v2 = [a1 _accessibilityGetBlockForAttribute:34];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
    v5 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:v4];
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v6 = [a1 _accessibilityGetBlockForAttribute:1];
  v4 = v6;
  if (v6)
  {
    v5 = (*(v6 + 16))(v6);
    goto LABEL_5;
  }

  v9 = [a1 _accessibilityPotentiallyAttributedValueForNonAttributedSelector:sel_accessibilityLabel attributedSelector:sel_accessibilityAttributedLabel];
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
  v2 = [a1 _accessibilityGetBlockForAttribute:39];
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

  v6 = [a1 _accessibilityGetBlockForAttribute:3];
  v4 = v6;
  if (v6)
  {
    v5 = (*(v6 + 16))(v6);
    goto LABEL_7;
  }

  v8 = [a1 _accessibilityPotentiallyAttributedValueForNonAttributedSelector:sel_accessibilityValue attributedSelector:sel_accessibilityAttributedValue];
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
  v2 = [a1 _accessibilityGetBlockForAttribute:35];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
    v5 = [objc_alloc(MEMORY[0x1E6988D60]) initWithCFAttributedString:v4];
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v6 = [a1 _accessibilityGetBlockForAttribute:2];
  v4 = v6;
  if (v6)
  {
    v5 = (*(v6 + 16))(v6);
    goto LABEL_5;
  }

  v9 = [a1 _accessibilityPotentiallyAttributedValueForNonAttributedSelector:sel_accessibilityHint attributedSelector:sel_accessibilityAttributedHint];
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
  v2 = [a1 _accessibilityGetBlockForAttribute:38];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
    v5 = [v4 ax_mappedArrayUsingBlock:&__block_literal_global_995];
    goto LABEL_3;
  }

  v5 = [a1 _accessibilityPotentiallyAttributedValueForNonAttributedSelector:sel_accessibilityUserInputLabels attributedSelector:sel_accessibilityAttributedUserInputLabels];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v5;
    v7 = [v4 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = [v4 ax_mappedArrayUsingBlock:&__block_literal_global_997];
      v9 = v4;
    }

    else
    {
      v5 = v4;
      if (![v4 count])
      {
        goto LABEL_3;
      }

      v10 = [v4 firstObject];
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      v5 = v4;
      if (v11)
      {
        goto LABEL_3;
      }

      v9 = [v4 firstObject];
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
  v2 = [a1 _accessibilityAXAttributedUserInputLabels];
  if (![v2 count])
  {
    v3 = [a1 _accessibilityAXAttributedLabel];
    v4 = UIAXArrayForString();

    v2 = v4;
  }

  if (![v2 count])
  {
    v5 = [a1 accessibilityTraits];
    if ((UIAccessibilityTraitBackButton & v5) != 0)
    {
      v6 = UIAccessibilityBundle();
      v7 = v6;
      v8 = @"USER_INPUT_BACK_BUTTON";
    }

    else if ((*MEMORY[0x1E69DD9B8] & v5) != 0)
    {
      v6 = UIAccessibilityBundle();
      v7 = v6;
      v8 = @"USER_INPUT_BUTTON";
    }

    else if ((*MEMORY[0x1E69DD9D0] & v5) != 0)
    {
      v6 = UIAccessibilityBundle();
      v7 = v6;
      v8 = @"USER_INPUT_IMAGE";
    }

    else if ((*MEMORY[0x1E69DD9A8] & v5) != 0)
    {
      v6 = UIAccessibilityBundle();
      v7 = v6;
      v8 = @"USER_INPUT_ADJUSTABLE";
    }

    else
    {
      if ((*MEMORY[0x1E69DDA00] & v5) == 0)
      {
        if ((UIAccessibilityTraitTextEntry & v5) == 0)
        {
          v9 = 0;
          goto LABEL_16;
        }

        v9 = [a1 accessibilityValue];
        if ([v9 length])
        {
LABEL_16:
          v10 = UIAXArrayForString();

          v2 = v10;
          goto LABEL_17;
        }

        v7 = UIAccessibilityBundle();
        v12 = [v7 localizedStringForKey:@"USER_INPUT_TEXT" value:&stru_1F1DB9E20 table:@"Localized"];

        v9 = v12;
LABEL_15:

        goto LABEL_16;
      }

      v6 = UIAccessibilityBundle();
      v7 = v6;
      v8 = @"USER_INPUT_SEARCH";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_1F1DB9E20 table:@"Localized"];
    goto LABEL_15;
  }

LABEL_17:

  return v2;
}

- (uint64_t)accessibilitySemanticGroupChildrentCount
{
  result = [a1 accessibilityElementCount];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [a1 accessibilityElements];
    v4 = [v3 count];

    return v4;
  }

  return result;
}

- (uint64_t)_accessibilityIsGroupedParent
{
  v2 = [a1 accessibilityContainerType];
  if (!v2)
  {
    return 0;
  }

  if ((v2 & 0xFFFFFFFFFFFFFFF7) != 4)
  {
    return 1;
  }

  v3 = [a1 accessibilityLabel];
  if ([v3 length])
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 _accessibilityRoleDescription];
    v4 = [v5 length] != 0;
  }

  return v4;
}

- (id)_accessibilityGroupedParent
{
  if (AXDoesRequestingClientDeserveAutomation())
  {
    [a1 _accessibilityUserTestingParent];
  }

  else
  {
    [a1 _accessibilityFindAncestor:&__block_literal_global_1026 startWithSelf:0];
  }
  v2 = ;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 _accessibilityGroupedParent];

    if (v4)
    {
      do
      {
        if (([v4 accessibilityIsWindow] & 1) == 0)
        {
          v5 = v4;

          v3 = v5;
        }

        v6 = [v4 _accessibilityGroupedParent];

        v4 = v6;
      }

      while (v6);
    }
  }

  return v3;
}

- (id)_accessibilityChildrenForContinuityDisplay
{
  v2 = +[UIAccessibilityElementTraversalOptions defaultContinuityDisplayOptions];
  v3 = [a1 _accessibilityLeafDescendantsWithCount:0 options:v2];
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];

    if (v4 == a1)
    {
      v5 = [MEMORY[0x1E695DEC8] array];

      v3 = v5;
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
    v5 = [a1 automationElements];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 objectForKey:*MEMORY[0x1E6988D08]];
      v7 = [v6 BOOLValue];
    }

    else
    {
      v7 = 0;
    }

    v8 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
    if (v7)
    {
      v9 = [a1 _accessibilityGroupedParent];
      v10 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptionsHonoringGroups];

      v11 = [v10 leafNodePredicate];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __70__NSObject_AXPrivCategory___accessibilityProcessChildrenForParameter___block_invoke;
      v16[3] = &unk_1E78AAF90;
      v17 = v9;
      v18 = v11;
      v16[4] = a1;
      v12 = v9;
      v13 = v11;
      [v10 setLeafNodePredicate:v16];

      v8 = v10;
    }

    v5 = [a1 _accessibilityLeafDescendantsWithCount:0 options:v8];
    v14 = AXLogElementTraversal();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [NSObject(AXPrivCategory) _accessibilityProcessChildrenForParameter:];
    }
  }

  return v5;
}

- (id)_accessibilityProcessElementsInDirection:()AXPrivCategory forParameter:
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 unsignedIntegerValue];
    v8 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v6 objectForKey:*MEMORY[0x1E6988D00]];
      v7 = [v9 unsignedIntegerValue];

      v10 = [v6 objectForKey:*MEMORY[0x1E6988D08]];
      v8 = [v10 BOOLValue];

      v11 = [v6 objectForKey:*MEMORY[0x1E6988D18]];
      v12 = v11;
      if (v11)
      {
        [a1 _accessibilitySetVoiceOverRTLOverride:{objc_msgSend(v11, "integerValue")}];
      }
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }
  }

  if (v7 >= 0x3E8)
  {
    v13 = 1000;
  }

  else
  {
    v13 = v7;
  }

  v14 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
  v15 = v14;
  if (v8)
  {
    v16 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptionsHonoringGroups];

    v17 = [a1 _accessibilityGroupedParent];
    v18 = v17;
    if (v17)
    {
      v34[0] = v17;
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

  v22 = [a1 _accessibilityElementsInDirectionWithCount:v13 options:v16];
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
    v29 = a1;
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
            [a1 accessibilityBoundsForTextMarkers:v6];
            goto LABEL_234;
          case 94001:
            v18 = [a1 accessibilityArrayOfTextForTextMarkers:v6];
            v198 = [v18 count];
            if (v198 >= 1)
            {
              v199 = v198;
              for (i = 0; i != v199; ++i)
              {
                v201 = [v18 objectAtIndex:i];
                if ([v201 isAccessibilityElement] & 1) != 0 || (NSClassFromString(&cfstr_Webaccessibili.isa), (objc_opt_isKindOfClass()))
                {
                  v202 = _AXCreateAXUIElementWithElement();
                  [v18 replaceObjectAtIndex:i withObject:v202];
                  CFRelease(v202);
                }
              }
            }

            goto LABEL_236;
          case 94002:
            v17 = [a1 _accessibilityLineStartMarker:v6];
            goto LABEL_235;
          case 94003:
            v17 = [a1 _accessibilityLineEndMarker:v6];
            goto LABEL_235;
          case 94004:
            v17 = [a1 _accessibilityNextMarker:v6];
            goto LABEL_235;
          case 94005:
            v17 = [a1 _accessibilityPreviousMarker:v6];
            goto LABEL_235;
          case 94006:
            v69 = [a1 _accessibilityObjectForTextMarker:v6];
            goto LABEL_247;
          case 94007:
            [v6 CGPointValue];
            v17 = [a1 _accessibilityMarkerForPoint:{UIAccessibilitySceneReferencePointToScreenPoint(v196, v197)}];
            goto LABEL_235;
          case 94008:
            v17 = [a1 accessibilityStringForTextMarkers:v6];
            goto LABEL_235;
          case 94009:
            v23 = [a1 _accessibilityLineRangeForPosition:{objc_msgSend(v6, "unsignedIntegerValue")}];
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

            v22 = [a1 _accessibilityMarkersForPoints:EventForSceneReferencePoint];
            goto LABEL_277;
          case 94011:
            v17 = [a1 _accessibilityMarkerLineEndsForMarkers:v6];
            goto LABEL_235;
          case 94012:
            v23 = [a1 _accessibilityRangeForTextMarker:v6];
            break;
          case 94013:
            [a1 _accessibilityMoveSelectionToMarker:v6];
            goto LABEL_237;
          case 94014:
            v166 = [v6 rangeValue];
            v17 = [a1 _accessibilityMarkersForRange:{v166, v167}];
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
            v191 = [v190 integerValue];
            v192 = [v189 objectAtIndexedSubscript:2];
            v193 = [v192 unsignedIntegerValue];
            v194 = [v189 objectAtIndexedSubscript:0];

            v195 = [a1 _accessibilityPositionInDirection:v191 offset:v193 forPosition:{objc_msgSend(v194, "unsignedIntegerValue")}];
            v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v195];
            goto LABEL_235;
          case 94016:
            v23 = [a1 _accessibilityCharacterRangeForPosition:{objc_msgSend(v6, "unsignedIntegerValue")}];
            break;
          case 94017:
            v23 = [a1 _accessibilityRangeForTextMarkers:v6];
            break;
          default:
            if (a3 == 92703)
            {
              v203 = [v6 rangeValue];
              [a1 _accessibilityFrameForRange:{v203, v204}];
              goto LABEL_234;
            }

            if (a3 != 92704)
            {
              goto LABEL_237;
            }

            v23 = [a1 _accessibilityRangeForLineNumber:{objc_msgSend(v6, "intValue")}];
            break;
        }

LABEL_232:
        v17 = [MEMORY[0x1E696B098] valueWithRange:{v23, v24}];
        goto LABEL_235;
      }

      if (a3 == 94500)
      {
        v185 = [v6 objectAtIndexedSubscript:0];
        v186 = [v185 BOOLValue];

        v187 = [v7 objectAtIndexedSubscript:1];
        v188 = [v187 BOOLValue];

        v17 = [a1 _accessibilityScannerElementsGrouped:v186 shouldIncludeNonScannerElements:v188];
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
              v21 = [a1 _accessibilityIndexForPickerString:v7];
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

            v18 = [a1 _iosAccessibilityAttributeValue:a3];
            v208 = _UIAccessibilityIgnoredRemoteElementForQuery;
            _UIAccessibilityIgnoredRemoteElementForQuery = 0;
          }

          else
          {
            v18 = 0;
          }

          goto LABEL_241;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [a1 _accessibilityKeyboardKeyForString:v7];
      }

LABEL_235:
      v18 = v17;
      goto LABEL_236;
    }

    if (a3 <= 92599)
    {
      switch(a3)
      {
        case 92500:
          *buf = [v6 rangeValue];
          *&buf[8] = v55;
          v17 = [a1 accessibilityLabelForRange:buf];
          goto LABEL_235;
        case 92501:
        case 92502:
          goto LABEL_13;
        case 92503:
          [v6 pointValue];
          v61 = v60;
          v63 = v62;
          v64 = [a1 _accessibilityParentView];
          v65 = [v64 window];
          v66 = AXConvertFromDisplayPointToWindowPoint(v65, v61, v63);
          v68 = v67;

          v17 = [a1 _accessibilityLineNumberAndColumnForPoint:{v66, v68}];
          goto LABEL_235;
        case 92504:
          v23 = [a1 _accessibilityRangeForLineNumberAndColumn:v6];
          goto LABEL_232;
        case 92505:
          *buf = [v6 rangeValue];
          *&buf[8] = v57;
          v17 = [a1 _accessibilityValueForRange:buf];
          goto LABEL_235;
        case 92506:
          v58 = [v6 rangeValue];
          [a1 _accessibilityBoundsForRange:{v58, v59}];
          goto LABEL_234;
        case 92507:
        case 92514:
          goto LABEL_237;
        case 92508:
          *buf = [v6 rangeValue];
          *&buf[8] = v54;
          v17 = [a1 _accessibilityAttributedValueForRange:buf];
          goto LABEL_235;
        case 92509:
          v52 = MEMORY[0x1E696AD98];
          v53 = [a1 _accessibilityIsFirstSiblingForType:{objc_msgSend(v6, "intValue")}];
          goto LABEL_145;
        case 92510:
          v52 = MEMORY[0x1E696AD98];
          v53 = [a1 _accessibilityIsLastSiblingForType:{objc_msgSend(v6, "intValue")}];
          goto LABEL_145;
        case 92511:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 count] != 2)
          {
            goto LABEL_237;
          }

          EventForSceneReferencePoint = [v7 objectAtIndex:0];
          v56 = [EventForSceneReferencePoint unsignedIntegerValue];
          v13 = [v7 objectAtIndex:1];
          v16 = [a1 accessibilityElementForRow:v56 andColumn:{-[NSObject unsignedIntegerValue](v13, "unsignedIntegerValue")}];
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
          v18 = 0;
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_278;
          }

          [EventForSceneReferencePoint _setAccessibilityHitTestStartsAtElement:a1];
          goto LABEL_173;
        case 92513:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_237;
          }

          [v7 pointValue];
          v17 = [a1 _accessibilityDataDetectorScheme:?];
          goto LABEL_235;
        case 92515:
          v69 = [a1 _accessibilityAncestorForSiblingsWithType:{objc_msgSend(v6, "intValue")}];
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

          v17 = [a1 _accessibilityElementsForSearchParameter:v7];
          goto LABEL_235;
        case 92517:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 count] < 5 || objc_msgSend(v7, "count") >= 8)
          {
            goto LABEL_264;
          }

          EventForSceneReferencePoint = [v7 objectAtIndex:0];
          objc_opt_class();
          v18 = 0;
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
            v310 = [v47 integerValue];
          }

          else
          {
            v310 = 0;
          }

          v276 = [v7 objectAtIndex:2];
          objc_opt_class();
          v277 = objc_opt_isKindOfClass();

          if (v277)
          {
            v278 = [v7 objectAtIndex:2];
            v279 = [v278 rangeValue];
            v308 = v280;
          }

          else
          {
            v308 = 0;
            v279 = 0x7FFFFFFFLL;
          }

          v13 = [v7 objectAtIndex:3];
          if ([v7 count] < 5)
          {
            v282 = 1;
          }

          else
          {
            v281 = [v7 objectAtIndex:4];
            v282 = [v281 BOOLValue];
          }

          if ([v7 count] < 6)
          {
            v284 = 0;
          }

          else
          {
            v283 = [v7 objectAtIndex:5];
            v284 = [v283 BOOLValue];
          }

          if ([v7 count] < 7)
          {
            v285 = 0;
          }

          else
          {
            v285 = [v7 objectAtIndex:6];
          }

          BYTE1(v301) = v284;
          LOBYTE(v301) = v282;
          v18 = [a1 _accessibilityNextOpaqueElementsForTechnology:v13 startElement:v285 direction:objc_msgSend(EventForSceneReferencePoint searchType:"intValue") range:v310 shouldScrollToVisible:v279 honorsGroups:{v308, v301}];
          v286 = AXLogElementTraversal();
          if (os_log_type_enabled(v286, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = a1;
            *&buf[12] = 2112;
            *&buf[14] = v18;
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

          v17 = [a1 _accessibilityRemoteElementForSceneID:v7];
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
        v180 = [v179 rangeValue];
        v182 = v181;

        v13 = [EventForSceneReferencePoint objectAtIndexedSubscript:1];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v16 = [a1 _accessibilityCellWithRowIndex:v180 column:v182 containingView:v13];
LABEL_262:
          v18 = v16;
        }

        else
        {
          v264 = [MEMORY[0x1E6988800] sharedInstance];
          v265 = [v264 ignoreLogging];

          if ((v265 & 1) == 0)
          {
            v266 = [MEMORY[0x1E6988800] identifier];
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
          v18 = 0;
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
      v34 = [EventForSceneReferencePoint coordinateSpace];
      v35 = [EventForSceneReferencePoint fixedCoordinateSpace];
      [v34 convertRect:v35 toCoordinateSpace:{v27, v29, v31, v33}];
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
          v183 = [v6 intValue];
          if (v183 == 0x7FFFFFFF)
          {
            v184 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v184 = v183;
          }

          [a1 accessibilityFrameForLineNumber:v184];
LABEL_234:
          [a1 _accessibilityConvertSystemBoundedScreenRectToContextSpace:?];
          v17 = [MEMORY[0x1E696B098] valueWithRect:?];
        }

        else
        {
          v19 = [v6 intValue];
          if (objc_opt_respondsToSelector())
          {
            v18 = [a1 accessibilityAttributedContentForLineNumber:v19];
            if (v18)
            {
              goto LABEL_241;
            }
          }

          v17 = [a1 accessibilityContentForLineNumber:v19];
        }

        goto LABEL_235;
      }

      [v6 pointValue];
      v169 = v168;
      v171 = v170;
      EventForSceneReferencePoint = [a1 _accessibilityParentView];
      v172 = [EventForSceneReferencePoint window];
      [v172 convertPoint:EventForSceneReferencePoint toView:{v169, v171}];
      v174 = v173;
      v176 = v175;

      v177 = [a1 accessibilityLineNumberForPoint:{v174, v176}];
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
    v18 = v22;
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
        v16 = [a1 _accessibilityUpcomingRoadsForPoint:v10 forAngle:{v12, v15}];
        goto LABEL_262;
      case 95218:
        v52 = MEMORY[0x1E696AD98];
        [v6 pointValue];
        v53 = [a1 _accessibilityRoadContainsTrackingPoint:?];
        goto LABEL_145;
      case 95219:
        [v6 pointValue];
        v17 = [a1 _accessibilityMapDetailedInfoAtPoint:?];
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
        [a1 _accessibilityDistanceFromEndOfRoad:v120 forAngle:{v122, v125}];
        LODWORD(v120) = v126;

        LODWORD(v127) = LODWORD(v120);
        v88 = [MEMORY[0x1E696AD98] numberWithFloat:v127];
        goto LABEL_272;
      case 95221:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = MEMORY[0x1E695E110];
          goto LABEL_241;
        }

        v52 = MEMORY[0x1E696AD98];
        v53 = [a1 _accessibilityCanPerformAction:{objc_msgSend(v7, "intValue")}];
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
        [a1 _accessibilityScreenPointForSceneReferencePoint:?];
        v140 = v139;
        v142 = v141;

        v143 = MEMORY[0x1E696AD98];
        v13 = [v7 objectAtIndex:1];
        [v13 floatValue];
        LODWORD(v145) = v144;
        [a1 _accessibilityDistance:EventForSceneReferencePoint forAngle:v140 toRoad:{v142, v145}];
        v16 = [v143 numberWithFloat:?];
        goto LABEL_262;
      case 95224:
        if (![a1 _accessibilitySpeakThisCanBeHighlighted])
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
          v92 = [v91 rangeValue];
          v94 = v93;
          v95 = [v7 objectForKey:@"speakThisCurrentString"];
          v96 = AXLogSpeakScreen();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
          {
            v341.location = v92;
            v341.length = v94;
            [NSObject(AXPrivCategory) _iosAccessibilityAttributeValue:a1 forParameter:v341];
          }

          v97 = [v7 objectForKey:@"speakThisWantsSentenceRects"];
          v98 = [v97 BOOLValue];

          [a1 _accessibilitySetBoolValue:0 forKey:@"AXSpeakScreenRectsUseVisibleFrame"];
          v99 = [a1 _accessibilityTextRectsForSpeakThisStringRange:v92 string:v94 wantsSentences:{v95, v98}];
          v100 = [v7 objectForKey:@"speakThisIgnoreScrollToVisible"];
          v101 = [v100 BOOLValue];

          if ([a1 _accessibilitySpeakThisShouldScrollTextRects] && (v101 & 1) == 0 && objc_msgSend(v99, "count"))
          {
            v303 = v94;
            v305 = v92;
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

            [a1 _accessibilityScrollRectToVisible:{x, y, width, height}];
            v94 = v303;
            v92 = v305;
          }

          [a1 _accessibilitySetBoolValue:1 forKey:@"AXSpeakScreenRectsUseVisibleFrame"];
          v306 = v95;
          v111 = [a1 _accessibilityTextRectsForSpeakThisStringRange:v92 string:v94 wantsSentences:{v95, v98}];

          v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v111, "count")}];
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
                [a1 _accessibilityConvertSystemBoundedScreenRectToContextSpace:?];
                v117 = [MEMORY[0x1E696B098] valueWithCGRect:?];
                [v18 addObject:v117];
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
        v18 = 0;
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
          v136 = [v135 integerValue];
        }

        else
        {
          v136 = 0;
        }

        v287 = [v7 objectAtIndex:2];
        objc_opt_class();
        v288 = objc_opt_isKindOfClass();

        if (v288)
        {
          v289 = [v7 objectAtIndex:2];
          v290 = [v289 rangeValue];
          v292 = v291;
        }

        else
        {
          v292 = 0;
          v290 = 0x7FFFFFFFLL;
        }

        v13 = [v7 objectAtIndexedSubscript:3];
        if ([v7 count] < 5)
        {
          v314 = 1;
        }

        else
        {
          v293 = [v7 objectAtIndex:4];
          v314 = [v293 BOOLValue];
        }

        if ([v7 count] == 6)
        {
          [v7 objectAtIndex:5];
          v309 = EventForSceneReferencePoint;
          v294 = v290;
          v295 = v13;
          v296 = v292;
          v298 = v297 = v136;
          v299 = [v298 BOOLValue];

          v136 = v297;
          v292 = v296;
          v13 = v295;
          v290 = v294;
          EventForSceneReferencePoint = v309;
        }

        else
        {
          v299 = 0;
        }

        LOBYTE(v301) = v299;
        v18 = [a1 _accessibilityMoveFocusToNextOpaqueElementForTechnology:v13 direction:objc_msgSend(EventForSceneReferencePoint searchType:"intValue") range:v136 shouldScrollToVisible:v290 honorsGroups:{v292, v314, v301}];
        v300 = AXLogElementTraversal();
        if (os_log_type_enabled(v300, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = a1;
          *&buf[12] = 2112;
          *&buf[14] = v18;
          _os_log_impl(&dword_1A9B83000, v300, OS_LOG_TYPE_INFO, "Opaque movement from %@ to %@", buf, 0x16u);
        }

        goto LABEL_263;
      case 95226:
        v17 = [a1 _accessibilityCurrentlyFocusedElementForTechnology:v6];
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
        v148 = [v147 integerValue];

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
            v232 = [v150 rangeValue];
            v153 = v233;
            v151 = [v312 _accessibilityTextRangeFromNSRange:{v232, v233}];
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

        v232 = 0x7FFFFFFFLL;
LABEL_305:
        v304 = v152;
        v245 = [objc_alloc(MEMORY[0x1E69DC5F8]) initWithTargetElement:v312 targetRange:v151 targetTextMarkerRange:v152];
        v246 = v245;
        if (!v151 && (v232 != 0x7FFFFFFF || v153))
        {
          [v245 setTargetNSRange:{v232, v153}];
        }

        buf[0] = 0;
        objc_opt_class();
        v247 = [v7 objectForKey:*MEMORY[0x1E6988D08]];
        v248 = __UIAccessibilityCastAsClass();

        v249 = [v248 BOOLValue];
        v250 = [a1 _accessibilityPerformPublicCustomRotorSearch:v307 searchDirection:v148 currentItem:v246 honorsGroups:v249];
        v251 = v250;
        if (!v250 || ([v250 targetElement], v252 = objc_claimAutoreleasedReturnValue(), v252, !v252))
        {
          v18 = 0;
          goto LABEL_331;
        }

        v302 = v151;
        v253 = MEMORY[0x1E695DF90];
        v254 = [v251 targetElement];
        v255 = _AXCreateAXUIElementWithElement();
        v18 = [v253 dictionaryWithObject:v255 forKey:@"targetElement"];

        *buf = xmmword_1A9BF34F0;
        v256 = [v251 targetRange];

        if (v256)
        {
          v257 = [v251 targetRange];
          [v18 setObject:v257 forKeyedSubscript:@"targetRange"];

          v258 = [v251 targetElement];
          v259 = [v251 targetRange];
          v260 = [v258 _accessibilityRawRangeForUITextRange:v259];
          v262 = v261;
          *buf = v260;
          *&buf[8] = v261;
        }

        else
        {
          v260 = 0x7FFFFFFFLL;
          if ([v251 targetNSRange] != 0x7FFFFFFF || v263)
          {
            v260 = [v251 targetNSRange];
            v262 = v271;
            *buf = v260;
            *&buf[8] = v271;
          }

          else
          {
            v262 = 0;
          }
        }

        v151 = v302;
        if (v260 != 0x7FFFFFFF || v262)
        {
          v273 = AXValueCreate(kAXValueTypeCFRange, buf);
          v152 = v304;
          if (!v273)
          {
            goto LABEL_331;
          }
        }

        else
        {
          v272 = [v251 targetTextMarkerRange];

          v152 = v304;
          if (!v272)
          {
            goto LABEL_331;
          }

          v273 = [v251 targetTextMarkerRange];
        }

        v274 = v273;
        [v18 setObject:v273 forKeyedSubscript:@"targetRange"];

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
        v156 = [a1 _accessibilityPublicCustomRotorName:v155];
        if (v156)
        {
          v157 = [a1 _accessibilityPublicCustomRotorVisibleInTouchRotor:v155];
          v339[0] = v156;
          v338[0] = @"name";
          v338[1] = @"visibleInTouchRotor";
          v158 = [MEMORY[0x1E696AD98] numberWithBool:v157];
          v339[1] = v158;
          v338[2] = *MEMORY[0x1E6988CF8];
          v159 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "_accessibilityPublicCustomRotorLinkCount:", v155)}];
          v339[2] = v159;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v339 forKeys:v338 count:3];
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_241;
      case 95229:
        v17 = [a1 _accessibilityFilenameForAttachmentCID:v6];
        goto LABEL_235;
      case 95230:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          EventForSceneReferencePoint = v7;
          v89 = 0;
          v90 = 0;
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

          v89 = [v229 BOOLValue];
          buf[0] = 0;
          objc_opt_class();
          v230 = [v7 objectForKey:*MEMORY[0x1E6988D20]];
          v231 = __UIAccessibilityCastAsClass();

          v90 = [v231 BOOLValue];
        }

        if (!EventForSceneReferencePoint)
        {
          goto LABEL_279;
        }

        v22 = [a1 _accessibilityFirstContainedElementForTechnology:EventForSceneReferencePoint honoringGroups:v89 shouldAlwaysScroll:v90];
        goto LABEL_277;
      case 95231:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v79 = v7;
          v80 = 0;
          v81 = 0;
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

          v80 = [v223 BOOLValue];
          buf[0] = 0;
          objc_opt_class();
          v224 = [v7 objectForKey:*MEMORY[0x1E6988D20]];
          v225 = __UIAccessibilityCastAsClass();

          v81 = [v225 BOOLValue];
          buf[0] = 0;
          objc_opt_class();
          v226 = [v7 objectForKey:*MEMORY[0x1E6988D10]];
          v227 = __UIAccessibilityCastAsClass();

          LODWORD(v226) = [v227 BOOLValue];
          v82 = v226 ^ 1;
        }

        if (v79)
        {
          if ([a1 isAccessibilityOpaqueElementProvider])
          {
            v18 = [a1 _accessibilityFocusAbsoluteFirstLastOpaqueElement:0 technology:v79 honorsGroups:v80 shouldAlwaysScroll:v81];
          }

          else
          {
            v234 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
            if (v80)
            {
              v235 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptionsHonoringGroups];

              v236 = [v235 leafNodePredicate];
              v319[0] = MEMORY[0x1E69E9820];
              v319[1] = 3221225472;
              v319[2] = __73__NSObject_AXPrivCategory___iosAccessibilityAttributeValue_forParameter___block_invoke;
              v319[3] = &unk_1E78AAF48;
              v319[4] = a1;
              v320 = v236;
              v237 = v236;
              [v235 setLeafNodePredicate:v319];

              v234 = v235;
            }

            [v234 setDirection:2];
            v238 = [a1 _accessibilityLeafDescendantsWithCount:1 options:v234];
            v18 = [v238 firstObject];

            if (v82 && [v18 _accessibilityIsRemoteElement])
            {
              [a1 _accessibilityLeafDescendantsWithCount:10 options:v234];
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

                      v18 = v275;
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
        v18 = 0;
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

        v88 = [a1 _accessibilityPublicCustomRotorIdForSystemType:v128];
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

        v88 = [a1 _accessibilityHeaderElementsForColumn:{objc_msgSend(v87, "unsignedIntegerValue")}];
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

        v88 = [a1 _accessibilityHeaderElementsForRow:{objc_msgSend(v163, "unsignedIntegerValue")}];
        goto LABEL_272;
      case 95235:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v164 = [v7 integerValue];
        v20 = MEMORY[0x1E696AD98];
        v21 = [a1 _accessibilityReinterpretVoiceOverCommand:v164];
        goto LABEL_183;
      case 95236:
        v17 = [a1 _accessibilityProcessChildrenForParameter:v6];
        goto LABEL_235;
      case 95237:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [a1 _accessibilityAlternativesForTextAtPosition:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95238:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v86 = [v7 unsignedIntegerValue];
        }

        else
        {
          v86 = 0;
        }

        v88 = [a1 _accessibilityNotificationSummary:v86];
LABEL_272:
        v18 = v88;
        goto LABEL_241;
      case 95239:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [a1 _accessibilityDataSeriesValuesForAxis:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95240:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [a1 _accessibilityDataSeriesTitleForAxis:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95241:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [a1 _accessibilityDataSeriesMinimumValueForAxis:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95242:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [a1 _accessibilityDataSeriesMaximumValueForAxis:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95243:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [a1 _accessibilityDataSeriesGridlinePositionsForAxis:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95244:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [a1 _accessibilityDataSeriesUnitLabelForAxis:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95245:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [a1 _accessibilityDataSeriesCategoryLabelsForAxis:{objc_msgSend(v7, "unsignedIntegerValue")}];
        goto LABEL_235;
      case 95246:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [a1 _accessibilityNativeFocusableElements:0 withQueryString:v7];
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

        v131 = a1;
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

        v131 = a1;
        v132 = 1;
LABEL_188:
        v17 = [v131 _accessibilityDataSeriesValueDescriptionForPosition:v132 axis:v130];
        goto LABEL_235;
      case 95249:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![a1 isAccessibilityOpaqueElementProvider])
        {
          goto LABEL_237;
        }

        buf[0] = 0;
        objc_opt_class();
        v73 = [v7 objectForKey:*MEMORY[0x1E6988D08]];
        v74 = __UIAccessibilityCastAsClass();

        v75 = [v74 BOOLValue];
        buf[0] = 0;
        objc_opt_class();
        v76 = [v7 objectForKey:*MEMORY[0x1E6988D28]];
        v77 = __UIAccessibilityCastAsClass();

        v78 = [v77 BOOLValue];
        v17 = [a1 _accessibilityVisibleOpaqueElementsHonoringGroups:v75 sorted:v78];
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

        v72 = [v71 BOOLValue];
        v17 = [a1 _accessibilityFirstElementForFocusHonoringGroups:v72];
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

        v85 = [v84 BOOLValue];
        v17 = [a1 _accessibilityVisibleElementsHonoringGroups:v85];
        goto LABEL_235;
      case 95252:
LABEL_13:
        v17 = [a1 _accessibilityProcessElementsInDirection:a3 forParameter:v6];
        goto LABEL_235;
      case 95255:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [a1 _accessibilitySpeakThisElementWithIdentifier:v7];
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
        v18 = 0;
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_278;
        }

        v162 = +[UIAccessibilityHitTestOptions dwellControlElementHighlightOptions];
        [EventForSceneReferencePoint _setAccessibilityHitTestOptions:v162];

LABEL_173:
        v22 = [a1 _accessibilityHitTest:EventForSceneReferencePoint withEvent:{v49, v51}];
        goto LABEL_277;
      case 95259:
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_237;
        }

        v17 = [a1 accessibilityCustomAttribute:v7];
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
              [EventForSceneReferencePoint setServerInstance:a1];
              v221 = [getLGRRuntimeManagerClass() sharedInstance];
              v13 = [v221 handleRequest:EventForSceneReferencePoint];

              v16 = [v13 dictionaryRepresentation];
              goto LABEL_262;
            }
          }
        }

        else if (a3 == 96002 && AXTinkerKitLibraryCore())
        {
          EventForSceneReferencePoint = [getTinkerRuntimeClass() shared];
          v22 = [EventForSceneReferencePoint handleRequest:v7 withElement:a1];
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

      v210 = [v7 rangeValue];
      v17 = [a1 _accessibilityUserTestingChildrenWithRange:{v210, v211}];
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

    v17 = [a1 _accessibilityAuditIssuesWithOptions:v7];
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
    v18 = 0;
  }

  else
  {
    [v7 pointValue];
    [a1 _accessibilitySetStartingPointForIsVisible:?];
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "_accessibilityIsVisibleByCompleteHitTest")}];
    [a1 _accessibilitySetStartingPointForIsVisible:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = [a1 _accessibilityUserTestingSnapshotWithOptions:v7];

    v18 = v44;
  }

LABEL_236:
  if (!v18)
  {
    goto LABEL_237;
  }

LABEL_241:

  return v18;
}

- (id)_accessibilityTextualContext
{
  v2 = [a1 _accessibilityGetBlockForAttribute:36];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
    v5 = AXSSTextualContextFromUITextualContext(v4);
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = v7;
  }

  else
  {
    v4 = [a1 accessibilityTextualContext];
    if (!v4)
    {
      v9 = [a1 accessibilityContainer];
      if (v9)
      {
        v10 = v9;
        while (1)
        {
          v11 = [v10 accessibilityTextualContext];
          if (v11)
          {
            break;
          }

          v4 = [v10 accessibilityContainer];

          v10 = v4;
          if (!v4)
          {
            goto LABEL_14;
          }
        }

        v4 = v11;
LABEL_14:
      }

      else
      {
        v4 = 0;
      }
    }

    v8 = AXSSTextualContextFromUITextualContext(v4);
  }

  return v8;
}

- (id)__accessibilityRetrieveFrameOrPathDelegate
{
  v1 = a1;
  if (v1)
  {
    while (1)
    {
      v2 = [v1 _accessibilityFrameDelegate];

      if (!v2)
      {
        if (![v1 _accessibilityBoolValueForKey:@"UIAccessibilityStorageKeyPlatformElementShouldUseAccessibilityNodeAsFrameDelegate"])
        {
          break;
        }

        v3 = [v1 safeValueForKey:@"accessibilityNodeForPlatformElement"];
        v2 = v3;
        if (v3 == v1)
        {

          break;
        }

        if (!v3)
        {
          break;
        }
      }

      v4 = v2;

      v1 = v4;
    }
  }

  return v1;
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
  [a1 _accessibilityIterateScrollParentsUsingBlock:v9];
  if (v11[4] == *v2 && v11[5] == v2[1])
  {
    v7 = *MEMORY[0x1E695F050];
  }

  else
  {
    v4 = [a1 __accessibilityRetrieveFrameOrPathDelegate];
    [v4 accessibilityFrame];
    v6 = v5;

    v7 = v6 - v11[4];
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (__CFString)_iosAccessibilityAttributeValue:()AXPrivCategory
{
  v3 = a1;
  v4 = 0;
  v207 = *MEMORY[0x1E69E9840];
  if (a3 <= 2700)
  {
    switch(a3)
    {
      case 2001:
        v5 = [a1 _accessibilityProcessedLabelAttribute];
        goto LABEL_19;
      case 2002:
        v5 = [a1 _accessibilityAXAttributedHint];
        goto LABEL_19;
      case 2003:
        v116 = [a1 __accessibilityRetrieveFrameOrPathDelegate];
        [v116 accessibilityFrame];
        x = v117;
        y = v118;
        width = v119;
        height = v120;

        goto LABEL_369;
      case 2004:
        if ([a1 _accessibilityShouldInheritTraits])
        {
          v114 = [v3 _accessibilityInheritedTraits];
        }

        else
        {
          v114 = [v3 accessibilityTraits];
        }

        v155 = v114;
        v156 = [v3 _accessibilityIsScrollable];
        v157 = UIAccessibilityTraitScrollable;
        if (!v156)
        {
          v157 = 0;
        }

        v158 = v157 | v155;
        if ([v3 _accessibilityHasTextOperations])
        {
          v159 = UIAccessibilityTraitTextOperationsAvailable;
        }

        else
        {
          v159 = 0;
        }

        v160 = [v3 _accessibilityReadAllContinuesWithScroll];
        v161 = *MEMORY[0x1E69DD9C0];
        if (!v160)
        {
          v161 = 0;
        }

        v162 = v158 | v159 | v161;
        v163 = [v3 _accessibilityIsInTabBar];
        v164 = UIAccessibilityTraitTabButton;
        if (!v163)
        {
          v164 = 0;
        }

        v165 = v162 | v164;
        v166 = [v3 _accessibilityGetBlockForAttribute:5];
        v22 = v166;
        if (v166)
        {
          v166 = (*(v166 + 16))(v166);
        }

        v79 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v165 | v166];
        goto LABEL_509;
      case 2005:
        v13 = [a1 _accessibilitySelectedTextRange];
        goto LABEL_32;
      case 2006:
        v4 = [a1 _accessibilityAXAttributedValue];
        v35 = [v3 accessibilitySpeechHint];
        if ([v35 count])
        {
          v49 = [v3 _accessibilityString:v4 withSpeechHint:v35];

          v4 = v49;
        }

        goto LABEL_480;
      case 2007:
        [a1 accessibilityActivationPoint];
        if (v123 == -1.0 && v122 == -1.0)
        {
          v48 = MEMORY[0x1E696B098];
          v45 = -1.0;
          v47 = -1.0;
        }

        else
        {
          [v3 _accessibilityConvertSystemBoundedScreenRectToContextSpace:?];
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
        v5 = [a1 accessibilityLanguage];
        if (!v5)
        {
          v5 = [*MEMORY[0x1E69DDA98] accessibilityLanguage];
        }

        goto LABEL_19;
      case 2009:
        v5 = [a1 _accessibilityScrollStatus];
        goto LABEL_19;
      case 2010:
        v5 = [a1 _accessibilityTextOperations];
        goto LABEL_19;
      case 2011:
        v5 = [a1 _accessibilityTextViewTextOperationResponder];
        goto LABEL_19;
      case 2012:
        v5 = [a1 _accessibilityTouchContainer];
        goto LABEL_19;
      case 2013:
        v5 = [a1 _accessibilityVisibleItemInList];
        goto LABEL_19;
      case 2014:
        v62 = 1;
        goto LABEL_384;
      case 2015:
        v62 = 0;
LABEL_384:
        v5 = [a1 _accessibilityContainerInDirection:v62];
        goto LABEL_19;
      case 2016:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 isAccessibilityElement];
        break;
      case 2017:
        v5 = [a1 _accessibilityApplication];
        goto LABEL_19;
      case 2018:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityElementIsFocused];
        break;
      case 2019:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 __accessibilitySupportsActivateAction];
        break;
      case 2020:
        v5 = [a1 accessibilityURL];
        goto LABEL_19;
      case 2021:
        v17 = MEMORY[0x1E696AD98];
        v18 = [a1 _accessibilityContextId];
        goto LABEL_353;
      case 2022:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsFirstSibling];
        break;
      case 2023:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsLastSibling];
        break;
      case 2024:
        v5 = [a1 accessibilityLinkedElement];
        goto LABEL_19;
      case 2025:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsVisibleByCompleteHitTest];
        break;
      case 2026:
        v5 = [a1 _accessibilityRetrieveHeaderElements];
        goto LABEL_19;
      case 2027:
        v13 = [a1 _accessibilityRowRange];
        goto LABEL_32;
      case 2028:
        v13 = [a1 _accessibilityColumnRange];
        goto LABEL_32;
      case 2029:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityRequired];
        break;
      case 2030:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityIsComboBox];
        break;
      case 2031:
        v5 = [a1 _accessibilityAutomaticIdentifier];
        goto LABEL_19;
      case 2032:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityWebSearchResultsActive];
        break;
      case 2033:
        v5 = [a1 accessibilityFlowToElements];
        goto LABEL_19;
      case 2034:
        v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "_accessibilityIsInTableCell")}];
        if (([(__CFString *)v4 BOOLValue]& 1) != 0)
        {
          goto LABEL_20;
        }

        v74 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "_accessibilityIsInCollectionCell")}];
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
        v5 = [a1 _accessibilityCustomActionNamesAndIdentifiers];
        goto LABEL_19;
      case 2038:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 __accessibilityReadAllOnFocus];
        break;
      case 2039:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsAwayAlertElement];
        break;
      case 2040:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsAwayAlertElementNew];
        break;
      case 2041:
        v4 = [MEMORY[0x1E696AD60] string];
        v35 = [v3 accessibilityContainer];
        v36 = v3;
        v37 = v36;
        if (v36 && v35)
        {
          do
          {
            v38 = [v35 indexOfAccessibilityElement:v37];
            if (v38 == 0x7FFFFFFFFFFFFFFFLL)
            {
              if (objc_opt_respondsToSelector())
              {
                v39 = [v35 _accessibilitySubviews];
                v38 = [v39 indexOfObject:v37];
              }

              else
              {
                v38 = 0x7FFFFFFFFFFFFFFFLL;
              }
            }

            [(__CFString *)v4 appendFormat:@"%ld-", v38];
            v40 = v35;

            v35 = [v40 accessibilityContainer];

            v37 = v40;
          }

          while (v35);
        }

        else
        {
          v40 = v36;
        }

        goto LABEL_480;
      case 2042:
        v35 = [a1 __accessibilityRetrieveFrameOrPathDelegate];
        v50 = [v35 accessibilityPath];
        v4 = [v3 _accessibilityConvertSystemBoundedPathToContextSpace:v50];

        goto LABEL_480;
      case 2044:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsInAppSwitcher];
        break;
      case 2045:
        v5 = [a1 accessibilityInvalidStatus];
        goto LABEL_19;
      case 2046:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsRemoteElement];
        break;
      case 2047:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _allowCustomActionHintSpeakOverride];
        break;
      case 2048:
        v26 = MEMORY[0x1E696AD98];
        v27 = [a1 _accessibilityMapFeatureType];
        goto LABEL_558;
      case 2049:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityLastHitTestNearBorder];
        break;
      case 2050:
        v96 = MEMORY[0x1E696B098];
        [a1 _accessibilityTextCursorFrame];
        goto LABEL_260;
      case 2051:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityShouldAnnounceFontInfo];
        break;
      case 2052:
        v67 = MEMORY[0x1E696AD98];
        [a1 _accessibilityActivationDelay];
        goto LABEL_472;
      case 2053:
        v65 = MEMORY[0x1E696AD98];
        v66 = [a1 _accessibilityAvailableAutoscrollDirections];
        goto LABEL_487;
      case 2054:
        v5 = [a1 _accessibilityAutoscrollTarget];
        goto LABEL_19;
      case 2055:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsAutoscrolling];
        break;
      case 2056:
      case 2088:
        v4 = MEMORY[0x1E695E118];
        goto LABEL_20;
      case 2057:
        [a1 _accessibilityVisibleFrame];
        goto LABEL_372;
      case 2058:
        v5 = [a1 _accessibilityPhotoDescription];
        goto LABEL_19;
      case 2059:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityKeyboardKeyAllowsTouchTyping];
        break;
      case 2060:
        v5 = [a1 _accessibilityElementStoredUserLabel];
        goto LABEL_19;
      case 2061:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsEscapable];
        break;
      case 2062:
        [a1 _accessibilityVisiblePoint];
        v43 = v42;
        v44 = v41;
        v45 = -1.0;
        v46 = v43 == -1.0 && v41 == -1.0;
        v47 = -1.0;
        if (!v46)
        {
          [v3 _accessibilityConvertSystemBoundedScreenPointToContextSpace:{v43, v44}];
        }

        v48 = MEMORY[0x1E696B098];
        goto LABEL_502;
      case 2063:
        v5 = [a1 _accessibilitySupportGesturesAttributes];
        goto LABEL_19;
      case 2064:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityCanScrollInAtLeastOneDirection];
        break;
      case 2065:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 isAccessibilityOpaqueElementProvider];
        break;
      case 2066:
        v5 = [a1 _accessibilityOpaqueElementParent];
        goto LABEL_19;
      case 2067:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityRetainsCustomRotorActionSetting];
        break;
      case 2068:
        v81 = MEMORY[0x1E696AD98];
        [a1 _accessibilityDelayBeforeUpdatingOnActivation];
        goto LABEL_560;
      case 2069:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityOverridesInstructionsHint];
        break;
      case 2070:
        [a1 _accessibilityVisiblePointHitTestingAnyElement:0];
        if (v111 != -1.0 || v112 != -1.0)
        {
          [v3 _accessibilityConvertSystemBoundedScreenPointToContextSpace:{v111, v112}];
        }

        v4 = [MEMORY[0x1E696B098] valueWithPoint:?];
        v22 = AXLogUIA();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v205 = v4;
          _os_log_impl(&dword_1A9B83000, v22, OS_LOG_TYPE_INFO, "Return visible point: %@", buf, 0xCu);
        }

        goto LABEL_510;
      case 2071:
        v5 = [a1 _accessibilityEquivalenceTag];
        goto LABEL_19;
      case 2072:
        v4 = @"<unavailable>";
        goto LABEL_20;
      case 2073:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityAllowsAlternativeCharacterActivation];
        break;
      case 2074:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityShouldSpeakScrollStatusOnEntry];
        break;
      case 2075:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityElementVisibilityAffectsLayout];
        break;
      case 2076:
        v5 = [a1 _accessibilityActiveKeyboard];
        if (!v5)
        {
          v5 = [v3 _accessibilitySoftwareMimicKeyboard];
        }

        goto LABEL_19;
      case 2077:
        v5 = [a1 __accessibilityRoleDescription];
        goto LABEL_19;
      case 2078:
        v115 = MEMORY[0x1E696B098];
        v15 = [a1 _accessibilityIndexPathAsRange];
        v16 = v115;
        goto LABEL_33;
      case 2079:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 __accessibilitySupportsSecondaryActivateAction];
        break;
      case 2080:
        v5 = [a1 accessibilityImageOverlayElements];
        goto LABEL_19;
      case 2081:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsInFolder];
        break;
      case 2082:
        v5 = [a1 _accessibilityActiveURL];
        goto LABEL_19;
      case 2083:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityWebViewIsLoading];
        break;
      case 2084:
        v5 = [a1 _accessibilitySpeakThisElementsAndStrings];
        goto LABEL_19;
      case 2085:
        v5 = [a1 _accessibilitySpeakThisString];
        goto LABEL_19;
      case 2086:
        v11 = MEMORY[0x1E696AD98];
        v12 = [a1 _accessibilityHorizontalSizeClass];
        goto LABEL_30;
      case 2087:
        v11 = MEMORY[0x1E696AD98];
        v12 = [a1 _accessibilityVerticalSizeClass];
        goto LABEL_30;
      case 2089:
        v5 = [a1 _accessibilityPreferredScrollActions];
        goto LABEL_19;
      case 2092:
      case 2310:
        v5 = [a1 _accessibilityRemoteParent];
        goto LABEL_19;
      case 2093:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityShouldScrollRemoteParent];
        break;
      case 2094:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityHasNativeFocus];
        break;
      case 2095:
        v5 = [a1 _accessibilityAccessibleDescendants];
        goto LABEL_19;
      case 2096:
        v5 = [a1 _accessibilityAccessibleAncestor];
        goto LABEL_19;
      case 2099:
        v22 = [a1 _accessibilityWindow];
        if (![v22 _accessibilityIsIsolatedWindow])
        {
          goto LABEL_450;
        }

        v79 = v22;
        goto LABEL_509;
      case 2100:
        v5 = [a1 _accessibilityElementCommunityIdentifier];
        goto LABEL_19;
      case 2101:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsUsingRemoteParentActivateAction];
        break;
      case 2102:
        v5 = [a1 _accessibilityTraitsInspectorHumanReadable];
        goto LABEL_19;
      case 2103:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityShouldSuppressCustomActionsHint];
        break;
      case 2104:
        v5 = [a1 _accessibilityTextInputElement];
        goto LABEL_19;
      case 2105:
        v5 = [a1 _accessibilityWebAreaURL];
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
        v5 = [a1 _accessibilityScrollAncestorForSelector:v64];
        goto LABEL_19;
      case 2110:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilitySupportsPressedState];
        break;
      case 2111:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsPressed];
        break;
      case 2113:
        v5 = [a1 _accessibilityVisibleOpaqueElements];
        goto LABEL_19;
      case 2114:
        v26 = MEMORY[0x1E696AD98];
        v27 = [a1 _accessibilityExpandedStatus];
        goto LABEL_558;
      case 2115:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityRepresentsInfiniteCollection];
        break;
      case 2116:
        v5 = [a1 _accessibilityCurrentStatus];
        goto LABEL_19;
      case 2117:
        v80 = [a1 accessibilityARIARowIndex];
        goto LABEL_216;
      case 2118:
        v80 = [a1 accessibilityARIAColumnIndex];
LABEL_216:
        if (v80 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v92 = 0x7FFFFFFFLL;
        }

        else
        {
          v92 = v80;
        }

        v93 = MEMORY[0x1E696AD98];
        goto LABEL_442;
      case 2119:
        v51 = MEMORY[0x1E696AD98];
        v52 = [a1 accessibilityARIARowCount];
        goto LABEL_441;
      case 2120:
        v51 = MEMORY[0x1E696AD98];
        v52 = [a1 accessibilityARIAColumnCount];
        goto LABEL_441;
      case 2121:
        v51 = MEMORY[0x1E696AD98];
        v52 = [a1 _accessibilityRowCount];
        goto LABEL_441;
      case 2122:
        v51 = MEMORY[0x1E696AD98];
        v52 = [a1 _accessibilityColumnCount];
        goto LABEL_441;
      case 2123:
        v17 = MEMORY[0x1E696AD98];
        v18 = [a1 _accessibilityDisplayId];
        goto LABEL_353;
      case 2124:
        v105 = MEMORY[0x1E696B098];
        v15 = [a1 _accessibilityTextInputElementRangeAsNSRange];
        v16 = v105;
        goto LABEL_33;
      case 2125:
        v5 = [a1 _accessibilityAllContextDescriptors];
        goto LABEL_19;
      case 2126:
        v107 = MEMORY[0x1E69DDA98];
        [*MEMORY[0x1E69DDA98] setContextKitSearchEnabled:1];
        v108 = [v3 _accessibilitySpeakThisElementsAndStrings];
        v109 = _accessibilityPostProcessContextKitData(v108);

        [*v107 setContextKitSearchEnabled:0];
        goto LABEL_467;
      case 2127:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityViewHierarchyHasNativeFocus];
        break;
      case 2128:
        v5 = [a1 _accessibilityPublicCustomRotors];
        goto LABEL_19;
      case 2129:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityBannerIsSticky];
        break;
      case 2130:
        v53 = [a1 __accessibilityRetrieveFrameOrPathDelegate];
        [v53 _accessibilityDirectInteractionFrame];
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v61 = v60;

        v34 = v3;
        v30 = v55;
        v31 = v57;
        v32 = v59;
        v33 = v61;
        goto LABEL_116;
      case 2131:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityShouldSpeakExplorerElementsAfterFocus];
        break;
      case 2132:
        v5 = [a1 _accessibilityWatchAutoSpeakElements];
        goto LABEL_19;
      case 2140:
        v82 = [a1 _accessibilitySpeakThisPreferredHighlightColor];
        goto LABEL_465;
      case 2141:
        v82 = [a1 _accessibilitySpeakThisPreferredUnderlineColor];
        goto LABEL_465;
      case 2142:
        v5 = [a1 _accessibilityRemoteApplication];
        goto LABEL_19;
      case 2143:
        v5 = [a1 _accessibilityParentTableView];
        if (!v5)
        {
          v5 = [v3 _accessibilityParentCollectionView];
        }

        goto LABEL_19;
      case 2144:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityHasBadge];
        break;
      case 2145:
        v5 = [a1 _accessibilityContainerTypes];
        goto LABEL_19;
      case 2147:
        v65 = MEMORY[0x1E696AD98];
        v66 = [a1 _accessibilityScanningBehaviorTraits];
        goto LABEL_487;
      case 2148:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityCanDisplayMultipleControllers];
        break;
      case 2149:
        [a1 _accessibilityFocusableFrameForZoom];
        x = v209.origin.x;
        y = v209.origin.y;
        width = v209.size.width;
        height = v209.size.height;
        if (CGRectIsNull(v209))
        {
          v5 = [v3 _iosAccessibilityAttributeValue:2003];
          goto LABEL_19;
        }

LABEL_369:
        v121 = v3;
        v75 = x;
        v76 = y;
        v77 = width;
        v78 = height;
LABEL_373:
        [v121 _accessibilityConvertSystemBoundedScreenRectToContextSpace:{v75, v76, v77, v78}];
        goto LABEL_374;
      case 2150:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityScannerShouldUseActivateInPointMode];
        break;
      case 2151:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityFullscreenVideoViewIsVisible];
        break;
      case 2152:
        v5 = [a1 accessibilitySortDirection];
        goto LABEL_19;
      case 2153:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityShouldSetNativeFocusWhenATVFocused];
        break;
      case 2154:
        v63 = 0;
        goto LABEL_198;
      case 2155:
        v63 = 1;
LABEL_198:
        v5 = [a1 _accessibilityGuideElementInDirection:v63];
        goto LABEL_19;
      case 2156:
        v5 = [a1 accessibilityErrorMessageElements];
        goto LABEL_19;
      case 2157:
        v51 = MEMORY[0x1E696AD98];
        v52 = [a1 accessibilityBlockquoteLevel];
        goto LABEL_441;
      case 2158:
        v4 = [a1 _iosAccessibilityAttributeValue:2006];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [(__CFString *)v4 length]< 0x201)
        {
          goto LABEL_20;
        }

        v74 = [(__CFString *)v4 substringToIndex:512];
        goto LABEL_466;
      case 2159:
        v81 = MEMORY[0x1E696AD98];
        [a1 _accessibilityFontSize];
        goto LABEL_560;
      case 2160:
        v81 = MEMORY[0x1E696AD98];
        [a1 _accessibilityZoomScale];
        goto LABEL_560;
      case 2161:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityShouldIncludeRowRangeInElementDescription];
        break;
      case 2162:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsContainedByPreferredNativeFocusElement];
        break;
      case 2163:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityHasDragSources];
        break;
      case 2164:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityHasDragDestinations];
        break;
      case 2165:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsDraggableElementAttribute];
        break;
      case 2166:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsContainedByVideoElement];
        break;
      case 2167:
        v5 = [a1 _accessibilityRetrieveLinkedUIElementsFromContainerChain];
        goto LABEL_19;
      case 2168:
        v81 = MEMORY[0x1E696AD98];
        [a1 _accessibilityViewAlpha];
        goto LABEL_560;
      case 2169:
        v5 = [a1 _accessibilityGuideElementHeaderText];
        goto LABEL_19;
      case 2170:
        v5 = [a1 accessibilityDatetimeValue];
        goto LABEL_19;
      case 2171:
        [a1 accessibilityElementRect];
LABEL_372:
        v121 = v3;
        goto LABEL_373;
      case 2172:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsScrollAncestor];
        break;
      case 2174:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityUseContextlessPassthroughForDrag];
        break;
      case 2175:
        v5 = [a1 _accessibilityDragSourceDescriptorDictionaryRepresentations];
        goto LABEL_19;
      case 2176:
        v5 = [a1 _accessibilityDropPointDescriptorDictionaryRepresentations];
        goto LABEL_19;
      case 2177:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityIsAttachmentElement];
        break;
      case 2178:
        v5 = [a1 _accessibilityCustomActionGroupIdentifier];
        goto LABEL_19;
      case 2179:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityIsMediaPlaying];
        break;
      case 2180:
        v5 = [a1 _accessibilityHeadingLevel];
        goto LABEL_19;
      case 2181:
        v4 = [a1 _iosAccessibilityAttributeValue:2003];
        v71 = MEMORY[0x1E696B098];
        [(__CFString *)v4 rectValue];
        v74 = [v71 valueWithSize:{v72, v73}];
        goto LABEL_466;
      case 2182:
        v4 = [a1 _iosAccessibilityAttributeValue:2003];
        v110 = MEMORY[0x1E696B098];
        [(__CFString *)v4 rectValue];
        v74 = [v110 valueWithPoint:?];
        goto LABEL_466;
      case 2183:
        v5 = [a1 _accessibilityElementForTextInsertionAndDeletion];
        goto LABEL_19;
      case 2184:
        v5 = [a1 _accessibilityGroupedParent];
        goto LABEL_19;
      case 2185:
        v5 = [a1 description];
        goto LABEL_19;
      case 2186:
        v5 = [a1 _accessibilityAXAttributedUserInputLabelsIncludingFallbacks];
        goto LABEL_19;
      case 2187:
        if ([a1 _accessibilityShouldApplySemanticGroupContainerType])
        {
          v4 = &unk_1F1DC2680;
          goto LABEL_20;
        }

        v65 = MEMORY[0x1E696AD98];
        v66 = [v3 axContainerTypeFromUIKitContainerType:{objc_msgSend(v3, "accessibilityContainerType")}];
LABEL_487:
        v5 = [v65 numberWithUnsignedLong:v66];
        goto LABEL_19;
      case 2188:
        v5 = [a1 _accessibilityElementHelp];
        goto LABEL_19;
      case 2189:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityUpdatesSwitchMenu];
        break;
      case 2190:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityUseElementAtPositionAfterActivation];
        break;
      case 2191:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsStrongPasswordField];
        break;
      case 2192:
        v106 = MEMORY[0x1E696AD98];
        v92 = [a1 _accessibilityNotificationCount];
        v93 = v106;
        goto LABEL_442;
      case 2193:
        v5 = [a1 _accessibilityTextualContext];
        goto LABEL_19;
      case 2194:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityKeyboardIsContinuousPathTracking];
        break;
      case 2195:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityKeyboardIsContinuousPathAvailable];
        break;
      case 2196:
        v5 = [a1 _accessibilityNextElementsForSpeakThis];
        goto LABEL_19;
      case 2197:
        v5 = [a1 _accessibilitySpeakThisLeafDescendants];
        goto LABEL_19;
      case 2198:
        v69 = MEMORY[0x1E696AD98];
        v22 = [a1 _accessibilityFindAncestor:&__block_literal_global_1107 startWithSelf:1];
        v70 = [v22 isFirstResponder];
        goto LABEL_211;
      case 2199:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityAllowsActivationWithoutBeingNativeFocused];
        break;
      case 2200:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityHasPopup];
        break;
      case 2201:
        v5 = [a1 accessibilityPopupValue];
        goto LABEL_19;
      case 2202:
        v5 = [a1 _accessibilityTouchContainerStartingWithSelf:0];
        goto LABEL_19;
      case 2203:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityShouldIncludeMediaDescriptionsRotor];
        break;
      case 2204:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityCanBecomeNativeFocused];
        break;
      case 2205:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityChildrenContainerGroupingBehaviorHasOverridingParentDelegate];
        break;
      case 2206:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityParentDiscardsChildrenContainerGroupingBehavior];
        break;
      case 2207:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsBannerNotificationElement];
        break;
      case 2208:
        v5 = [a1 _accessibilitySelectedChildren];
        goto LABEL_19;
      case 2209:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilitySkipImageTraitDescription];
        break;
      case 2210:
        v83 = [a1 _accessibilityCustomContent];
        if (!v83)
        {
          goto LABEL_548;
        }

        v84 = v83;
        v202 = 0;
        v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v83 requiringSecureCoding:1 error:&v202];
        v22 = v202;

        if (!v22)
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
        v7 = [a1 _accessibilityRetainsFocusOnScreenChange];
        break;
      case 2212:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityIsInDescriptionListTerm];
        break;
      case 2213:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityIsInDescriptionListDefinition];
        break;
      case 2214:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityExpandedStatusTogglesOnActivate];
        break;
      case 2215:
        v5 = [a1 _accessibilityResolvedEditingStyles];
        goto LABEL_19;
      case 2216:
        v13 = [a1 _accessibilityVisibleTextRange];
        goto LABEL_32;
      case 2217:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityShouldIncludeRemoteParentCustomActions];
        break;
      case 2218:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityShouldIncludeRegionDescription];
        break;
      case 2219:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsGroupedParent];
        break;
      case 2220:
        v51 = MEMORY[0x1E696AD98];
        v52 = [a1 accessibilitySemanticGroupChildrentCount];
        goto LABEL_441;
      case 2221:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIncludeRoleInGroupNavigationOnly];
        break;
      case 2222:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIncludeRoleDescription];
        break;
      case 2223:
        v17 = MEMORY[0x1E696AD98];
        v18 = [a1 _accessibilitySecureName];
        goto LABEL_353;
      case 2224:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityShouldUseHostContextIDForPress];
        break;
      case 2225:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityIsFirstItemInSuggestion];
        break;
      case 2226:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityIsLastItemInSuggestion];
        break;
      case 2227:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityIsInsertion];
        break;
      case 2228:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityIsDeletion];
        break;
      case 2229:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsInJindo];
        break;
      case 2230:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityIsMarkAnnotation];
        break;
      case 2231:
        v5 = [a1 _accessibilityFirstWebElement];
        goto LABEL_19;
      case 2232:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsMacVisualAppearance];
        break;
      case 2233:
        v5 = [a1 _accessibilityDirectTouchOptionsAttribute];
        goto LABEL_19;
      case 2234:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityShouldUseHostContextIDForTap];
        break;
      case 2235:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityShouldUseHostContextIDForLongPress];
        break;
      case 2236:
        v96 = MEMORY[0x1E696B098];
        [a1 _accessibilityKeyboardFrame];
LABEL_260:
        [v3 _accessibilityConvertSystemBoundedScreenRectToContextSpace:?];
        v103 = v96;
        goto LABEL_375;
      case 2237:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilityIsInNonNativeTextControl];
        break;
      case 2238:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsJindo];
        break;
      case 2239:
        v5 = [a1 _accessibilityTableIndexTitles];
        goto LABEL_19;
      case 2240:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityKeyboardIsEmojiInputMode];
        break;
      case 2241:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityKeyboardKeyCanStartContinuousPath];
        break;
      case 2242:
        v5 = [a1 _accessibilityScreenTextualContent];
        goto LABEL_19;
      case 2243:
        v5 = [a1 _accessibilityElementTextualContent];
        goto LABEL_19;
      case 2244:
        v5 = [a1 _accessibilityPreviousElementsForAccessibilityReader];
        goto LABEL_19;
      case 2301:
        if ([a1 conformsToProtocol:&unk_1F1E1E028])
        {
          v104 = 1;
        }

        else
        {
          v153 = [v3 accessibilityTraits];
          v104 = (*MEMORY[0x1E6989008] & ~v153) == 0;
        }

        v154 = [v3 _accessibilitySupportsReadingContent];
        v22 = v154;
        if (v154)
        {
          v104 = [v154 BOOLValue];
        }

        v91 = MEMORY[0x1E696AD98];
        v90 = v104;
        goto LABEL_485;
      case 2302:
        if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 accessibilityAttributedPageContent], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v5 = [v3 accessibilityPageContent];
          if (!v5)
          {
            v5 = [v3 _accessibilityPageContent];
          }
        }

        goto LABEL_19;
      case 2304:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityBookShowsDualPages];
        break;
      case 2305:
        v5 = [a1 _accessibilityPageTextMarkerRange];
        goto LABEL_19;
      case 2306:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIncludeDuringContentReading];
        break;
      case 2307:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilitySupportsFrameForRange];
        break;
      case 2308:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilitySupportsRangeForLineNumber];
        break;
      case 2311:
        v69 = MEMORY[0x1E696AD98];
        v22 = [a1 _accessibilityContainerTypes];
        v70 = [v22 containsObject:&unk_1F1DC2698];
LABEL_211:
        v90 = v70;
        v91 = v69;
LABEL_485:
        v79 = [v91 numberWithBool:v90];
        goto LABEL_509;
      case 2312:
        v5 = [a1 accessibilityPreviousTextNavigationElement];
        goto LABEL_19;
      case 2313:
        v5 = [a1 accessibilityNextTextNavigationElement];
        goto LABEL_19;
      case 2314:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityTouchContainerShouldOutputBraille];
        break;
      case 2315:
        v97 = [a1 _accessibilityCapturedImages];
        v4 = [MEMORY[0x1E695DF70] array];
        v193 = 0u;
        v194 = 0u;
        v195 = 0u;
        v196 = 0u;
        v22 = v97;
        v98 = [v22 countByEnumeratingWithState:&v193 objects:v206 count:16];
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
                objc_enumerationMutation(v22);
              }

              v102 = UIImagePNGRepresentation(*(*(&v193 + 1) + 8 * i));
              if (v102)
              {
                [(__CFString *)v4 addObject:v102];
              }
            }

            v99 = [v22 countByEnumeratingWithState:&v193 objects:v206 count:16];
          }

          while (v99);
        }

        goto LABEL_510;
      case 2316:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 accessibilitySupportsTextSelection];
        break;
      case 2317:
        v6 = MEMORY[0x1E696AD98];
        v197 = MEMORY[0x1E69E9820];
        v198 = 3221225472;
        v199 = __60__NSObject_AXPrivCategory___iosAccessibilityAttributeValue___block_invoke_1125;
        v200 = &unk_1E78AABC0;
        v201 = a1;
        v7 = __60__NSObject_AXPrivCategory___iosAccessibilityAttributeValue___block_invoke_1125();
        break;
      case 2318:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityElementServesAsHeadingLandmark];
        break;
      case 2319:
        v94 = [a1 _accessibilityBrailleMap];
        if (!v94)
        {
          goto LABEL_548;
        }

        v95 = v94;
        v203 = 0;
        v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v94 requiringSecureCoding:1 error:&v203];
        v22 = v203;

        if (!v22)
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
        v7 = [a1 _accessibilityIsSwitch];
        break;
      case 2400:
        v5 = [a1 accessibilityMathEquation];
        goto LABEL_19;
      case 2401:
        v5 = [a1 accessibilityMathMLSource];
        goto LABEL_19;
      case 2402:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityShouldSpeakMathEquationTrait];
        break;
      case 2403:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityShouldExpandMathEquation];
        break;
      case 2500:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsTourGuideRunning];
        break;
      case 2501:
        v5 = [a1 _accessibilityMapsExplorationCurrentRoadsWithAngles];
        goto LABEL_19;
      case 2502:
        v5 = [a1 _accessibilityMapsExplorationCurrentLocation];
        goto LABEL_19;
      case 2503:
        v5 = [a1 _accessibilityMapsExplorationCurrentIntersectionDescription];
        goto LABEL_19;
      case 2504:
        v5 = [a1 _accessibilityMapsExplorationIncreaseVerbosity];
        goto LABEL_19;
      case 2505:
        v5 = [a1 _accessibilityMapsExplorationDecreaseVerbosity];
        goto LABEL_19;
      case 2506:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityMapsExplorationIsActive];
        break;
      case 2507:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityMapsExplorationIsPending];
        break;
      case 2508:
        v5 = [a1 _accessibilityMapSmartDescriptionDictionary];
        goto LABEL_19;
      case 2600:
        v5 = [a1 _accessibilityHandwritingElement];
        goto LABEL_19;
      case 2601:
        v5 = [a1 _accessibilityHandwritingAttributes];
        goto LABEL_19;
      case 2602:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityRequiresLaTeXInput];
        break;
      default:
        if (a3 == 1503)
        {
          v26 = MEMORY[0x1E696AD98];
          v27 = [a1 _accessibilityApplicationOrientation];
          goto LABEL_558;
        }

        if (a3 != 1522)
        {
          goto LABEL_20;
        }

        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsInMenuBar];
        break;
    }

LABEL_17:
    v8 = v7;
    v9 = v6;
LABEL_18:
    v5 = [v9 numberWithBool:v8];
    goto LABEL_19;
  }

  if (a3 > 5000)
  {
    if (a3 <= 11999)
    {
      switch(a3)
      {
        case 5001:
          v5 = [a1 automationElements];
          goto LABEL_19;
        case 5002:
          v5 = [a1 _accessibilityUserTestingParent];
          goto LABEL_19;
        case 5003:
          v5 = [a1 _accessibilityUserTestingElementType];
          goto LABEL_19;
        case 5004:
          v5 = [a1 _accessibilityUserTestingElementBaseType];
          goto LABEL_19;
        case 5005:
          v67 = MEMORY[0x1E696AD98];
          [a1 _accessibilityMinValue];
          goto LABEL_471;
        case 5006:
          v67 = MEMORY[0x1E696AD98];
          [a1 _accessibilityMaxValue];
          goto LABEL_471;
        case 5007:
          [a1 _accessibilityMinScrubberPosition];
          goto LABEL_438;
        case 5008:
          [a1 _accessibilityMaxScrubberPosition];
LABEL_438:
          [v3 _accessibilityConvertSystemBoundedScreenPointToContextSpace:?];
          v48 = MEMORY[0x1E696B098];
          goto LABEL_502;
        case 5009:
          v5 = [a1 _accessibilityUserTestingElementAttributes];
          goto LABEL_19;
        case 5010:
          v5 = [*MEMORY[0x1E69DDA98] _accessibilityMainWindow];
          goto LABEL_19;
        case 5011:
          v5 = [a1 _accessibilityAbsoluteValue];
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
          v12 = [a1 _accessibilityPageIndex];
          goto LABEL_30;
        case 5015:
          v11 = MEMORY[0x1E696AD98];
          v12 = [a1 _accessibilityPageCount];
          goto LABEL_30;
        case 5016:
          v5 = [a1 _accessibilityUserTestingVisibleCells];
          goto LABEL_19;
        case 5017:
          v5 = [a1 _accessibilityUserTestingVisibleSections];
          goto LABEL_19;
        case 5018:
          v6 = MEMORY[0x1E696AD98];
          v7 = [a1 _accessibilityBackingElementIsValid];
          goto LABEL_17;
        case 5019:
          v35 = [a1 accessibilityIdentifier];
          v143 = [v3 _accessibilityPostProcessValueForAutomation:v35];
          goto LABEL_415;
        case 5020:
          v6 = MEMORY[0x1E696AD98];
          v7 = [a1 _accessibilityIsTableCell];
          goto LABEL_17;
        case 5021:
          v5 = [a1 _accessibilityInputIdentifierForKeyboard];
          goto LABEL_19;
        case 5022:
          v5 = [a1 _accessibiltyAvailableKeyplanes];
          goto LABEL_19;
        case 5023:
          v5 = [a1 _accessibilityKeyboardKeyEnteredString];
          goto LABEL_19;
        case 5024:
          v5 = [a1 _accessibilityStatusBar];
          goto LABEL_19;
        case 5025:
          v5 = [a1 _accessibilityAncestry];
          goto LABEL_19;
        case 5026:
          v145 = MEMORY[0x1E696B098];
          v146 = 1;
          goto LABEL_436;
        case 5027:
          v145 = MEMORY[0x1E696B098];
          v146 = 0;
LABEL_436:
          [a1 __accessibilityVisibleScrollArea:v146];
          v48 = v145;
LABEL_502:
          v5 = [v48 valueWithPoint:{v45, v47}];
          goto LABEL_19;
        case 5028:
          v6 = MEMORY[0x1E696AD98];
          v7 = [a1 _accessibilityAnimationsInProgress];
          goto LABEL_17;
        case 5029:
          v5 = [a1 _accessibilityDOMAttributes];
          goto LABEL_19;
        case 5030:
          v11 = MEMORY[0x1E696AD98];
          v12 = [a1 _accessibilityUserTestingChildrenCount];
          goto LABEL_30;
        case 5031:
          v26 = MEMORY[0x1E696AD98];
          v27 = [a1 _accessibilityPickerType];
          goto LABEL_558;
        case 5032:
          v51 = MEMORY[0x1E696AD98];
          v52 = [a1 _accessibilityDatePickerComponentType];
LABEL_441:
          v92 = v52;
          v93 = v51;
LABEL_442:
          v5 = [v93 numberWithUnsignedInteger:v92];
          goto LABEL_19;
        case 5033:
          v5 = [a1 _accessibilityDateTimePickerValues];
          goto LABEL_19;
        case 5034:
          v6 = MEMORY[0x1E696AD98];
          v7 = [a1 _accessibilityIsUserInteractionEnabled];
          goto LABEL_17;
        case 5035:
          v6 = MEMORY[0x1E696AD98];
          v7 = [a1 _accessibilityKeyboardSupportsGestureMode];
          goto LABEL_17;
        case 5036:
          v6 = MEMORY[0x1E696AD98];
          v7 = [a1 _accessibilityFauxCollectionViewCellsDisabled];
          goto LABEL_17;
        case 5037:
          v6 = MEMORY[0x1E696AD98];
          v7 = [a1 _accessibilityIsStarkElement];
          goto LABEL_17;
        case 5038:
          v5 = [a1 _accessibilityUserTestingActionIdentifiers];
          goto LABEL_19;
        case 5039:
          v5 = [a1 _accessibilityUserTestingSnapshot];
          goto LABEL_19;
        case 5041:
          buf[0] = 0;
          objc_opt_class();
          v147 = [v3 _accessibilityViewController];
          v22 = __UIAccessibilityCastAsClass();

          if (!v22)
          {
            goto LABEL_450;
          }

          v79 = [v22 title];
          goto LABEL_509;
        case 5042:
          v22 = [a1 _accessibilityViewController];
          if (v22)
          {
            v144 = objc_opt_class();
            v79 = NSStringFromClass(v144);
            goto LABEL_509;
          }

LABEL_450:
          v4 = 0;
          goto LABEL_510;
        case 5043:
          v5 = [a1 accessibilityPlaceholderValue];
          goto LABEL_19;
        case 5045:
          v150 = objc_opt_class();
          v5 = NSStringFromClass(v150);
          goto LABEL_19;
        case 5046:
          v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", a1];
          goto LABEL_19;
        case 5047:
          v5 = [a1 accessibilityLocalizedStringKey];
          goto LABEL_19;
        case 5048:
          v5 = [a1 accessibilityLocalizationBundleID];
          goto LABEL_19;
        case 5049:
          v5 = [a1 accessibilityLocalizationBundlePath];
          goto LABEL_19;
        case 5050:
          v5 = [a1 accessibilityLocalizedStringTableName];
          goto LABEL_19;
        case 5051:
          v6 = MEMORY[0x1E696AD98];
          v7 = [a1 _accessibilityFauxTableViewCellsDisabled];
          goto LABEL_17;
        case 5052:
          a1 = *MEMORY[0x1E69DDA98];
          v20 = @"AXSpeakSelectionLastSpokenString";
          goto LABEL_422;
        case 5053:
          v81 = MEMORY[0x1E696AD98];
          [*MEMORY[0x1E69DDA98] _accessibilityMagnifierZoomLevel];
          goto LABEL_560;
        case 5054:
          v5 = [a1 _accessibilityVerticalScrollBarElement];
          goto LABEL_19;
        case 5055:
          v5 = [a1 _accessibilityHorizontalScrollBarElement];
          goto LABEL_19;
        case 5056:
          v6 = MEMORY[0x1E696AD98];
          v7 = [a1 _accessibilityIsScrollBarIndicator];
          goto LABEL_17;
        case 5057:
          v26 = MEMORY[0x1E696AD98];
          v27 = [a1 _accessibilityOrientation];
          goto LABEL_558;
        case 5058:
          v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a1, "_accessibilityAutomationType")}];
          goto LABEL_19;
        case 5059:
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v167 = v3;
            v168 = 2006;
            goto LABEL_575;
          }

          v67 = MEMORY[0x1E696AD98];
          [v3 _accessibilityNumberValue];
LABEL_471:
          *&v68 = v68;
LABEL_472:
          v5 = [v67 numberWithFloat:v68];
          break;
        case 5061:
          v5 = [a1 _accessibilityWindowSections];
          goto LABEL_19;
        case 5062:
          v5 = [a1 automationCustomProperties];
          goto LABEL_19;
        case 5063:
          v5 = [a1 automationSystemProperties];
          goto LABEL_19;
        case 5064:
          v142 = MEMORY[0x1E696B098];
          [a1 _accessibilityContentOffset];
          v5 = [v142 valueWithCGPoint:?];
          goto LABEL_19;
        case 5068:
          v149 = MEMORY[0x1E696AD98];
          v22 = [a1 _accessibilityFirstResponderForKeyWindow];
          v79 = [v149 numberWithUnsignedInteger:{-[NSObject _accessibilityBoundaryEdges](v22, "_accessibilityBoundaryEdges")}];
          goto LABEL_509;
        case 5069:
          v82 = [a1 _accessibilityForegroundTextColorAttribute];
          goto LABEL_465;
        case 5070:
          v82 = [a1 _accessibilityBackgroundTextColorAttribute];
LABEL_465:
          v4 = v82;
          v74 = [(__CFString *)v82 CGColor];
          goto LABEL_466;
        case 5071:
          v141 = MEMORY[0x1E696AD98];
          v22 = [a1 _accessibilityFirstResponderForKeyWindow];
          v79 = [v141 numberWithInteger:{-[NSObject _accessibilityDigitalCrownScrollAmount](v22, "_accessibilityDigitalCrownScrollAmount")}];
          goto LABEL_509;
        case 5072:
          v148 = MEMORY[0x1E696B098];
          [a1 _accessibilityContentSize];
          v5 = [v148 valueWithSize:?];
          goto LABEL_19;
        default:
          if (a3 != 9000)
          {
            goto LABEL_20;
          }

          [a1 _accessibilityGesturePracticeRegion];
          v34 = v3;
LABEL_116:
          [v34 _accessibilityConvertSystemBoundedScreenRectToContextSpace:{v30, v31, v32, v33}];
          v5 = [MEMORY[0x1E696B098] valueWithRect:?];
          goto LABEL_19;
      }

      goto LABEL_19;
    }

    switch(a3)
    {
      case 12000:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsScannerElement];
        goto LABEL_17;
      case 12001:
      case 12005:
        goto LABEL_20;
      case 12002:
        v5 = [a1 _accessibilityVariantKeys];
        goto LABEL_19;
      case 12003:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityHasVariantKeys];
        goto LABEL_17;
      case 12004:
        v26 = MEMORY[0x1E696AD98];
        v27 = [a1 _accessibilityScannerActivateBehavior];
        goto LABEL_558;
      case 12006:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityKeyboardKeyHasSignificantAlternateActions];
        goto LABEL_17;
      case 12007:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityHandlesTabKey];
        goto LABEL_17;
      case 12008:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityHandlesRemoteFocusMovement];
        goto LABEL_17;
      case 12009:
        v24 = MEMORY[0x1E696AD98];
        v25 = [a1 _accessibilityRemotePid];
        goto LABEL_55;
      case 12010:
        v24 = MEMORY[0x1E696AD98];
        v25 = [a1 _accessibilityHostPid];
LABEL_55:
        v5 = [v24 numberWithInt:v25];
        goto LABEL_19;
      case 12011:
        v5 = [a1 _accessibilityFKAArrowKeysHandled];
        goto LABEL_19;
      case 12012:
        v28 = AXRemoteElementFromObject();
        v22 = v28;
        v29 = MEMORY[0x1E696AD98];
        if (v28)
        {
          v23 = [v28 onClientSide];
        }

        else
        {
          v23 = 0;
        }

        v169 = v29;
        goto LABEL_508;
      case 12013:
        v21 = AXRemoteElementFromObject();
        v22 = v21;
        if (v21)
        {
          v23 = [v21 remotePid];
        }

        else
        {
          v23 = 0;
        }

        v169 = MEMORY[0x1E696AD98];
LABEL_508:
        v79 = [v169 numberWithInt:v23];
        goto LABEL_509;
      case 12014:
        v5 = [a1 _accessibilityRemoteSceneID];
        goto LABEL_19;
      case 12015:
        v20 = @"_promoteSwitchControlMenuItemsKey";
LABEL_422:
        v5 = [a1 _accessibilityValueForKey:v20];
        goto LABEL_19;
      case 12016:
        v5 = [a1 _accessibilityTapReplacementGestures];
        goto LABEL_19;
      case 12017:
        v5 = [a1 _accessibilityScannerGroupElements];
        goto LABEL_19;
      default:
        if (a3 == 13001)
        {
          v5 = [a1 _accessibilitySemanticContext];
          goto LABEL_19;
        }

        if (a3 != 13002)
        {
          goto LABEL_20;
        }

        if ([a1 _accessibilityUnfocusableViewCanBeFocusedForFocusEverywhere])
        {
          v19 = 1;
        }

        else
        {
          v151 = [v3 _accessibilityGetBlockForAttribute:5010];
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
        v5 = [a1 _accessibilityFirstElement];
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
        v170 = [a1 accessibilityTextInputResponder];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v171 = [v3 accessibilityTextInputResponder];
          v172 = [v171 isFirstResponder];

          if (v172)
          {
            v5 = [v3 accessibilityTextInputResponder];
            goto LABEL_19;
          }
        }

        else
        {
        }

        v167 = *MEMORY[0x1E69DDA98];
        v168 = 3002;
LABEL_575:
        v5 = [v167 _iosAccessibilityAttributeValue:v168];
        break;
      case 3003:
        v5 = [a1 _accessibilityBundleIdentifier];
        goto LABEL_19;
      case 3006:
        v4 = [a1 accessibilityTitleElement];
        v74 = [MEMORY[0x1E695DEC8] axArrayByIgnoringNilElementsWithCount:{1, v4}];
        goto LABEL_466;
      case 3007:
        v5 = _UIAXLastKeyboardUsed();
        goto LABEL_19;
      case 3008:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityCameraIrisOpen];
        goto LABEL_17;
      case 3009:
        v5 = [a1 _accessibilityFirstElementForFocus];
        goto LABEL_19;
      case 3014:
        v5 = [a1 _accessibilitySupportedLanguages];
        goto LABEL_19;
      case 3015:
        v5 = [a1 _accessibilityVisibleElementsHonoringGroups:0];
        goto LABEL_19;
      case 3020:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsInternationalKeyboardKey];
        goto LABEL_17;
      case 3021:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsAccessibilityUIServer];
        goto LABEL_17;
      case 3022:
        v5 = [a1 _accessibilityExplorerElements];
        goto LABEL_19;
      case 3024:
        v5 = [a1 _accessibilityNativeFocusElement];
        goto LABEL_19;
      case 3025:
      case 3032:
        v5 = [a1 _accessibilityElementsWithSemanticContext:0];
        goto LABEL_19;
      case 3026:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsRTL];
        goto LABEL_17;
      case 3028:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityIsSoftwareKeyboardMimic];
        goto LABEL_17;
      case 3029:
      case 3031:
        v5 = [a1 _accessibilityNativeFocusableElements:0];
        goto LABEL_19;
      case 3030:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilitySupportsDirectioOrbManipulation];
        goto LABEL_17;
      case 3033:
        v5 = [a1 accessibilityExpandedTextValue];
        goto LABEL_19;
      case 3038:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityRealtimeCompleted];
        goto LABEL_17;
      case 3039:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityRealtimeHasUnread];
        goto LABEL_17;
      case 3041:
        v22 = [MEMORY[0x1E696AE30] processInfo];
        v79 = [v22 processName];
LABEL_509:
        v4 = v79;
LABEL_510:

        goto LABEL_20;
      case 3042:
        v5 = [a1 accessibilityLinkRelationshipType];
        goto LABEL_19;
      case 3046:
        v5 = [a1 _accessibilityFirstElementsForSpeakThis];
        goto LABEL_19;
      case 3048:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityHasNativeFocusableElements];
        goto LABEL_17;
      case 3049:
        v5 = [a1 _accessibilityFocusRingAncestor];
        goto LABEL_19;
      case 3053:
        v5 = [a1 accessibilityVisibleText];
        goto LABEL_19;
      case 3055:
        v5 = [a1 _accessibilityWindow];
        goto LABEL_19;
      case 3056:
        v5 = [a1 _accessibilityWindowSceneIdentifier];
        goto LABEL_19;
      case 3057:
        v5 = [a1 _accessibility2DBrailleCanvasElement];
        goto LABEL_19;
      case 3058:
        [a1 accessibilityBrailleMapRenderRegion];
        v173 = v215.origin.x;
        v174 = v215.origin.y;
        v175 = v215.size.width;
        v176 = v215.size.height;
        if (CGRectIsEmpty(v215))
        {
LABEL_548:
          v4 = 0;
        }

        else
        {
          v35 = [v3 _accessibilityParentView];
          v184 = [v35 window];
          [v35 convertRect:v184 toView:{v173, v174, v175, v176}];
          [v3 _accessibilityConvertSystemBoundedScreenRectToContextSpace:?];
          v186 = v185;
          v188 = v187;
          v190 = v189;
          v192 = v191;

          v143 = [MEMORY[0x1E696B098] valueWithRect:{v186, v188, v190, v192}];
LABEL_415:
          v4 = v143;
LABEL_480:
        }

        goto LABEL_20;
      case 3059:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityElementHasImage];
        goto LABEL_17;
      case 3064:
        v177 = [MEMORY[0x1E696AAE8] mainBundle];
        v178 = [v177 preferredLocalizations];
        v179 = [v178 firstObject];

        v4 = v179;
        goto LABEL_20;
      case 3065:
        v5 = [MEMORY[0x1E696AD98] numberWithLongLong:BSGetVersionedPID()];
        goto LABEL_19;
      case 3066:
        v6 = MEMORY[0x1E696AD98];
        v7 = [a1 _accessibilityApplicationIsRTL];
        goto LABEL_17;
      case 3067:
        v5 = [a1 _accessibilityRuntimeElementTransactionSummary];
        goto LABEL_19;
      case 3070:
        v5 = [a1 _accessibilityGetAllScrollViews];
        goto LABEL_19;
      case 3073:
        v5 = [a1 _accessibilityChildrenForContinuityDisplay];
        goto LABEL_19;
      case 3074:
        v4 = [a1 _accessibilityTraversalWindows];
        v74 = [(__CFString *)v4 ax_filteredArrayUsingBlock:&__block_literal_global_1155];
LABEL_466:
        v109 = v74;

LABEL_467:
        v4 = v109;
        goto LABEL_20;
      default:
        switch(a3)
        {
          case 2701:
            v17 = MEMORY[0x1E696AD98];
            v18 = [a1 _accessibilityEffectiveMediaAnalysisOptions];
LABEL_353:
            v5 = [v17 numberWithUnsignedInt:v18];
            goto LABEL_19;
          case 2702:
            v5 = [a1 _accessibilityDataSeriesName];
            goto LABEL_19;
          case 2703:
            v26 = MEMORY[0x1E696AD98];
            v27 = [a1 _accessibilityDataSeriesType];
LABEL_558:
            v5 = [v26 numberWithLong:v27];
            goto LABEL_19;
          case 2704:
            v81 = MEMORY[0x1E696AD98];
            [a1 _accessibilityDataSeriesSonificationDuration];
LABEL_560:
            v5 = [v81 numberWithDouble:?];
            goto LABEL_19;
          case 2705:
            v6 = MEMORY[0x1E696AD98];
            v7 = [a1 _accessibilityDataSeriesSupportsSummarization];
            goto LABEL_17;
          case 2706:
            v6 = MEMORY[0x1E696AD98];
            v7 = [a1 _accessibilityDataSeriesSupportsSonification];
            goto LABEL_17;
          case 2707:
            v6 = MEMORY[0x1E696AD98];
            v7 = [a1 _accessibilityDataSeriesIncludesTrendlineInSonification];
            goto LABEL_17;
          case 2709:
            [a1 _accessibilityMediaAnalysisFrame];
LABEL_374:
            v103 = MEMORY[0x1E696B098];
LABEL_375:
            v5 = [v103 valueWithRect:?];
            goto LABEL_19;
          case 2710:
            v5 = [a1 _accessibilityMediaAnalysisElement];
            goto LABEL_19;
          case 2711:
            v4 = [a1 _accessibilityChartDescriptor];
            v74 = [(__CFString *)v4 dictionaryRepresentation];
            goto LABEL_466;
          case 2712:
            v180 = [a1 _accessibilityChartElement];
            v181 = [v180 accessibilityChartDescriptor];
            v182 = [v181 identifier];
            v183 = [v182 UUIDString];

            v4 = v183;
            break;
          case 2713:
            v6 = MEMORY[0x1E696AD98];
            v7 = [a1 _accessibilitySupportsAudiographs];
            goto LABEL_17;
          case 2714:
            v5 = [a1 _accessibilityChartElement];
            goto LABEL_19;
          case 2717:
            v5 = [a1 _accessibilityPHAssetLocalIdentifier];
            goto LABEL_19;
          case 2718:
            v5 = [a1 _accessibilityChartStructureDescription];
            goto LABEL_19;
          case 2719:
            v6 = MEMORY[0x1E696AD98];
            v7 = [a1 _accessibilityIsPHAssetLocallyAvailable];
            goto LABEL_17;
          case 2720:
            v5 = [a1 _accessibilityPhotoLibraryURL];
            goto LABEL_19;
          case 2721:
            v5 = [a1 _accessibilityFBSceneIdentifier];
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
      v5 = [a1 _accessibilityTextMarkerRangeForSelection];
      goto LABEL_19;
    }

    if (a3 == 4005)
    {
      v13 = [a1 _accessibilitySelectedNSRangeForObject];
LABEL_32:
      v15 = v13;
      v16 = MEMORY[0x1E696B098];
LABEL_33:
      v5 = [v16 valueWithRange:{v15, v14}];
      goto LABEL_19;
    }

    if (a3 != 4006)
    {
      goto LABEL_20;
    }

    v6 = MEMORY[0x1E696AD98];
    v7 = [a1 _accessibilityHoverTypingShouldAdjustDockedMode];
    goto LABEL_17;
  }

  if (a3 == 4001)
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = [a1 _accessibilityLineStartPosition];
LABEL_30:
    v5 = [v11 numberWithInteger:v12];
    goto LABEL_19;
  }

  if (a3 == 4002)
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = [a1 _accessibilityLineEndPosition];
    goto LABEL_30;
  }

  v5 = [a1 _accessibilityTextMarkerRange];
LABEL_19:
  v4 = v5;
LABEL_20:

  return v4;
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
              [a1 _accessibilityDidChangeSonificationPlaybackPosition:?];
            }
          }
        }

        else if (a4 == 2716)
        {
          [a1 _accessibilitySonificationPlaybackStatusChanged:{objc_msgSend(v6, "unsignedIntegerValue")}];
        }
      }

      else if (a4 == 2208)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [a1 _accessibilitySetSelectedChildren:v7];
        }
      }

      else if (a4 == 2303)
      {
        [a1 _accessibilitySetCurrentWordInPageContext:v6];
      }
    }

    else if (a4 > 2017)
    {
      if (a4 == 2018)
      {
        objc_opt_class();
        v8 = __UIAccessibilityCastAsClass();
        v15 = [v8 objectForKeyedSubscript:@"focused"];
        v16 = [v15 BOOLValue];
        v17 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6988CF0]];
        [a1 _accessibilityHandleATFocused:v16 assistiveTech:v17];

        goto LABEL_57;
      }

      if (a4 == 2054)
      {
        [a1 _accessibilitySetAutoscrollTarget:v6];
      }
    }

    else
    {
      if (a4 == 2005)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v19 = [v7 rangeValue];
          [a1 _accessibilitySetSelectedTextRange:{v19, v20}];
          goto LABEL_58;
        }

        v8 = v7;
        v9 = [v8 firstObject];
        v10 = [v9 rangeValue];
        v12 = v11;

        v13 = [v8 lastObject];
        v14 = [v13 integerValue];

        if (v14 == 1)
        {
          AXSetSelectionModeVoiceOverSelectionMovement(1);
          [a1 _accessibilitySetSelectedTextRange:{v10, v12}];
          AXSetSelectionModeVoiceOverSelectionMovement(0);
        }

        else
        {
          [a1 _accessibilitySetSelectedTextRange:{v10, v12}];
        }

LABEL_57:

        goto LABEL_58;
      }

      if (a4 == 2006)
      {
        [a1 _accessibilitySetValue:v6];
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
          [a1 _accessibilitySetVoiceOverRTLOverride:{objc_msgSend(v7, "integerValue")}];
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
      [a1 _setAccessibilityFauxCollectionViewCellsDisabled:{objc_msgSend(v6, "BOOLValue")}];
    }

    else if (a4 == 5051)
    {
      [a1 _setAccessibilityFauxTableViewCellsDisabled:{objc_msgSend(v6, "BOOLValue")}];
    }
  }

  else if (a4 == 5064)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [a1 _accessibilityScrollAncestor];
      [v7 pointValue];
      [v18 accessibilityApplyScrollContent:0 sendScrollStatus:0 animated:?];
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
      [a1 _accessibilitySetAdditionalImportantScannerMenuItems:v8];
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 _accessibilitySetAdditionalImportantScannerMenuItems:v7];
    }
  }

LABEL_58:
}

- (id)_getAccessibilityAttributedString
{
  v1 = [a1 accessibilityLabel];
  v2 = [v1 _accessibilityAttributedLocalizedString];

  return v2;
}

- (id)_accessibilityRetrieveLocalizedStringKey
{
  v1 = [a1 _getAccessibilityAttributedString];
  v2 = [v1 attributeValueForKey:@"UIAccessibilityTokenLocalizedStringKey"];

  return v2;
}

- (id)_accessibilityRetrieveLocalizationBundleID
{
  v1 = [a1 _getAccessibilityAttributedString];
  v2 = [v1 attributeValueForKey:@"UIAccessibilityTokenLocalizedStringBundleID"];

  return v2;
}

- (id)_accessibilityRetrieveLocalizationBundlePath
{
  v1 = [a1 _getAccessibilityAttributedString];
  v2 = [v1 attributeValueForKey:@"UIAccessibilityTokenLocalizationBundlePath"];

  return v2;
}

- (id)_accessibilityRetrieveLocalizedStringTableName
{
  v1 = [a1 _getAccessibilityAttributedString];
  v2 = [v1 attributeValueForKey:@"UIAccessibilityTokenLocalizedStringTableName"];

  return v2;
}

- (uint64_t)_accessibilityInheritedTraits
{
  v2 = [a1 accessibilityTraits];
  v3 = [a1 accessibilityContainer];
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [v4 accessibilityTraits];
      v6 = [v4 accessibilityContainer];

      v2 |= v5;
      v4 = v6;
    }

    while (v6);
  }

  return v2;
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
  v2 = [a1 accessibilityTraits];

  return [a1 _accessibilityTraitsAsHumanReadableStrings:v2];
}

- (id)_accessibilityPreferredScrollActions
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 _accessibilityCanPerformAction:2009];
  v4 = [a1 _accessibilityCanPerformAction:2008];
  v5 = [a1 _accessibilityCanPerformAction:2007];
  v6 = [a1 _accessibilityCanPerformAction:2006];
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
  [a1 _accessibilityCustomActions];
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
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = a1;
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [v4 _accessibilityContextDescriptors];
      [v2 addObjectsFromArray:v5];

      v6 = [v4 accessibilityContainer];

      v4 = v6;
    }

    while (v6);
  }

  return v2;
}

- (id)_accessibilityBrailleMapsFromGraphData
{
  v40 = *MEMORY[0x1E69E9840];
  v16 = [a1 _accessibilityChartDescriptor];
  if (v16)
  {
    v20 = [MEMORY[0x1E6959540] connectedBrailleMap];
    if (v20)
    {
      v19 = [v16 yAxis];
      v15 = [v16 xAxis];
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
          [v15 lowerBound];
          v2 = v4;
          [v15 upperBound];
          v3 = v5;
        }
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = [v16 series];
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
            v10 = [v9 dataPoints];
            v11 = [v10 count];

            v12 = [v9 dataPoints];
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __66__NSObject_AXPrivCategory___accessibilityBrailleMapsFromGraphData__block_invoke;
            v21[3] = &unk_1E78AAFD8;
            v30 = v7;
            v27 = v11;
            v28 = v2;
            v29 = v3;
            v22 = v19;
            v23 = v20;
            v24 = v9;
            v25 = v33;
            v26 = v31;
            [v12 enumerateObjectsUsingBlock:v21];

            _Block_object_dispose(v31, 8);
            _Block_object_dispose(v33, 8);
          }

          v6 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v6);
      }

      v13 = v20;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_accessibilityBrailleMap
{
  v2 = [MEMORY[0x1E6959540] connectedBrailleMap];
  if (v2)
  {
    v3 = a1;
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      while (1)
      {
        v6 = [v5 accessibilityBrailleMapRenderer];
        if (v6)
        {
          break;
        }

        v7 = [v5 accessibilityContainer];

        v5 = v7;
        if (!v7)
        {
          goto LABEL_6;
        }
      }

      v9 = v6;
      (*(v6 + 16))(v6, v2);
      v8 = v2;
    }

    else
    {
LABEL_6:
      v8 = [v4 _accessibilityBrailleMapsFromGraphData];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setAccessibilityCustomContent:()AXPrivCategory
{
  v4 = [a3 copy];
  [a1 _accessibilitySetRetainedValue:v4 forKey:@"accessibilityCustomContent"];
}

- (id)accessibilityCustomContent
{
  v2 = [a1 _accessibilityGetBlockForAttribute:28];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2);
  }

  else
  {
    [a1 _accessibilityValueForKey:@"accessibilityCustomContent"];
  }
  v4 = ;

  return v4;
}

- (id)_accessibilityCustomContent
{
  v1 = a1;
  v2 = 0;
  if (!v1)
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
      v3 = [v1 accessibilityCustomContentBlock];
      if (v3)
      {
        break;
      }
    }

    v4 = [v1 accessibilityCustomContent];
    if (v4)
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

      v5 = [MEMORY[0x1E69DD258] viewControllerForView:v1];
      v4 = [v5 accessibilityCustomContent];

      if (v2)
      {
        goto LABEL_10;
      }
    }

    if (v4)
    {
      v2 = objc_opt_new();
    }

LABEL_10:
    [v2 axSafelyAddObjectsFromArray:v4];
    if (([v1 _accessibilityShouldIncludeParentCustomContent] & 1) == 0)
    {

      goto LABEL_14;
    }

    v6 = [v1 accessibilityContainer];

    v1 = v6;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v9 = v3;
  v7 = (*(v3 + 16))();

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
  [a1 accessibilityEnumerateAncestorsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)accessibilityDataTableCellElementForRow:()AXPrivCategory column:
{
  v6 = [a1 _accessibilityGetBlockForAttribute:5006];
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
  v2 = [a1 _accessibilityParentCollectionView];

  if (!v2)
  {
    v3 = [a1 _accessibilityParentTableView];

    if (!v3)
    {
      return 0x7FFFFFFFLL;
    }
  }

  v4 = [a1 _accessibilityAncestorIsKindOf:objc_opt_class()];
  v5 = [v4 _accessibilityIndexPathAsRange];

  return v5;
}

- (uint64_t)_accessibilityParentTableView
{
  v2 = objc_opt_class();

  return [a1 _accessibilityAncestorIsKindOf:v2];
}

- (uint64_t)_accessibilityParentCollectionView
{
  v2 = objc_opt_class();

  return [a1 _accessibilityAncestorIsKindOf:v2];
}

- (uint64_t)accessibilityRowRange
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [a1 _accessibilityGetBlockForAttribute:5003];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
    if (v4)
    {
      v5 = v4;
      v6 = [v4 rangeValue];

      goto LABEL_27;
    }
  }

  if ([a1 _accessibilityIsInTabBar])
  {
    v7 = [a1 _accessibilityTabBarAncestor];
    if (!v7)
    {
      v16 = AXLogAppAccessibility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = a1;
        _os_log_impl(&dword_1A9B83000, v16, OS_LOG_TYPE_INFO, "Found a tab bar item with no ancestor. Marking it as not a tab bar item, but this may indicate that views are being moved from tab bars to other superviews: %@", &v20, 0xCu);
      }

      [a1 _axSetCachedHasTabBarAncestor:MEMORY[0x1E695E110]];
      v15 = 0;
      v6 = 0x7FFFFFFFLL;
      goto LABEL_20;
    }

    v8 = +[UIAccessibilityElementTraversalOptions options];
    v9 = [v7 _accessibilityLeafDescendantsWithOptions:v8];

    if ([v9 count])
    {
      v10 = [v9 indexOfObject:a1];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = v10;
        v15 = [v9 count];
        goto LABEL_19;
      }

      v11 = AXLogAppAccessibility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = a1;
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
        v21 = v7;
        v12 = "Tried to get row range from a tab bar item, but there were no descendants for the tab bar: %@";
        v13 = v11;
        v14 = 12;
        goto LABEL_16;
      }
    }

    v15 = 0;
    v6 = 0x7FFFFFFFLL;
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v15 = 0;
  v6 = 0x7FFFFFFFLL;
LABEL_21:
  if (v6 == 0x7FFFFFFF && !v15)
  {
    v17 = [a1 _accessibilityValueForKey:@"_accessibilityRowRangeKey"];
    v18 = v17;
    if (v17)
    {
      v6 = [v17 rangeValue];
    }

    else
    {
      v6 = 0x7FFFFFFFLL;
    }
  }

LABEL_27:

  return v6;
}

- (void)_accessibilitySetRowRange:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696B098] valueWithRange:?];
  [a1 _accessibilitySetValue:v2 forKey:@"_accessibilityRowRangeKey" storageMode:0];
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
  [a1 accessibilityEnumerateAncestorsUsingBlock:v3];
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
  [a1 accessibilityEnumerateAncestorsUsingBlock:v3];
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
  [a1 accessibilityEnumerateAncestorsUsingBlock:v8];
  v6 = v10[4];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)_accessibilitySetShouldIncludeRowRangeInElementDescription:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _accessibilitySetUserDefinedShouldIncludeRowRangeInElementDescription:v2];
}

- (uint64_t)_accessibilityShouldIncludeRowRangeInElementDescription
{
  v2 = [a1 _accessibilityUserDefinedShouldIncludeRowRangeInElementDescription];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v5 = [a1 _iosAccessibilityAttributeValue:2004];
    v6 = [v5 unsignedIntegerValue];

    if (((UIAccessibilityTraitRadioButton | *MEMORY[0x1E69DDA28] | *MEMORY[0x1E69DD9D8] | UIAccessibilityTraitTabButton) & v6) == 0)
    {
      v7 = *MEMORY[0x1E6989268];
      v8 = *MEMORY[0x1E6989268] & v6;
      if (((*MEMORY[0x1E69DD9A8] | *MEMORY[0x1E69DD9B8]) & v6) != 0)
      {
        if (v8 != v7 || ([a1 _accessibilityContainerTypes], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", &unk_1F1DC2710), v9, (v10 & 1) == 0))
        {
          v13 = 0;
          [a1 _accessibilityRowRangeFromTableOrCollectionView:&v13];
          v4 = v13 ^ 1;
          goto LABEL_12;
        }
      }

      else if (v8 == v7)
      {
        v11 = [a1 _accessibilityContainerTypes];
        v4 = [v11 containsObject:&unk_1F1DC2728];

        goto LABEL_12;
      }

      v4 = 0;
      goto LABEL_12;
    }

    v4 = 1;
  }

LABEL_12:

  return v4 & 1;
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
  [a1 accessibilityEnumerateAncestorsUsingBlock:v3];
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)accessibilityColumnRange
{
  v1 = [a1 _accessibilityGetBlockForAttribute:5002];
  v2 = v1;
  if (v1 && ((*(v1 + 16))(v1), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 rangeValue];
  }

  else
  {
    v5 = 0x7FFFFFFFLL;
  }

  return v5;
}

- (id)_accessibilityTableViewCellContentSubviews
{
  objc_opt_class();
  v0 = __UIAccessibilityCastAsClass();
  v1 = [v0 contentView];
  v2 = [v1 subviews];

  return v2;
}

- (id)_accessibilityCollectionViewCellContentSubviews
{
  objc_opt_class();
  v0 = __UIAccessibilityCastAsClass();
  v1 = [v0 contentView];
  v2 = [v1 subviews];

  return v2;
}

- (BOOL)_accessibilityIsInTableCell
{
  v1 = [a1 _accessibilityAncestorIsKindOf:objc_opt_class()];
  v2 = v1 != 0;

  return v2;
}

- (BOOL)_accessibilityIsInCollectionCell
{
  v1 = [a1 _accessibilityAncestorIsKindOf:objc_opt_class()];
  v2 = v1 != 0;

  return v2;
}

- (id)_accessibilityElementTextualContent
{
  v2 = [a1 _accessibilityFindAncestor:&__block_literal_global_1272 startWithSelf:1];
  if (v2 || ([a1 _accessibilityContainerTypes], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "containsObject:", &unk_1F1DC2710), v18, v19) && (objc_msgSend(a1, "safeValueForKey:", @"_accessibilityTableAncestor"), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = [v2 accessibilityRowCount];
    v5 = [v3 accessibilityColumnCount];
    v24 = v4;
    if (v4)
    {
      v6 = v5;
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
            v12 = [v3 accessibilityElementForRow:v7 andColumn:{i, v21, v23}];
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
    v3 = [a1 accessibilityLabel];
    v22 = [a1 accessibilityValue];
    v8 = __UIAXStringForVariables();
  }

  return v8;
}

- (void)_accessibilitySetObscuredScreenAllowedViews:()AXPrivCategory
{
  v4 = _Block_copy(aBlock);
  [a1 _accessibilitySetRetainedValue:v4 forKey:@"_accessibilitySetObscuredScreenAllowedViews"];
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v1 = [a1 _accessibilityValueForKey:@"_accessibilitySetObscuredScreenAllowedViews"];
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
  v1 = [a1 _accessibilityParentView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 window];
  }

  v3 = v2;
  if ([v2 safeBoolForKey:@"_isHostedInAnotherProcess"] && objc_msgSend(v3, "_accessibilityRemotePid") >= 1)
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
  v1 = [a1 accessibilityContainer];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  do
  {
    v3 = [v2 _accessibilityUsesSpecialKeyboardDismiss];
    if (v3)
    {
      break;
    }

    v4 = [v2 accessibilityContainer];

    v2 = v4;
  }

  while (v4);

  return v3;
}

- (id)_accessibilityWindowScene
{
  v1 = [a1 _accessibilityWindow];
  v2 = [v1 windowScene];

  return v2;
}

- (id)_accessibilityWindowSceneIdentifier
{
  v1 = [a1 _accessibilityWindow];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 windowScene];
    v4 = [v3 _accessibilityWindowSceneIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_accessibilityFBSceneIdentifier
{
  v1 = [a1 _accessibilityWindowScene];
  v2 = [v1 _accessibilityFBSceneIdentifier];

  return v2;
}

- (uint64_t)_accessibilityContextId
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E69DD2E8] _applicationKeyWindow];
    v3 = [v2 _accessibilityContextId];
  }

  else
  {
    v2 = [a1 _accessibilityParentView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v2;
    }

    else
    {
      v4 = [v2 window];
    }

    v5 = v4;
    v3 = [v4 _accessibilityContextId];
  }

  return v3;
}

- (id)_accessibilityApplicationWindowContextIDs
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] array];
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
        [v0 axSafelyAddObject:v6];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  return v0;
}

- (uint64_t)_accessibilityDisplayId
{
  v1 = [a1 _accessibilityWindow];
  v2 = [v1 screen];
  v3 = [v2 _integerDisplayID];

  v4 = [*MEMORY[0x1E69DDA98] _iosAccessibilityAttributeValue:3075];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 intValue];
      if (v5 <= 0)
      {
        v3 = v3;
      }

      else
      {
        v3 = v5;
      }
    }
  }

  return v3;
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
    v4 = [v3 lastPathComponent];
    v5 = [v4 stringByDeletingPathExtension];

    v6 = [v5 rangeOfString:@"@@"];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [v5 substringToIndex:v6];

      v5 = v7;
    }

    if ([v5 length])
    {
      v8 = v5;
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
  v0 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v1 = [v0 currentInputMode];
  v2 = [v1 identifierWithLayouts];

  return v2;
}

- (uint64_t)_accessibilityFKAShouldProcessChildren
{
  v1 = [a1 _accessibilityValueForKey:@"AXFKAShouldProcessChildren"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)_accessibilitySetFKAShouldProcessChildren:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _accessibilitySetRetainedValue:v2 forKey:@"AXFKAShouldProcessChildren"];
}

- (id)_accessibilityDefaultFocusGroupIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@:%p", v4, a1];

  return v5;
}

- (id)_accessibilityKeyCommands
{
  v27[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 accessibilityTraits];
  v4 = MEMORY[0x1E69DDF30];
  v5 = MEMORY[0x1E69DDE90];
  v6 = MEMORY[0x1E69DDF10];
  v7 = MEMORY[0x1E69DDF28];
  if ((*MEMORY[0x1E69DD9A8] & v3) != 0)
  {
    v8 = [a1 _accessibilityIsVerticalAdjustableElement];
    v9 = [a1 _accessibilityIsRTL];
    v10 = *v6;
    if (v9)
    {
      v11 = *v6;
    }

    else
    {
      v11 = *v7;
    }

    if (v9)
    {
      v10 = *v7;
    }

    if (v8)
    {
      v12 = *v4;
    }

    else
    {
      v12 = v11;
    }

    v13 = *v5;
    if (!v8)
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

  if ([a1 _accessibilityShouldIncludeArrowKeyCommandsForDirectionalFocusMovement])
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
  if ([a1 isAccessibilityElement] && (objc_msgSend(a1, "isAccessibilityOpaqueElementProvider") & 1) == 0)
  {
    v2 = a1;
  }

  else if ([a1 _accessibilityHasOrderedChildren])
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
    [a1 accessibilityEnumerateContainerElementsUsingBlock:v6];
    v2 = [v8[5] _accessibilityElementToFocusForAppearanceScreenChange];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v3 = [a1 _accessibilitySortedElementsWithin];
    v4 = [v3 firstObject];

    v2 = [v4 _accessibilityElementToFocusForAppearanceScreenChange];
  }

  return v2;
}

- (uint64_t)_accessibilityIsChartElement
{
  v2 = [a1 _accessibilityStoredChartDescriptor];

  if (v2 || ([a1 _accessibilitySupportsChartsV2] & 1) != 0)
  {
    return 1;
  }

  v5 = [a1 _accessibilityGetBlockForAttribute:30];
  v6 = v5;
  if (v5 && ((*(v5 + 16))(v5), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v3 = 1;
  }

  else
  {
    v3 = [a1 conformsToProtocol:&unk_1F1E1E130];
  }

  return v3;
}

- (id)_accessibilityChartDescriptor
{
  v2 = [a1 _accessibilityGetBlockForAttribute:30];
  v3 = v2;
  if (v2)
  {
    v4 = (*(v2 + 16))(v2);
  }

  else
  {
    v5 = [a1 _accessibilityChartElement];
    v4 = [v5 _accessibilityStoredChartDescriptor];
    if (!v4)
    {
      v4 = [v5 accessibilityChartDescriptor];
    }
  }

  return v4;
}

- (id)_accessibilityChartStructureDescription
{
  v1 = [a1 _accessibilityChartElement];
  v2 = [v1 _accessibilityStoredChartDescriptor];
  if (!v2)
  {
    v2 = [v1 accessibilityChartDescriptor];
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v4 = UIKitAccessibilityLocalizedString(@"audiograph.axis.description.x");
  v25 = UIKitAccessibilityLocalizedString(@"audiograph.axis.description.y");
  v5 = UIKitAccessibilityLocalizedString(@"audiograph.series.count");
  v6 = [v2 series];
  v7 = [v6 count];

  v8 = [v2 xAxis];
  v9 = [v8 title];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [v2 xAxis];
    v23 = [v11 title];
    v12 = AXCFormattedString();

    [v3 addObject:{v12, v23}];
  }

  v13 = [v2 yAxis];
  if (v13)
  {
    v14 = v13;
    v15 = [v2 yAxis];
    v16 = [v15 title];
    v17 = [v16 length];

    if (v17)
    {
      v18 = [v2 yAxis];
      v24 = [v18 title];
      v19 = AXCFormattedString();

      [v3 addObject:{v19, v24}];
    }
  }

  v20 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v5, v7];
  [v3 addObject:v20];
  v21 = [v3 componentsJoinedByString:{@", "}];

  return v21;
}

- (uint64_t)_accessibilityShouldUseHostContextIDForTap
{
  v1 = [a1 _accessibilityGetBlockForAttribute:5007];
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
  v1 = [a1 _accessibilityGetBlockForAttribute:5008];
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
  v1 = [a1 _accessibilityParentView];
  v2 = [v1 safeUnsignedIntForKey:@"_secureName"];

  return v2;
}

- (BOOL)_accessibilitySupportsAudiographs
{
  v1 = [a1 _accessibilityChartElement];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)_accessibilityScrollAcrossPageBoundaries
{
  v1 = [a1 _accessibilityUserDefinedScrollAcrossPageBoundaries];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)_accessibilitySetScrollAcrossPageBoundaries:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _accessibilitySetUserDefinedScrollingEnabled:v2];
}

- (void)_accessibilitySetAllowedPagingOverlap:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [a1 _accessibilitySetRetainedValue:v2 forKey:@"_accessibilityAllowedPagingOverlap"];
}

- (BOOL)_accessibilityDidSetOpaqueElementProvider
{
  v1 = [a1 _accessibilityValueForKey:@"IsOpaqueProvider"];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)_accessibilityWantsOpaqueElementProviders
{
  if ([a1 _accessibilityShouldIgnoreOpaqueElementProviders])
  {
    return 0;
  }

  if (!UIAccessibilityIsSwitchControlRunning() && (!_AXSAutomationEnabled() || UIAccessibilityIsVoiceOverRunning()))
  {
    return 1;
  }

  return [a1 _accessibilityBoolValueForKey:@"WantsOpaqueProviders"];
}

- (uint64_t)isAccessibilityOpaqueElementProvider
{
  v1 = [a1 _accessibilityValueForKey:@"IsOpaqueProvider"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_accessibilityOpaqueElementParent
{
  v1 = [a1 accessibilityContainer];
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    do
    {
      if ([v2 isAccessibilityOpaqueElementProvider])
      {
        v4 = v2;

        v3 = v4;
      }

      v5 = [v2 accessibilityContainer];

      v2 = v5;
    }

    while (v5);
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
    v3 = [a1 _accessibilitySortedElementsWithinWithOptions:v2];
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = [a1 _accessibilityFirstOpaqueElementWithOptions:v2];
  }

  return v4;
}

- (id)_accessibilityFirstOpaqueElementWithOptions:()AXPrivCategory
{
  v4 = a3;
  if (__72__NSObject_AXPrivCategory___accessibilityFirstOpaqueElementWithOptions___block_invoke())
  {
    v5 = [a1 _accessibilityFirstOpaqueElement];
  }

  else
  {
    v6 = [a1 _accessibilitySortedElementsWithinWithOptions:v4];
    v5 = [v6 firstObject];
  }

  return v5;
}

- (id)_accessibilityFirstOpaqueElementForFocus
{
  v2 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
  if (__68__NSObject_AXPrivCategory___accessibilityFirstOpaqueElementForFocus__block_invoke())
  {
    [a1 _accessibilityFirstOpaqueElementWithOptions:v2];
  }

  else
  {
    [a1 _accessibilityFirstOpaqueElementForFocusWithOptions:v2];
  }
  v3 = ;

  return v3;
}

- (id)_accessibilityFirstOpaqueElementForFocusWithOptions:()AXPrivCategory
{
  v4 = a3;
  if (__80__NSObject_AXPrivCategory___accessibilityFirstOpaqueElementForFocusWithOptions___block_invoke())
  {
    [a1 _accessibilityFirstOpaqueElementForFocus];
  }

  else
  {
    [a1 _accessibilityFirstOpaqueElementWithOptions:v4];
  }
  v5 = ;

  return v5;
}

- (id)_accessibilityLastOpaqueElement
{
  v2 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
  if (__59__NSObject_AXPrivCategory___accessibilityLastOpaqueElement__block_invoke())
  {
    v3 = [a1 _accessibilitySortedElementsWithinWithOptions:v2];
    v4 = [v3 lastObject];
  }

  else
  {
    v4 = [a1 _accessibilityLastOpaqueElementWithOptions:v2];
  }

  return v4;
}

- (id)_accessibilityLastOpaqueElementWithOptions:()AXPrivCategory
{
  v4 = a3;
  if (__71__NSObject_AXPrivCategory___accessibilityLastOpaqueElementWithOptions___block_invoke())
  {
    v5 = [a1 _accessibilityLastOpaqueElement];
  }

  else
  {
    v6 = [a1 _accessibilitySortedElementsWithinWithOptions:v4];
    v5 = [v6 lastObject];
  }

  return v5;
}

- (void)_accessibilityNextOpaqueElementsForTechnology:()AXPrivCategory startElement:direction:searchType:range:shouldScrollToVisible:honorsGroups:
{
  v41 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  if (!v12)
  {
    v12 = [a1 _accessibilityCurrentlyFocusedElementForTechnology:v11];
    [v12 _accessibilityHandleATFocused:1 assistiveTech:v11];
  }

  v33 = v11;
  v13 = AXLogOpaqueElements();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [NSObject(AXPrivCategory) _accessibilityNextOpaqueElementsForTechnology:startElement:direction:searchType:range:shouldScrollToVisible:honorsGroups:];
  }

  v14 = a1;
  v15 = v14;
  if (v12)
  {
    v15 = [v12 _accessibilityFindAncestor:&__block_literal_global_1383 startWithSelf:0];

    if (!v15)
    {
      v15 = v14;
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

    if (v21 == v14 || v21 == 0)
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
    v28 = [v20 _accessibilityOpaqueElementParent];
    [v28 _accessibilityDidFocusOnOpaqueElement:v20 technology:v33];
  }

  v29 = v20;

  return v20;
}

- (id)_accessibilityMoveFocusToNextOpaqueElementForTechnology:()AXPrivCategory direction:searchType:range:shouldScrollToVisible:honorsGroups:
{
  v15 = a3;
  BYTE1(v18) = a9;
  LOBYTE(v18) = a8;
  v16 = [a1 _accessibilityNextOpaqueElementsForTechnology:v15 startElement:0 direction:a4 searchType:a5 range:a6 shouldScrollToVisible:a7 honorsGroups:v18];
  [v16 _accessibilityHandleATFocused:1 assistiveTech:v15];

  return v16;
}

- (void)_accessibilitySetOpaqueElementScrollsContentIntoView:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 accessibilitySetUserDefinedOpaqueElementScrollsContentIntoView:v2];
}

- (uint64_t)_accessibilityOpaqueElementScrollsContentIntoView
{
  v1 = [a1 accessibilityUserDefinedOpaqueElementScrollsContentIntoView];
  v2 = [v1 BOOLValue];

  return v2;
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
      [a1 _accessibilityOffsetForOpaqueElementDirection:a3];
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
    if ([a1 _accessibilityApplicationIsRTL])
    {
      [a1 _accessibilityRightOpaqueScrollViewContentOffsetLimit];
    }

    else
    {
      [a1 _accessibilityLeftOpaqueScrollViewContentOffsetLimit];
    }

    v8 = v6;
  }

  else
  {
    [v5 contentSize];
    [v5 bounds];
    if ([a1 _accessibilityApplicationIsRTL])
    {
      [a1 _accessibilityLeftOpaqueScrollViewContentOffsetLimit];
    }

    else
    {
      [a1 _accessibilityRightOpaqueScrollViewContentOffsetLimit];
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
  v11 = [a1 _accessibilityApplicationIsRTL];
  v12 = -v4;
  if (v10 >= -v4)
  {
    v12 = v10;
  }

  if (v11)
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
  if ([a1 _accessibilityApplicationIsRTL])
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
  v9 = [a1 _accessibilityTouchContainer];
  v10 = [a1 _accessibilityFindElementInDirection:a3 searchType:a4 allowOutOfBoundsChild:a5 startingTouchContainer:v9 honorGroups:0];

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

  if ([a1 isAccessibilityElement])
  {
    v13 = [a1 accessibilityTraits];
    if ((UIAccessibilityTraitSpacer & ~v13) == 0)
    {
LABEL_5:
      v14 = 0;
      goto LABEL_87;
    }

    v17 = a1;
    v18 = v17;
    if (a4 <= 10)
    {
      if (a4 == 1)
      {
        v30 = [v17 accessibilityTraits];
        v31 = MEMORY[0x1E6989060];
      }

      else
      {
        if (a4 != 10)
        {
          goto LABEL_78;
        }

        v30 = [v17 accessibilityTraits];
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
          v46 = [v18 _accessibilityTouchContainer];

          if (v46 == v45)
          {
            goto LABEL_5;
          }

          goto LABEL_79;
        }

        if (a4 == 36)
        {
          v19 = [v17 _accessibilityIsSpeakThisElement];

          if (!v19)
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

        v15 = v18;
LABEL_81:
        v14 = v15;
        goto LABEL_87;
      }

      v30 = [v17 accessibilityTraits];
      v31 = MEMORY[0x1E69890A8];
    }

    v47 = *v31 & ~v30;

    if (v47)
    {
      goto LABEL_5;
    }

    goto LABEL_79;
  }

  if (v7 && [a1 _accessibilityIsGroupedParent])
  {
    v15 = a1;
    goto LABEL_81;
  }

  v58 = a3;
  v56 = [a1 _accessibilityHasOrderedChildren];
  if (v56)
  {
    v16 = [a1 accessibilityElementCount];
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

        v24 = [v23 leafNodePredicate];
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __133__NSObject_AXPrivCategory___accessibilityFindElementInDirection_searchType_allowOutOfBoundsChild_startingTouchContainer_honorGroups___block_invoke_3;
        v66[3] = &unk_1E78AAF48;
        v66[4] = a1;
        v25 = v24;
        v67 = v25;
        [v23 setLeafNodePredicate:v66];
        v26 = [a1 _accessibilityGroupedParent];
        v7 = v26;
        if (v26)
        {
          v70[0] = v26;
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

      v32 = [a1 _accessibilitySortedElementsWithinWithOptions:v23];
      v16 = [v32 count];

      a3 = v58;
      goto LABEL_29;
    }

    v16 = 0;
  }

  v32 = 0;
LABEL_29:
  if (a3 == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = v16 - 1;
  }

  v34 = v33 < v16;
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
    if ([a1 _accessibilityHasOrderedChildren])
    {
      [a1 accessibilityElementAtIndex:v33];
    }

    else
    {
      [v32 objectAtIndex:v33];
    }
    v36 = ;
    if (v36 == a1 || UIAccessibilityIsWidgetExtension() && ([v36 _accessibilityIsFrameOutOfBounds] & 1) != 0)
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
    if (!v56)
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
        v42 = v56;
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
    v44 = v33 < v16;
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
  v5 = a1;
  if (v5)
  {
    v6 = v5;
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
    v2 = [a1 _accessibilitySortedElementsWithinWithOptions:v3];
  }

  return v2;
}

- (id)_accessibilitySortedElementsWithinWithOptions:()AXPrivCategory
{
  if (__74__NSObject_AXPrivCategory___accessibilitySortedElementsWithinWithOptions___block_invoke())
  {
    v2 = [a1 _accessibilitySortedElementsWithin];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_accessibilityFocusAbsoluteFirstLastOpaqueElement:()AXPrivCategory technology:honorsGroups:shouldAlwaysScroll:
{
  if (([a1 isAccessibilityOpaqueElementProvider] & 1) == 0)
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
  v9 = [a1 _accessibilitySearchSubtreesAfterChildElement:0 direction:v8 searchType:0 allowOutOfBoundsChild:0 range:0x7FFFFFFFLL shouldScrollToVisible:0 honorGroups:v11 updatedContainer:0];
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

    v19 = [v18 leafNodePredicate];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __174__NSObject_AXPrivCategory___accessibilitySearchSubtreesAfterChildElement_direction_searchType_allowOutOfBoundsChild_range_shouldScrollToVisible_honorGroups_updatedContainer___block_invoke;
    v60[3] = &unk_1E78AAF48;
    v60[4] = a1;
    v61 = v19;
    v20 = v19;
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
      v21 = [a1 _axNavigationalGroupParentOfChild:v15];
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = a1;
    }

    v62[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:{1, a11}];
    [v18 setAllowedElementsForTraversal:v23];
  }

  else
  {
    if ([a1 _accessibilityHasOrderedChildren])
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
  if (v15 != a1)
  {
    if (a5 == 1)
    {
      v24 = [a1 _accessibilityOpaqueHeaderElementInDirection:a4 childElement:v15];
      v25 = AXLogOpaqueElements();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [NSObject(AXPrivCategory) _accessibilitySearchSubtreesAfterChildElement:direction:searchType:allowOutOfBoundsChild:range:shouldScrollToVisible:honorGroups:updatedContainer:];
      }

      if (v24)
      {
        v26 = [MEMORY[0x1E695DFB0] null];
        v27 = [v24 isEqual:v26];

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

    v29 = [v15 _accessibilityTouchContainer];
    if ((([a1 _accessibilityHasOrderedChildren]| a9 ^ 1) & 1) == 0)
    {
      if (v15)
      {
        [v15 _accessibilityScrollToVisibleForNextElementRetrieval:a4];
      }

      else
      {
        [a1 _accessibilityOpaqueElementScrollToDirection:a4];
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
      v31 = [v18 includeAncestorsOfSelfInSiblingMatch];
      if ((v31 & 1) == 0)
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
      v47 = v29;
      v52 = a10;
      v32 = [v15 _accessibilityEnumerateSiblingsWithParent:&v53 options:v18 usingBlock:v46];
      v33 = v53;
      [v18 setIncludeAncestorsOfSelfInSiblingMatch:v31];
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

    if (![a1 isAccessibilityOpaqueElementProvider])
    {
LABEL_49:
      if (v55[5])
      {
        v33 = 0;
        goto LABEL_51;
      }

      v43 = [a1 _accessibilityFindElementInDirection:a4 searchType:a5 allowOutOfBoundsChild:a6 startingTouchContainer:v29 honorGroups:a10];
      v33 = 0;
      v35 = v55[5];
      v55[5] = v43;
LABEL_40:

LABEL_51:
      if (v45)
      {
        if (v33)
        {
          if (v33 != a1)
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
          v33 = a1;
        }

        v41 = v33;
        *v45 = v33;
      }

      v28 = v55[5];

      _Block_object_dispose(&v54, 8);
      goto LABEL_60;
    }

    if (a4 == 2)
    {
      v36 = [a1 _accessibilityLastOpaqueElementWithOptions:v18];
    }

    else
    {
      if (a4 != 1)
      {
        v37 = 0;
        goto LABEL_48;
      }

      v36 = [a1 _accessibilityFirstOpaqueElementWithOptions:v18];
    }

    v37 = v36;
LABEL_48:
    v38 = [v37 _accessibilityFindElementInDirection:a4 searchType:a5 allowOutOfBoundsChild:a6 startingTouchContainer:v29 honorGroups:a10];
    v39 = v55[5];
    v55[5] = v38;

    goto LABEL_49;
  }

  v30 = AXLogOpaqueElements();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [NSObject(AXPrivCategory) _accessibilitySearchSubtreesAfterChildElement:direction:searchType:allowOutOfBoundsChild:range:shouldScrollToVisible:honorGroups:updatedContainer:];
  }

  v28 = [a1 _accessibilityFirstOpaqueElementWithOptions:v18];
LABEL_60:

  return v28;
}

- (id)_accessibilityVisibleOpaqueElementsHonoringGroups:()AXPrivCategory sorted:
{
  v23 = *MEMORY[0x1E69E9840];
  if (([a1 isAccessibilityOpaqueElementProvider] & 1) == 0)
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
    v21[4] = a1;
    [v7 setLeafNodePredicate:v21];
  }

  [v8 setShouldOnlyIncludeElementsWithVisibleFrame:1];
  [v8 setSorted:a4];
  v9 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [a1 _accessibilitySortedElementsWithinWithOptions:{v8, 0}];
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
        [v9 addObjectsFromArray:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)_accessibilityDescendantOfType:()AXPrivCategory
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__NSObject_AXPrivCategory___accessibilityDescendantOfType___block_invoke;
  v5[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v5[4] = a3;
  v3 = [a1 _accessibilityFindDescendant:v5];

  return v3;
}

- (BOOL)_accessibilityHasDescendantOfType:()AXPrivCategory
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__NSObject_AXPrivCategory___accessibilityHasDescendantOfType___block_invoke;
  v6[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v6[4] = a3;
  v3 = [a1 _accessibilityFindDescendant:v6];
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
  v6 = [a1 _accessibilityFindDescendant:v8];

  return v6;
}

- (BOOL)_accessibilityIsViewDescendantOfElement:()AXPrivCategory
{
  v4 = a3;
  v5 = a1;
  v6 = v5;
  for (i = v5 != 0; v6 != v4 && v6; i = v6 != 0)
  {
    v8 = v6;
    v6 = [v6 superview];
  }

  return i;
}

- (BOOL)_accessibilityIsDescendantOfElement:()AXPrivCategory
{
  v6 = a3;
  v7 = a1;
  NSClassFromString(&cfstr_Uiaccessibilit_6.isa);
  NSClassFromString(&cfstr_Uitableviewcel.isa);
  NSClassFromString(&cfstr_Uicollectionvi.isa);
  v8 = v7 != 0;
  if (v7 != v6 && v7)
  {
    while (1)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = [v6 safeValueForKey:@"view"];

        if (v9 == v7)
        {
          break;
        }
      }

      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v3 = [v6 safeValueForKey:@"tableViewCell"];
        v11 = v3;
        if (v3 == v7)
        {
          goto LABEL_32;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
      {
        v12 = [v7 safeValueForKey:@"tableViewCell"];

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
        if (v4 == v7)
        {
LABEL_32:

          break;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
      {
        v14 = [v7 safeValueForKey:@"cell"];

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

      v15 = [v7 accessibilityContainer];
      v16 = AXRemoteElementFromObject();

      if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v17 = [v7 superview];
      }

      else
      {
        v17 = [v7 accessibilityContainer];
      }

      v18 = v17;

      v8 = v18 != 0;
      if (v18 != v6)
      {
        v7 = v18;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_35;
    }

    v8 = 1;
  }

  v18 = v7;
LABEL_35:

  return v8;
}

- (id)_accessibilityFindViewAncestor:()AXPrivCategory startWithSelf:
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (!a4 ? ([a1 superview], v7 = objc_claimAutoreleasedReturnValue()) : (v7 = a1), (v8 = v7) != 0))
  {
    while (1)
    {
      v11 = 0;
      if (v6[2](v6, v8, &v11))
      {
        v9 = v8;
        goto LABEL_13;
      }

      if (v11 == 1)
      {
        break;
      }

      v9 = [v8 superview];

      v8 = v9;
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    v9 = 0;
LABEL_13:
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (id)_accessibilityViewAncestorIsKindOf:()AXPrivCategory
{
  if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = a1;
    if (v4)
    {
      do
      {
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v5 = [v4 superview];

        v4 = v5;
      }

      while (v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
    v4 = [a1 _accessibilityFindAncestor:v6 startWithSelf:0];
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
  v5 = a1;
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      v8 = 0;
      v4[2](v4, v6, &v8);
      if (v8 == 1)
      {
        break;
      }

      v7 = [v6 accessibilityContainer];

      v6 = v7;
      if (!v7)
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
    v9 = a1;
  }

  else
  {
    v9 = [a1 accessibilityContainer];
  }

  v10 = v9;
  if (v9)
  {
    v11 = 0;
    do
    {
      if (v8[2](v8, v10))
      {
        v12 = v10;

        v11 = v12;
        if (!a5)
        {
          break;
        }
      }

      v12 = [v10 accessibilityContainer];

      v10 = v12;
    }

    while (v12);
  }

  else
  {
    v12 = 0;
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
  v6[4] = a1;
  v7 = a4;
  v4 = [a1 _accessibilityFindFirstAXDescendantPassingTest:a3 byYieldingElements:v6];

  return v4;
}

- (id)_accessibilityFindViewControllerDescendantOfType:()AXPrivCategory
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__NSObject_AXPrivCategory___accessibilityFindViewControllerDescendantOfType___block_invoke;
  v5[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v5[4] = a3;
  v3 = [a1 _accessibilityFindViewControllerDescendant:v5];

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
  v6 = [a1 _accessibilityFindAncestor:v9 startWithSelf:1];
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
  v3 = [a1 _accessibilityFindViewControllerAncestor:v5];

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
  v7 = [a1 _accessibilityFindSubviewDescendant:v9];

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
  v8 = [a1 _accessibilityFindSubviewDescendant:v10];

  return v8;
}

- (void)_accessibilitySetAuditIssueDict:()AXPrivCategory
{
  v5 = a3;
  v4 = [a1 _accessibilityValueForKey:@"auditIssueSetAssociatedObjectKey"];
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    [a1 _accessibilitySetRetainedValue:v4 forKey:@"auditIssueSetAssociatedObjectKey"];
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
    v23[4] = a1;
    [v7 setLeafNodePredicate:v23];
  }

  [v8 setShouldOnlyIncludeElementsWithVisibleFrame:1];
  v9 = [a1 _accessibilityLeafDescendantsWithOptions:v8];
  v10 = v9;
  if (a3)
  {
    v11 = objc_opt_new();
    v20 = v10;
    v12 = [MEMORY[0x1E695DF70] axArrayWithPossiblyNilArrays:{1, v10}];
    while ([v12 count])
    {
      v13 = [v12 ax_dequeueObject];
      [v11 axSafelyAddObject:v13];
      v14 = +[UIAccessibilityElementTraversalOptions options];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __94__NSObject_AXPrivCategory___accessibilityVisibleElementsHonoringGroups_respectGroupedParents___block_invoke_2;
      v21[3] = &unk_1E78AA760;
      v15 = v13;
      v22 = v15;
      [v14 setLeafNodePredicate:v21];
      [v8 setShouldOnlyIncludeElementsWithVisibleFrame:1];
      v16 = [v15 _accessibilityLeafDescendantsWithOptions:v14];
      v17 = [v16 firstObject];
      v18 = [v17 isEqual:v15];

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
  v1 = a1;
  if (v1)
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

      v4 = [v1 accessibilityContainer];

      v1 = v4;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v1 = v1;
  }

LABEL_7:

  return v1;
}

- (id)_accessibilityOrderedChildrenContainerWithinElements:()AXPrivCategory
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 accessibilityContainer];
  if (v5)
  {
    while (([v5 _accessibilityHasOrderedChildren] & 1) == 0)
    {
      v6 = [v5 accessibilityContainer];

      v5 = v6;
      if (!v6)
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
              v13 = [v5 _accessibilityParentView];
              v14 = [v13 _accessibilityIsViewDescendantOfElement:v12];

              if (v14)
              {
                goto LABEL_18;
              }
            }

            else if ([v5 _accessibilityIsDescendantOfElement:{v12, v19}])
            {
              goto LABEL_18;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v9);
      }

      v7 = v5;
      v5 = 0;
LABEL_18:
    }
  }

LABEL_19:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v5 safeValueForKey:@"_accessibilityMockParent"];
    v16 = v15;
    if (v15)
    {
      v17 = v15;

      v5 = v17;
    }
  }

  return v5;
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

  v8 = [a1 _accessibilityLeafDescendantsWithOptions:v7];
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
  [a1 _accessibilitySetRetainedValue:v2 forKey:@"_AX_Size"];
}

- (void)_accessibilitySetAllowedGeometryOverlap:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [a1 _accessibilitySetRetainedValue:v2 forKey:@"UIAccessibilityStorageKeyAllowedGeometryOverlap"];
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

  v3 = [a1 _accessibilityValueForKey:@"UIAccessibilityStorageKeyAllowedGeometryOverlap"];
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
  v2 = [a1 _accessibilityValueForKey:@"UIAccessibilityStorageKeyOverridesInvisibility"];

  if (!v2)
  {
    return 0;
  }

  return [a1 _accessibilityBoolValueForKey:@"UIAccessibilityStorageKeyOverridesInvisibility"];
}

- (uint64_t)_accessibilitySortPriorityWithReturningElement:()AXPrivCategory
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p-sortPriorityWithView", a1];
  v6 = [AXServerCache objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [AXServerCache objectForKeyedSubscript:v5];
    *a3 = [v7 objectForKeyedSubscript:@"view"];

    v8 = [AXServerCache objectForKeyedSubscript:v5];
    v9 = [v8 objectForKeyedSubscript:@"priority"];
    v10 = [v9 integerValue];
  }

  else
  {
    v10 = UIAccessibilityDefaultSortPriority;
    v8 = a1;
    if (v8)
    {
      while (1)
      {
        v10 = [v8 _accessibilitySortPriority];
        if (v10 != UIAccessibilityDefaultSortPriority)
        {
          break;
        }

        v11 = [v8 accessibilityContainer];

        v8 = v11;
        if (!v11)
        {
          goto LABEL_8;
        }
      }

      v12 = v8;
      *a3 = v8;
    }

LABEL_8:
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v9 = v13;
    if (*a3)
    {
      [v13 setObject:*a3 forKeyedSubscript:@"view"];
    }

    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
    [v9 setObject:v14 forKeyedSubscript:@"priority"];

    [AXServerCache setObject:v9 forKeyedSubscript:v5];
  }

  return v10;
}

- (double)_handleRotatingFrame:()AXPrivCategory fromOrientation:toOrientation:
{
  if (a4)
  {
    AXDeviceGetMainScreenBounds();
    _UIConvertRectFromOrientationToOrientation();
    return v5;
  }

  return a1;
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
  [a1 accessibilityEnumerateContainerElementsUsingBlock:v4];
  v2 = v6[4];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (uint64_t)_accessibilityOrientationForCompareGeometryForApplication:()AXPrivCategory
{
  v4 = a3;
  if (AXProcessIsSpringBoard())
  {
    v5 = [v4 activeInterfaceOrientation];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v7 = [a1 _accessibilityWindow];
      v6 = [v7 interfaceOrientation];

      goto LABEL_7;
    }

    v5 = [v4 _accessibilityOrientationForCompareGeometry];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (uint64_t)accessibilityCompareGeometry:()AXPrivCategory
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [a1 _accessibilityCompareGeometry:v4];
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
  v6 = [a1 accessibilityPath];
  v7 = v6;
  if (v6)
  {
    BoundingBox = CGPathGetBoundingBox([v6 CGPath]);
  }

  else
  {
    [a1 _accessibilityContentFrame];
  }

  v24[1] = BoundingBox;
  v8 = [a1 _accessibilityVisibleFrameClippingAncestor];
  v9 = v8;
  if (v8)
  {
    [v8 accessibilityFrame];
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
    if ([*MEMORY[0x1E69DDA98] _accessibilitySoftwareKeyboardCoversElement:a1])
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
  [a1 _accessibilityIterateScrollParentsUsingBlock:v22 includeSelf:0];
  x = v24[1].origin.x;

  _Block_object_dispose(&v23, 8);
  return x;
}

- (double)_accessibilityConvertSystemBoundedScreenRectToContextSpace:()AXPrivCategory
{
  v3 = [a1 _accessibilityWindow];
  if (v3)
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
    v5 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:{Mutable, v7, 3221225472, __81__NSObject_AXPrivCategory___accessibilityConvertSystemBoundedPathToContextSpace___block_invoke, &unk_1E78AB2C0, a1, Mutable}];
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
  [a1 _accessibilityDisplayPointForSceneReferencePoint:?];
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
  [a1 _accessibilityDisplayPointForSceneReferencePoint:{MaxX, MaxY}];
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
  *a1 = *MEMORY[0x1E695EFD0];
  *(a1 + 16) = v2;
  result = v1[2];
  *(a1 + 32) = result;
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
        [a1 _handleRotatingFrame:a5 fromOrientation:a6 toOrientation:{x, y, width, height}];
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
  [a1 _accessibilitySetRetainedValue:v2 forKey:@"AXSortPriority"];
}

- (void)_accessibilitySetIsSortPriorityContainer:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [a1 _accessibilitySetRetainedValue:v2 forKey:@"AXIsSortPriorityContainer"];
}

- (double)_axScreenBoundsForBoundsCheck
{
  v1 = [a1 _accessibilityWindow];
  [v1 frame];
  v4 = v3 == *MEMORY[0x1E695EFF8] && v2 == *(MEMORY[0x1E695EFF8] + 8);
  if (!v4 && ([v1 isKeyWindow] & 1) == 0)
  {
    v5 = [*MEMORY[0x1E69DDA98] keyWindow];

    v1 = v5;
  }

  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  if ([v6 _accessibilityUseWindowBoundsForOutOfBoundsChecking])
  {
  }

  else
  {
    v7 = [v1 _accessibilityUseWindowBoundsForOutOfBoundsChecking];

    if (!v7)
    {
      v10 = [v1 screen];
      [v10 bounds];
      v9 = v11;

      goto LABEL_12;
    }
  }

  [v1 bounds];
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
    [a1 _accessibilityIterateScrollParentsUsingBlock:v4];
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return v2;
}

- (double)_axFrameForBoundsCheck:()AXPrivCategory
{
  [a1 accessibilityFrame];
  x = v14.origin.x;
  if (CGRectIsEmpty(v14))
  {
    return *MEMORY[0x1E695F050];
  }

  v6 = [a1 _accessibilityUIViewAccessibilityFrame];
  v7 = v6;
  if (v6)
  {
    [v6 CGRectValue];
    x = v8;
  }

  if (a3)
  {
    v9 = [a1 _axOutermostScrollParent];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 _accessibilityUIViewAccessibilityFrame];
        [v10 CGRectValue];
        x = v11;
      }

      else
      {
        [v9 accessibilityFrame];
        x = v12;
      }
    }
  }

  return x;
}

- (uint64_t)_accessibilityIsFrameOutOfBoundsConsideringScrollParents:()AXPrivCategory
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p-_accessibilityIsFrameOutOfBoundsConsideringScrollParents", a1];
  v6 = [AXServerCache objectForKeyedSubscript:v5];

  if (!v6)
  {
    if (![a1 _accessibilityOverridesInvalidFrames])
    {
      [a1 _axScreenBoundsForBoundsCheck];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      [a1 _axFrameForBoundsCheck:a3];
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
        v7 = [a1 _axOutermostScrollParent];
        if (!v7)
        {
          v7 = a1;
        }

        v29 = [v7 _accessibilityHeaderElement];

        if (v29)
        {
          v30 = [v7 _accessibilityParentView];
          [v30 bounds];
          v52.origin.x = UIAccessibilityFrameForBounds(v30, v31, v32, v33, v34);
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

            v8 = 0;
            goto LABEL_3;
          }
        }

        [AXServerCache setObject:MEMORY[0x1E695E118] forKeyedSubscript:v5];
        v8 = 1;
        goto LABEL_3;
      }

      v39 = v44.origin.y;
      v41 = v44.origin.x;
      if ([a1 isAccessibilityElement])
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
          v8 = 1;
          goto LABEL_8;
        }
      }
    }

    [AXServerCache setObject:MEMORY[0x1E695E110] forKeyedSubscript:v5];
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [AXServerCache objectForKeyedSubscript:v5];
  v8 = [v7 BOOLValue];
LABEL_3:

LABEL_8:
  return v8;
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
  v7 = [a1 _accessibilityCustomActions];
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v31 + 1) + 8 * v11);
      if ([v12 _accessibilityMatchesCustomActionIdentifier:v6])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v9)
        {
          goto LABEL_9;
        }

        goto LABEL_25;
      }
    }

    v13 = [v12 actionHandler];

    if (v13)
    {
      v14 = [v12 actionHandler];
      v15 = (v14)[2](v14, v12);
LABEL_18:

      goto LABEL_26;
    }

    v16 = [v12 target];

    if (v16)
    {
      v17 = [v12 target];
      v18 = objc_opt_class();
      InstanceMethod = class_getInstanceMethod(v18, [v12 selector]);

      if (InstanceMethod)
      {
        v14 = [v12 target];
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
        NSLog(&cfstr_ShouldReturnAB.isa, v14, v24);

        v22 = 1;
LABEL_29:
        v25 = [v12 target];
        [v12 selector];
        v26 = objc_opt_respondsToSelector();

        if (v26)
        {
          v27 = [v12 target];
          v28 = [v27 methodForSelector:{objc_msgSend(v12, "selector")}];

          v29 = [v12 target];
          v30 = v28(v29, [v12 selector], v12);

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
  v5 = [a1 accessibilityContainer];
  v6 = [v5 accessibilityZoomInAtPoint:{a2, a3}];

  return v6;
}

- (uint64_t)accessibilityZoomOutAtPoint:()AXPrivCategory
{
  v5 = [a1 accessibilityContainer];
  v6 = [v5 accessibilityZoomOutAtPoint:{a2, a3}];

  return v6;
}

- (void)accessibilityIncreaseTrackingDetail
{
  v1 = [a1 accessibilityContainer];
  [v1 accessibilityIncreaseTrackingDetail];
}

- (void)accessibilityDecreaseTrackingDetail
{
  v1 = [a1 accessibilityContainer];
  [v1 accessibilityDecreaseTrackingDetail];
}

- (uint64_t)_accessibilityTextOperationAction:()AXPrivCategory
{
  v4 = a3;
  v5 = [a1 _accessibilityTextViewTextOperationResponder];
  if (([v5 accessibilityEditOperationAction:v4] & 1) == 0)
  {
    if ([v4 isEqualToString:*MEMORY[0x1E6989170]])
    {
      [a1 _accessibilityCopy];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891C0]])
    {
      [a1 _accessibilityScanText];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E6989178]])
    {
      [a1 _accessibilityCut];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891A8]])
    {
      [a1 _accessibilityPaste];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891D0]])
    {
      [a1 _accessibilitySelectAll];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891A0]])
    {
      [a1 _accessibilityMoveUp];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E6989198]])
    {
      [a1 _accessibilityMoveDown];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891C8]])
    {
      [a1 _accessibilitySelect];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E6989188]])
    {
      [a1 _accessibilityDelete];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891B8]])
    {
      [a1 _accessibilityReplace];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E6989180]])
    {
      [a1 _accessibilityDefine];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891D8]])
    {
      [a1 _accessibilityShare];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891F8]])
    {
      [a1 _accessibilityUnderline];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E6989168]])
    {
      [a1 _accessibilityBold];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E6989190]])
    {
      [a1 _accessibilityItalic];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E6989200]])
    {
      [a1 _accessibilityUndo];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891B0]])
    {
      [a1 _accessibilityRedo];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891E0]])
    {
      [a1 _accessibilitySpeak];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891E8]])
    {
      [a1 _accessibilitySpeakSentence];
    }

    else if ([v4 isEqualToString:*MEMORY[0x1E69891F0]])
    {
      [a1 _accessibilitySpeakSpellOut];
    }

    else
    {
      if (![v4 isEqualToString:*MEMORY[0x1E6989208]])
      {
        v6 = 0;
        goto LABEL_45;
      }

      [a1 _accessibilityShowWritingTools];
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
  [a1 _accessibilityPaste];

  return 1;
}

- (void)_accessibilityShowKeyboard
{
  v0 = [MEMORY[0x1E69DCBE0] sharedInstance];
  [v0 showKeyboardWithoutSuppressionPolicy];
}

- (void)_accessibilityHideKeyboard
{
  v1 = [MEMORY[0x1E69DCBE0] sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    v0 = [MEMORY[0x1E69DCBE0] sharedInstance];
    [v0 hideKeyboard];
  }
}

- (id)_accessibilityCustomRotorResultHelper:()AXPrivCategory array:
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 currentItem];
  v8 = [v7 targetElement];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 currentItem];
    v11 = [v10 targetElement];
    v12 = [v5 indexOfObject:v11];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = -1;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v6 searchDirection];

    if (v14 != 1)
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

    v15 = [v6 searchDirection];
    if (v15 != 1)
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

  v3 = a1;
  if (v3)
  {
    v4 = v3;
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

      v9 = [v4 accessibilityContainer];

      v4 = v9;
      if (!v9)
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
  v2 = [a1 _accessibilityTextViewTextOperationResponder];
  v3 = v2;
  if (v2 == a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 _accessibilityTextOperations];
  }

  return v4;
}

- (uint64_t)_accessibilityHasTextOperations
{
  v2 = [a1 _accessibilityTextViewTextOperationResponder];
  v3 = v2;
  if (v2 == a1)
  {
    v5 = [a1 _accessibilityTextOperations];
    v4 = [v5 count] != 0;
  }

  else
  {
    v4 = [v2 _accessibilityHasTextOperations];
  }

  return v4;
}

- (uint64_t)_accessibilityPerformOrbGesture:()AXPrivCategory
{
  if ([a1 _accessibilityBasePerformOrbGesture:?])
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
  [a1 _accessibilityDisplayId];
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
  v4 = [a1 _accessibilityParentView];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      if ([v5 isUserInteractionEnabled])
      {
        v7 = [v5 gestureRecognizers];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v15 + 1) + 8 * i);
              if ([v12 isEnabled] && (objc_opt_respondsToSelector() & 1) != 0)
              {
                [v12 _accessibilitySimulateOrbGestureWithState:a3];
                v6 = 1;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v9);
        }
      }

      v13 = [v5 superview];

      v5 = v13;
    }

    while (v13);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (uint64_t)_accessibilityCameraIrisOpen
{
  v1 = objc_getAssociatedObject(a1, @"__ax_camera_iris_open");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)_accessibilitySetCameraIrisOpen:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, @"__ax_camera_iris_open", v2, 1);
}

- (uint64_t)_accessibilityIsTourGuideRunning
{
  v1 = objc_getAssociatedObject(a1, @"__ax_is_tour_guide_running");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)_accessibilitySetIsTourGuideRunning:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, @"__ax_is_tour_guide_running", v2, 1);
}

- (uint64_t)_accessibilityPlayKeyboardClickSound
{
  result = UIAccessibilityIsVoiceOverRunning();
  if (result)
  {

    return [a1 _accessibilityPlaySystemSound:1104];
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
  v2 = [__UIAccessibilityFocusedElements allValues];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        if (*(*(&v9 + 1) + 8 * v6) == a1)
        {
          v7 = 1;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [__UIAccessibilityFocusedElements allKeys];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [__UIAccessibilityFocusedElements objectForKeyedSubscript:v8];

        if (v9 == a1)
        {
          if (!v5)
          {
            v5 = [MEMORY[0x1E695DFA8] set];
          }

          [v5 addObject:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  if ([a1 _accessibilityAnimationsInProgress])
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
    [a1 accessibilityBoundsForTextMarkerRange:v5];
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
    v6 = [a1 accessibilityContentForTextMarkerRange:v5];
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

  return [a1 accessibilityLineRangeForPosition:a3];
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
    v10 = [a1 _accessibilityTextViewTextOperationResponder];
    if (v10 && v10 != a1)
    {
      v11 = v10;
      [v10 _accessibilitySetSelectedTextRange:{a3, a4}];
      v10 = v11;
    }
  }

  else
  {

    [a1 browserAccessibilitySetSelectedTextRange:{a3, a4}];
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
    v6 = [a1 _accessibilityTextViewTextOperationResponder];
    v7 = v6;
    v8 = 0x7FFFFFFFLL;
    if (v6 && v6 != a1)
    {
      v8 = [v6 _accessibilitySelectedTextRange];
    }

    return v8;
  }

  else
  {

    return [a1 safeRangeForKey:@"browserAccessibilitySelectedTextRange"];
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

  return [a1 accessibilityLineEndPositionFromCurrentSelection];
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

  return [a1 accessibilityLineStartPositionFromCurrentSelection];
}

- (id)_accessibilityLineStartMarker:()AXPrivCategory
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [a1 accessibilityLineStartMarkerForMarker:v4];
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
    v6 = [a1 accessibilityMarkerForPoint:{a2, a3}];
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
    v5 = [a1 accessibilityLineEndMarkerForMarker:v4];
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
    v5 = [a1 accessibilityNextTextMarker:v4];
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
    v5 = [a1 accessibilityPreviousTextMarker:v4];
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
    v2 = [a1 accessibilityTextMarkerRange];
    v3 = _beaxRangeToArray(v2);
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
    v6 = [a1 accessibilityRangeForTextMarkerRange:v5];
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
    v2 = [a1 accessibilityTextMarkerRangeForCurrentSelection];
    v3 = _beaxRangeToArray(v2);
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
    v5 = [a1 accessibilityTextMarkerForPosition:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_accessibilityTextCursorFrame
{
  v2 = [a1 accessibilityTraits];
  if ((*MEMORY[0x1E6989090] & ~v2) != 0)
  {
    return *MEMORY[0x1E695F058];
  }

  if (![a1 conformsToProtocol:&unk_1F1E10CA0])
  {
    return *MEMORY[0x1E695F058];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return *MEMORY[0x1E695F058];
  }

  v3 = a1;
  v4 = [v3 selectedTextRange];
  [v3 firstRectForRange:v4];
  v9 = UIAccessibilityFrameForBounds(v3, v5, v6, v7, v8);

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
  v4 = [a1 _accessibilityPotentiallyAttributedValueForNonAttributedSelector:sel_accessibilityLabel attributedSelector:sel_accessibilityAttributedLabel];
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
  v5 = [MEMORY[0x1E695DF70] array];
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
        v11 = [a1 _accessibilityMarkerForPoint:?];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_accessibilityMarkersForRange:()AXPrivCategory
{
  if (objc_opt_respondsToSelector())
  {
    v7 = [a1 accessibilityTextMarkerRangeForRange:{a3, a4}];
    v8 = _beaxRangeToArray(v7);
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [a1 _accessibilityTextMarkerForPosition:a3];
    if (v9)
    {
      [v8 addObject:v9];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v8 addObject:v10];
    }

    v7 = [a1 _accessibilityTextMarkerForPosition:a3 + a4];

    if (v7)
    {
      [v8 addObject:v7];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v8 addObject:v11];
    }
  }

  return v8;
}

- (id)_accessibilityMarkerLineEndsForMarkers:()AXPrivCategory
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
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

        v11 = [a1 _accessibilityLineEndMarker:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (uint64_t)__accessibilityReadAllOnFocus
{
  v1 = a1;
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  do
  {
    v3 = [v2 _accessibilityReadAllOnFocus];
    if (v3)
    {
      break;
    }

    v4 = [v2 accessibilityContainer];

    v2 = v4;
  }

  while (v4);

  return v3;
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
      length = [a1 browserAccessibilityValueInRange:{a3->location, a3->length}];
      goto LABEL_17;
    }
  }

  v10 = [a1 _accessibilityAXAttributedValue];
  v11 = v10;
  if (!a3 || !v10)
  {
    v13 = v10;
LABEL_15:
    length = v13;
    goto LABEL_16;
  }

  v16.length = [v10 length];
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
  result = [a1 conformsToProtocol:&unk_1F1E1E028];
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
  [a1 _accessibilitySetValue:v2 forKey:@"AXTextViewBreakUpParagraphs" storageMode:0];
}

- (uint64_t)_accessibilityTextViewShouldBreakUpParagraphs
{
  v1 = [a1 _accessibilityValueForKey:@"AXTextViewBreakUpParagraphs"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (uint64_t)_accessibilityActivateParagraphInTextViewRange:()AXPrivCategory
{
  v6 = [a1 _accessibilityGetBlockForAttribute:24];
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
  [a1 _accessibilitySetValue:v2 forKey:@"AXIncreaseLayoutBounds" storageMode:0];
}

- (uint64_t)_accessibilityIncreaseLayoutBounds
{
  v1 = [a1 _accessibilityValueForKey:@"AXIncreaseLayoutBounds"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)_accessibilitySetValue:()AXPrivCategory
{
  v5 = a3;
  v4 = [a1 _accessibilityTextViewTextOperationResponder];
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setText:v5];
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
  v4 = [MEMORY[0x1E69DCBE0] activeInstance];
  v5 = [v4 safeValueForKey:@"_textChoicesAssistant"];

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
    v4 = a1;
    NSClassFromString(&cfstr_Uiaccessibilit_16.isa);
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 accessibilityContainer];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || [v5 spellCheckingType] != 1)
    {
      if (AXRequestingClient() == 3)
      {
        v6 = *MEMORY[0x1E6988F38];
        v7 = [v20 length];
        [v20 addAttribute:v6 value:MEMORY[0x1E695E118] range:{0, v7}];
      }

      else
      {
        v8 = [v4 _accessibilityTextChecker];
        if (v8)
        {
          v9 = [v20 string];
          v10 = [v9 length];
          v11 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
          v12 = 0;
          v13 = *MEMORY[0x1E695E4D0];
          while (1)
          {
            v14 = [v11 currentInputMode];
            if (!v14)
            {
              v14 = [v11 currentSystemInputMode];
            }

            v15 = [v14 primaryLanguage];
            v16 = [v8 rangeOfMisspelledWordInString:v9 range:0 startingAt:v10 wrap:v12 language:{0, v15}];
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
      v9 = [a1 browserAccessibilityAttributedValueInRange:{*a3, a3[1]}];
      goto LABEL_18;
    }
  }

  v10 = [a1 _accessibilityValueForRange:a3];
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
    [a1 _accessibilityAddAutoCorrectionAttributes:v9];
    [a1 _accessibilityConvertStyleAttributesToAccessibility:v9];
    [a1 _accessibilityAddMispellingsToAttributedString:v9];
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
    v13 = [MEMORY[0x1E6989890] sharedInstance];
    v14 = [v13 hoverTextTypingEnabled];

    if (v14)
    {
      v15 = [MEMORY[0x1E695DF90] dictionary];
      if ([v18 length])
      {
        [v15 setObject:v18 forKeyedSubscript:@"InsertedText"];
      }

      [v15 setObject:*MEMORY[0x1E6989230] forKeyedSubscript:*MEMORY[0x1E6989238]];
      v16 = [MEMORY[0x1E696AD98] numberWithBool:a8];
      [v15 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6989250]];

      [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6989248]];
      v17 = [MEMORY[0x1E696B098] valueWithCGRect:{a1, a2, a3, a4}];
      [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x1E6989258]];

      UIAccessibilityPostNotification(UIAccessibilityValueChangedNotification, v15);
    }
  }
}

- (id)_accessibilityHandwritingElement
{
  v2 = [a1 accessibilityTraits];
  if ((*MEMORY[0x1E6989098] & v2) != 0 || ([a1 _accessibilityTextHandlingAncestorMatchingBlock:&__block_literal_global_1855], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = [a1 _accessibilityFirstResponderForKeyWindow];
    v4 = v3;
    if (v3 == a1)
    {
      v5 = 0;
    }

    else
    {
      v5 = [v3 _accessibilityHandwritingElement];
    }
  }

  return v5;
}

- (id)_accessibilityTextHandlingAncestorMatchingBlock:()AXPrivCategory
{
  v4 = a3;
  v5 = a1;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = v5;
  while (1)
  {
    if (v4[2](v4, v7))
    {
      v8 = v7;
      goto LABEL_16;
    }

    v8 = [v7 _accessibilityViewController];
    if (v4[2](v4, v8))
    {
      break;
    }

    v9 = [v7 accessibilityContainer];

    v7 = v9;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  if (!v8)
  {
LABEL_9:
    v10 = [v6 _accessibilityWindow];
    v11 = [v10 firstResponder];

    if (v11)
    {
      while (1)
      {
        if (v4[2](v4, v11))
        {
          v8 = v11;
          goto LABEL_16;
        }

        v8 = [v11 _accessibilityViewController];
        if (v4[2](v4, v8))
        {
          break;
        }

        v12 = [v11 accessibilityContainer];

        v11 = v12;
        if (!v12)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v8 = 0;
    }
  }

LABEL_16:

  return v8;
}

- (uint64_t)_accessibilitySupportsHandwriting
{
  v2 = UIAccessibilityTraitLaunchIcon | UIAccessibilityTraitWebContent | UIAccessibilityTraitFolderIcon | UIAccessibilityTraitSecureTextField | UIAccessibilityTraitTableIndex;
  if (([a1 accessibilityTraits] & v2) != 0)
  {
    return 1;
  }

  return [a1 _accessibilitySupportsTextInsertionAndDeletion];
}

- (id)_accessibilityHandwritingAttributes
{
  v14[7] = *MEMORY[0x1E69E9840];
  if ([a1 _accessibilitySupportsHandwriting])
  {
    v13[0] = *MEMORY[0x1E6989838];
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "_accessibilityHandwritingAttributePreferredCharacterSet")}];
    v14[0] = v2;
    v13[1] = *MEMORY[0x1E6989828];
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "_accessibilityHasDeletableText")}];
    v14[1] = v3;
    v13[2] = *MEMORY[0x1E6989840];
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "_accessibilityHandwritingAttributeShouldEchoCharacter")}];
    v14[2] = v4;
    v13[3] = *MEMORY[0x1E6989848];
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "_accessibilityHandwritingAttributeShouldPlayKeyboardSecureClickSound")}];
    v14[3] = v5;
    v13[4] = *MEMORY[0x1E6989818];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "_accessibilitySupportsTextInsertionAndDeletion")}];
    v14[4] = v6;
    v13[5] = *MEMORY[0x1E6989820];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "_accessibilityHandwritingAttributeAllowedCharacterSets")}];
    v14[5] = v7;
    v13[6] = *MEMORY[0x1E6989810];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a1, "_accessibilityHandwritingAttributeAcceptsContractedBraille")}];
    v14[6] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:7];

    v10 = [a1 _accessibilityHandwritingAttributeLanguage];
    if (v10)
    {
      v11 = [v9 mutableCopy];
      [v11 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6989830]];

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
  v2 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  v3 = [v2 defaultTextInputTraits];

  v4 = [a1 _accessibilityHandwritingAttributePreferredCharacterSetForKeyboardType:{objc_msgSend(v3, "keyboardType")}];
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
  v2 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  v3 = [v2 defaultTextInputTraits];

  if (v3)
  {
    v4 = [a1 _accessibilityHandwritingAttributeAllowedCharacterSetsForKeyboardType:{objc_msgSend(v3, "keyboardType")}];
  }

  else
  {
    v4 = 15;
  }

  return v4;
}

- (uint64_t)_accessibilityHasDeletableText
{
  if (![a1 conformsToProtocol:&unk_1F1E0FC10])
  {
    return 1;
  }

  return [a1 hasText];
}

- (id)_accessibilityHandwritingAttributeLanguage
{
  v0 = [MEMORY[0x1E69DCBB8] activeKeyboard];

  if (v0)
  {
    v1 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
    v2 = [v1 currentInputMode];
    v0 = [v2 primaryLanguage];
  }

  return v0;
}

- (uint64_t)_accessibilityReplaceTextInRange:()AXPrivCategory withString:
{
  v8 = a5;
  if ([a1 conformsToProtocol:&unk_1F1E10CA0])
  {
    v9 = a1;
    v10 = [v9 beginningOfDocument];
    v11 = [v9 positionFromPosition:v10 offset:a3];

    v12 = [v9 beginningOfDocument];
    v13 = [v9 positionFromPosition:v12 offset:a3 + a4];

    v14 = [v9 textRangeFromPosition:v11 toPosition:v13];
    [v9 replaceRange:v14 withText:v8];

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
    v16 = [v15 isFirstResponder];

    if (v16)
    {
      v17 = [MEMORY[0x1E69DCBE0] sharedInstance];
      _UIAccessibilityBlockPostingOfAllNotifications();
      for (; a3; --a3)
      {
        [v17 deleteFromInputWithFlags:128];
      }

      if ([v6 length])
      {
        [v17 addInputString:v6 withFlags:128];
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

      if (![a1 conformsToProtocol:&unk_1F1E0FC10])
      {
        goto LABEL_30;
      }

      for (; a3; --a3)
      {
        [a1 deleteBackward];
      }

      if ([v6 length])
      {
        [a1 insertText:v6];
      }

      v17 = [MEMORY[0x1E69DCBE0] sharedInstance];
      [v17 updateReturnKey:0];
    }

LABEL_30:
    v19 = [MEMORY[0x1E69DCBE0] sharedInstance];
    v20 = [v19 safeValueForKey:@"taskQueue"];

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

  [a1 browserAccessibilityDeleteTextAtCursor:v14];
  [a1 browserAccessibilityInsertTextAtCursor:v6];
LABEL_31:
}

- (void)_accessibilityInsertText:()AXPrivCategory atPosition:
{
  if (a4 < 0)
  {
    return [a1 _accessibilityInsertText:?];
  }

  return a1;
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
      v6 = [a1 _accessibilityTextViewTextOperationResponder];
      v7 = __UIAccessibilityCastAsClass();

      LODWORD(v6) = [v7 isFirstResponder];
      if (!v6)
      {
        v10 = AXLogAppAccessibility();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [NSObject(AXPrivCategory) _accessibilityInsertText:];
        }

        if (![a1 conformsToProtocol:&unk_1F1E0FC10])
        {
          goto LABEL_7;
        }

        [a1 insertText:v4];
        v8 = [MEMORY[0x1E69DCBE0] sharedInstance];
        [v8 updateReturnKey:0];
LABEL_6:

LABEL_7:
        v9 = AXUIKeyboardEntryNotificationBlockTimer();
        [v9 afterDelay:&__block_literal_global_1867 processBlock:0.15];

        goto LABEL_8;
      }
    }

    v8 = [MEMORY[0x1E69DCBE0] sharedInstance];
    [v8 addInputString:v4 withFlags:128];
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
  v0 = [MEMORY[0x1E69DCBE0] activeInstance];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 safeValueForKey:@"_layout"];
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
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([a1 safeValueForKey:@"_browserAccessibilityStoredValueSortDirection"], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = [a1 safeStringForKey:@"browserAccessibilitySortDirection"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)_accessibilityIsRealtimeElement
{
  v1 = [a1 _accessibilityGetBlockForAttribute:20];
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
  v1 = [a1 _accessibilityGetBlockForAttribute:29];
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
  v1 = [a1 _accessibilityWindow];
  v2 = [v1 windowScene];
  v3 = objc_opt_respondsToSelector();

  v4 = [v1 _accessibilityIsInJindo];
  v5 = v3 | v4;
  if ((v3 & 1) != 0 && (v4 & 1) == 0)
  {
    v6 = [v1 windowScene];
    v5 = [v6 SBUI_isHostedBySystemAperture];
  }

  return v5 & 1;
}

- (uint64_t)_accessibilityIsInMenuBar
{
  v1 = [a1 _accessibilityValueForKey:@"IsInMenuBar"];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
      v9 = [a1 _accessibilityUserTestingActions];
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v15 = [v14 identifier];
        v16 = [v15 isEqualToString:v7];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
              v17 = v22 | ([a1 methodForSelector:{objc_msgSend(v14, "selector")}])(a1, objc_msgSend(v14, "selector"), v25);
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
      NSLog(&cfstr_ShouldReturnAB_0.isa, a1, v23);

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
  v1 = [a1 _accessibilityUserTestingActions];
  if ([v1 count])
  {
    v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v1;
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
          v9 = [v8 identifier];
          v10 = [v9 length];

          if (!v10)
          {
            [NSObject(AXPrivCategory) _accessibilityUserTestingActionIdentifiers];
          }

          if (![v8 selector])
          {
            [NSObject(AXPrivCategory) _accessibilityUserTestingActionIdentifiers];
          }

          v11 = [v8 identifier];
          [v2 addObject:v11];
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

  return [a1 _accessibilityIsTouchContainer];
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
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    while (1)
    {
      v4 = [v3 _accessibilitySemanticContextForElement:v2];
      if (v4)
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [MEMORY[0x1E69DD258] viewControllerForView:v3];
        v6 = [v5 _accessibilitySemanticContextForElement:v2];

        if (v6)
        {
          goto LABEL_10;
        }
      }

      v7 = [v3 accessibilityContainer];

      v3 = v7;
      if (!v7)
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

    v3 = [*v8 delegate];
    v4 = [v3 _accessibilitySemanticContextForElement:v2];
  }

  v6 = v4;
LABEL_10:

LABEL_11:

  return v6;
}

+ (void)_accessibilitySetUnitTestingOrientation:()AXPrivCategory
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  objc_setAssociatedObject(a1, &_UnitTestingOrientationStorageKey, v2, 0x301);
}

+ (uint64_t)_accessibilityUnitTestingOrientation
{
  v1 = objc_getAssociatedObject(a1, &_UnitTestingOrientationStorageKey);
  v2 = [v1 integerValue];

  return v2;
}

- (id)_axSuperviews
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = a1;
  if (v3)
  {
    v4 = v3;
    v21 = v2;
    do
    {
      [v2 appendFormat:@"%@ [%p]", objc_opt_class(), v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
        v6 = &stru_1F1DB9E20;
        if (objc_opt_respondsToSelector())
        {
          v7 = MEMORY[0x1E696AEC0];
          v8 = [v5 delegate];
          v9 = objc_opt_class();
          v10 = [v5 delegate];
          v6 = [v7 stringWithFormat:@"Delegate:[%@:%p] ", v9, v10];
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

        v22 = [v5 accessibilityIgnoresInvertColors];
        v13 = [v5 layer];
        v14 = [v13 filters];
        v15 = [v14 ax_containsObjectUsingBlock:&__block_literal_global_1933];
        v16 = [v5 backgroundColor];
        v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v20 = v15;
        v2 = v21;
        [v21 appendFormat:@"[INV:%d(L:%d), BG:{%@}] %@%@ {%@}\n", v22, v20, v16, v12, v23, v17];
      }

      else
      {
        [v2 appendString:@"\n"];
      }

      v18 = [v4 accessibilityContainer];

      v4 = v18;
    }

    while (v18);
  }

  return v2;
}

- (id)_axDebugTraits
{
  [a1 accessibilityTraits];
  v1 = _AXTraitsAsString();

  return v1;
}

- (uint64_t)accessibilityRequired
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 safeValueForKey:@"_browserAccessibilityStoredValueIsRequired"];

  if (!v2)
  {
    return 0;
  }

  return [a1 safeBoolForKey:@"browserAccessibilityIsRequired"];
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

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:*MEMORY[0x1E69DD870] object:0 userInfo:v6];
}

- (void)_accessibilityHandleATFocused:()AXPrivCategory assistiveTech:
{
  v8 = a4;
  v6 = [__UIAccessibilityFocusedElements objectForKeyedSubscript:?];
  v7 = v6;
  if (a3)
  {
    if (v6 == a1)
    {
      goto LABEL_6;
    }

    _UIAccessibilitySetFocusedElement(a1, v8);
    [v7 accessibilityElementDidLoseFocus];
    _UIAccessibilityIsSettingFocus = 1;
    [a1 accessibilityElementDidBecomeFocused];
  }

  else
  {
    _UIAccessibilitySetFocusedElement(0, v8);
    [v7 accessibilityElementDidLoseFocus];
    a1 = 0;
  }

  [MEMORY[0x1E69E58C0] _accessibilityUpdateOpaqueFocusStateForTechnology:v8 oldElement:v7 newElement:a1];
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
    v11 = [MEMORY[0x1E695DFB0] null];
    v10 = [v8 arrayWithObjects:{v9, v11, 0}];
  }

  [a1 performSelector:sel__accessibilityPostNotificationHelper_ withObject:v10 afterDelay:a2];
}

- (void)_accessibilityPostNotificationHelper:()AXPrivCategory
{
  v3 = a3;
  v4 = [v3 objectAtIndex:0];
  v5 = [v4 unsignedIntValue];

  v8 = [v3 objectAtIndex:1];

  v6 = [MEMORY[0x1E695DFB0] null];
  if (v8 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v8;
  }

  UIAccessibilityPostNotification(v5, v7);
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
  if ([a1 isAccessibilityElement] & 1) == 0 && (objc_msgSend(a1, "_accessibilityIsGroupedParent"))
  {
    return 0;
  }

  v3 = [a1 _accessibilityParentView];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v3 _accessibilityCanDrag];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_accessibilityHasDragDestinations
{
  if ([a1 isAccessibilityElement] & 1) == 0 && (objc_msgSend(a1, "_accessibilityIsGroupedParent"))
  {
    return 0;
  }

  v3 = [a1 _accessibilityParentView];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v3 _accessibilityCanDrop];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)_accessibilityIsDraggableElementAttribute
{
  if (![a1 isAccessibilityElement])
  {
    return 0;
  }

  v2 = 1;
  v3 = [a1 _accessibilityFindAncestor:&__block_literal_global_1973 startWithSelf:1];
  if (!v3)
  {
    v4 = [a1 _accessibilityFindDescendant:&__block_literal_global_1975];
    v2 = v4 != 0;
  }

  return v2;
}

- (void)_accessibilityAllDragSourceDescriptors
{
  v1 = [a1 accessibilityDragSourceDescriptors];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
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
  v2 = [a1 _accessibilityAllDragSourceDescriptors];
  v3 = [a1 accessibilityTraits];
  if ((*MEMORY[0x1E6989268] & ~v3) != 0 || ([a1 _accessibilityRemoteParent], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v5 = [a1 _accessibilityFilterInteractionLocationDescriptorsForVisible:v2];

    v2 = v5;
  }

  v6 = [v2 axFilterObjectsUsingBlock:&__block_literal_global_1980];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__NSObject_AXPrivCategory___accessibilityDragSourceDescriptorDictionaryRepresentations__block_invoke_2;
  v9[3] = &unk_1E78AB3E8;
  v9[4] = a1;
  v7 = [v6 axMapObjectsUsingBlock:v9];

  return v7;
}

- (void)_accessibilityAllDropPointDescriptors
{
  v1 = [a1 accessibilityDropPointDescriptors];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
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
  v2 = [a1 _accessibilityAllDropPointDescriptors];
  v3 = [a1 _accessibilityFilterInteractionLocationDescriptorsForVisible:v2];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__NSObject_AXPrivCategory___accessibilityDropPointDescriptorDictionaryRepresentations__block_invoke;
  v6[3] = &unk_1E78AB3E8;
  v6[4] = a1;
  v4 = [v3 axMapObjectsUsingBlock:v6];

  return v4;
}

- (UIAccessibilityAddToDragSessionCustomAction)_accessibilityAddToDragSessionCustomAction
{
  v23 = *MEMORY[0x1E69E9840];
  if ([a1 __accessibilitySupportsActivateAction])
  {
    v2 = [a1 _accessibilityAllDragSourceDescriptors];
    v3 = [a1 _accessibilityFilterInteractionLocationDescriptorsForVisible:v2];

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
          v9 = [v8 view];
          v10 = [v9 _accessibilityCanAddItemsToDragSession];

          if (v10)
          {
            v11 = [UIAccessibilityAddToDragSessionCustomAction alloc];
            [v8 point];
            v13 = v12;
            v15 = v14;
            v16 = [v8 view];
            v5 = [(UIAccessibilityAddToDragSessionCustomAction *)v11 initWithPoint:v16 inSourceView:v13, v15];

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
  v2 = [a1 _accessibilityAllDragSourceDescriptors];
  v3 = [v2 count];

  if (v3)
  {
    return 1;
  }

  v5 = [a1 _accessibilityFindAncestor:&__block_literal_global_1984 startWithSelf:1];
  v4 = v5 != 0;

  return v4;
}

- (id)_accessibilityFindSubviewDescendantsPassingTest:()AXPrivCategory
{
  v4 = [a1 _accessibilityFindAXDescendantsPassingTest:a3 byYieldingElements:&__block_literal_global_1431];
  [a1 _accessibilitySortElementsUsingGeometry:v4];

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
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"NSObjectAccessibility.m" lineNumber:16534 description:@"UIAccessibilityAutomationAction must have a selector."];
}

@end