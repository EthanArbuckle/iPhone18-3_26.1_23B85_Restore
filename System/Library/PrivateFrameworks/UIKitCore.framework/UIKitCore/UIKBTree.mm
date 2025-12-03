@interface UIKBTree
+ (id)key;
+ (id)keyboard;
+ (id)mergeStringForKeyName:(id)name;
+ (id)shapesForControlKeyShapes:(id)shapes options:(int)options;
+ (id)stringForType:(int)type;
+ (id)treeOfType:(int)type;
- ($5C396DA91E87D63640AC871340DC94CC)visualStyling;
- ($5C396DA91E87D63640AC871340DC94CC)visualStylingForScreenTraits:(id)traits;
- (BOOL)BOOLForProperty:(id)property;
- (BOOL)_gesturesEnabled;
- (BOOL)_isShiftedButNotAutoShiftedWithLayoutInfo:(id)info;
- (BOOL)_keyIsStringType:(id)type;
- (BOOL)_needsScaling;
- (BOOL)_renderAsStringKey;
- (BOOL)addMessagesWriteboardKeyOrRomanSwitch:(BOOL)switch;
- (BOOL)addMessagesWriteboardKeyOrRomanSwitchIfDismissKey:(BOOL)key;
- (BOOL)addMessagesWriteboardKeyOrRomanSwitchIfNoDismissKey:(BOOL)key;
- (BOOL)avoidsLanguageIndicator;
- (BOOL)behavesAsShiftKey;
- (BOOL)containsDividerVariant;
- (BOOL)containsKeyThatIgnoresHandBias;
- (BOOL)dynamicDisplayTypeHint;
- (BOOL)dynamicLayout;
- (BOOL)ghost;
- (BOOL)hasLayoutTag:(id)tag;
- (BOOL)isChineseKey;
- (BOOL)isDuplicateOfTree:(id)tree;
- (BOOL)isEqualToTree:(id)tree;
- (BOOL)isExemptFromInputManagerHitTesting;
- (BOOL)isExemptFromInputManagerLayout;
- (BOOL)isHashed;
- (BOOL)isLetters;
- (BOOL)isRightToLeftSensitive;
- (BOOL)isSameAsTree:(id)tree;
- (BOOL)isSplit;
- (BOOL)looksLike:(id)like;
- (BOOL)looksLikeShiftAlternate;
- (BOOL)mergeAsMoreKey;
- (BOOL)preventPaddle;
- (BOOL)renderKeyInKeyplane:(id)keyplane;
- (BOOL)setObject:(id)object forProperty:(id)property;
- (BOOL)shouldCacheKey;
- (BOOL)supportsSupplementalDisplayString;
- (BOOL)supportsType:(int64_t)type;
- (BOOL)usesControlKeyAppearance;
- (BOOL)visible;
- (CGPoint)navigationPointOfKey;
- (CGRect)_keyplaneFrame;
- (CGRect)_originalKeyplaneFrame;
- (CGRect)frame;
- (CGRect)frameForKeylayoutName:(id)name;
- (CGRect)keyUnionFrame;
- (CGRect)keyUnionFramePadded:(BOOL)padded;
- (CGRect)keyUnionPaddedFrame;
- (CGRect)originalFrame;
- (CGRect)paddedFrame;
- (NSMutableDictionary)properties;
- (NSString)name;
- (UIKBTree)initWithType:(int)type;
- (UIKBTree)initWithType:(int)type withName:(id)name withProperties:(id)properties withSubtrees:(id)subtrees withCache:(id)cache;
- (double)primaryKeylayoutWidthRatio;
- (double)resizingOffset;
- (id)_cacheRootNameForKey:(id)key;
- (id)_horizontallyCoincidentKeysWithKey:(id)key;
- (id)_keysForDynamicRow;
- (id)_keysForDynamicRows:(id)rows;
- (id)_stringTypeKeysForDynamicRow;
- (id)activeGeometriesList;
- (id)activeShapesFromOutputShapes:(id)shapes inputShapes:(id)inputShapes inRTL:(BOOL)l;
- (id)adaptiveKeys;
- (id)alternateKeyplaneName;
- (id)attributeSet:(BOOL)set;
- (id)autolocalizedKeyCacheIterator;
- (id)cacheDisplayString;
- (id)cacheSecondaryDisplayString;
- (id)cachedKeysByKeyName:(id)name;
- (id)componentName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dynamicCacheName;
- (id)findLeftMoreKey;
- (id)firstCachedKeyWithName:(id)name;
- (id)firstKeyplaneSwitchKey;
- (id)flattenedSubtrees;
- (id)fullRepresentedString;
- (id)geometries;
- (id)geometriesList;
- (id)geometriesOrderedByPosition;
- (id)geometry;
- (id)geometrySet:(BOOL)set;
- (id)keyAttributes;
- (id)keyByKeyName:(id)name;
- (id)keyForString:(id)string;
- (id)keySet;
- (id)keyplaneForKey:(id)key;
- (id)keyplaneSwitchKeys;
- (id)keyplaneSwitchKeysWithoutCurrentKeyplane:(id)keyplane;
- (id)keys;
- (id)keysByKeyName:(id)name;
- (id)keysExcludingEmptyKeys;
- (id)keysForDisplayRowAtIndex:(unint64_t)index;
- (id)keysForMergeConditions;
- (id)keysOrderedByPositionLinear:(BOOL)linear;
- (id)keysOrderedByPositionRTL;
- (id)keysOrderedByPositionWithoutZip;
- (id)keysWithInteractionTypes:(id)types;
- (id)keysWithRepresentedString:(id)string;
- (id)keysWithString:(id)string;
- (id)keysetCanContainWriteboardKey;
- (id)layoutName;
- (id)listShapes;
- (id)mergeKeyNames:(id)names inRightToLeft:(BOOL)left;
- (id)nameFromAttributes;
- (id)objectForProperty:(id)property;
- (id)orderedRowsForType:(int64_t)type;
- (id)overrideDisplayString;
- (id)recursiveDescription;
- (id)representedString;
- (id)rightSpaceKey;
- (id)rowSet;
- (id)rowSetOfType:(int64_t)type;
- (id)scriptSwitchKey;
- (id)shapeFromFrame:(CGRect)frame leftPadding:(double)padding rightPadding:(double)rightPadding;
- (id)shapesForKeys:(id)keys;
- (id)shiftAlternateKeyplaneName;
- (id)subtreeWithName:(id)name;
- (id)subtreeWithName:(id)name rows:(id)rows;
- (id)subtreeWithType:(int)type;
- (id)subtreesWithProperty:(id)property value:(id)value;
- (id)supplementaryKeyList;
- (id)toggleKeysForKeyName:(id)name;
- (id)unhashedName;
- (id)variantDisplayString;
- (int)displayRowHint;
- (int)indexOfSubtree:(id)subtree;
- (int)type;
- (int)variantType;
- (int64_t)_keyCountOnNamedRow:(id)row;
- (int64_t)currentKeyboardType;
- (int64_t)flickDirection;
- (int64_t)inheritedRowSetTypeForKeyboardType:(int64_t)type;
- (int64_t)intForProperty:(id)property;
- (int64_t)nativeIdiom;
- (int64_t)popupDirection;
- (int64_t)rowSetType;
- (int64_t)selectedVariantIndex;
- (int64_t)textAlignment;
- (unint64_t)dynamicDisplayCorner;
- (unint64_t)groupNeighbor;
- (unint64_t)numberOfRows;
- (void)_addKeylayoutKeys:(id)keys;
- (void)_mutateKeys:(id)keys scale:(double)scale withShapeOperation:(id)operation;
- (void)addRomanSwitchToCachedKeyListWithShape:(id)shape rendering:(int)rendering;
- (void)addWriteboardKeyToCachedKeyListWithShape:(id)shape rendering:(int)rendering;
- (void)addkeyToCachedKeyList:(id)list;
- (void)applyDynamicAttributes:(BOOL)attributes layoutInfo:(id)info;
- (void)cacheKey:(id)key;
- (void)cacheNativeIdiomIfNecessaryForScreenTraits:(id)traits;
- (void)centerHorizontallyWhilePreservingLayoutWithKeys:(id)keys inRect:(CGRect)rect scale:(double)scale;
- (void)centerKeyplaneInRect:(CGRect)rect scale:(double)scale;
- (void)centerKeys:(id)keys inRect:(CGRect)rect scale:(double)scale;
- (void)centerVerticallyWhilePreservingLayoutWithKeys:(id)keys inRect:(CGRect)rect scale:(double)scale;
- (void)centerWhilePreservingLayoutWithKeys:(id)keys inRect:(CGRect)rect scale:(double)scale;
- (void)clearManualAddedKey;
- (void)clearTransientCaches;
- (void)elaborateLayoutWithSize:(CGSize)size origin:(CGPoint)origin layoutInfo:(id)info;
- (void)insertKey:(id)key withFrame:(CGRect)frame andShiftKeys:(id)keys scale:(double)scale;
- (void)insetKeys:(id)keys withInsets:(UIEdgeInsets)insets scale:(double)scale;
- (void)mergeReturnKey:(id)key withReturnKey:(id)returnKey;
- (void)orderVariantKeys:(BOOL)keys;
- (void)precacheLayoutName:(id)name;
- (void)removeKey:(id)key;
- (void)removeKey:(id)key andShiftKeys:(id)keys scale:(double)scale;
- (void)removeKeyFromAllCachedLists:(id)lists;
- (void)removeKeyFromCachedKeyList:(id)list;
- (void)replaceKey:(id)key withKey:(id)withKey;
- (void)repositionKeys:(id)keys withOffset:(CGPoint)offset scale:(double)scale;
- (void)resizeKeys:(id)keys withOffset:(CGPoint)offset scale:(double)scale;
- (void)scaleKeys:(id)keys withFactor:(CGSize)factor scale:(double)scale;
- (void)setAttributes:(id)attributes;
- (void)setClipCorners:(unint64_t)corners;
- (void)setCurrentKeyboardType:(int64_t)type;
- (void)setDisabled:(BOOL)disabled;
- (void)setDisplayRowHint:(int)hint;
- (void)setDisplayType:(int)type;
- (void)setDisplayTypeHint:(int)hint;
- (void)setDynamicDisplayCorner:(unint64_t)corner;
- (void)setDynamicLayout:(BOOL)layout;
- (void)setFlickDirection:(int64_t)direction;
- (void)setForceMultitap:(BOOL)multitap;
- (void)setFrame:(CGRect)frame;
- (void)setGeometry:(id)geometry;
- (void)setGhost:(BOOL)ghost;
- (void)setGridLayout:(BOOL)layout;
- (void)setGroupNeighbor:(unint64_t)neighbor;
- (void)setInteractionType:(int)type;
- (void)setIsGenerated:(BOOL)generated;
- (void)setLayoutTag:(id)tag passingKeyTest:(id)test;
- (void)setMergeAsMoreKey:(BOOL)key;
- (void)setPaddedFrame:(CGRect)frame;
- (void)setPopupDirection:(int64_t)direction;
- (void)setPreventPaddle:(BOOL)paddle;
- (void)setRendering:(int)rendering;
- (void)setResizingOffset:(double)offset;
- (void)setSelectedVariantIndex:(int64_t)index;
- (void)setSplitMode:(int)mode;
- (void)setState:(int)state;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setToggleKeys:(id)keys forKeyName:(id)name;
- (void)setVariantType:(int)type;
- (void)setVisible:(BOOL)visible;
- (void)setVisualStyle:(int)style;
- (void)setVisualStyling:(id)styling;
- (void)shiftRowAndResizeLeadingControlKey:(id)key toSize:(CGSize)size scale:(double)scale;
- (void)subsumeDisappearingKeyName:(id)name intoKeyName:(id)keyName factors:(id)factors inRightToLeft:(BOOL)left;
- (void)swapToggleKeys:(id)keys;
- (void)updateCachedKeyList;
- (void)updateDictationKeyOnNumberPads:(BOOL)pads;
- (void)updateDynamicFlickKeycapOnKeysWithLayoutInfo:(id)info;
- (void)updateFlickKeycapOnKeys;
- (void)updateFlickKeycapOnKeysWithLayoutInfo:(id)info;
- (void)updateKeysForType:(int64_t)type;
- (void)updateMoreAndInternationalKeysWithOptions:(int)options;
- (void)updateVariantTypeForActions:(unsigned int)actions;
- (void)zipAttributes;
- (void)zipGeometries:(BOOL)geometries attributes:(BOOL)attributes layoutInfo:(id)info;
- (void)zipGeometry;
@end

@implementation UIKBTree

- (BOOL)supportsSupplementalDisplayString
{
  v2 = [(UIKBTree *)self stringForProperty:@"KBhint"];
  v3 = [v2 isEqualToString:@"SupplementalDisplayString"];

  return v3;
}

- (BOOL)isRightToLeftSensitive
{
  displayType = [(UIKBTree *)self displayType];
  if (displayType == 20)
  {
    localizationKey = [(UIKBTree *)self localizationKey];
    v5 = localizationKey != 0;
  }

  else
  {
    v6 = displayType;
    interactionType = [(UIKBTree *)self interactionType];
    if (v6 == 21 || interactionType == 13)
    {
      displayTypeHint = [(UIKBTree *)self displayTypeHint];
      if (displayTypeHint >= 0xC)
      {
        v5 = 0;
      }

      else
      {
        v5 = 0x83Bu >> displayTypeHint;
      }
    }

    else
    {
      v5 = v6 == 3 || interactionType == 4 || interactionType == 37 || v6 == 26 || v6 == 7;
    }
  }

  return v5 & 1;
}

- (BOOL)isExemptFromInputManagerLayout
{
  if ([(UIKBTree *)self displayType]== 49)
  {
    v3 = 1;
  }

  else
  {
    interactionType = [(UIKBTree *)self interactionType];
    if (interactionType <= 0x11)
    {
      v3 = 0x7A9u >> interactionType;
    }

    else
    {
      v3 = 1;
    }
  }

  return v3 & 1;
}

- (BOOL)preventPaddle
{
  v2 = [(UIKBTree *)self numberForProperty:@"KBpreventPaddle"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (CGRect)_keyplaneFrame
{
  v30 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v7 = [subtrees countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(subtrees);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v31.origin.x = x;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        IsNull = CGRectIsNull(v31);
        [v11 frame];
        if (IsNull)
        {
          height = v16;
          width = v15;
          y = v14;
          x = v13;
        }

        else if (!CGRectIsEmpty(*&v13))
        {
          [v11 frame];
          v35.origin.x = v17;
          v35.origin.y = v18;
          v35.size.width = v19;
          v35.size.height = v20;
          v32.origin.x = x;
          v32.origin.y = y;
          v32.size.width = width;
          v32.size.height = height;
          v33 = CGRectUnion(v32, v35);
          x = v33.origin.x;
          y = v33.origin.y;
          width = v33.size.width;
          height = v33.size.height;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [subtrees countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (double)resizingOffset
{
  v2 = [(UIKBTree *)self numberForProperty:@"resizingOffset"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (int)variantType
{
  overrideDisplayString = [(UIKBTree *)self overrideDisplayString];
  if (overrideDisplayString)
  {
    _variantType = 0;
  }

  else
  {
    _variantType = [(UIKBTree *)self _variantType];
  }

  return _variantType;
}

- (int64_t)currentKeyboardType
{
  v2 = [(UIKBTree *)self numberForProperty:@"KBCachedKeyboardType"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)usesControlKeyAppearance
{
  v2 = [(UIKBTree *)self stringForProperty:@"KBhint"];
  v3 = [v2 isEqualToString:@"ControlLike"];

  return v3;
}

- (id)keys
{
  v18 = *MEMORY[0x1E69E9840];
  cache = [(UIKBTree *)self cache];
  array = [cache objectForKey:@"keys"];

  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(UIKBTree *)self _addKeylayoutKeys:array];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subtrees = [(UIKBTree *)self subtrees];
    v6 = [subtrees countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(subtrees);
          }

          [*(*(&v13 + 1) + 8 * i) _addKeylayoutKeys:array];
        }

        v7 = [subtrees countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    cache2 = [(UIKBTree *)self cache];
    [cache2 setObject:array forKey:@"keys"];
  }

  v11 = array;

  return v11;
}

- (NSString)name
{
  if (self->effectiveLayoutTag && self->type == 12)
  {
    v2 = [(NSMutableDictionary *)self->properties objectForKey:?];
    name = [v2 name];
  }

  else
  {
    name = self->name;
  }

  return name;
}

- (id)overrideDisplayString
{
  v3 = [(UIKBTree *)self stringForProperty:@"KBoverrideDisplayString"];
  if ([v3 length] >= 2 && -[UIKBTree _variantType](self, "_variantType") == 5)
  {
    v4 = [v3 substringFromIndex:1];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (id)representedString
{
  v3 = [(UIKBTree *)self stringForProperty:@"KBoverrideDisplayString"];
  if (v3 && [(UIKBTree *)self _variantType]== 5)
  {
    if ([v3 length] < 2)
    {
      v4 = v3;
    }

    else
    {
      v4 = [v3 substringToIndex:1];
    }

    v7 = v4;
  }

  else
  {
    fullRepresentedString = [(UIKBTree *)self fullRepresentedString];
    if (-[UIKBTree interactionType](self, "interactionType") == 16 && [fullRepresentedString length])
    {
      _firstGrapheme = [fullRepresentedString _firstGrapheme];
    }

    else
    {
      _firstGrapheme = fullRepresentedString;
    }

    v7 = _firstGrapheme;
  }

  return v7;
}

- (id)fullRepresentedString
{
  properties = [(UIKBTree *)self properties];
  v3 = [properties objectForKey:@"KBrepresentedString"];

  return v3;
}

- (id)rowSet
{
  v21 = *MEMORY[0x1E69E9840];
  dynamicLayout = [(UIKBTree *)self dynamicLayout];
  type = [(UIKBTree *)self type];
  if (!dynamicLayout)
  {
    if (type == 3)
    {
      selfCopy = [(UIKBTree *)self keySet];
LABEL_18:
      v5 = selfCopy;
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (type != 3)
  {
    type2 = [(UIKBTree *)self type];
    if (type2 == 15)
    {
      selfCopy = self;
      goto LABEL_18;
    }

LABEL_19:
    v5 = 0;
    goto LABEL_22;
  }

  v5 = [(UIKBTree *)self subtreeWithType:15];
  if ([v5 rowSetType])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    subtrees = [(UIKBTree *)self subtrees];
    v7 = [subtrees countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(subtrees);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (![v11 rowSetType])
          {
            v14 = v11;

            v5 = v14;
            goto LABEL_21;
          }
        }

        v8 = [subtrees countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:
  }

LABEL_22:

  return v5;
}

- (CGRect)frame
{
  if ([(UIKBTree *)self type]== 2)
  {
    [(UIKBTree *)self _keyplaneFrame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    shape = [(UIKBTree *)self shape];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [shape frame];
      v4 = v12;
      v6 = v13;
      v8 = v14;
      v10 = v15;
    }

    else
    {
      v4 = *MEMORY[0x1E695F058];
      v6 = *(MEMORY[0x1E695F058] + 8);
      v8 = *(MEMORY[0x1E695F058] + 16);
      v10 = *(MEMORY[0x1E695F058] + 24);
    }
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)isSplit
{
  name = [(UIKBTree *)self name];
  v3 = [name hasSuffix:@"-split"];

  return v3;
}

- ($5C396DA91E87D63640AC871340DC94CC)visualStyling
{
  v3 = [(NSMutableDictionary *)self->properties objectForKey:@"KBvisualStyling"];
  v4 = v3;
  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = [(UIKBTree *)self stylingFromVisualStyle];
  }

  return intValue;
}

- (int64_t)rowSetType
{
  v2 = [(UIKBTree *)self numberForProperty:@"KBRowSetVariantType"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (NSMutableDictionary)properties
{
  if (self->effectiveLayoutTag && self->type == 12)
  {
    v2 = [(NSMutableDictionary *)self->properties objectForKey:?];
    properties = [v2 properties];
  }

  else
  {
    properties = self->properties;
  }

  return properties;
}

- (int)type
{
  if (self->effectiveLayoutTag)
  {
    v2 = self->type == 12;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    return self->type;
  }

  v4 = [(NSMutableDictionary *)self->properties objectForKey:?];
  type = [v4 type];

  return type;
}

- (BOOL)behavesAsShiftKey
{
  if ([(UIKBTree *)self interactionType]!= 14)
  {
    return 0;
  }

  if ([(UIKBTree *)self displayTypeHint])
  {
    return [(UIKBTree *)self displayTypeHint]== 5;
  }

  return 1;
}

- (id)shiftAlternateKeyplaneName
{
  if (!+[UIKeyboardLayout _showSmallDisplayKeyplane]|| ([(UIKBTree *)self stringForProperty:@"shift-alternate-small-display"], (name = objc_claimAutoreleasedReturnValue()) == 0))
  {
    name = [(UIKBTree *)self stringForProperty:@"shift-alternate"];
    if (!name)
    {
      name = [(UIKBTree *)self name];
    }
  }

  return name;
}

- (BOOL)dynamicLayout
{
  v2 = [(UIKBTree *)self numberForProperty:@"KBdynamic"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)layoutName
{
  cache = [(UIKBTree *)self cache];
  v4 = [cache objectForKey:@"layoutName"];

  if (!v4)
  {
    v5 = UIKeyboardGetCurrentInputMode();
    v4 = KBStarLayoutString(v5);

    cache2 = [(UIKBTree *)self cache];
    [cache2 setObject:v4 forKey:@"layoutName"];
  }

  return v4;
}

- (BOOL)visible
{
  v2 = [(UIKBTree *)self numberForProperty:@"visible"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)_gesturesEnabled
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v3 preferencesActions];
  if ([preferencesActions BOOLForPreferenceKey:@"GesturesEnabled"] && !-[UIKBTree isSplit](self, "isSplit"))
  {
    v5 = ![(UIKBTree *)self isFloating];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_stringTypeKeysForDynamicRow
{
  v42 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if ([(UIKBTree *)self dynamicLayout])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [(UIKBTree *)self subtrees];
    v5 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v36;
      v23 = *v36;
      selfCopy = self;
      do
      {
        v8 = 0;
        v25 = v6;
        do
        {
          if (*v36 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v35 + 1) + 8 * v8);
          if ([v9 type] == 8)
          {
            if ([(UIKBTree *)self _keyIsStringType:v9])
            {
              [array addObject:v9];
            }
          }

          else
          {
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            subtrees = [v9 subtrees];
            v11 = [subtrees countByEnumeratingWithState:&v31 objects:v40 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v32;
              do
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v32 != v13)
                  {
                    objc_enumerationMutation(subtrees);
                  }

                  v15 = *(*(&v31 + 1) + 8 * i);
                  if ([v15 type] == 8)
                  {
                    [array addObject:v15];
                  }

                  else if ([v15 type] == 4 || objc_msgSend(v15, "type") == 7)
                  {
                    v29 = 0u;
                    v30 = 0u;
                    v27 = 0u;
                    v28 = 0u;
                    subtrees2 = [v15 subtrees];
                    v17 = [subtrees2 countByEnumeratingWithState:&v27 objects:v39 count:16];
                    if (v17)
                    {
                      v18 = v17;
                      v19 = *v28;
                      do
                      {
                        for (j = 0; j != v18; ++j)
                        {
                          if (*v28 != v19)
                          {
                            objc_enumerationMutation(subtrees2);
                          }

                          [array addObject:*(*(&v27 + 1) + 8 * j)];
                        }

                        v18 = [subtrees2 countByEnumeratingWithState:&v27 objects:v39 count:16];
                      }

                      while (v18);
                    }
                  }
                }

                v12 = [subtrees countByEnumeratingWithState:&v31 objects:v40 count:16];
              }

              while (v12);
            }

            v7 = v23;
            self = selfCopy;
            v6 = v25;
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v6);
    }

    if ([array count])
    {
      v4 = array;
    }

    else
    {
      v4 = 0;
    }
  }

  v21 = v4;

  return v4;
}

- (CGRect)paddedFrame
{
  shape = [(UIKBTree *)self shape];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [shape paddedFrame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
  }

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)scriptSwitchKey
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(UIKBTree *)self firstCachedKeyWithName:@"Roman-to-Non-Roman-Switch-Key"];
  if (v3 || ([(UIKBTree *)self firstCachedKeyWithName:@"Non-Roman-to-Roman-Switch-Key"], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
  }

  else
  {
    [(UIKBTree *)self cachedKeysByKeyName:@"More-Key"];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          name = [v11 name];
          v13 = [name hasSuffix:@"Roman-Switch-Key"];

          if (v13)
          {
            v4 = v11;
            goto LABEL_17;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
LABEL_17:
  }

  return v4;
}

- (id)autolocalizedKeyCacheIterator
{
  v3 = [UIKBTreeLocalizedKeylistEnumerator alloc];
  cache = [(UIKBTree *)self cache];
  v5 = [(UIKBTreeLocalizedKeylistEnumerator *)v3 initWithKeyplaneCache:cache];

  return v5;
}

- (id)keySet
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v3 = [subtrees countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(subtrees);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 type] == 4)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [subtrees countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (int64_t)nativeIdiom
{
  v2 = [(UIKBTree *)self objectForProperty:@"nativeIdiom"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (id)cacheDisplayString
{
  overrideDisplayString = [(UIKBTree *)self overrideDisplayString];
  v4 = overrideDisplayString;
  if (overrideDisplayString)
  {
    v5 = overrideDisplayString;
  }

  else
  {
    displayString = [(UIKBTree *)self displayString];
    v7 = displayString;
    if (displayString)
    {
      representedString = displayString;
    }

    else
    {
      representedString = [(UIKBTree *)self representedString];
    }

    v5 = representedString;
  }

  return v5;
}

- (id)cacheSecondaryDisplayString
{
  if ([(UIKBTree *)self displayType]== 25)
  {
    secondaryDisplayStrings = [(UIKBTree *)self secondaryDisplayStrings];
    v4 = [secondaryDisplayStrings count];

    if (v4)
    {
      secondaryDisplayStrings2 = [(UIKBTree *)self secondaryDisplayStrings];
      firstObject = [secondaryDisplayStrings2 firstObject];
LABEL_11:

      goto LABEL_12;
    }
  }

  if ([(UIKBTree *)self displayType]== 7 || [(UIKBTree *)self displayType]== 20 || [(UIKBTree *)self displayTypeHint]== 10)
  {
    secondaryDisplayStrings2 = [(UIKBTree *)self secondaryDisplayStrings];
    v7 = [secondaryDisplayStrings2 objectAtIndex:0];
    v8 = v7;
    if (v7)
    {
      firstObject = v7;
    }

    else
    {
      secondaryRepresentedStrings = [(UIKBTree *)self secondaryRepresentedStrings];
      firstObject = [secondaryRepresentedStrings objectAtIndex:0];
    }

    goto LABEL_11;
  }

  firstObject = 0;
LABEL_12:

  return firstObject;
}

- (int)displayRowHint
{
  v2 = [(UIKBTree *)self numberForProperty:@"KBdisplayRowHint"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 1;
  }

  return intValue;
}

- (unint64_t)groupNeighbor
{
  v2 = [(UIKBTree *)self numberForProperty:@"group-neighbor"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (id)componentName
{
  name = [(UIKBTree *)self name];
  v3 = tailComponentOfName(name);

  return v3;
}

- (id)nameFromAttributes
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  properties = [(UIKBTree *)self properties];
  v3 = [properties countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    v6 = &stru_1EFB14550;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(properties);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if (([v8 isEqualToString:@"KBabstract"] & 1) == 0)
        {
          if ([v8 length] > 5)
          {
            v9 = 6;
          }

          else
          {
            v9 = [v8 length];
          }

          v10 = MEMORY[0x1E696AEC0];
          v11 = [v8 substringToIndex:v9];
          properties2 = [(UIKBTree *)self properties];
          v13 = [properties2 objectForKey:v8];
          v14 = [v10 stringWithFormat:@"%@_%@%@", v6, v11, v13];

          v6 = v14;
        }
      }

      v4 = [properties countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = &stru_1EFB14550;
  }

  return v6;
}

- (id)unhashedName
{
  name = [(UIKBTree *)self name];
  v3 = nameByRemovingHash(name);

  return v3;
}

- (BOOL)isHashed
{
  name = [(UIKBTree *)self name];
  v4 = [name length];

  v5 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    name2 = [(UIKBTree *)self name];
    v8 = [name2 characterAtIndex:v6] - 48;

    if (v8 > 9)
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  name3 = [(UIKBTree *)self name];
  v9 = [name3 characterAtIndex:v6] == 95;

  return v9;
}

- (UIKBTree)initWithType:(int)type
{
  v3 = *&type;
  v9.receiver = self;
  v9.super_class = UIKBTree;
  v4 = [(UIKBTree *)&v9 init];
  [(UIKBTree *)v4 setType:v3];
  [(UIKBTree *)v4 setName:0];
  isLeafType = [(UIKBTree *)v4 isLeafType];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(UIKBTree *)v4 setProperties:dictionary];

  if (isLeafType)
  {
    [(UIKBTree *)v4 setSubtrees:0];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    [(UIKBTree *)v4 setSubtrees:array];
  }

  [(UIKBTree *)v4 setCache:0];
  if (v3 == 12)
  {
    [(UIKBTree *)v4 setLayoutTag:@"Default"];
  }

  return v4;
}

+ (id)treeOfType:(int)type
{
  v3 = [[UIKBTree alloc] initWithType:*&type];

  return v3;
}

- (UIKBTree)initWithType:(int)type withName:(id)name withProperties:(id)properties withSubtrees:(id)subtrees withCache:(id)cache
{
  nameCopy = name;
  propertiesCopy = properties;
  subtreesCopy = subtrees;
  cacheCopy = cache;
  v25.receiver = self;
  v25.super_class = UIKBTree;
  v17 = [(UIKBTree *)&v25 init];
  v17->type = type;
  objc_storeStrong(&v17->name, name);
  properties = v17->properties;
  v17->properties = propertiesCopy;
  v19 = propertiesCopy;

  subtrees = v17->subtrees;
  v17->subtrees = subtreesCopy;
  v21 = subtreesCopy;

  cache = v17->cache;
  v17->cache = cacheCopy;

  if (type == 1)
  {
    if ([nameCopy containsString:@"Kana"])
    {
      properties = [(UIKBTree *)v17 properties];
      [properties setObject:&unk_1EFE31000 forKey:@"is-kana-keyboard"];
    }
  }

  else if (type == 12)
  {
    [(UIKBTree *)v17 setLayoutTag:@"Default"];
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[UIKBTree alloc] initWithType:[(UIKBTree *)self type]];
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  properties = [(UIKBTree *)self properties];
  v7 = [v5 initWithCapacity:{objc_msgSend(properties, "count")}];
  [(UIKBTree *)v4 setProperties:v7];

  properties2 = [(UIKBTree *)self properties];
  v9 = [properties2 copy];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __25__UIKBTree_copyWithZone___block_invoke;
  v22[3] = &unk_1E710FE08;
  v10 = v4;
  v23 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v22];
  subtrees = [(UIKBTree *)self subtrees];
  if (subtrees)
  {
    v12 = subtrees;
    isLeafType = [(UIKBTree *)self isLeafType];

    if (!isLeafType)
    {
      v14 = MEMORY[0x1E695DF70];
      subtrees2 = [(UIKBTree *)self subtrees];
      v16 = [v14 arrayWithArray:subtrees2];
      [(UIKBTree *)v10 setSubtrees:v16];
    }
  }

  v17 = MEMORY[0x1E696AEC0];
  v18 = +[UIKBTree uniqueName];
  name = [(UIKBTree *)self name];
  v20 = [v17 stringWithFormat:@"%@_%@", v18, name];
  [(UIKBTree *)v10 setName:v20];

  return v10;
}

void __25__UIKBTree_copyWithZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = [*(a1 + 32) properties];
  v8 = v7;
  if (isKindOfClass)
  {
    [v7 setObject:v10 forKey:v5];
  }

  else
  {
    v9 = [v10 copy];
    [v8 setObject:v9 forKey:v5];

    v5 = v9;
  }
}

- (BOOL)isSameAsTree:(id)tree
{
  v57 = *MEMORY[0x1E69E9840];
  treeCopy = tree;
  if ([treeCopy type] == self->type && (v5 = -[NSMutableDictionary count](self->properties, "count"), objc_msgSend(treeCopy, "properties"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 == v7) && (v8 = self->subtrees != 0, objc_msgSend(treeCopy, "subtrees"), v9 = objc_claimAutoreleasedReturnValue(), v10 = v8 ^ (v9 != 0), v9, (v10 & 1) == 0) && ((subtrees = self->subtrees) == 0 || (v12 = -[NSMutableArray count](subtrees, "count"), objc_msgSend(treeCopy, "subtrees"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12 == v14)))
  {
    if (-[UIKBTree type](self, "type") != 7 || (-[UIKBTree componentName](self, "componentName"), v15 = objc_claimAutoreleasedReturnValue(), [treeCopy componentName], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, v17))
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = self->properties;
      v18 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v51;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v51 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v50 + 1) + 8 * i);
            if (([v22 isEqualToString:@"KBabstract"] & 1) == 0)
            {
              v23 = [(NSMutableDictionary *)self->properties objectForKey:v22];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              v25 = [(NSMutableDictionary *)self->properties objectForKey:v22];
              properties = [treeCopy properties];
              v27 = [properties objectForKey:v22];
              if (isKindOfClass)
              {
                v28 = [v25 isEqualToString:v27];

                if ((v28 & 1) == 0)
                {
                  goto LABEL_39;
                }
              }

              else
              {
                v29 = [v25 isEqual:v27];

                if (!v29)
                {
                  goto LABEL_39;
                }
              }
            }
          }

          v19 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
        }

        while (v19);
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = self->subtrees;
      v30 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v47;
LABEL_22:
        v33 = 0;
        while (1)
        {
          if (*v47 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v46 + 1) + 8 * v33);
          subtrees = [treeCopy subtrees];
          v17 = [subtrees containsObject:v34];

          if (!v17)
          {
            break;
          }

          if (v31 == ++v33)
          {
            v31 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v46 objects:v55 count:16];
            if (v31)
            {
              goto LABEL_22;
            }

            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        obj = [treeCopy subtrees];
        v36 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v43;
LABEL_30:
          v39 = 0;
          while (1)
          {
            if (*v43 != v38)
            {
              objc_enumerationMutation(obj);
            }

            if (![(NSMutableArray *)self->subtrees containsObject:*(*(&v42 + 1) + 8 * v39)])
            {
              break;
            }

            if (v37 == ++v39)
            {
              v37 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v42 objects:v54 count:16];
              LOBYTE(v17) = 1;
              if (v37)
              {
                goto LABEL_30;
              }

              goto LABEL_40;
            }
          }

LABEL_39:
          LOBYTE(v17) = 0;
        }

        else
        {
          LOBYTE(v17) = 1;
        }
      }

LABEL_40:
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (BOOL)isEqualToTree:(id)tree
{
  treeCopy = tree;
  v5 = [(UIKBTree *)self isSameAsTree:treeCopy];
  name = [(UIKBTree *)self name];
  name2 = [treeCopy name];

  LOBYTE(treeCopy) = [name isEqualToString:name2];
  return v5 & treeCopy;
}

- (BOOL)isDuplicateOfTree:(id)tree
{
  treeCopy = tree;
  v5 = [(UIKBTree *)self isSameAsTree:treeCopy];
  name = [(UIKBTree *)self name];
  name2 = [treeCopy name];

  LOBYTE(treeCopy) = [name isEqualToString:name2] ^ 1;
  return v5 & treeCopy;
}

- (BOOL)setObject:(id)object forProperty:(id)property
{
  objectCopy = object;
  propertyCopy = property;
  if (!propertyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKBTree.m" lineNumber:268 description:@"property passed in is nil"];
  }

  properties = [(UIKBTree *)self properties];
  v10 = properties;
  if (objectCopy)
  {
    [properties setObject:objectCopy forKey:propertyCopy];
  }

  else
  {
    [properties removeObjectForKey:propertyCopy];
  }

  return 1;
}

- (id)objectForProperty:(id)property
{
  propertyCopy = property;
  if (propertyCopy)
  {
    cache = [(UIKBTree *)self cache];
    v6 = [cache objectForKey:propertyCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      properties = [(UIKBTree *)self properties];
      v8 = [properties objectForKey:propertyCopy];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)intForProperty:(id)property
{
  if (!property)
  {
    return 0;
  }

  v3 = [(UIKBTree *)self numberForProperty:?];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)BOOLForProperty:(id)property
{
  propertyCopy = property;
  if (propertyCopy)
  {
    properties = [(UIKBTree *)self properties];
    v6 = [properties objectForKey:propertyCopy];
    if ([v6 intValue] == 32)
    {
      v7 = 1;
    }

    else
    {
      cache = [(UIKBTree *)self cache];
      v9 = [cache objectForKey:propertyCopy];
      v7 = [v9 intValue] == 32;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = UIKBTree;
  v3 = [(UIKBTree *)&v11 description];
  v4 = [UIKBTree stringForType:[(UIKBTree *)self type]];
  name = [(UIKBTree *)self name];
  properties = [(UIKBTree *)self properties];
  v7 = [properties count];
  subtrees = [(UIKBTree *)self subtrees];
  v9 = [v3 stringByAppendingFormat:@" - %@/%@: %ld properties + %ld subtrees", name, v4, v7, objc_msgSend(subtrees, "count")];

  return v9;
}

- (id)recursiveDescription
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(UIKBTree *)self description];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v5 = [subtrees countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(subtrees);
        }

        recursiveDescription = [*(*(&v12 + 1) + 8 * v8) recursiveDescription];
        v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: \n\t%@", v9, recursiveDescription];

        ++v8;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [subtrees countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)stringForType:(int)type
{
  if ((type - 1) > 0xE)
  {
    return 0;
  }

  else
  {
    return off_1E7110028[type - 1];
  }
}

- (id)subtreeWithType:(int)type
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v5 = [subtrees countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(subtrees);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 type] != type)
        {
          type = [v9 type];
          if (type != 8 || type != 12)
          {
            continue;
          }
        }

        v11 = v9;
        goto LABEL_14;
      }

      v6 = [subtrees countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (id)subtreeWithName:(id)name
{
  v21 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    lowercaseString = [nameCopy lowercaseString];
    v7 = tailComponentOfName(lowercaseString);

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    subtrees = [(UIKBTree *)self subtrees];
    v5 = [subtrees countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(subtrees);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          name = [v11 name];
          lowercaseString2 = [name lowercaseString];
          v14 = tailComponentOfName(lowercaseString2);

          if ([v14 isEqualToString:v7])
          {
            v5 = v11;

            goto LABEL_12;
          }
        }

        v5 = [subtrees countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v5;
}

- (id)subtreeWithName:(id)name rows:(id)rows
{
  nameCopy = name;
  rowsCopy = rows;
  v8 = rowsCopy;
  v9 = 0;
  if (nameCopy && rowsCopy)
  {
    v10 = [nameCopy substringFromIndex:3];
    intValue = [v10 intValue];
    v12 = intValue - 1;

    if (intValue >= 2)
    {
      v13 = [v8 objectForKey:@"Row0"];

      v14 = (intValue - 1);
      if (v13)
      {
        v15 = intValue;
      }

      else
      {
        v15 = intValue - 1;
      }

      v16 = 1;
      v12 = v15;
      do
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Row%ld", v16];
        v18 = [v8 objectForKey:v17];
        v19 = v18 == 0;

        v12 -= v19;
        ++v16;
        --v14;
      }

      while (v14);
    }

    if ((v12 & 0x80000000) == 0)
    {
      subtrees = [(UIKBTree *)self subtrees];
      v21 = [subtrees count];

      if (v21 > v12)
      {
        v22 = v12;
LABEL_13:
        subtrees2 = [(UIKBTree *)self subtrees];
        v9 = [subtrees2 objectAtIndex:v22];

        goto LABEL_15;
      }
    }

    subtrees3 = [(UIKBTree *)self subtrees];
    v24 = [subtrees3 count];

    v22 = 0;
    if (v24)
    {
      goto LABEL_13;
    }

    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (id)subtreesWithProperty:(id)property value:(id)value
{
  v25 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  valueCopy = value;
  v8 = valueCopy;
  array = 0;
  if (propertyCopy && valueCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    subtrees = [(UIKBTree *)self subtrees];
    v10 = [subtrees countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(subtrees);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          properties = [v14 properties];
          v16 = [properties objectForKey:propertyCopy];
          v17 = [v16 isEqual:v8];

          if (v17)
          {
            [array addObject:v14];
          }
        }

        v11 = [subtrees countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }
  }

  return array;
}

- (id)flattenedSubtrees
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v5 = [subtrees countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(subtrees);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        null = [MEMORY[0x1E695DFB0] null];

        if (v9 != null)
        {
          subtrees2 = [v9 subtrees];

          if (subtrees2)
          {
            flattenedSubtrees = [v9 flattenedSubtrees];
            [array addObjectsFromArray:flattenedSubtrees];
          }

          else
          {
            [array addObject:v9];
          }
        }
      }

      v6 = [subtrees countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return array;
}

- (int)indexOfSubtree:(id)subtree
{
  subtreeCopy = subtree;
  if (subtreeCopy && ([(UIKBTree *)self subtrees], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    subtrees = [(UIKBTree *)self subtrees];
    v7 = [subtrees indexOfObject:subtreeCopy];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (BOOL)_needsScaling
{
  isSplit = [(UIKBTree *)self isSplit];
  if (isSplit)
  {
    if ([(UIKBTree *)self isGenerated])
    {
      LOBYTE(isSplit) = 0;
    }

    else
    {
      LOBYTE(isSplit) = ![(UIKBTree *)self BOOLForProperty:@"isScaled"];
    }
  }

  return isSplit;
}

- (void)mergeReturnKey:(id)key withReturnKey:(id)returnKey
{
  keyCopy = key;
  returnKeyCopy = returnKey;
  if ([keyCopy visible] && objc_msgSend(returnKeyCopy, "visible"))
  {
    [keyCopy frame];
    MaxY = CGRectGetMaxY(v72);
    [returnKeyCopy frame];
    v7 = CGRectGetMaxY(v73);
    if (MaxY <= v7)
    {
      v8 = returnKeyCopy;
    }

    else
    {
      v8 = keyCopy;
    }

    if (MaxY <= v7)
    {
      v9 = keyCopy;
    }

    else
    {
      v9 = returnKeyCopy;
    }

    v10 = v8;
    v11 = v9;
    v12 = +[UIKBShape shape];
    [v10 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v11 frame];
    v78.origin.x = v21;
    v78.origin.y = v22;
    v78.size.width = v23;
    v78.size.height = v24;
    v74.origin.x = v14;
    v74.origin.y = v16;
    v74.size.width = v18;
    v74.size.height = v20;
    v75 = CGRectUnion(v74, v78);
    [v12 setFrame:{v75.origin.x, v75.origin.y, v75.size.width, v75.size.height}];
    [v10 paddedFrame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [v11 paddedFrame];
    v79.origin.x = v33;
    v79.origin.y = v34;
    v79.size.width = v35;
    v79.size.height = v36;
    v76.origin.x = v26;
    v76.origin.y = v28;
    v76.size.width = v30;
    v76.size.height = v32;
    v77 = CGRectUnion(v76, v79);
    [v12 setPaddedFrame:{v77.origin.x, v77.origin.y, v77.size.width, v77.size.height}];
    [v10 paddedFrame];
    v38 = v37;
    [v11 paddedFrame];
    v40 = v38 - v39;
    [v11 paddedFrame];
    v42 = v41;
    [v10 paddedFrame];
    v44 = v43;
    [v11 paddedFrame];
    v46 = v45;
    [v10 paddedFrame];
    if (v42 <= v44)
    {
      if (v46 >= v47)
      {
        [v11 paddedFrame];
        v55 = v53 + v54;
        [v10 paddedFrame];
        v58 = v56 + v57;
        [v11 paddedFrame];
        v61 = v59 + v60;
        [v10 paddedFrame];
        v64 = v62 + v63;
        if (v55 <= v58)
        {
          if (v61 >= v64)
          {
            v49 = 0;
            v48 = *MEMORY[0x1E695F060];
            v40 = *(MEMORY[0x1E695F060] + 8);
          }

          else
          {
            [v10 paddedFrame];
            v67 = v65 + v66;
            [v11 paddedFrame];
            v48 = v67 - (v68 + v69);
            v49 = 2;
          }
        }

        else
        {
          v48 = v61 - v64;
          v49 = 8;
        }
      }

      else
      {
        [v10 paddedFrame];
        v51 = v50;
        [v11 paddedFrame];
        v48 = v51 - v52;
        v49 = 4;
      }
    }

    else
    {
      v48 = v46 - v47;
      v49 = 1;
    }

    [v12 setConcaveCorner:v49];
    [v12 setConcaveCornerOffset:{v48, v40}];
    [v11 setShape:v12];
    [v10 setShape:v12];
    [v11 setVisible:0];
  }
}

- (void)updateFlickKeycapOnKeys
{
  v5 = objc_alloc_init(UIKBLayoutInfo);
  v3 = +[UIKeyboardImpl activeInstance];
  -[UIKBLayoutInfo setIsAutoShifted:](v5, "setIsAutoShifted:", [v3 isAutoShifted]);

  v4 = +[UIKeyboardImpl activeInstance];
  -[UIKBLayoutInfo setIsShiftLocked:](v5, "setIsShiftLocked:", [v4 isShiftLocked]);

  [(UIKBTree *)self updateFlickKeycapOnKeysWithLayoutInfo:v5];
}

- (void)updateFlickKeycapOnKeysWithLayoutInfo:(id)info
{
  v105 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = [(UIKBTree *)self subtreeWithType:3];
  dynamicLayout = [v5 dynamicLayout];

  if (!dynamicLayout)
  {
    v75 = infoCopy;
    v7 = [(UIKBTree *)self _isShiftedButNotAutoShiftedWithLayoutInfo:infoCopy];
    _gesturesEnabled = [(UIKBTree *)self _gesturesEnabled];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    obj = [(UIKBTree *)self subtrees];
    v78 = [obj countByEnumeratingWithState:&v96 objects:v104 count:16];
    if (!v78)
    {
      goto LABEL_90;
    }

    v77 = *v97;
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = 10;
    }

    v82 = v9;
    v84 = _gesturesEnabled;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v97 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v79 = v10;
        v11 = *(*(&v96 + 1) + 8 * v10);
        rowSet = [v11 rowSet];
        subtrees = [rowSet subtrees];

        v14 = [v11 geometrySet:0];
        subtrees2 = [v14 subtrees];

        cachedGestureLayout = [v11 cachedGestureLayout];
        keySet = [cachedGestureLayout keySet];
        subtrees3 = [keySet subtrees];

        cachedGestureLayout2 = [v11 cachedGestureLayout];
        v19 = [cachedGestureLayout2 geometrySet:0];
        subtrees4 = [v19 subtrees];

        cachedGestureLayout3 = [v11 cachedGestureLayout];
        v21 = [cachedGestureLayout3 attributeSet:0];
        subtrees5 = [v21 subtrees];

        v22 = subtrees3;
        if ([subtrees count])
        {
          v23 = 0;
          v24 = 0;
          v92 = 0;
          v87 = subtrees3;
          v81 = subtrees;
          while (1)
          {
            if (v22 && [v22 count] <= v23)
            {
              goto LABEL_88;
            }

            v25 = [subtrees objectAtIndex:v24];
            if ([v25 dynamicLayout])
            {
              [v25 _keysForDynamicRow];
            }

            else
            {
              [v25 subtrees];
            }
            v26 = ;
            v83 = v25;
            if ([v26 count])
            {
              break;
            }

LABEL_87:

            ++v23;
            subtrees = v81;
            v24 = ++v92;
            v22 = v87;
            if ([v81 count] <= v92)
            {
              goto LABEL_88;
            }
          }

          v27 = 0;
          v28 = 0;
          v88 = v23;
          v90 = v26;
          while (2)
          {
            v29 = [v26 objectAtIndex:v27];
            v30 = v29;
            if (!_gesturesEnabled)
            {
              goto LABEL_82;
            }

            if ([v29 displayType] != 7 || (objc_msgSend(v30, "supportsSupplementalDisplayString") & 1) != 0)
            {
              if (v22)
              {
                if ([subtrees2 count] <= v92)
                {
                  v31 = 0;
                }

                else
                {
                  v31 = [subtrees2 objectAtIndex:v92];
                }

                if ([v22 count] <= v23)
                {
                  v91 = 0;
                }

                else
                {
                  v91 = [v22 objectAtIndex:v23];
                }

                if ([subtrees4 count] <= v23)
                {
                  v39 = 0;
                }

                else
                {
                  v39 = [subtrees4 objectAtIndex:v23];
                }

                v94 = v31;
                if ([subtrees5 count] <= v23)
                {
                  v93 = 0;
                }

                else
                {
                  v93 = [subtrees5 objectAtIndex:v23];
                }

                subtrees6 = [v39 subtrees];
                if ([subtrees6 count] <= v28)
                {
                  v42 = 0;
                }

                else
                {
                  subtrees7 = [v39 subtrees];
                  v42 = [subtrees7 objectAtIndex:v28];
                }

                subtrees8 = [v31 subtrees];
                if ([subtrees8 count] <= v27)
                {
                  v95 = 0;
                }

                else
                {
                  subtrees9 = [v31 subtrees];
                  v95 = [subtrees9 objectAtIndex:v27];
                }

                if (v42)
                {
                  [v42 frame];
                  MinY = CGRectGetMinY(v106);
                  [v95 frame];
                  if (MinY < CGRectGetMinY(v107))
                  {
                    --v92;
                    v46 = 7;
                    goto LABEL_78;
                  }

                  v47 = v28 << 32;
                  v48 = v28 + 1;
                  v49 = v28;
                  while (1)
                  {
                    v28 = v49;
                    [v42 frame];
                    MinX = CGRectGetMinX(v108);
                    [v95 frame];
                    if (MinX >= CGRectGetMinX(v109))
                    {
                      break;
                    }

                    subtrees10 = [v39 subtrees];
                    if ([subtrees10 count] <= v48)
                    {

LABEL_60:
                      v42 = 0;
                      v55 = 0;
                      ++v28;
                      goto LABEL_65;
                    }

                    subtrees11 = [v39 subtrees];
                    v53 = [subtrees11 objectAtIndex:v48];

                    v47 += 0x100000000;
                    v49 = v28 + 1;
                    ++v48;
                    v42 = v53;
                    if (!v53)
                    {
                      goto LABEL_60;
                    }
                  }

                  [v42 frame];
                  v54 = CGRectGetMinX(v110);
                  [v30 frame];
                  if (v54 > CGRectGetMaxX(v111))
                  {

                    v42 = 0;
                    goto LABEL_58;
                  }

                  subtrees12 = [v91 subtrees];
                  if ([subtrees12 count] <= (v47 >> 32))
                  {
                    v55 = 0;
                  }

                  else
                  {
                    subtrees13 = [v91 subtrees];
                    v55 = [subtrees13 objectAtIndex:v47 >> 32];
                  }
                }

                else
                {
LABEL_58:
                  v55 = 0;
                }

LABEL_65:
                displayString = [v55 displayString];
                if (displayString && ([v30 displayString], v59 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend(displayString, "isEqualToString:", v59), v59, (v60 & 1) == 0))
                {
                  v103 = displayString;
                  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
                  [v30 setSecondaryDisplayStrings:v68];

                  representedString = [v55 representedString];
                  v102 = representedString;
                  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
                  [v30 setSecondaryRepresentedStrings:v70];

                  [v30 setDisplayTypeHint:10];
                  [v30 setGestureKey:v55];
                  subtrees14 = [v93 subtrees];
                  if ([subtrees14 count] <= v28)
                  {
                    [v55 setCache:0];
                  }

                  else
                  {
                    subtrees15 = [v93 subtrees];
                    v73 = [subtrees15 objectAtIndex:v28];
                    [v55 setCache:v73];
                  }

                  _gesturesEnabled = v84;

                  v46 = 9;
                }

                else
                {
                  displayString2 = [v30 displayString];
                  if ([displayString isEqualToString:displayString2])
                  {
                    displayType = [v55 displayType];

                    if (displayType == 7)
                    {
                      secondaryDisplayStrings = [v55 secondaryDisplayStrings];
                      firstObject = [secondaryDisplayStrings firstObject];
                      v101 = firstObject;
                      v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
                      [v30 setSecondaryDisplayStrings:v65];

                      secondaryRepresentedStrings = [v55 secondaryRepresentedStrings];
                      firstObject2 = [secondaryRepresentedStrings firstObject];
                      v100 = firstObject2;
                      v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
                      [v30 setSecondaryRepresentedStrings:v67];

                      [v30 setDisplayTypeHint:10];
                      v46 = 9;
                      goto LABEL_72;
                    }
                  }

                  else
                  {
                  }

                  v46 = 0;
LABEL_72:
                  _gesturesEnabled = v84;
                }

                ++v28;

LABEL_78:
                if (v46)
                {

                  v74 = v46 == 9;
                  v22 = v87;
                  v23 = v88;
                  v26 = v90;
                  if (!v74)
                  {
                    goto LABEL_87;
                  }

LABEL_86:
                  if ([v26 count] <= ++v27)
                  {
                    goto LABEL_87;
                  }

                  continue;
                }

                v22 = v87;
                v23 = v88;
                v26 = v90;
              }

LABEL_82:
              if ([v30 displayTypeHint] == 10)
              {
                [v30 setDisplayTypeHint:0];
                if ([v30 displayType] != 7)
                {
                  [v30 setSecondaryDisplayStrings:0];
                  [v30 setSecondaryRepresentedStrings:0];
                  [v30 setGestureKey:0];
                }
              }

LABEL_85:

              goto LABEL_86;
            }

            break;
          }

          secondaryRepresentedStrings2 = [v30 secondaryRepresentedStrings];
          if ([secondaryRepresentedStrings2 count] == 1)
          {
            representedString2 = [v30 representedString];
            secondaryRepresentedStrings3 = [v30 secondaryRepresentedStrings];
            firstObject3 = [secondaryRepresentedStrings3 firstObject];
            v36 = [representedString2 isEqualToString:firstObject3];

            _gesturesEnabled = v84;
            v23 = v88;

            if (v36)
            {
              v37 = v30;
              v38 = 0;
LABEL_55:
              [v37 setDisplayTypeHint:v38];
              v26 = v90;
              goto LABEL_85;
            }
          }

          else
          {
          }

          v37 = v30;
          v38 = v82;
          goto LABEL_55;
        }

LABEL_88:

        v10 = v79 + 1;
      }

      while (v79 + 1 != v78);
      v78 = [obj countByEnumeratingWithState:&v96 objects:v104 count:16];
      if (!v78)
      {
LABEL_90:

        infoCopy = v75;
        goto LABEL_91;
      }
    }
  }

  [(UIKBTree *)self updateDynamicFlickKeycapOnKeysWithLayoutInfo:infoCopy];
LABEL_91:
}

- (void)updateDynamicFlickKeycapOnKeysWithLayoutInfo:(id)info
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = [(UIKBTree *)self _isShiftedButNotAutoShiftedWithLayoutInfo:info];
  _gesturesEnabled = [(UIKBTree *)self _gesturesEnabled];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [(UIKBTree *)self subtrees];
  v44 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v44)
  {
    v43 = *v51;
    if (v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 10;
    }

    v48 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v51 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v7;
        v8 = *(*(&v50 + 1) + 8 * v7);
        v9 = [v8 orderedRowsForType:{objc_msgSend(v8, "currentKeyboardType")}];
        cachedGestureLayout = [v8 cachedGestureLayout];
        v11 = [cachedGestureLayout orderedRowsForType:{objc_msgSend(v8, "currentKeyboardType")}];

        if ([v9 count])
        {
          v12 = 0;
          v46 = v11;
          v47 = v9;
          while (1)
          {
            v13 = [v9 objectAtIndex:v12];
            _stringTypeKeysForDynamicRow = [v13 _stringTypeKeysForDynamicRow];

            v49 = v12;
            if ([v11 count] <= v12)
            {
              _stringTypeKeysForDynamicRow2 = 0;
            }

            else
            {
              v15 = [v11 objectAtIndex:v12];
              _stringTypeKeysForDynamicRow2 = [v15 _stringTypeKeysForDynamicRow];
            }

            if ([_stringTypeKeysForDynamicRow count])
            {
              break;
            }

LABEL_42:

            v12 = v49 + 1;
            v9 = v47;
            v11 = v46;
            if ([v47 count] <= v49 + 1)
            {
              goto LABEL_43;
            }
          }

          v17 = 0;
          while (2)
          {
            v18 = [_stringTypeKeysForDynamicRow objectAtIndex:v17];
            v19 = v18;
            if (!_gesturesEnabled)
            {
              goto LABEL_33;
            }

            if ([v18 displayType] != 7 || (objc_msgSend(v19, "supportsSupplementalDisplayString") & 1) != 0)
            {
              if (!_stringTypeKeysForDynamicRow2)
              {
                goto LABEL_33;
              }

              if ([_stringTypeKeysForDynamicRow2 count] <= v17)
              {
                v20 = 0;
              }

              else
              {
                v20 = [_stringTypeKeysForDynamicRow2 objectAtIndex:v17];
              }

              displayString = [v20 displayString];
              if (displayString && ([v19 displayString], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(displayString, "isEqualToString:", v29), v29, (v30 & 1) == 0))
              {
                v57 = displayString;
                v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
                [v19 setSecondaryDisplayStrings:v39];

                representedString = [v20 representedString];
                v56 = representedString;
                v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
                [v19 setSecondaryRepresentedStrings:v41];

                [v19 setDisplayTypeHint:10];
                [v19 setGestureKey:v20];
LABEL_37:
              }

              else
              {
                displayString2 = [v19 displayString];
                if ([displayString isEqualToString:displayString2])
                {
                  displayType = [v20 displayType];

                  if (displayType == 7)
                  {
                    secondaryDisplayStrings = [v20 secondaryDisplayStrings];
                    firstObject = [secondaryDisplayStrings firstObject];
                    v55 = firstObject;
                    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
                    [v19 setSecondaryDisplayStrings:v35];

                    secondaryRepresentedStrings = [v20 secondaryRepresentedStrings];
                    firstObject2 = [secondaryRepresentedStrings firstObject];
                    v54 = firstObject2;
                    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
                    [v19 setSecondaryRepresentedStrings:v38];

                    [v19 setDisplayTypeHint:10];
                    goto LABEL_37;
                  }
                }

                else
                {
                }

LABEL_33:
                if ([v19 displayTypeHint] == 10)
                {
                  [v19 setDisplayTypeHint:0];
                  if ([v19 displayType] != 7)
                  {
                    [v19 setSecondaryDisplayStrings:0];
                    [v19 setSecondaryRepresentedStrings:0];
                    [v19 setGestureKey:0];
                  }
                }
              }

LABEL_41:

              if ([_stringTypeKeysForDynamicRow count] <= ++v17)
              {
                goto LABEL_42;
              }

              continue;
            }

            break;
          }

          secondaryRepresentedStrings2 = [v19 secondaryRepresentedStrings];
          if ([secondaryRepresentedStrings2 count] == 1)
          {
            representedString2 = [v19 representedString];
            secondaryRepresentedStrings3 = [v19 secondaryRepresentedStrings];
            firstObject3 = [secondaryRepresentedStrings3 firstObject];
            v25 = [representedString2 isEqualToString:firstObject3];

            if (v25)
            {
              v26 = v19;
              v27 = 0;
LABEL_40:
              [v26 setDisplayTypeHint:v27];
              goto LABEL_41;
            }
          }

          else
          {
          }

          v26 = v19;
          v27 = v48;
          goto LABEL_40;
        }

LABEL_43:

        v7 = v45 + 1;
      }

      while (v45 + 1 != v44);
      v44 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v44);
  }
}

- (void)zipGeometries:(BOOL)geometries attributes:(BOOL)attributes layoutInfo:(id)info
{
  attributesCopy = attributes;
  geometriesCopy = geometries;
  v74 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  context = objc_autoreleasePoolPush();
  if ([(UIKBTree *)self type]== 2)
  {
    _needsScaling = [(UIKBTree *)self _needsScaling];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    selfCopy = self;
    subtrees = [(UIKBTree *)self subtrees];
    v8 = [subtrees countByEnumeratingWithState:&v69 objects:v73 count:16];
    if (v8)
    {
      v9 = v8;
      x = *MEMORY[0x1E695F058];
      y = *(MEMORY[0x1E695F058] + 8);
      width = *(MEMORY[0x1E695F058] + 16);
      height = *(MEMORY[0x1E695F058] + 24);
      v14 = *v70;
      v58 = *v70;
      v59 = subtrees;
      do
      {
        v15 = 0;
        v60 = v9;
        do
        {
          if (*v70 != v14)
          {
            objc_enumerationMutation(subtrees);
          }

          v16 = *(*(&v69 + 1) + 8 * v15);
          if ([v16 type] == 3)
          {
            rowSet = [v16 rowSet];
            subtrees2 = [rowSet subtrees];

            v19 = [v16 geometrySet:0];
            subtrees3 = [v19 subtrees];

            v20 = [v16 attributeSet:0];
            subtrees4 = [v20 subtrees];

            shape = [v16 shape];
            originalShape = [shape originalShape];

            if (originalShape)
            {
              originalShape2 = [shape originalShape];
              [v16 setShape:originalShape2];
            }

            v64 = shape;
            v25 = [subtrees2 count];
            if (v25 == [subtrees3 count])
            {
              [v16 frame];
              v77.origin.x = x;
              v77.origin.y = y;
              v77.size.width = width;
              v77.size.height = height;
              v76 = CGRectUnion(v75, v77);
              x = v76.origin.x;
              y = v76.origin.y;
              width = v76.size.width;
              height = v76.size.height;
              if (_needsScaling)
              {
                shape2 = [v16 shape];
                [v16 frame];
                if (v27 <= width * 0.5)
                {
                  v28 = 0.0;
                }

                else
                {
                  v28 = width;
                }

                [shape2 scaleIfNeeded:objc_msgSend(subtrees2 onlyYAxis:{"count") != 0, v28}];
              }

              v29 = [subtrees2 count];
              v30 = shape;
              if (v29)
              {
                v61 = v15;
                v62 = subtrees4;
                v31 = 0;
                v63 = subtrees2;
                while (1)
                {
                  v32 = [subtrees3 objectAtIndex:v31];
                  v33 = [subtrees2 objectAtIndex:v31];
                  if ([subtrees4 count] > v31)
                  {
                    break;
                  }

                  v34 = 0;
                  if (geometriesCopy)
                  {
                    goto LABEL_22;
                  }

LABEL_23:
                  v66 = v32;
                  subtrees5 = [v32 subtrees];
                  subtrees6 = [v33 subtrees];
                  if ([subtrees6 count])
                  {
                    v38 = 0;
                    while (1)
                    {
                      v39 = [subtrees5 count];

                      if (v39 <= v38)
                      {
                        break;
                      }

                      subtrees7 = [v33 subtrees];
                      v41 = [subtrees7 objectAtIndex:v38];

                      [v41 setState:0];
                      [v41 setVisible:1];
                      [v41 setClipCorners:0];
                      if (geometriesCopy)
                      {
                        v42 = [subtrees5 objectAtIndex:v38];
                        v43 = v42;
                        if (_needsScaling)
                        {
                          [v42 frame];
                          if (v44 <= width * 0.5)
                          {
                            v45 = 0.0;
                          }

                          else
                          {
                            v45 = width;
                          }

                          [v43 scaleIfNeeded:0 onlyYAxis:v45];
                        }

                        v46 = [subtrees5 objectAtIndex:v38];
                        v47 = [v46 copy];
                        [v41 setShape:v47];
                      }

                      if (attributesCopy)
                      {
                        subtrees8 = [v34 subtrees];
                        if ([subtrees8 count] <= v38)
                        {
                          [v41 setCache:0];
                        }

                        else
                        {
                          subtrees9 = [v34 subtrees];
                          v50 = [subtrees9 objectAtIndex:v38];
                          [v41 setCache:v50];
                        }
                      }

                      ++v38;
                      subtrees6 = [v33 subtrees];
                      if ([subtrees6 count] <= v38)
                      {
                        goto LABEL_39;
                      }
                    }
                  }

                  else
                  {
LABEL_39:
                  }

                  ++v31;
                  subtrees2 = v63;
                  v51 = [v63 count];
                  subtrees4 = v62;
                  v30 = v64;
                  if (v51 <= v31)
                  {
                    subtrees = v59;
                    v9 = v60;
                    v14 = v58;
                    v15 = v61;
                    goto LABEL_43;
                  }
                }

                v34 = [subtrees4 objectAtIndex:v31];
                if (!geometriesCopy)
                {
                  goto LABEL_23;
                }

LABEL_22:
                properties = [v32 properties];
                [v33 setProperties:properties];

                goto LABEL_23;
              }
            }

            else
            {
              v30 = shape;
            }

LABEL_43:
          }

          ++v15;
        }

        while (v15 != v9);
        v9 = [subtrees countByEnumeratingWithState:&v69 objects:v73 count:16];
      }

      while (v9);
    }

    [(UIKBTree *)selfCopy setObject:0 forProperty:@"KBunionFrame"];
    [(UIKBTree *)selfCopy setObject:0 forProperty:@"KBunionPaddedFrame"];
    [(UIKBTree *)selfCopy setResizingOffset:0.0];
    if (geometriesCopy)
    {
      if ((-[UIKBTree visualStyling](selfCopy, "visualStyling") & 0x3F) == 0x17 || ([infoCopy textInputTraits], v52 = objc_claimAutoreleasedReturnValue(), v53 = objc_msgSend(v52, "keyboardType"), v52, v53 != 12))
      {
        [(UIKBTree *)selfCopy updateFlickKeycapOnKeysWithLayoutInfo:infoCopy];
      }
    }

    if (_needsScaling)
    {
      cache = [(UIKBTree *)selfCopy cache];
      [cache setObject:&unk_1EFE31000 forKey:@"isScaled"];
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)zipGeometry
{
  v5 = objc_alloc_init(UIKBLayoutInfo);
  v3 = +[UIKeyboardImpl activeInstance];
  -[UIKBLayoutInfo setIsAutoShifted:](v5, "setIsAutoShifted:", [v3 isAutoShifted]);

  v4 = +[UIKeyboardImpl activeInstance];
  -[UIKBLayoutInfo setIsShiftLocked:](v5, "setIsShiftLocked:", [v4 isShiftLocked]);

  [(UIKBTree *)self zipGeometrySetWithLayoutInfo:v5];
}

- (void)zipAttributes
{
  v5 = objc_alloc_init(UIKBLayoutInfo);
  v3 = +[UIKeyboardImpl activeInstance];
  -[UIKBLayoutInfo setIsAutoShifted:](v5, "setIsAutoShifted:", [v3 isAutoShifted]);

  v4 = +[UIKeyboardImpl activeInstance];
  -[UIKBLayoutInfo setIsShiftLocked:](v5, "setIsShiftLocked:", [v4 isShiftLocked]);

  [(UIKBTree *)self zipAttributesWithLayoutInfo:v5];
}

- (int64_t)_keyCountOnNamedRow:(id)row
{
  v20 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v6 = [subtrees countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(subtrees);
        }

        keySet = [*(*(&v15 + 1) + 8 * i) keySet];
        v12 = [keySet subtreeWithName:rowCopy];

        subtrees2 = [v12 subtrees];
        v8 += [subtrees2 count];
      }

      v7 = [subtrees countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)elaborateLayoutWithSize:(CGSize)size origin:(CGPoint)origin layoutInfo:(id)info
{
  y = origin.y;
  x = origin.x;
  height = size.height;
  width = size.width;
  v140 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v11 = objc_autoreleasePoolPush();
  if ([(UIKBTree *)self type]== 2)
  {
    v12 = width != 1.0;
    if (height != 1.0)
    {
      v12 = 1;
    }

    v121 = v12;
    v13 = x != *MEMORY[0x1E695EFF8];
    if (y != *(MEMORY[0x1E695EFF8] + 8))
    {
      v13 = 1;
    }

    v122 = v13;
    selfCopy = self;
    v105 = v11;
    v120 = x;
    v117 = height;
    v118 = width;
    if ([(UIKBTree *)self isSplit]&& ![(UIKBTree *)self isGenerated])
    {
      v14 = infoCopy;
      v15 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v15 preferencesActions];
      [preferencesActions rivenSizeFactor:1.0];
      v18 = v17;

      if (v18 <= 1.0)
      {
        v132 = 0;
        v114 = height;
        v115 = width;
      }

      else
      {
        v19 = +[UIKeyboardPreferencesController sharedPreferencesController];
        preferencesActions2 = [v19 preferencesActions];
        [preferencesActions2 rivenSizeFactor:1.0];
        v115 = v21;
        v22 = +[UIKeyboardPreferencesController sharedPreferencesController];
        preferencesActions3 = [v22 preferencesActions];
        [preferencesActions3 rivenSizeFactor:1.0];
        v114 = v24;

        v132 = 1;
      }

      infoCopy = v14;
      self = selfCopy;
    }

    else
    {
      v132 = 0;
      v114 = height;
      v115 = width;
    }

    [(UIKBTree *)self originalFrame];
    v26 = v25;
    v107 = infoCopy;
    screenTraits = [infoCopy screenTraits];
    screen = [screenTraits screen];
    [screen scale];
    v29 = [UIKBShapeOperator operatorWithScale:?];

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    subtrees = [(UIKBTree *)self subtrees];
    v31 = [subtrees countByEnumeratingWithState:&v133 objects:v139 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = (width - v115) * v26;
      v34 = *MEMORY[0x1E695F058];
      v35 = *(MEMORY[0x1E695F058] + 8);
      v37 = *(MEMORY[0x1E695F058] + 16);
      v36 = *(MEMORY[0x1E695F058] + 24);
      v38 = *v134;
      v116 = v121 | v132;
      v131 = v29;
      v108 = *v134;
      v109 = subtrees;
      do
      {
        v39 = 0;
        v110 = v32;
        do
        {
          if (*v134 != v38)
          {
            objc_enumerationMutation(subtrees);
          }

          v119 = v39;
          v40 = *(*(&v133 + 1) + 8 * v39);
          if ([v40 type] != 3)
          {
            v61 = v119;
            goto LABEL_68;
          }

          keySet = [v40 keySet];
          subtrees2 = [keySet subtrees];

          v43 = [v40 geometrySet:0];
          subtrees3 = [v43 subtrees];

          v45 = [v40 attributeSet:0];
          subtrees4 = [v45 subtrees];

          v47 = [subtrees2 count];
          v126 = subtrees3;
          if (v47 == [subtrees3 count])
          {
            shape = [v40 shape];
            originalShape = [shape originalShape];

            if (originalShape)
            {
              originalShape2 = [shape originalShape];

              shape = originalShape2;
            }

            [v40 originalFrame];
            v143.origin.x = v34;
            v143.origin.y = v35;
            v143.size.width = v37;
            v143.size.height = v36;
            v142 = CGRectUnion(v141, v143);
            v51 = v142.origin.x;
            v52 = v142.origin.y;
            v37 = v142.size.width;
            v53 = v142.size.height;
            v54 = [v40 geometrySet:0];
            listShapes = [v54 listShapes];

            v112 = v52;
            v113 = v51;
            if (!v116)
            {
              goto LABEL_35;
            }

            v56 = [v29 shapeByScalingShape:shape factor:{v115, v114}];

            v57 = [v29 shapesByScalingShapes:listShapes factor:{v115, v114}];

            if (v132)
            {
              [v40 frame];
              if (v37 > 0.0 && v58 > v37 * 0.5)
              {
                v59 = v33;
              }

              else
              {
                v59 = v120;
              }

              if (v37 > 0.0 && v58 > v37 * 0.5)
              {
                v60 = 0.0;
              }

              else
              {
                v60 = y;
              }

              if ((v37 <= 0.0 || v58 <= v37 * 0.5) && !v122)
              {
LABEL_31:
                shape = v56;
                listShapes = v57;
LABEL_35:
                v111 = shape;
                [v40 setShape:shape];
                if ([subtrees2 count])
                {
                  v64 = 0;
                  v124 = subtrees4;
                  v125 = subtrees2;
                  v123 = listShapes;
                  do
                  {
                    v65 = [v126 objectAtIndex:v64];
                    v130 = [listShapes objectAtIndex:v64];
                    v66 = [subtrees2 objectAtIndex:v64];
                    v129 = v64;
                    if ([subtrees4 count] <= v64)
                    {
                      v67 = 0;
                    }

                    else
                    {
                      v67 = [subtrees4 objectAtIndex:v64];
                    }

                    geometriesList = [v65 geometriesList];

                    if (geometriesList)
                    {
                      componentName = [v66 componentName];
                      v70 = [(UIKBTree *)self _keyCountOnNamedRow:componentName];

                      geometriesList2 = [v65 geometriesList];
                      subtrees5 = [geometriesList2 subtrees];

                      if (v121)
                      {
                        v73 = [v29 shapesByScalingShapes:subtrees5 factor:{v118, v117}];

                        subtrees5 = v73;
                      }

                      v74 = [v29 shapesByElaboratingShapes:subtrees5 insideShape:v130 count:v70];
                      subtrees7 = [v65 activeShapesFromOutputShapes:v74 inputShapes:subtrees5 inRTL:0];
                    }

                    else
                    {
                      subtrees6 = [v65 subtrees];
                      if (!subtrees6 || (subtrees6, !v116))
                      {
                        subtrees7 = [v65 subtrees];
                        goto LABEL_49;
                      }

                      subtrees5 = [v65 subtrees];
                      subtrees7 = [v29 shapesByScalingShapes:subtrees5 factor:{v115, v114}];
                    }

LABEL_49:
                    if (v122)
                    {
                      v77 = [v29 shapesByRepositioningShapes:subtrees7 withOffset:{v120, y}];

                      subtrees7 = v77;
                    }

                    properties = [v65 properties];
                    [v66 setProperties:properties];

                    v128 = v66;
                    subtrees8 = [v66 subtrees];
                    if ([subtrees8 count])
                    {
                      v80 = 0;
                      do
                      {
                        if ([subtrees7 count] <= v80)
                        {
                          break;
                        }

                        v81 = [subtrees8 objectAtIndex:v80];
                        [v81 setState:0];
                        [v81 setVisible:1];
                        [v81 setClipCorners:0];
                        subtrees9 = [v67 subtrees];
                        if ([subtrees9 count] <= v80)
                        {
                          [v81 setCache:0];
                        }

                        else
                        {
                          subtrees10 = [v67 subtrees];
                          v84 = [subtrees10 objectAtIndex:v80];
                          [v81 setCache:v84];
                        }

                        subtrees11 = [v65 subtrees];
                        if (subtrees11 && (v86 = subtrees11, v87 = [v81 BOOLForProperty:@"ignore-hand-bias"], v86, v87))
                        {
                          subtrees12 = [v65 subtrees];
                          v89 = [subtrees12 objectAtIndex:v80];

                          [v89 frame];
                          v91 = v90;
                          v93 = v92;
                          v95 = v94;
                          [(UIKBTree *)self frame];
                          v97 = v96;
                          [v89 setFrame:{v91, v93}];
                          [v89 setPaddedFrame:{v91, v93, v97, v95}];
                        }

                        else
                        {
                          v98 = [subtrees7 objectAtIndex:v80];
                          v89 = v98;
                          if (v132)
                          {
                            [v98 frame];
                            if (v37 > 0.0 && v99 > v37 * 0.5)
                            {
                              v137 = v89;
                              v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
                              v101 = [v131 shapesByRepositioningShapes:v100 withOffset:{v33, 0.0}];
                              firstObject = [v101 firstObject];

                              v89 = firstObject;
                              self = selfCopy;
                            }
                          }
                        }

                        [v81 setShape:v89];

                        ++v80;
                      }

                      while ([subtrees8 count] > v80);
                    }

                    v64 = v129 + 1;
                    subtrees2 = v125;
                    v29 = v131;
                    listShapes = v123;
                    subtrees4 = v124;
                  }

                  while ([v125 count] > v129 + 1);
                }

                subtrees = v109;
                v32 = v110;
                v35 = v112;
                v34 = v113;
                v38 = v108;
                v36 = v53;
                goto LABEL_67;
              }
            }

            else
            {
              v59 = v120;
              v60 = y;
              if (!v122)
              {
                goto LABEL_31;
              }
            }

            v138 = v56;
            v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v138 count:1];
            v63 = [v29 shapesByRepositioningShapes:v62 withOffset:{v59, v60}];
            shape = [v63 firstObject];

            self = selfCopy;
            listShapes = [v29 shapesByRepositioningShapes:v57 withOffset:{v59, v60}];

            goto LABEL_35;
          }

LABEL_67:
          v61 = v119;

LABEL_68:
          v39 = v61 + 1;
        }

        while (v39 != v32);
        v32 = [subtrees countByEnumeratingWithState:&v133 objects:v139 count:16];
      }

      while (v32);
    }

    v11 = v106;
    if (((v121 || v122) | v132))
    {
      [(UIKBTree *)self setObject:0 forProperty:@"KBunionFrame"];
      [(UIKBTree *)self setObject:0 forProperty:@"KBunionPaddedFrame"];
      [(UIKBTree *)self setResizingOffset:0.0];
    }

    infoCopy = v107;
    if ((-[UIKBTree visualStyling](self, "visualStyling") & 0x3F) == 0x17 || ([v107 textInputTraits], v103 = objc_claimAutoreleasedReturnValue(), v104 = objc_msgSend(v103, "keyboardType"), v103, v11 = v106, v104 != 12))
    {
      [(UIKBTree *)self updateFlickKeycapOnKeysWithLayoutInfo:v107];
    }
  }

  objc_autoreleasePoolPop(v11);
}

- (id)rowSetOfType:(int64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(UIKBTree *)self inheritedRowSetTypeForKeyboardType:type];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v6 = [subtrees countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(subtrees);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 rowSetType] == v4)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [subtrees countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)updateKeysForType:(int64_t)type
{
  v10 = [(UIKBTree *)self subtreeWithType:3];
  [v10 setCurrentKeyboardType:type];
  v5 = [v10 orderedRowsForType:type];
  v6 = v5;
  if (v5 && [v5 count])
  {
    cache = [(UIKBTree *)self cache];
    [cache removeObjectForKey:@"keys"];

    v8 = [(UIKBTree *)self _keysForDynamicRows:v6];
    cache2 = [(UIKBTree *)self cache];
    [cache2 setObject:v8 forKey:@"keys"];
  }
}

- (id)orderedRowsForType:(int64_t)type
{
  v24 = *MEMORY[0x1E69E9840];
  rowSet = [(UIKBTree *)self rowSet];
  v6 = rowSet;
  if (type)
  {
    subtrees4 = 0;
    if ([(UIKBTree *)self type]== 3 && v6)
    {
      subtrees = [v6 subtrees];
      subtrees4 = [subtrees mutableCopy];

      v9 = [(UIKBTree *)self rowSetOfType:type];
      if (v9)
      {
        subtrees2 = [v6 subtrees];
        v11 = [subtrees2 count];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        subtrees3 = [v9 subtrees];
        reverseObjectEnumerator = [subtrees3 reverseObjectEnumerator];

        v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v20;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v20 != v16)
              {
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              [subtrees4 replaceObjectAtIndex:--v11 withObject:*(*(&v19 + 1) + 8 * i)];
            }

            v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v15);
        }
      }
    }
  }

  else
  {
    subtrees4 = [rowSet subtrees];
  }

  return subtrees4;
}

- (id)_keysForDynamicRows:(id)rows
{
  v45 = *MEMORY[0x1E69E9840];
  rowsCopy = rows;
  array = [MEMORY[0x1E695DF70] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = rowsCopy;
  v30 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v30)
  {
    v29 = *v40;
    do
    {
      v5 = 0;
      do
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v5;
        v6 = *(*(&v39 + 1) + 8 * v5);
        subtrees = [v6 subtrees];
        v8 = [subtrees count];

        subtrees2 = [v6 subtrees];
        v10 = [subtrees2 count];

        if (v10)
        {
          v11 = 0;
          v32 = v6;
          v33 = v8 >> 1;
          do
          {
            subtrees3 = [v6 subtrees];
            v13 = [subtrees3 objectAtIndex:v11];

            if ([v13 type] == 8)
            {
              [v13 setDynamicLayout:1];
              if (v11 >= v33)
              {
                v14 = 8;
              }

              else
              {
                v14 = 4;
              }

              [v13 setDynamicDisplayCorner:v14];
              [array addObject:v13];
            }

            else if ([v13 type] == 4 || objc_msgSend(v13, "type") == 7)
            {
              v34 = v11;
              subtrees4 = [v13 subtrees];
              v16 = [subtrees4 count];

              v37 = 0u;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              subtrees5 = [v13 subtrees];
              v18 = [subtrees5 countByEnumeratingWithState:&v35 objects:v43 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = v16 >> 1;
                v21 = *v36;
                do
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v36 != v21)
                    {
                      objc_enumerationMutation(subtrees5);
                    }

                    v23 = *(*(&v35 + 1) + 8 * i);
                    [v23 setDynamicLayout:1];
                    if (v20 <= [v13 indexOfSubtree:v23])
                    {
                      v24 = 8;
                    }

                    else
                    {
                      v24 = 4;
                    }

                    [v23 setDynamicDisplayCorner:v24];
                    [array addObject:v23];
                  }

                  v19 = [subtrees5 countByEnumeratingWithState:&v35 objects:v43 count:16];
                }

                while (v19);
              }

              v6 = v32;
              v11 = v34;
            }

            ++v11;
            subtrees6 = [v6 subtrees];
            v26 = [subtrees6 count];
          }

          while (v11 < v26);
        }

        v5 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v30);
  }

  return array;
}

- (id)_keysForDynamicRow
{
  v33 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if ([(UIKBTree *)self dynamicLayout])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(UIKBTree *)self subtrees];
    v4 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v4)
    {
      v5 = v4;
      v22 = *v28;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v27 + 1) + 8 * i);
          subtrees = [v7 subtrees];
          v9 = [subtrees count];

          if (v9)
          {
            v10 = 0;
            do
            {
              subtrees2 = [v7 subtrees];
              v12 = [subtrees2 objectAtIndex:v10];

              if ([v12 type] == 8)
              {
                [array addObject:v12];
              }

              else if ([v12 type] == 4 || objc_msgSend(v12, "type") == 7)
              {
                v25 = 0u;
                v26 = 0u;
                v23 = 0u;
                v24 = 0u;
                subtrees3 = [v12 subtrees];
                v14 = [subtrees3 countByEnumeratingWithState:&v23 objects:v31 count:16];
                if (v14)
                {
                  v15 = v14;
                  v16 = *v24;
                  do
                  {
                    for (j = 0; j != v15; ++j)
                    {
                      if (*v24 != v16)
                      {
                        objc_enumerationMutation(subtrees3);
                      }

                      [array addObject:*(*(&v23 + 1) + 8 * j)];
                    }

                    v15 = [subtrees3 countByEnumeratingWithState:&v23 objects:v31 count:16];
                  }

                  while (v15);
                }
              }

              ++v10;
              subtrees4 = [v7 subtrees];
              v19 = [subtrees4 count];
            }

            while (v10 < v19);
          }
        }

        v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v5);
    }
  }

  return array;
}

- (BOOL)_keyIsStringType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy interactionType] == 1 || objc_msgSend(typeCopy, "interactionType") == 2 || objc_msgSend(typeCopy, "interactionType") == 16;

  return v4;
}

- (BOOL)_isShiftedButNotAutoShiftedWithLayoutInfo:(id)info
{
  infoCopy = info;
  if (-[UIKBTree isShiftKeyplane](self, "isShiftKeyplane") && ([infoCopy isAutoShifted] & 1) == 0)
  {
    v5 = [infoCopy isShiftLocked] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (int64_t)inheritedRowSetTypeForKeyboardType:(int64_t)type
{
  result = type;
  if (type <= 119)
  {
    if (type > 0xB)
    {
      goto LABEL_12;
    }

    if (((1 << type) & 0x3E8) != 0)
    {
      return result;
    }

    if (((1 << type) & 0x810) == 0)
    {
      if (type == 10)
      {
        return 10;
      }

LABEL_12:
      if (type != 1)
      {
        if (type == 2)
        {
          return 2;
        }

        return 0;
      }

      return result;
    }

    return 4;
  }

  if (type <= 125)
  {
    if (type == 120)
    {
      return 10;
    }

    if (type == 123)
    {
      return 2;
    }

    return 0;
  }

  if (type != 126)
  {
    if (type != 127)
    {
      return 0;
    }

    return 4;
  }

  return result;
}

- (void)setGridLayout:(BOOL)layout
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:layout];
  [(UIKBTree *)self setObject:v4 forProperty:@"grid-layout"];
}

- (void)swapToggleKeys:(id)keys
{
  v34 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  if (-[UIKBTree type](self, "type") == 3 && [keysCopy count] >= 2)
  {
    v5 = [(UIKBTree *)self orderedRowsForType:[(UIKBTree *)self currentKeyboardType]];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      v27 = *v30;
      do
      {
        v9 = 0;
        do
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v29 + 1) + 8 * v9);
          firstObject = [keysCopy firstObject];
          v12 = [v10 toggleKeysForKeyName:firstObject];

          if (v12)
          {
            firstObject2 = [v12 firstObject];
            v14 = [v10 subtreeWithName:firstObject2];

            lastObject = [v12 lastObject];
            v16 = [v10 subtreeWithName:lastObject];

            if (v14)
            {
              v17 = v16 == 0;
            }

            else
            {
              v17 = 1;
            }

            if (!v17)
            {
              v18 = [v10 indexOfSubtree:v14];
              v19 = [v10 indexOfSubtree:v16];
              if (v18 < v19)
              {
                v20 = v5;
                v21 = keysCopy;
                v22 = v19;
                v28 = v18;
                [v10 subtrees];
                v24 = v23 = v7;
                v25 = v22;
                keysCopy = v21;
                v5 = v20;
                v8 = v27;
                [v24 replaceObjectAtIndex:v25 withObject:v14];

                v7 = v23;
                subtrees = [v10 subtrees];
                [subtrees replaceObjectAtIndex:v28 withObject:v16];
              }
            }
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v7);
    }
  }
}

- (void)applyDynamicAttributes:(BOOL)attributes layoutInfo:(id)info
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = [(UIKBTree *)self _isShiftedButNotAutoShiftedWithLayoutInfo:info];
  _gesturesEnabled = [(UIKBTree *)self _gesturesEnabled];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__UIKBTree_applyDynamicAttributes_layoutInfo___block_invoke;
  aBlock[3] = &__block_descriptor_34_e33_v32__0__UIKBTree_8__NSArray_16q24l;
  v66 = _gesturesEnabled;
  v67 = v5;
  v7 = _Block_copy(aBlock);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = [(UIKBTree *)self subtrees];
  v54 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v54)
  {
    v53 = *v62;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v62 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v9 = v8;
        v10 = *(*(&v61 + 1) + 8 * v8);
        if ([v10 type] == 3)
        {
          v52 = v9;
          if (attributes)
          {
            cachedGestureLayout = [v10 cachedGestureLayout];
            rowSet = [cachedGestureLayout rowSet];
            subtrees = [rowSet subtrees];

            cachedGestureLayout2 = [v10 cachedGestureLayout];
            v15 = [cachedGestureLayout2 attributeSet:0];
            subtrees2 = [v15 subtrees];
          }

          else
          {
            rowSet2 = [v10 rowSet];
            subtrees = [rowSet2 subtrees];

            cachedGestureLayout2 = [v10 attributeSet:0];
            subtrees2 = [cachedGestureLayout2 subtrees];
          }

          if (![subtrees2 count])
          {
            properties = [(UIKBTree *)self properties];
            v19 = [properties objectForKey:@"shouldclearcachedattributes"];

            if (!v19)
            {

              goto LABEL_49;
            }
          }

          if ([subtrees2 count] == 1)
          {
            firstObject = [subtrees2 firstObject];
            subtrees3 = [firstObject subtrees];
            v22 = [subtrees3 count];

            if (v22)
            {
              subtrees4 = [firstObject subtrees];

              subtrees2 = subtrees4;
            }
          }

          if ([subtrees count])
          {
            v24 = 0;
            v55 = subtrees2;
            v56 = subtrees;
            do
            {
              v25 = [subtrees objectAtIndex:v24];
              v58 = v24;
              if ([subtrees2 count] <= v24)
              {
                v26 = 0;
              }

              else
              {
                v26 = [subtrees2 objectAtIndex:v24];
              }

              v57 = v25;
              subtrees5 = [v25 subtrees];
              if ([subtrees5 count])
              {
                v28 = 0;
                v59 = v26;
                v60 = subtrees5;
                do
                {
                  v29 = [subtrees5 objectAtIndex:v28];
                  if ([v29 type] == 8)
                  {
                    subtrees6 = [v26 subtrees];
                    v31 = [subtrees6 count];

                    if (v31 <= v28)
                    {
                      v7[2](v7, v29, 0, 0x7FFFFFFFFFFFFFFFLL);
                    }

                    else
                    {
                      subtrees7 = [v26 subtrees];
                      (v7)[2](v7, v29, subtrees7, v28);
                    }
                  }

                  else
                  {
                    subtrees8 = [v29 subtrees];
                    v34 = [subtrees8 count];

                    if (v34)
                    {
                      subtrees9 = [v26 subtrees];
                      v36 = [subtrees9 count];

                      if (v36 <= v28)
                      {
                        subtrees10 = [v29 subtrees];
                        if ([subtrees10 count])
                        {
                          v46 = 0;
                          do
                          {
                            v47 = [subtrees10 objectAtIndex:v46];
                            cache = [v47 cache];
                            v49 = [cache count];

                            if (v49)
                            {
                              v7[2](v7, v47, 0, 0x7FFFFFFFFFFFFFFFLL);
                            }

                            ++v46;
                          }

                          while ([subtrees10 count] > v46);
                        }

                        subtrees5 = v60;
                      }

                      else
                      {
                        subtrees11 = [v26 subtrees];
                        v38 = [subtrees11 objectAtIndex:v28];

                        subtrees12 = [v29 subtrees];
                        if ([subtrees12 count])
                        {
                          v40 = 0;
                          do
                          {
                            v41 = [subtrees12 objectAtIndex:v40];
                            subtrees13 = [v38 subtrees];
                            v43 = [subtrees13 count];

                            if (v43 <= v40)
                            {
                              v7[2](v7, v41, 0, 0x7FFFFFFFFFFFFFFFLL);
                            }

                            else
                            {
                              subtrees14 = [v38 subtrees];
                              (v7)[2](v7, v41, subtrees14, v40);
                            }

                            ++v40;
                          }

                          while ([subtrees12 count] > v40);
                        }

                        v26 = v59;
                        subtrees5 = v60;
                      }
                    }
                  }

                  ++v28;
                }

                while ([subtrees5 count] > v28);
              }

              v24 = v58 + 1;
              subtrees = v56;
              subtrees2 = v55;
            }

            while ([v56 count] > v58 + 1);
          }

          v9 = v52;
        }

        v8 = v9 + 1;
      }

      while (v9 + 1 != v54);
      v54 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
      if (v54)
      {
        continue;
      }

      break;
    }
  }

LABEL_49:
}

void __46__UIKBTree_applyDynamicAttributes_layoutInfo___block_invoke(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v16 = a2;
  v7 = a3;
  [v16 setState:0];
  [v16 setVisible:1];
  [v16 setClipCorners:0];
  if ([v7 count] <= a4)
  {
    [v16 setCache:0];
  }

  else
  {
    v8 = [v7 objectAtIndex:a4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 objectAtIndex:a4];
    }

    else
    {
      [v8 properties];
    }
    v9 = ;
    [v16 setCache:v9];
  }

  if (*(a1 + 32) == 1 && [v16 displayType] == 7)
  {
    v10 = [v16 secondaryRepresentedStrings];
    if ([v10 count] == 1)
    {
      v11 = [v16 representedString];
      v12 = [v16 secondaryRepresentedStrings];
      v13 = [v12 firstObject];
      v14 = [v11 isEqualToString:v13];

      if (v14)
      {
        v15 = 0;
LABEL_16:
        [v16 setDisplayTypeHint:v15];
        goto LABEL_17;
      }
    }

    else
    {
    }

    if (*(a1 + 33))
    {
      v15 = 0;
    }

    else
    {
      v15 = 10;
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (id)geometry
{
  shape = [(UIKBTree *)self shape];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    geometry = [shape geometry];
  }

  else
  {
    geometry = 0;
  }

  return geometry;
}

- (void)setGeometry:(id)geometry
{
  geometryCopy = geometry;
  shape = [(UIKBTree *)self shape];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [shape setGeometry:geometryCopy];
  }
}

- (CGRect)_originalKeyplaneFrame
{
  v30 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v7 = [subtrees countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(subtrees);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v31.origin.x = x;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        IsNull = CGRectIsNull(v31);
        [v11 originalFrame];
        if (IsNull)
        {
          height = v16;
          width = v15;
          y = v14;
          x = v13;
        }

        else if (!CGRectIsEmpty(*&v13))
        {
          [v11 originalFrame];
          v35.origin.x = v17;
          v35.origin.y = v18;
          v35.size.width = v19;
          v35.size.height = v20;
          v32.origin.x = x;
          v32.origin.y = y;
          v32.size.width = width;
          v32.size.height = height;
          v33 = CGRectUnion(v32, v35);
          x = v33.origin.x;
          y = v33.origin.y;
          width = v33.size.width;
          height = v33.size.height;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [subtrees countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)originalFrame
{
  if ([(UIKBTree *)self type]== 2)
  {
    [(UIKBTree *)self _originalKeyplaneFrame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    shape = [(UIKBTree *)self shape];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      originalShape = [shape originalShape];

      if (originalShape)
      {
        originalShape2 = [shape originalShape];

        shape = originalShape2;
      }

      [shape frame];
      v4 = v14;
      v6 = v15;
      v8 = v16;
      v10 = v17;
    }

    else
    {
      v4 = *MEMORY[0x1E695F058];
      v6 = *(MEMORY[0x1E695F058] + 8);
      v8 = *(MEMORY[0x1E695F058] + 16);
      v10 = *(MEMORY[0x1E695F058] + 24);
    }
  }

  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  shape = [(UIKBTree *)self shape];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [shape setFrame:{x, y, width, height}];
  }
}

- (void)setPaddedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  shape = [(UIKBTree *)self shape];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [shape setPaddedFrame:{x, y, width, height}];
  }
}

- (CGPoint)navigationPointOfKey
{
  selectedVariantIndex = [(UIKBTree *)self selectedVariantIndex];
  subtrees = [(UIKBTree *)self subtrees];
  v5 = [subtrees count];

  [(UIKBTree *)self frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (v5 >= 1 && selectedVariantIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    subtrees2 = [(UIKBTree *)self subtrees];
    v15 = [subtrees2 objectAtIndex:selectedVariantIndex];
    [v15 frame];
    v7 = v16;
    v9 = v17;
    v11 = v18;
    v13 = v19;
  }

  v24.origin.x = v7;
  v24.origin.y = v9;
  v24.size.width = v11;
  v24.size.height = v13;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = v7;
  v25.origin.y = v9;
  v25.size.width = v11;
  v25.size.height = v13;
  MidY = CGRectGetMidY(v25);
  v22 = MidX;
  result.y = MidY;
  result.x = v22;
  return result;
}

- (CGRect)keyUnionFramePadded:(BOOL)padded
{
  paddedCopy = padded;
  v40 = *MEMORY[0x1E69E9840];
  v5 = UIKBTreePropertyKeyUnionFrame;
  if (padded)
  {
    v5 = UIKBTreePropertyKeyUnionPaddedFrame;
  }

  v6 = *v5;
  v7 = [(UIKBTree *)self objectForProperty:v6];
  if (v7)
  {
    v8 = v7;
    [v7 CGRectValue];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
LABEL_24:

    goto LABEL_25;
  }

  v10 = *MEMORY[0x1E695F050];
  v12 = *(MEMORY[0x1E695F050] + 8);
  v14 = *(MEMORY[0x1E695F050] + 16);
  v16 = *(MEMORY[0x1E695F050] + 24);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  keys = [(UIKBTree *)self keys];
  v18 = [keys countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(keys);
        }

        v22 = *(*(&v35 + 1) + 8 * i);
        if (([v22 BOOLForProperty:@"ignore-hand-bias"] & 1) == 0)
        {
          v41.origin.x = v10;
          v41.origin.y = v12;
          v41.size.width = v14;
          v41.size.height = v16;
          if (CGRectIsNull(v41))
          {
            if (paddedCopy)
            {
              [v22 paddedFrame];
            }

            else
            {
              [v22 frame];
            }
          }

          else
          {
            if (paddedCopy)
            {
              [v22 paddedFrame];
            }

            else
            {
              [v22 frame];
            }

            v45.origin.x = v27;
            v45.origin.y = v28;
            v45.size.width = v29;
            v45.size.height = v30;
            v42.origin.x = v10;
            v42.origin.y = v12;
            v42.size.width = v14;
            v42.size.height = v16;
            *&v23 = CGRectUnion(v42, v45);
          }

          v10 = v23;
          v12 = v24;
          v14 = v25;
          v16 = v26;
        }
      }

      v19 = [keys countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v19);
  }

  v43.origin.x = v10;
  v43.origin.y = v12;
  v43.size.width = v14;
  v43.size.height = v16;
  if (!CGRectIsEmpty(v43))
  {
    v8 = [MEMORY[0x1E696B098] valueWithCGRect:{v10, v12, v14, v16}];
    [(UIKBTree *)self setObject:v8 forProperty:v6];
    goto LABEL_24;
  }

LABEL_25:

  v31 = v10;
  v32 = v12;
  v33 = v14;
  v34 = v16;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGRect)keyUnionFrame
{
  [(UIKBTree *)self keyUnionFramePadded:0];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)keyUnionPaddedFrame
{
  [(UIKBTree *)self keyUnionFramePadded:1];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setVisualStyle:(int)style
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&style];
  [(UIKBTree *)self setObject:v4 forProperty:@"KBvisualStyle"];
}

- ($5C396DA91E87D63640AC871340DC94CC)visualStylingForScreenTraits:(id)traits
{
  traitsCopy = traits;
  name = [(UIKBTree *)self name];
  v6 = ([name rangeOfString:@"Portrait"] == 0x7FFFFFFFFFFFFFFFLL) << 6;

  name2 = [(UIKBTree *)self name];
  v8 = [name2 hasSuffix:@"-split"];

  if (v8)
  {
    v9 = 128;
  }

  else
  {
    v9 = v6;
  }

  if (-[UIKBTree visualStyle](self, "visualStyle") - 1 < 5 || (-[UIKBTree name](self, "name"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 hasPrefix:@"iPhone"], v10, (v11 & 1) != 0))
  {
    v12 = 0;
  }

  else if ([(UIKBTree *)self visualStyle]== 301)
  {
    v12 = 3;
  }

  else if ([(UIKBTree *)self visualStyle]== 201)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (!traitsCopy)
  {
    traitsCopy = +[UIKeyboard activeScreenTraits];
  }

  v13 = UIKeyboardComputeKeyboardIdiomFromScreenTraits(traitsCopy, v12, v8);
  nativeIdiom = [(UIKBTree *)self nativeIdiom];
  if (nativeIdiom == -1)
  {
    v15 = v13;
  }

  else
  {
    v15 = nativeIdiom;
  }

  v16 = v15 & 0x3F;
  v17 = v16 | v9;
  visualStyle = [(UIKBTree *)self visualStyle];
  if (visualStyle <= 102)
  {
    if (visualStyle > 3)
    {
      if (visualStyle <= 100)
      {
        if (visualStyle != 4)
        {
          if (visualStyle != 5)
          {
            goto LABEL_41;
          }

LABEL_30:
          v17 |= 0x100u;
          goto LABEL_41;
        }

LABEL_32:
        v17 |= 0x260200u;
        goto LABEL_41;
      }

      if (visualStyle == 101)
      {
        v17 = (v17 | 0x260200) - 1769472;
        goto LABEL_41;
      }

LABEL_40:
      v17 |= 0x200u;
      goto LABEL_41;
    }

    if (visualStyle == 1)
    {
      goto LABEL_40;
    }

    if (visualStyle != 2)
    {
      if (visualStyle != 3)
      {
        goto LABEL_41;
      }

      goto LABEL_30;
    }

    goto LABEL_35;
  }

  if (visualStyle > 105)
  {
    if ((visualStyle - 108) < 2)
    {
      goto LABEL_32;
    }

    if (visualStyle != 106)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (visualStyle == 103)
  {
LABEL_35:
    v17 |= 0x270200u;
    goto LABEL_41;
  }

  if (visualStyle == 104)
  {
    goto LABEL_40;
  }

  if (v16)
  {
    v19 = 256;
  }

  else
  {
    v19 = 512;
  }

  v17 |= v19;
LABEL_41:
  name3 = [(UIKBTree *)self name];
  if ([name3 hasPrefix:@"Dynamic"])
  {
    rendering = [(UIKBTree *)self rendering];

    if (rendering)
    {
      v17 = v17 | ([(UIKBTree *)self rendering]<< 16);
      LOBYTE(rendering) = 1;
    }
  }

  else
  {

    LOBYTE(rendering) = 0;
  }

  keys = [(UIKBTree *)self keys];
  lastObject = [keys lastObject];

  if ([lastObject rendering])
  {
    v17 = v17 | ([lastObject rendering] << 16);
  }

  else if ((rendering & 1) == 0 && [lastObject displayType] == 20)
  {
    v17 = v17 | 0x1B0000;
  }

  return v17;
}

- (void)setVisualStyling:(id)styling
{
  properties = self->properties;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&styling];
  [(NSMutableDictionary *)properties setObject:v4 forKey:@"KBvisualStyling"];
}

- (id)cachedKeysByKeyName:(id)name
{
  nameCopy = name;
  cache = [(UIKBTree *)self cache];
  v6 = [cache objectForKey:nameCopy];

  return v6;
}

- (id)adaptiveKeys
{
  v18 = *MEMORY[0x1E69E9840];
  cache = [(UIKBTree *)self cache];
  v3 = [cache objectForKey:@"keys"];

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 type] != 12)
        {
          layoutTag = [v10 layoutTag];

          if (!layoutTag)
          {
            continue;
          }
        }

        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)firstCachedKeyWithName:(id)name
{
  nameCopy = name;
  cache = [(UIKBTree *)self cache];
  v6 = [cache objectForKey:nameCopy];

  v7 = [v6 objectAtIndex:0];

  return v7;
}

- (id)firstKeyplaneSwitchKey
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__121;
  v10 = __Block_byref_object_dispose__121;
  v11 = 0;
  cache = [(UIKBTree *)self cache];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__UIKBTree_firstKeyplaneSwitchKey__block_invoke;
  v5[3] = &unk_1E710FE50;
  v5[4] = &v6;
  [cache enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __34__UIKBTree_firstKeyplaneSwitchKey__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  if (([v11 hasSuffix:@"Keyplane-Switch-Key"] & 1) != 0 || objc_msgSend(v11, "hasSuffix:", @"Keyplane-Switch-Collapsed-Key"))
  {
    v8 = [v7 objectAtIndex:0];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

- (id)keyplaneSwitchKeys
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  subtrees = [(UIKBTree *)self subtrees];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(subtrees, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  subtrees2 = [(UIKBTree *)self subtrees];
  v7 = [subtrees2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(subtrees2);
        }

        firstKeyplaneSwitchKey = [*(*(&v13 + 1) + 8 * i) firstKeyplaneSwitchKey];
        if (firstKeyplaneSwitchKey)
        {
          [v5 addObject:firstKeyplaneSwitchKey];
        }
      }

      v8 = [subtrees2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)keyplaneSwitchKeysWithoutCurrentKeyplane:(id)keyplane
{
  v33 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  if (keyplaneCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    firstKeyplaneSwitchKey = [keyplaneCopy firstKeyplaneSwitchKey];
    name = [keyplaneCopy name];
    representedString = [firstKeyplaneSwitchKey representedString];
    if ([name containsString:representedString])
    {
LABEL_18:
    }

    else
    {
      selfCopy = self;
      while (1)
      {
        v8 = [array count];
        subtrees = [(UIKBTree *)self subtrees];
        v10 = [subtrees count];

        if (v8 >= v10)
        {
          break;
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        subtrees2 = [(UIKBTree *)self subtrees];
        v12 = [subtrees2 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v29;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(subtrees2);
              }

              v16 = *(*(&v28 + 1) + 8 * i);
              if (v16 != keyplaneCopy)
              {
                name2 = [*(*(&v28 + 1) + 8 * i) name];
                representedString2 = [firstKeyplaneSwitchKey representedString];
                v19 = [name2 containsString:representedString2];

                if (v19)
                {
                  name3 = [keyplaneCopy name];
                  representedString3 = [firstKeyplaneSwitchKey representedString];
                  v22 = [name3 containsString:representedString3];

                  if ((v22 & 1) == 0)
                  {
                    v23 = [firstKeyplaneSwitchKey copy];
                    [array addObject:v23];
                  }

                  firstKeyplaneSwitchKey2 = [v16 firstKeyplaneSwitchKey];

                  firstKeyplaneSwitchKey = firstKeyplaneSwitchKey2;
                }
              }
            }

            v13 = [subtrees2 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v13);
        }

        name = [keyplaneCopy name];
        representedString = [firstKeyplaneSwitchKey representedString];
        self = selfCopy;
        if ([name containsString:representedString])
        {
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (unint64_t)numberOfRows
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(UIKBTree *)self subtrees];
  v2 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v2)
  {
    v3 = v2;
    unsignedIntegerValue = 0;
    v5 = *v25;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        if ([v7 dynamicLayout])
        {
          v16 = [v7 subtreeWithType:15];
          subtrees = [v16 subtrees];
          unsignedIntegerValue = [subtrees count];

          goto LABEL_22;
        }

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v8 = [v7 geometrySet:0];
        subtrees2 = [v8 subtrees];

        v10 = [subtrees2 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(subtrees2);
              }

              v14 = [*(*(&v20 + 1) + 8 * j) numberForProperty:@"KBdisplayRowHint"];
              v15 = v14;
              if (v14 && [v14 unsignedIntegerValue] > unsignedIntegerValue)
              {
                unsignedIntegerValue = [v15 unsignedIntegerValue];
              }
            }

            v11 = [subtrees2 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v11);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    unsignedIntegerValue = 0;
  }

LABEL_22:

  return unsignedIntegerValue;
}

- (id)_cacheRootNameForKey:(id)key
{
  v33 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if ([keyCopy type] == 12 || (objc_msgSend(keyCopy, "layoutTag"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    unhashedName = @"Adaptive-Key";
    goto LABEL_4;
  }

  cache = [keyCopy cache];
  v8 = [cache objectForKey:@"merge-as-more-key"];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    unhashedName = @"More-Key";
    goto LABEL_4;
  }

  cache2 = [keyCopy cache];
  v11 = [cache2 objectForKey:@"modify-for-writeboard-key"];
  bOOLValue2 = [v11 BOOLValue];

  if (bOOLValue2)
  {
    unhashedName = @"Modify-For-Writeboard-Key";
    goto LABEL_4;
  }

  if ([keyCopy interactionType] == 15)
  {
    unhashedName = @"Space-Key";
    goto LABEL_4;
  }

  if ([keyCopy displayType] == 7)
  {
    name = [keyCopy name];
    v14 = [name rangeOfString:@"Alternate-Currency-Sign-"];
    v16 = v15;

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      name2 = [keyCopy name];
      unhashedName = [name2 substringWithRange:{v14, v16 + 1}];

      goto LABEL_4;
    }

    representedString = [keyCopy representedString];
    v18 = [representedString _containsSubstring:@"¤"];

    if (v18)
    {
      unhashedName = @"Primary-Currency-Sign";
      goto LABEL_4;
    }

    representedString2 = [keyCopy representedString];
    v21 = [representedString2 _containsSubstring:@"⁒"];

    if (v21)
    {
      unhashedName = @"Localized-Percent-Sign";
      goto LABEL_4;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    secondaryRepresentedStrings = [keyCopy secondaryRepresentedStrings];
    v23 = [secondaryRepresentedStrings countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v29;
      unhashedName = @"Primary-Currency-Sign";
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v29 != v25)
          {
            objc_enumerationMutation(secondaryRepresentedStrings);
          }

          v27 = *(*(&v28 + 1) + 8 * i);
          if ([v27 _containsSubstring:@"¤"])
          {
            goto LABEL_32;
          }

          if ([v27 _containsSubstring:@"⁒"])
          {
            unhashedName = @"Localized-Percent-Sign";
LABEL_32:

            goto LABEL_4;
          }
        }

        v24 = [secondaryRepresentedStrings countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }
  }

  unhashedName = [keyCopy unhashedName];
LABEL_4:

  return unhashedName;
}

- (void)cacheKey:(id)key
{
  v24 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  cache = [(UIKBTree *)self cache];

  if (!cache)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(UIKBTree *)self setCache:dictionary];
  }

  v7 = [(UIKBTree *)self _cacheRootNameForKey:keyCopy];
  cache2 = [(UIKBTree *)self cache];
  v9 = [cache2 objectForKey:v7];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    cache3 = [(UIKBTree *)self cache];
    [cache3 setObject:v9 forKey:v7];
  }

  [v9 addObject:keyCopy];
  if ([keyCopy type] == 12 || (objc_msgSend(keyCopy, "layoutTag"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    properties = [keyCopy properties];
    objectEnumerator = [properties objectEnumerator];

    v14 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v18 = *(*(&v19 + 1) + 8 * v17);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 shouldCacheKey])
          {
            [(UIKBTree *)self cacheKey:v18];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }
}

- (void)precacheLayoutName:(id)name
{
  nameCopy = name;
  cache = [(UIKBTree *)self cache];
  [cache setObject:nameCopy forKey:@"layoutName"];
}

- (id)keyForString:(id)string
{
  v31 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v20 = [subtrees countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v6 = *v26;
    v19 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(subtrees);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        keys = [v8 keys];
        v10 = [keys countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v22;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(keys);
              }

              v14 = *(*(&v21 + 1) + 8 * j);
              representedString = [v14 representedString];
              v16 = [representedString isEqualToString:stringCopy];

              if (v16)
              {
                v17 = v14;

                goto LABEL_18;
              }
            }

            v11 = [keys countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v19;
      }

      v20 = [subtrees countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  NSLog(&cfstr_DidNotFindKeyF.isa, stringCopy);
  v17 = 0;
LABEL_18:

  return v17;
}

- (id)keyplaneForKey:(id)key
{
  v32 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v20 = [subtrees countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v20)
  {

LABEL_22:
    representedString = [keyCopy representedString];
    NSLog(&cfstr_DidNotFindKeyp.isa, representedString);

    v6 = 0;
    goto LABEL_23;
  }

  v6 = 0;
  v7 = *v27;
  v21 = subtrees;
  v19 = *v27;
  do
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v27 != v7)
      {
        objc_enumerationMutation(subtrees);
      }

      v9 = *(*(&v26 + 1) + 8 * i);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      keys = [v9 keys];
      v11 = [keys countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        while (2)
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(keys);
            }

            if (*(*(&v22 + 1) + 8 * j) == keyCopy)
            {
              isShiftKeyplane = [v9 isShiftKeyplane];
              v16 = v9;
              if (!isShiftKeyplane)
              {

                goto LABEL_24;
              }

              v6 = v16;
            }
          }

          v12 = [keys countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      subtrees = v21;
      v7 = v19;
    }

    v20 = [v21 countByEnumeratingWithState:&v26 objects:v31 count:16];
  }

  while (v20);

  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_23:
  v6 = v6;
  v16 = v6;
LABEL_24:

  return v16;
}

- (void)setAttributes:(id)attributes
{
  v17 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v6 = [subtrees countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(subtrees);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 type] == 10)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [subtrees countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  subtrees2 = [(UIKBTree *)self subtrees];
  [subtrees2 removeObject:v6];

  if (attributesCopy)
  {
    subtrees3 = [(UIKBTree *)self subtrees];
    [subtrees3 addObject:attributesCopy];
  }
}

- (void)_addKeylayoutKeys:(id)keys
{
  v21 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  if (keysCopy && [(UIKBTree *)self type]== 3)
  {
    if ([(UIKBTree *)self dynamicLayout])
    {
      rowSet = [(UIKBTree *)self rowSet];
      subtrees = [rowSet subtrees];

      if ([(UIKBTree *)self currentKeyboardType])
      {
        v7 = [(UIKBTree *)self orderedRowsForType:[(UIKBTree *)self currentKeyboardType]];

        subtrees = v7;
      }

      v8 = [(UIKBTree *)self _keysForDynamicRows:subtrees];
      [keysCopy addObjectsFromArray:v8];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      keySet = [(UIKBTree *)self keySet];
      subtrees2 = [keySet subtrees];

      v11 = [subtrees2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          v14 = 0;
          do
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(subtrees2);
            }

            subtrees3 = [*(*(&v16 + 1) + 8 * v14) subtrees];
            [keysCopy addObjectsFromArray:subtrees3];

            ++v14;
          }

          while (v12 != v14);
          v12 = [subtrees2 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }
    }
  }
}

- (void)addkeyToCachedKeyList:(id)list
{
  v15[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  if (listCopy)
  {
    cache = [(UIKBTree *)self cache];
    v6 = [cache objectForKey:@"keys"];
    v7 = [v6 mutableCopy];

    [v7 addObject:listCopy];
    if (v7)
    {
      cache2 = [(UIKBTree *)self cache];
      [cache2 setObject:v7 forKey:@"keys"];
    }

    v9 = [(UIKBTree *)self _cacheRootNameForKey:listCopy];
    cache3 = [(UIKBTree *)self cache];
    v11 = [cache3 objectForKeyedSubscript:v9];

    if ([v11 count])
    {
      if ([v11 containsObject:listCopy])
      {
LABEL_9:
        cache4 = [(UIKBTree *)self cache];
        [cache4 setObject:v11 forKey:v9];

        goto LABEL_10;
      }

      v12 = [v11 arrayByAddingObject:listCopy];
    }

    else
    {
      v15[0] = listCopy;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    }

    v13 = v12;

    v11 = v13;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)removeKeyFromCachedKeyList:(id)list
{
  listCopy = list;
  if (listCopy)
  {
    cache = [(UIKBTree *)self cache];
    v6 = [cache objectForKey:@"keys"];
    v7 = [v6 mutableCopy];

    [v7 removeObject:listCopy];
    cache2 = [(UIKBTree *)self cache];
    [cache2 setObject:v7 forKey:@"keys"];

    v9 = [(UIKBTree *)self _cacheRootNameForKey:listCopy];
    cache3 = [(UIKBTree *)self cache];
    v11 = [cache3 objectForKeyedSubscript:v9];

    if ([v11 count])
    {
      v12 = MEMORY[0x1E696AE18];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __39__UIKBTree_removeKeyFromCachedKeyList___block_invoke;
      v18[3] = &unk_1E710FE78;
      v19 = listCopy;
      v13 = [v12 predicateWithBlock:v18];
      v14 = [v11 filteredArrayUsingPredicate:v13];

      v11 = v14;
    }

    v15 = [v11 count];
    cache4 = [(UIKBTree *)self cache];
    v17 = cache4;
    if (v15)
    {
      [cache4 setObject:v11 forKey:v9];
    }

    else
    {
      [cache4 removeObjectForKey:v9];
    }
  }
}

uint64_t __39__UIKBTree_removeKeyFromCachedKeyList___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) name];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

- (void)removeKeyFromAllCachedLists:(id)lists
{
  v29 = *MEMORY[0x1E69E9840];
  listsCopy = lists;
  if (listsCopy)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    cache = [(UIKBTree *)self cache];
    allKeys = [cache allKeys];

    obj = allKeys;
    v7 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      v21 = *v25;
      do
      {
        v10 = 0;
        v22 = v8;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v24 + 1) + 8 * v10);
          cache2 = [(UIKBTree *)self cache];
          v13 = [cache2 objectForKey:v11];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v13 mutableCopy];
            v15 = listsCopy;
            [v14 removeObject:listsCopy];
            v16 = [v14 count];
            cache3 = [(UIKBTree *)self cache];
            v18 = cache3;
            if (v16)
            {
              [cache3 setObject:v14 forKey:v11];
            }

            else
            {
              [cache3 removeObjectForKey:v11];
            }

            listsCopy = v15;
            v9 = v21;
            v8 = v22;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    cache4 = [(UIKBTree *)self cache];
    name = [listsCopy name];
    [cache4 removeObjectForKey:name];
  }
}

- (void)updateCachedKeyList
{
  cache = [(UIKBTree *)self cache];
  [cache removeObjectForKey:@"keys"];

  keys = [(UIKBTree *)self keys];
}

- (id)geometries
{
  v32 = *MEMORY[0x1E69E9840];
  cache = [(UIKBTree *)self cache];
  array = [cache objectForKey:@"geometries"];

  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    selfCopy = self;
    subtrees = [(UIKBTree *)self subtrees];
    v6 = [subtrees countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(subtrees);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v11 = [v10 geometrySet:0];
          subtrees2 = [v11 subtrees];

          v13 = [subtrees2 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v23;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v23 != v15)
                {
                  objc_enumerationMutation(subtrees2);
                }

                subtrees3 = [*(*(&v22 + 1) + 8 * j) subtrees];
                [array addObjectsFromArray:subtrees3];
              }

              v14 = [subtrees2 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v14);
          }
        }

        v7 = [subtrees countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

    cache2 = [(UIKBTree *)selfCopy cache];
    [cache2 setObject:array forKey:@"geometries"];
  }

  v19 = array;

  return v19;
}

- (id)keyAttributes
{
  v32 = *MEMORY[0x1E69E9840];
  cache = [(UIKBTree *)self cache];
  array = [cache objectForKey:@"keyAttributes"];

  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    selfCopy = self;
    subtrees = [(UIKBTree *)self subtrees];
    v6 = [subtrees countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(subtrees);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v11 = [v10 attributeSet:0];
          subtrees2 = [v11 subtrees];

          v13 = [subtrees2 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v23;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v23 != v15)
                {
                  objc_enumerationMutation(subtrees2);
                }

                subtrees3 = [*(*(&v22 + 1) + 8 * j) subtrees];
                [array addObjectsFromArray:subtrees3];
              }

              v14 = [subtrees2 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v14);
          }
        }

        v7 = [subtrees countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

    cache2 = [(UIKBTree *)selfCopy cache];
    [cache2 setObject:array forKey:@"keyAttributes"];
  }

  v19 = array;

  return v19;
}

- (void)clearTransientCaches
{
  cache = [(UIKBTree *)self cache];
  [cache removeObjectForKey:@"keys"];

  cache2 = [(UIKBTree *)self cache];
  [cache2 removeObjectForKey:@"geometries"];

  cache3 = [(UIKBTree *)self cache];
  [cache3 removeObjectForKey:@"keyAttributes"];

  cache4 = [(UIKBTree *)self cache];
  [cache4 removeObjectForKey:@"layoutName"];

  cache5 = [(UIKBTree *)self cache];
  [cache5 removeObjectForKey:@"isLetters"];

  cache6 = [(UIKBTree *)self cache];
  [cache6 removeObjectForKey:@"isScaled"];

  cache7 = [(UIKBTree *)self cache];
  [cache7 removeObjectForKey:@"isGenerated"];

  cache8 = [(UIKBTree *)self cache];
  [cache8 removeObjectForKey:@"resizingOffset"];
}

- (id)keysOrderedByPositionWithoutZip
{
  keys = [(UIKBTree *)self keys];
  v3 = [keys sortedArrayUsingFunction:keyPositionSort context:0];

  return v3;
}

- (id)keysOrderedByPositionRTL
{
  keys = [(UIKBTree *)self keys];
  v3 = [keys sortedArrayUsingFunction:keyPositionSort context:&unk_1EFE34388];

  return v3;
}

- (id)keysOrderedByPositionLinear:(BOOL)linear
{
  linearCopy = linear;
  keys = [(UIKBTree *)self keys];
  v5 = keys;
  if (linearCopy)
  {
    v6 = &unk_1EFE343B0;
  }

  else
  {
    v6 = &unk_1EFE343D8;
  }

  v7 = [keys sortedArrayUsingFunction:keyPositionSort context:v6];

  return v7;
}

- (id)geometriesOrderedByPosition
{
  geometries = [(UIKBTree *)self geometries];
  v3 = [geometries sortedArrayUsingFunction:keyPositionSort context:0];

  return v3;
}

- (id)keyByKeyName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = nameByRemovingHash(name);
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    keys = [(UIKBTree *)self keys];
    v6 = [keys countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(keys);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          unhashedName = [v9 unhashedName];
          v11 = [unhashedName isEqualToString:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [keys countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)keysByKeyName:(id)name
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = nameByRemovingHash(name);
  if (v4)
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    keys = [(UIKBTree *)self keys];
    v7 = [keys countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(keys);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          unhashedName = [v11 unhashedName];
          v13 = [unhashedName isEqualToString:v4];

          if (v13)
          {
            [array addObject:v11];
          }
        }

        v8 = [keys countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)keysWithString:(id)string
{
  v20 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (stringCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    keys = [(UIKBTree *)self keys];
    v7 = [keys countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(keys);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          name = [v11 name];
          v13 = [name rangeOfString:stringCopy];

          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [array addObject:v11];
          }
        }

        v8 = [keys countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)keysWithRepresentedString:(id)string
{
  v20 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (stringCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    keys = [(UIKBTree *)self keys];
    v7 = [keys countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(keys);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          fullRepresentedString = [v11 fullRepresentedString];
          v13 = [fullRepresentedString isEqualToString:stringCopy];

          if (v13)
          {
            [array addObject:v11];
          }
        }

        v8 = [keys countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)keysWithInteractionTypes:(id)types
{
  v20 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  keys = [(UIKBTree *)self keys];
  v7 = [keys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(keys);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v11, "interactionType")}];
        v13 = [typesCopy containsObject:v12];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [keys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)keysExcludingEmptyKeys
{
  v3 = [(UIKBTree *)self keysWithString:@"Empty-Key"];
  if ([v3 count])
  {
    v4 = MEMORY[0x1E695DF70];
    keys = [(UIKBTree *)self keys];
    keys2 = [v4 arrayWithArray:keys];

    [keys2 removeObjectsInArray:v3];
  }

  else
  {
    keys2 = [(UIKBTree *)self keys];
  }

  return keys2;
}

- (id)alternateKeyplaneName
{
  if (!+[UIKeyboardLayout _showSmallDisplayKeyplane]|| ([(UIKBTree *)self stringForProperty:@"more-alternate-small-display"], (name = objc_claimAutoreleasedReturnValue()) == 0))
  {
    name = [(UIKBTree *)self stringForProperty:@"more-alternate"];
    if (!name)
    {
      name = [(UIKBTree *)self name];
    }
  }

  return name;
}

- (BOOL)looksLikeShiftAlternate
{
  v2 = [(UIKBTree *)self objectForProperty:@"looks-like-shift-alternate"];
  v3 = v2;
  v4 = v2 && [v2 integerValue] != 47 && objc_msgSend(v3, "integerValue") != 25;

  return v4;
}

- (BOOL)isLetters
{
  cache = [(UIKBTree *)self cache];
  v4 = [cache objectForKey:@"isLetters"];

  if (!v4)
  {
    name = [(UIKBTree *)self name];
    v6 = [name rangeOfString:@"Letters"] != 0x7FFFFFFFFFFFFFFFLL;

    cache2 = [(UIKBTree *)self cache];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    [cache2 setObject:v8 forKey:@"isLetters"];
  }

  cache3 = [(UIKBTree *)self cache];
  v10 = [cache3 objectForKey:@"isLetters"];
  bOOLValue = [v10 BOOLValue];

  return bOOLValue;
}

- (void)setIsGenerated:(BOOL)generated
{
  cache = [(UIKBTree *)self cache];
  v5 = cache;
  if (generated)
  {
    [cache setObject:&unk_1EFE31000 forKey:@"isGenerated"];
  }

  else
  {
    [cache removeObjectForKey:@"isGenerated"];
  }
}

- (void)setResizingOffset:(double)offset
{
  cache = [(UIKBTree *)self cache];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:offset];
  [cache setObject:v4 forKey:@"resizingOffset"];
}

- (void)cacheNativeIdiomIfNecessaryForScreenTraits:(id)traits
{
  traitsCopy = traits;
  v4 = [(UIKBTree *)self objectForProperty:@"nativeIdiom"];
  if (!v4)
  {
    v5 = [(UIKBTree *)self objectForProperty:@"KBvisualStyle"];

    if (v5)
    {
      v6 = [(UIKBTree *)self visualStylingForScreenTraits:traitsCopy]<< 58 >> 58;
      v7 = [(NSMutableDictionary *)self->properties mutableCopy];
      properties = self->properties;
      self->properties = v7;

      v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      [(UIKBTree *)self setObject:v9 forProperty:@"nativeIdiom"];
    }
  }
}

- (double)primaryKeylayoutWidthRatio
{
  [(UIKBTree *)self keyUnionFrame];
  v4 = v3;
  [(UIKBTree *)self frame];
  return v4 / v5;
}

- (BOOL)isChineseKey
{
  v2 = [(UIKBTree *)self stringForProperty:@"KBhint"];
  v3 = [v2 isEqualToString:@"Chinese"];

  return v3;
}

- (BOOL)supportsType:(int64_t)type
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v5 = [subtrees countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(subtrees);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      if ([v9 type] == 11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [subtrees countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v9;

    if (!v11)
    {
      return 1;
    }

    if (type <= 7)
    {
      if (type > 3)
      {
        if (type > 5)
        {
          if (type == 6)
          {
            v12 = UIKBAttributeValueKeyboardTypeNamePhonePadStr;
          }

          else
          {
            v12 = UIKBAttributeValueKeyboardTypeEmailAddressStr;
          }

          goto LABEL_41;
        }

        if (type != 4)
        {
          v12 = UIKBAttributeValueKeyboardTypePhonePadStr;
LABEL_41:
          v13 = *v12;
          properties = [v11 properties];
          v15 = [properties objectForKey:v13];
          v10 = v15 != 0;

          goto LABEL_42;
        }

LABEL_34:
        v12 = UIKBAttributeValueKeyboardTypeNumberPadStr;
        goto LABEL_41;
      }

      if (type == 1)
      {
        v12 = UIKBAttributeValueKeyboardTypeASCIICapableStr;
        goto LABEL_41;
      }

      if (type != 2)
      {
        if (type == 3)
        {
          v12 = UIKBAttributeValueKeyboardTypeURLStr;
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      goto LABEL_33;
    }

    if (type <= 10)
    {
      if (type == 8)
      {
        v12 = UIKBAttributeValueKeyboardTypeDecimalPadStr;
        goto LABEL_41;
      }

      if (type == 9)
      {
        v12 = UIKBAttributeValueKeyboardTypeTwitterStr;
        goto LABEL_41;
      }
    }

    else
    {
      if (type > 122)
      {
        if (type == 127)
        {
          goto LABEL_34;
        }

        if (type != 123)
        {
LABEL_40:
          v12 = UIKBAttributeValueKeyboardTypeDefaultStr;
          goto LABEL_41;
        }

LABEL_33:
        v12 = UIKBAttributeValueKeyboardTypeNumbersAndPunctuationStr;
        goto LABEL_41;
      }

      if (type == 11)
      {
        v12 = UIKBAttributeValueKeyboardTypeASCIICapableNumberPadStr;
        goto LABEL_41;
      }

      if (type != 120)
      {
        goto LABEL_40;
      }
    }

    v12 = UIKBAttributeValueKeyboardTypeWebSearchStr;
    goto LABEL_41;
  }

LABEL_9:
  v10 = 1;
  v11 = subtrees;
LABEL_42:

  return v10;
}

- (BOOL)looksLike:(id)like
{
  componentName = [like componentName];
  lowercaseString = [componentName lowercaseString];
  shiftAlternateKeyplaneName = [(UIKBTree *)self shiftAlternateKeyplaneName];
  v7 = [lowercaseString isEqualToString:shiftAlternateKeyplaneName];

  if (!v7)
  {
    return 0;
  }

  return [(UIKBTree *)self looksExactlyLikeShiftAlternate];
}

- (CGRect)frameForKeylayoutName:(id)name
{
  v3 = [(UIKBTree *)self subtreeWithName:name];
  v4 = v3;
  if (v3)
  {
    [v3 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)findLeftMoreKey
{
  v21 = *MEMORY[0x1E69E9840];
  cache = [(UIKBTree *)self cache];
  v3 = [cache objectForKey:@"More-Key"];

  v4 = [v3 objectAtIndex:0];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        [v4 frame];
        v12 = v11;
        [v10 frame];
        if (v12 > v13)
        {
          v14 = v10;

          v4 = v14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)updateDictationKeyOnNumberPads:(BOOL)pads
{
  padsCopy = pads;
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  keys = [(UIKBTree *)self keys];
  v5 = [keys countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v25;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(keys);
      }

      v10 = *(*(&v24 + 1) + 8 * v9);
      [v10 setVisible:1];
      if (v7)
      {
        break;
      }

      if ([v10 interactionType] == 5)
      {
        v7 = v10;
      }

      else
      {
        v7 = 0;
      }

      if (v6 == ++v9)
      {
        v6 = [keys countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_29;
    }

    name = [v11 name];
    v13 = [name isEqualToString:@"NumberPad-Dot"];

    if (v13)
    {
      if (!padsCopy)
      {
        shape = [v11 shape];
        shape2 = [v7 shape];
        v16 = [UIKBShape shapeByCombining:shape withShape:shape2];
        [v11 setShape:v16];
      }

      v17 = v7;
      v18 = padsCopy;
    }

    else
    {
      if (padsCopy)
      {
        v19 = v7;
      }

      else
      {
        v19 = v11;
      }

      if (padsCopy)
      {
        v20 = v11;
      }

      else
      {
        v20 = v7;
      }

      shape3 = [v19 shape];
      shape4 = [v20 shape];
      v23 = [UIKBShape shapeByCombining:shape3 withShape:shape4];
      [v19 setShape:v23];

      [v7 setVisible:padsCopy];
      v18 = padsCopy ^ 1;
      v17 = v11;
    }

    [v17 setVisible:v18];
  }

  else
  {
    v7 = 0;
LABEL_19:
    v11 = keys;
  }

LABEL_29:
}

- (id)keysForMergeConditions
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(UIKBTree *)self subtreeWithType:13];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = v3;
    properties = [v3 properties];
    v6 = [properties countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(properties);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __34__UIKBTree_keysForMergeConditions__block_invoke;
          v24[3] = &unk_1E70FA6E8;
          v25 = v4;
          [v10 enumerateObjectsUsingBlock:v24];
        }

        v7 = [properties countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

    v11 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v4, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v4;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(UIKBTree *)self firstCachedKeyWithName:*(*(&v20 + 1) + 8 * j)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v14);
    }

    v3 = v19;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __34__UIKBTree_keysForMergeConditions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)subsumeDisappearingKeyName:(id)name intoKeyName:(id)keyName factors:(id)factors inRightToLeft:(BOOL)left
{
  leftCopy = left;
  factorsCopy = factors;
  nameCopy = name;
  v16 = [(UIKBTree *)self firstCachedKeyWithName:keyName];
  v12 = [(UIKBTree *)self firstCachedKeyWithName:nameCopy];

  shape = [v16 shape];
  v14 = [shape copy];

  shape2 = [v12 shape];
  [v14 addRectFrom:shape2 mergeActionFactors:factorsCopy inRightToLeft:leftCopy];

  [v16 setShape:v14];
}

- (id)mergeKeyNames:(id)names inRightToLeft:(BOOL)left
{
  leftCopy = left;
  v66 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v34 = [(UIKBTree *)self subtreeWithType:13];
  v5 = v34;
  if (v34)
  {
    v38 = [namesCopy mutableCopy];
    properties = [v34 properties];
    v7 = [properties objectForKey:namesCopy];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (v8)
    {
      v9 = *v60;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v60 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v59 + 1) + 8 * i);
          orderedKeyList = [v11 orderedKeyList];

          if (!orderedKeyList)
          {
            disappearingKeyName = [v11 disappearingKeyName];
            remainingKeyName = [v11 remainingKeyName];
            factors = [v11 factors];
            [(UIKBTree *)self subsumeDisappearingKeyName:disappearingKeyName intoKeyName:remainingKeyName factors:factors inRightToLeft:leftCopy];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
      }

      while (v8);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    properties2 = [v34 properties];
    v35 = [properties2 countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v35)
    {
      v33 = *v56;
      do
      {
        v16 = 0;
        do
        {
          if (*v56 != v33)
          {
            v17 = v16;
            objc_enumerationMutation(properties2);
            v16 = v17;
          }

          v36 = v16;
          v18 = *(*(&v55 + 1) + 8 * v16);
          properties3 = [v34 properties];
          v20 = [properties3 objectForKey:namesCopy];

          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v21 = v20;
          v22 = [v21 countByEnumeratingWithState:&v51 objects:v63 count:16];
          if (v22)
          {
            v23 = *v52;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v52 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                v25 = *(*(&v51 + 1) + 8 * j);
                orderedKeyList2 = [v25 orderedKeyList];
                v27 = orderedKeyList2 == 0;

                if (!v27)
                {
                  orderedKeyList3 = [v25 orderedKeyList];
                  v29 = [v18 arrayByAddingObjectsFromArray:orderedKeyList3];

                  v50[0] = 0;
                  v50[1] = v50;
                  v50[2] = 0x2020000000;
                  v50[3] = 0;
                  v41[0] = MEMORY[0x1E69E9820];
                  v41[1] = 3221225472;
                  v41[2] = __40__UIKBTree_mergeKeyNames_inRightToLeft___block_invoke;
                  v41[3] = &unk_1E710FEA0;
                  v42 = namesCopy;
                  selfCopy = self;
                  v30 = v29;
                  v44 = v30;
                  v45 = v25;
                  v49 = leftCopy;
                  v48 = v50;
                  v46 = v18;
                  v47 = v38;
                  [v30 enumerateObjectsUsingBlock:v41];

                  _Block_object_dispose(v50, 8);
                }
              }

              v22 = [v21 countByEnumeratingWithState:&v51 objects:v63 count:16];
            }

            while (v22);
          }

          v16 = v36 + 1;
        }

        while (v36 + 1 != v35);
        v35 = [properties2 countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v35);
    }

    v5 = v34;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

void __40__UIKBTree_mergeKeyNames_inRightToLeft___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) objectAtIndex:*(*(*(a1 + 80) + 8) + 24)];
    v9 = [*(a1 + 48) objectAtIndex:a3];
    v10 = [*(a1 + 56) factors];
    [v7 subsumeDisappearingKeyName:v8 intoKeyName:v9 factors:v10 inRightToLeft:*(a1 + 88)];

    ++*(*(*(a1 + 80) + 8) + 24);
  }

  v11 = *(*(*(a1 + 80) + 8) + 24);
  if (v11 >= [*(a1 + 64) count])
  {
    *a4 = 1;
    v12 = *(a1 + 72);
    v13 = [*(a1 + 48) subarrayWithRange:{a3 + 1, objc_msgSend(*(a1 + 48), "count") - (a3 + 1)}];
    [v12 addObjectsFromArray:v13];
  }
}

- (id)rightSpaceKey
{
  v2 = [(UIKBTree *)self cachedKeysByKeyName:@"Space-Key"];
  v3 = [v2 count];
  v4 = [v2 objectAtIndex:0];
  if (v3 >= 2)
  {
    v5 = [v2 objectAtIndex:1];
    [v4 frame];
    MinX = CGRectGetMinX(v11);
    [v5 frame];
    if (MinX >= CGRectGetMinX(v12))
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    v8 = v7;

    v4 = v8;
  }

  return v4;
}

- (void)clearManualAddedKey
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(UIKBTree *)self firstCachedKeyWithName:@"Writeboard-Key"];
  [(UIKBTree *)self removeKeyFromCachedKeyList:v3];
  v4 = [(UIKBTree *)self firstCachedKeyWithName:@"Dynamic-Non-Roman-to-Roman-Switch-Key"];

  [(UIKBTree *)self removeKeyFromCachedKeyList:v4];
  keysetCanContainWriteboardKey = [(UIKBTree *)self keysetCanContainWriteboardKey];
  v6 = keysetCanContainWriteboardKey;
  if (keysetCanContainWriteboardKey && [keysetCanContainWriteboardKey count])
  {
    v19 = v4;
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          name = [v13 name];
          v15 = [name isEqualToString:@"Writeboard-Key"];

          if ((v15 & 1) == 0)
          {
            name2 = [v13 name];
            v17 = [name2 isEqualToString:@"Dynamic-Non-Roman-to-Roman-Switch-Key"];

            if (!v17)
            {
              continue;
            }
          }

          [array addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    [v8 removeObjectsInArray:array];
    v6 = v18;
    v4 = v19;
  }
}

- (id)keysetCanContainWriteboardKey
{
  v55 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v5 = [subtrees countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (!v5)
  {
    subtrees3 = 0;
    goto LABEL_53;
  }

  v6 = v5;
  v7 = *v45;
  v34 = subtrees;
  v32 = *v45;
  do
  {
    v8 = 0;
    v33 = v6;
    do
    {
      if (*v45 != v7)
      {
        v9 = v8;
        objc_enumerationMutation(subtrees);
        v8 = v9;
      }

      v35 = v8;
      v10 = *(*(&v44 + 1) + 8 * v8);
      name = [v10 name];
      v37 = v10;
      if ([name containsString:@"Control"])
      {
      }

      else
      {
        name2 = [v10 name];
        v13 = [name2 containsString:@"split-right"];

        v10 = v37;
        if (!v13)
        {
          goto LABEL_47;
        }
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      keySet = [v10 keySet];
      subtrees2 = [keySet subtrees];

      obj = subtrees2;
      v16 = [subtrees2 countByEnumeratingWithState:&v40 objects:v52 count:16];
      if (!v16)
      {
        goto LABEL_46;
      }

      v17 = v16;
      v18 = *v41;
      v36 = *v41;
      while (2)
      {
        v19 = 0;
        v38 = v17;
        do
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v40 + 1) + 8 * v19);
          if ([v20 displayRowHint] == 4 || objc_msgSend(v20, "displayRowHint") == 5)
          {
            goto LABEL_52;
          }

          if (((-[UIKBTree visualStyling](self, "visualStyling") & 0x3F) == 1 || (-[UIKBTree visualStyling](self, "visualStyling") & 0x3F) == 0x18 || (-[UIKBTree visualStyling](self, "visualStyling") & 0x3F) == 0x19 || (-[UIKBTree visualStyling](self, "visualStyling") & 0x3F) == 0x1A || (-[UIKBTree visualStyling](self, "visualStyling") & 0x3F) == 0x17) && [v20 displayRowHint] == 2)
          {
            name3 = [v10 name];
            if ([name3 containsString:@"Handwriting"])
            {

LABEL_52:
              subtrees3 = [v20 subtrees];

              subtrees = v34;
              goto LABEL_53;
            }

            if (![(UIKBTree *)self isSplit])
            {
              goto LABEL_39;
            }

            v21 = 1;
          }

          else
          {
            if (![(UIKBTree *)self isSplit])
            {
              goto LABEL_44;
            }

            v21 = 0;
          }

          subtrees4 = [v20 subtrees];
          if (![subtrees4 count])
          {

            v18 = v36;
            v17 = v38;
            if ((v21 & 1) == 0)
            {
              goto LABEL_44;
            }

LABEL_39:

            goto LABEL_44;
          }

          subtrees5 = [v20 subtrees];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v24 = subtrees5;
          v25 = [v24 countByEnumeratingWithState:&v48 objects:v54 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v49;
            while (2)
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v49 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                if ([*(*(&v48 + 1) + 8 * i) interactionType] == 6)
                {
                  v29 = 1;
                  goto LABEL_41;
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v48 objects:v54 count:16];
              if (v26)
              {
                continue;
              }

              break;
            }

            v29 = 0;
          }

          else
          {
            v29 = 0;
          }

LABEL_41:

          v10 = v37;
          if (v21)
          {
          }

          v18 = v36;
          v17 = v38;
          if (v29)
          {
            goto LABEL_52;
          }

LABEL_44:
          ++v19;
        }

        while (v19 != v17);
        v17 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
        subtrees = v34;
        v7 = v32;
        if (v17)
        {
          continue;
        }

        break;
      }

LABEL_46:

      v6 = v33;
LABEL_47:
      v8 = v35 + 1;
    }

    while (v35 + 1 != v6);
    v6 = [subtrees countByEnumeratingWithState:&v44 objects:v53 count:16];
    subtrees3 = 0;
  }

  while (v6);
LABEL_53:

  return subtrees3;
}

- (id)shapeFromFrame:(CGRect)frame leftPadding:(double)padding rightPadding:(double)rightPadding
{
  v5 = [[UIKBShape alloc] initWithGeometry:0 frame:frame.origin.x paddedFrame:frame.origin.y, frame.size.width, frame.size.height, frame.origin.x + padding, frame.origin.y + 0.0, frame.size.width - (padding + rightPadding), frame.size.height];

  return v5;
}

- (BOOL)addMessagesWriteboardKeyOrRomanSwitchIfDismissKey:(BOOL)key
{
  keyCopy = key;
  v147 = *MEMORY[0x1E69E9840];
  v5 = [(UIKBTree *)self firstCachedKeyWithName:@"Dismiss-Key"];
  rightSpaceKey = [(UIKBTree *)self rightSpaceKey];
  v128 = [(UIKBTree *)self firstCachedKeyWithName:@"Return-Key"];
  v7 = [(UIKBTree *)self cachedKeysByKeyName:@"More-Key"];
  v8 = [(UIKBTree *)self firstCachedKeyWithName:@"Handwriting-Input"];

  firstKeyplaneSwitchKey = [(UIKBTree *)self firstKeyplaneSwitchKey];

  v122 = keyCopy;
  if (firstKeyplaneSwitchKey)
  {
    firstKeyplaneSwitchKey2 = [(UIKBTree *)self firstKeyplaneSwitchKey];
    firstObject = [v7 objectAtIndex:0];
    goto LABEL_8;
  }

  if ([v7 count] == 2)
  {
    v10 = [v7 objectAtIndex:0];
    [v10 paddedFrame];
    MinX = CGRectGetMinX(v148);
    v12 = [v7 objectAtIndex:1];
    [v12 paddedFrame];
    firstKeyplaneSwitchKey2 = [v7 objectAtIndex:MinX < CGRectGetMinX(v149)];

    v13 = [v7 objectAtIndex:0];
    [v13 paddedFrame];
    v14 = CGRectGetMinX(v150);
    v15 = [v7 objectAtIndex:1];
    [v15 paddedFrame];
    firstObject = [v7 objectAtIndex:v14 >= CGRectGetMinX(v151)];

    goto LABEL_8;
  }

  v16 = 0;
  if ([v7 count] == 1 && v8)
  {
    firstObject = [v7 firstObject];
    firstKeyplaneSwitchKey2 = v128;
LABEL_8:
    v17 = [(UIKBTree *)self firstCachedKeyWithName:@"Dictation-Key"];
    v18 = [(UIKBTree *)self firstCachedKeyWithName:@"International-Key"];
    v19 = [(UIKBTree *)self cachedKeysByKeyName:@"Modify-For-Writeboard-Key"];
    v20 = [v19 sortedArrayUsingComparator:&__block_literal_global_259_0];

    firstObject2 = [v20 firstObject];
    LODWORD(v19) = [firstObject2 displayRowHint];
    v129 = v18;
    if (v19 != [v18 displayRowHint])
    {

      firstObject2 = 0;
      v20 = 0;
    }

    v16 = 0;
    if (!rightSpaceKey || !firstKeyplaneSwitchKey2 || !v5)
    {
      goto LABEL_58;
    }

    if ([(UIKBTree *)self isSplit])
    {
      [rightSpaceKey frame];
      MidX = CGRectGetMidX(v152);
      [(UIKBTree *)self frame];
      if (MidX < CGRectGetMidX(v153))
      {
        [firstObject2 frame];
        Width = CGRectGetWidth(v154);
        [v17 frame];
        if (Width <= CGRectGetWidth(v155))
        {
          v16 = 0;
LABEL_58:
          v63 = v128;

          goto LABEL_59;
        }

        v24 = firstObject2;

        firstObject2 = 0;
        v20 = 0;
        rightSpaceKey = v24;
      }
    }

    [v17 frame];
    v116 = CGRectGetMinX(v156);
    [v17 paddedFrame];
    v25 = CGRectGetMinX(v157);
    [v17 frame];
    MaxX = CGRectGetMaxX(v158);
    [v17 paddedFrame];
    v104 = CGRectGetMaxX(v159);
    v27 = 0.0;
    if ([(UIKBTree *)self isSplit])
    {
      v28 = firstObject;
      [firstObject frame];
      v29 = CGRectGetMaxX(v160);
      [v18 frame];
      v30 = CGRectGetMaxX(v161);
      if (v29 <= v30)
      {
        v31 = firstObject;
      }

      else
      {
        v31 = v18;
      }

      if (v29 <= v30)
      {
        v28 = v18;
      }

      [v31 frame];
      v32 = CGRectGetMaxX(v162);
      [v28 frame];
      v33 = CGRectGetMaxX(v163);
      if (![v17 visible] || objc_msgSend(v18, "visible"))
      {
        v32 = v33;
      }

      [v17 frame];
      v27 = CGRectGetMinX(v164) - v32;
    }

    v106 = MaxX;
    v108 = v25;
    v121 = v17;
    [rightSpaceKey frame];
    v124 = v35;
    v125 = v34;
    v102 = v36;
    v123 = v37;
    v38 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    [firstKeyplaneSwitchKey2 frame];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    [firstObject frame];
    MinY = CGRectGetMinY(v165);
    [firstObject frame];
    Height = CGRectGetHeight(v166);
    [v5 frame];
    v48 = v47;
    v126 = v49;
    v127 = v50;
    v52 = v51;
    v53 = v40;
    v54 = v42;
    v55 = v44;
    v56 = v46;
    if (firstObject2)
    {
      [firstObject2 frame];
    }

    v184.origin.x = v48;
    v184.origin.y = v126;
    v184.size.height = v127;
    v184.size.width = v52;
    v167 = CGRectUnion(*&v53, v184);
    v100 = CGRectGetWidth(v167);
    if ([(UIKBTree *)self isSplit])
    {
      if (firstObject2)
      {
        [firstObject frame];
        v57 = CGRectGetWidth(v168);
        [v17 frame];
        v58 = (v57 + CGRectGetWidth(v169)) * 0.5;
      }

      else
      {
        v172.origin.x = v40;
        v172.origin.y = v42;
        v172.size.width = v44;
        v172.size.height = v46;
        v64 = CGRectGetWidth(v172);
        [firstObject frame];
        v65 = v64 <= CGRectGetWidth(v173);
        v58 = v44;
        if (!v65)
        {
          [firstObject frame];
          v58 = CGRectGetWidth(v174);
        }
      }

      v66 = v17;
    }

    else
    {
      [v17 frame];
      v58 = CGRectGetWidth(v170);
      if (v8)
      {
        v171.origin.x = v40;
        v171.origin.y = v42;
        v171.size.width = v44;
        v171.size.height = v46;
        v59 = (v58 + CGRectGetWidth(v171)) * 0.5;
        v60 = v40;
        v61 = v42;
        v62 = v46;
        v58 = v59;
LABEL_40:
        v113 = v7;
        v115 = v5;
        v67 = CGRectGetWidth(*&v60);
        [v18 frame];
        v68 = CGRectGetWidth(v175);
        v176.origin.x = v40;
        v176.origin.y = v42;
        v110 = v58;
        v176.size.width = v58;
        v176.size.height = v46;
        v69 = v27 + CGRectGetWidth(v176);
        v177.origin.x = 0.0;
        v177.size.height = Height;
        v177.origin.y = MinY;
        rect = v67;
        v177.size.width = v67;
        v70 = v27 + v69 + CGRectGetWidth(v177);
        v178.origin.x = v48;
        v178.origin.y = v126;
        v178.size.height = v127;
        v101 = v68;
        v178.size.width = v68;
        v71 = CGRectGetWidth(v178) + v70;
        v141 = 0u;
        v142 = 0u;
        v143 = 0u;
        v144 = 0u;
        v72 = v20;
        v73 = [v72 countByEnumeratingWithState:&v141 objects:v146 count:16];
        v111 = v42;
        if (v73)
        {
          v74 = v73;
          v75 = *v142;
          do
          {
            for (i = 0; i != v74; ++i)
            {
              if (*v142 != v75)
              {
                objc_enumerationMutation(v72);
              }

              [*(*(&v141 + 1) + 8 * i) frame];
              v71 = v71 + v27 + CGRectGetWidth(v179);
            }

            v74 = [v72 countByEnumeratingWithState:&v141 objects:v146 count:16];
          }

          while (v74);
        }

        v112 = v46;
        v114 = rightSpaceKey;
        v107 = vabdd_f64(v106, v104);
        v109 = vabdd_f64(v116, v108);

        v77 = v102 - ceil(v71 - v100);
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v20 = v72;
        v78 = [v20 countByEnumeratingWithState:&v137 objects:v145 count:16];
        v80 = v124;
        v79 = v125;
        v117 = v77;
        v81 = v123;
        if (v78)
        {
          v82 = v78;
          v83 = *v138;
          v80 = v124;
          v79 = v125;
          v81 = v123;
          do
          {
            v84 = 0;
            v85 = v80;
            v86 = v77;
            v87 = v81;
            do
            {
              if (*v138 != v83)
              {
                objc_enumerationMutation(v20);
              }

              [*(*(&v137 + 1) + 8 * v84) frame];
              v80 = v88;
              v77 = v89;
              v81 = v90;
              v180.origin.x = v79;
              v180.origin.y = v85;
              v180.size.width = v86;
              v180.size.height = v87;
              v79 = v27 + CGRectGetMaxX(v180);
              v136[0] = v79;
              v136[1] = v80;
              v136[2] = v77;
              v136[3] = v81;
              v91 = [MEMORY[0x1E696B098] valueWithBytes:v136 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
              [v38 addObject:v91];

              ++v84;
              v85 = v80;
              v86 = v77;
              v87 = v81;
            }

            while (v82 != v84);
            v82 = [v20 countByEnumeratingWithState:&v137 objects:v145 count:16];
          }

          while (v82);
        }

        v181.origin.x = v79;
        v181.origin.y = v80;
        v181.size.width = v77;
        v181.size.height = v81;
        v92 = v27 + CGRectGetMaxX(v181);
        v182.origin.x = v92;
        v182.origin.y = v111;
        v182.size.width = v110;
        v182.size.height = v112;
        v183.origin.x = v27 + CGRectGetMaxX(v182);
        x = v183.origin.x;
        v183.origin.y = MinY;
        v183.size.width = rect;
        v183.size.height = Height;
        v103 = v27 + CGRectGetMaxX(v183);
        v107 = [(UIKBTree *)self shapeFromFrame:v125 leftPadding:v124 rightPadding:v117, v123, v109, v107];
        rightSpaceKey = v114;
        [v114 setShape:v107];

        v132[0] = MEMORY[0x1E69E9820];
        v132[1] = 3221225472;
        v132[2] = __62__UIKBTree_addMessagesWriteboardKeyOrRomanSwitchIfDismissKey___block_invoke_2;
        v132[3] = &unk_1E710FEE8;
        v132[4] = self;
        v133 = v38;
        v134 = v109;
        v135 = v107;
        v94 = v38;
        [v20 enumerateObjectsUsingBlock:v132];
        v1072 = [(UIKBTree *)self shapeFromFrame:v92 leftPadding:v111 rightPadding:v110, v112, v109, v107];
        [firstKeyplaneSwitchKey2 setShape:v1072];

        v1073 = [(UIKBTree *)self shapeFromFrame:v103 leftPadding:v126 rightPadding:v101, v127, v109, v107];
        v5 = v115;
        [v115 setShape:v1073];

        v1074 = [(UIKBTree *)self shapeFromFrame:x leftPadding:MinY rightPadding:rect, Height, v109, v107];
        rendering = [v115 rendering];
        if (v122)
        {
          [(UIKBTree *)self addWriteboardKeyToCachedKeyListWithShape:v1074 rendering:rendering];
        }

        else
        {
          [(UIKBTree *)self addRomanSwitchToCachedKeyListWithShape:v1074 rendering:rendering];
        }

        v7 = v113;
        v17 = v121;

        v16 = 1;
        goto LABEL_58;
      }

      v66 = firstObject;
    }

    [v66 frame];
    goto LABEL_40;
  }

  v63 = v128;
LABEL_59:

  return v16;
}

uint64_t __62__UIKBTree_addMessagesWriteboardKeyOrRomanSwitchIfDismissKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 frame];
  v6 = [v4 numberWithDouble:CGRectGetMinX(v19)];
  v7 = MEMORY[0x1E696AD98];
  [v5 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v20.origin.x = v9;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  v16 = [v7 numberWithDouble:CGRectGetMinX(v20)];
  v17 = [v6 compare:v16];

  return v17;
}

void __62__UIKBTree_addMessagesWriteboardKeyOrRomanSwitchIfDismissKey___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v8 = [v5 objectAtIndex:a3];
  [v8 CGRectValue];
  v7 = [v4 shapeFromFrame:? leftPadding:? rightPadding:?];
  [v6 setShape:v7];
}

- (BOOL)addMessagesWriteboardKeyOrRomanSwitchIfNoDismissKey:(BOOL)key
{
  keyCopy = key;
  v5 = [(UIKBTree *)self firstCachedKeyWithName:@"Return-Key"];
  v6 = [(UIKBTree *)self firstCachedKeyWithName:@"Dictation-Key"];
  rendering = [v5 rendering];
  [v5 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v6 frame];
  v46 = v17;
  v47 = v16;
  v49 = v19;
  v50 = v18;
  [v5 frame];
  MinX = CGRectGetMinX(v51);
  [v5 paddedFrame];
  v21 = CGRectGetMinX(v52);
  [v5 frame];
  MaxX = CGRectGetMaxX(v53);
  [v5 paddedFrame];
  v23 = CGRectGetMaxX(v54);
  if (v5 && (v24 = v23, [v5 visible]))
  {
    v25 = vabdd_f64(MinX, v21);
    v26 = vabdd_f64(MaxX, v24);
    if (rendering <= 0x22 && ((1 << rendering) & 0x600000002) != 0 || rendering == 9 && ![v6 visible] || (-[UIKBTree visualStyling](self, "visualStyling") & 0xFF0000) == 0xB0000)
    {
      v55.origin.x = v9;
      v55.origin.y = v11;
      v55.size.width = v13;
      v55.size.height = v15;
      Height = CGRectGetHeight(v55);
      v15 = ceil(Height * 0.5);
      v56.origin.x = v9;
      v56.origin.y = v11;
      v56.size.width = v13;
      v56.size.height = v15;
      v28 = ceil(Height - CGRectGetHeight(v56));
      if (rendering == 9 || ([(UIKBTree *)self visualStyling]& 0xFF0000) == 0xB0000)
      {
        v57.origin.x = v9;
        v57.origin.y = v11;
        v57.size.width = v13;
        v57.size.height = v28;
        MaxY = CGRectGetMaxY(v57);
        v30 = v11;
        v11 = MaxY;
      }

      else
      {
        v65.origin.x = v9;
        v65.origin.y = v11;
        v65.size.width = v13;
        v65.size.height = v15;
        v30 = CGRectGetMaxY(v65);
      }

      v38 = [(UIKBTree *)self shapeFromFrame:v9 leftPadding:v30 rightPadding:v13, v28, v25, v26];
      [v5 setShape:v38];
    }

    else if (v6 && [v6 visible] && (v58.size.width = v46, v58.origin.x = v47, v58.size.height = v49, v58.origin.y = v50, v32 = CGRectGetMaxX(v58), v59.origin.x = v9, v59.origin.y = v11, v59.size.width = v13, v59.size.height = v15, v32 > CGRectGetMaxX(v59)))
    {
      v60.origin.x = v9;
      v60.origin.y = v11;
      v60.size.width = v13;
      v60.size.height = v15;
      v72.size.width = v46;
      v72.origin.x = v47;
      v72.size.height = v49;
      v72.origin.y = v50;
      v61 = CGRectUnion(v60, v72);
      width = v61.size.width;
      v13 = ceil(v61.size.width / 3.0);
      v61.origin.x = v9;
      v61.origin.y = v11;
      v61.size.width = v13;
      v61.size.height = v15;
      v34 = CGRectGetMaxX(v61);
      v62.origin.x = v9;
      v62.origin.y = v11;
      v62.size.width = v13;
      v62.size.height = v15;
      v35 = width - CGRectGetWidth(v62);
      v63.origin.x = v34;
      v63.origin.y = v11;
      v63.size.width = v13;
      v63.size.height = v15;
      v48 = ceil(v35 - CGRectGetWidth(v63));
      v64.origin.x = v34;
      v64.origin.y = v11;
      v64.size.width = v13;
      v64.size.height = v15;
      v36 = CGRectGetMaxX(v64);
      rendering = [v6 rendering];
      v37 = [(UIKBTree *)self shapeFromFrame:v9 leftPadding:v11 rightPadding:v13, v15, v25, v26];
      [v5 setShape:v37];

      v38 = [(UIKBTree *)self shapeFromFrame:v36 leftPadding:v50 rightPadding:v48, v49, v25, v26];
      [v6 setShape:v38];
      v9 = v34;
    }

    else if (rendering == 9 && [v6 visible])
    {
      v66.size.width = v46;
      v9 = v47;
      v66.origin.x = v47;
      v66.origin.y = v50;
      v66.size.height = v49;
      v41 = CGRectGetWidth(v66);
      v13 = ceil(v41 * 0.5);
      v67.origin.x = v47;
      v67.origin.y = v50;
      v67.size.width = v13;
      v67.size.height = v49;
      v42 = ceil(v41 - CGRectGetWidth(v67));
      v68.origin.x = v47;
      v68.origin.y = v50;
      v68.size.width = v13;
      v68.size.height = v49;
      v38 = [(UIKBTree *)self shapeFromFrame:CGRectGetMaxX(v68) leftPadding:v50 rightPadding:v42, v49, v25, v26];
      [v6 setShape:v38];
      rendering = 9;
      v11 = v50;
      v15 = v49;
    }

    else
    {
      v69.origin.x = v9;
      v69.origin.y = v11;
      v69.size.width = v13;
      v69.size.height = v15;
      v43 = CGRectGetWidth(v69);
      v44 = ceil(v43 * 0.5);
      v70.origin.x = v9;
      v70.origin.y = v11;
      v70.size.width = v44;
      v70.size.height = v15;
      v13 = ceil(v43 - CGRectGetWidth(v70));
      v71.origin.x = v9;
      v71.origin.y = v11;
      v71.size.width = v44;
      v71.size.height = v15;
      v45 = CGRectGetMaxX(v71);
      v38 = [(UIKBTree *)self shapeFromFrame:v9 leftPadding:v11 rightPadding:v44, v15, v25, v26];
      [v5 setShape:v38];
      v9 = v45;
    }

    v39 = [(UIKBTree *)self shapeFromFrame:v9 leftPadding:v11 rightPadding:v13, v15, v25, v26];
    if (keyCopy)
    {
      [(UIKBTree *)self addWriteboardKeyToCachedKeyListWithShape:v39 rendering:rendering];
    }

    else
    {
      [(UIKBTree *)self addRomanSwitchToCachedKeyListWithShape:v39 rendering:rendering];
    }

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)addWriteboardKeyToCachedKeyListWithShape:(id)shape rendering:(int)rendering
{
  v4 = *&rendering;
  shapeCopy = shape;
  keysetCanContainWriteboardKey = [(UIKBTree *)self keysetCanContainWriteboardKey];
  v7 = keysetCanContainWriteboardKey;
  if (keysetCanContainWriteboardKey && [keysetCanContainWriteboardKey count])
  {
    v8 = [UIKBTree treeOfType:8];
    [v8 setName:@"Writeboard-Key"];
    [v8 setDisplayString:@"Writeboard"];
    [v8 setRepresentedString:&stru_1EFB14550];
    [v8 setDisplayType:53];
    [v8 setInteractionType:40];
    [v8 setShape:shapeCopy];
    [v8 setVisible:1];
    [v8 setDisplayRowHint:4];
    [v8 setDisplayTypeHint:3];
    [v8 setState:2];
    [v8 setRendering:v4];
    v9 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_266];
    [v7 filterUsingPredicate:v9];

    [v7 addObject:v8];
    [(UIKBTree *)self removeKeyFromAllCachedLists:v8];
    [(UIKBTree *)self addkeyToCachedKeyList:v8];
  }
}

uint64_t __63__UIKBTree_addWriteboardKeyToCachedKeyListWithShape_rendering___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [@"Writeboard-Key" isEqualToString:v2];

  return v3 ^ 1u;
}

- (void)addRomanSwitchToCachedKeyListWithShape:(id)shape rendering:(int)rendering
{
  v4 = *&rendering;
  shapeCopy = shape;
  keysetCanContainWriteboardKey = [(UIKBTree *)self keysetCanContainWriteboardKey];
  v7 = keysetCanContainWriteboardKey;
  if (keysetCanContainWriteboardKey && [keysetCanContainWriteboardKey count])
  {
    v8 = [UIKBTree treeOfType:8];
    [v8 setName:@"Dynamic-Non-Roman-to-Roman-Switch-Key"];
    [v8 setDisplayString:@"abc"];
    [v8 setRepresentedString:@"ASCIICapable"];
    [v8 setLocalizationKey:@"UI-abc"];
    [v8 setDisplayType:0];
    [v8 setInteractionType:9];
    [v8 setShape:shapeCopy];
    [v8 setVisible:1];
    [v8 setDisplayRowHint:4];
    [v8 setDisplayTypeHint:3];
    [v8 setState:2];
    [v8 setRendering:v4];
    v9 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_277_0];
    [v7 filterUsingPredicate:v9];

    [v7 addObject:v8];
    [(UIKBTree *)self removeKeyFromAllCachedLists:v8];
    [(UIKBTree *)self addkeyToCachedKeyList:v8];
  }
}

uint64_t __61__UIKBTree_addRomanSwitchToCachedKeyListWithShape_rendering___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [@"Dynamic-Non-Roman-to-Roman-Switch-Key" isEqualToString:v2];

  return v3 ^ 1u;
}

- (BOOL)addMessagesWriteboardKeyOrRomanSwitch:(BOOL)switch
{
  switchCopy = switch;
  v5 = [(UIKBTree *)self firstCachedKeyWithName:@"Dismiss-Key"];
  visualStyle = [(UIKBTree *)self visualStyle];
  if (!v5 || visualStyle == 101)
  {
    v7 = [(UIKBTree *)self addMessagesWriteboardKeyOrRomanSwitchIfNoDismissKey:switchCopy];
  }

  else
  {
    v7 = [(UIKBTree *)self addMessagesWriteboardKeyOrRomanSwitchIfDismissKey:switchCopy];
  }

  v8 = v7;

  return v8;
}

- (void)_mutateKeys:(id)keys scale:(double)scale withShapeOperation:(id)operation
{
  keysCopy = keys;
  operationCopy = operation;
  array = [MEMORY[0x1E695DF70] array];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__UIKBTree__mutateKeys_scale_withShapeOperation___block_invoke;
  v18[3] = &unk_1E710FF30;
  v10 = array;
  v19 = v10;
  [keysCopy enumerateObjectsUsingBlock:v18];
  v11 = [UIKBShapeOperator operatorWithScale:scale];
  v12 = operationCopy[2](operationCopy, v11, v10);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__UIKBTree__mutateKeys_scale_withShapeOperation___block_invoke_2;
  v14[3] = &unk_1E710FF58;
  v13 = v12;
  v15 = v13;
  v16 = v17;
  [keysCopy enumerateObjectsUsingBlock:v14];

  _Block_object_dispose(v17, 8);
}

void __49__UIKBTree__mutateKeys_scale_withShapeOperation___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 visible])
  {
    v3 = *(a1 + 32);
    v4 = [v5 shape];
    [v3 addObject:v4];
  }
}

void __49__UIKBTree__mutateKeys_scale_withShapeOperation___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 visible])
  {
    v3 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 40) + 8) + 24)];
    [v4 setShape:v3];

    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (id)_horizontallyCoincidentKeysWithKey:(id)key
{
  v25 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = keyCopy;
  if (keyCopy)
  {
    [keyCopy paddedFrame];
    v7 = v6;
    v9 = v8;
    array = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    keys = [(UIKBTree *)self keys];
    v12 = [keys countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(keys);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if (v16 != v5)
          {
            [*(*(&v20 + 1) + 8 * i) paddedFrame];
            if (v17 > v7)
            {
              [v16 paddedFrame];
              if (vabdd_f64(v18, v9) < 0.00000011920929)
              {
                [array addObject:v16];
              }
            }
          }
        }

        v13 = [keys countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (void)centerKeys:(id)keys inRect:(CGRect)rect scale:(double)scale
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__UIKBTree_centerKeys_inRect_scale___block_invoke;
  v5[3] = &__block_descriptor_64_e48___NSArray_24__0__UIKBShapeOperator_8__NSArray_16l;
  rectCopy = rect;
  [(UIKBTree *)self _mutateKeys:keys scale:v5 withShapeOperation:scale];
}

- (void)centerWhilePreservingLayoutWithKeys:(id)keys inRect:(CGRect)rect scale:(double)scale
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__UIKBTree_centerWhilePreservingLayoutWithKeys_inRect_scale___block_invoke;
  v5[3] = &__block_descriptor_64_e48___NSArray_24__0__UIKBShapeOperator_8__NSArray_16l;
  rectCopy = rect;
  [(UIKBTree *)self _mutateKeys:keys scale:v5 withShapeOperation:scale];
}

- (void)centerHorizontallyWhilePreservingLayoutWithKeys:(id)keys inRect:(CGRect)rect scale:(double)scale
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__UIKBTree_centerHorizontallyWhilePreservingLayoutWithKeys_inRect_scale___block_invoke;
  v5[3] = &__block_descriptor_64_e48___NSArray_24__0__UIKBShapeOperator_8__NSArray_16l;
  rectCopy = rect;
  [(UIKBTree *)self _mutateKeys:keys scale:v5 withShapeOperation:scale];
}

- (void)centerVerticallyWhilePreservingLayoutWithKeys:(id)keys inRect:(CGRect)rect scale:(double)scale
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__UIKBTree_centerVerticallyWhilePreservingLayoutWithKeys_inRect_scale___block_invoke;
  v5[3] = &__block_descriptor_64_e48___NSArray_24__0__UIKBShapeOperator_8__NSArray_16l;
  rectCopy = rect;
  [(UIKBTree *)self _mutateKeys:keys scale:v5 withShapeOperation:scale];
}

- (void)repositionKeys:(id)keys withOffset:(CGPoint)offset scale:(double)scale
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__UIKBTree_repositionKeys_withOffset_scale___block_invoke;
  v5[3] = &__block_descriptor_48_e48___NSArray_24__0__UIKBShapeOperator_8__NSArray_16l;
  offsetCopy = offset;
  [(UIKBTree *)self _mutateKeys:keys scale:v5 withShapeOperation:scale];
}

- (void)resizeKeys:(id)keys withOffset:(CGPoint)offset scale:(double)scale
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__UIKBTree_resizeKeys_withOffset_scale___block_invoke;
  v5[3] = &__block_descriptor_48_e48___NSArray_24__0__UIKBShapeOperator_8__NSArray_16l;
  offsetCopy = offset;
  [(UIKBTree *)self _mutateKeys:keys scale:v5 withShapeOperation:scale];
}

- (void)insetKeys:(id)keys withInsets:(UIEdgeInsets)insets scale:(double)scale
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__UIKBTree_insetKeys_withInsets_scale___block_invoke;
  v5[3] = &__block_descriptor_64_e48___NSArray_24__0__UIKBShapeOperator_8__NSArray_16l;
  insetsCopy = insets;
  [(UIKBTree *)self _mutateKeys:keys scale:v5 withShapeOperation:scale];
}

- (void)scaleKeys:(id)keys withFactor:(CGSize)factor scale:(double)scale
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__UIKBTree_scaleKeys_withFactor_scale___block_invoke;
  v5[3] = &__block_descriptor_48_e48___NSArray_24__0__UIKBShapeOperator_8__NSArray_16l;
  factorCopy = factor;
  [(UIKBTree *)self _mutateKeys:keys scale:v5 withShapeOperation:scale];
}

- (void)removeKey:(id)key
{
  v34 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (keyCopy)
  {
    [(UIKBTree *)self removeKeyFromAllCachedLists:keyCopy];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [(UIKBTree *)self subtrees];
    v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      v20 = *v29;
      do
      {
        v8 = 0;
        v21 = v6;
        do
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v28 + 1) + 8 * v8);
          if ([v9 type] == 3)
          {
            v23 = v8;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            keySet = [v9 keySet];
            subtrees = [keySet subtrees];

            v12 = [subtrees countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v25;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v25 != v14)
                  {
                    objc_enumerationMutation(subtrees);
                  }

                  v16 = *(*(&v24 + 1) + 8 * i);
                  subtrees2 = [v16 subtrees];
                  v18 = [subtrees2 containsObject:keyCopy];

                  if (v18)
                  {
                    subtrees3 = [v16 subtrees];
                    [subtrees3 removeObject:keyCopy];

                    [(UIKBTree *)self setObject:0 forProperty:@"KBunionFrame"];
                    [(UIKBTree *)self setObject:0 forProperty:@"KBunionPaddedFrame"];
                  }
                }

                v13 = [subtrees countByEnumeratingWithState:&v24 objects:v32 count:16];
              }

              while (v13);
            }

            v7 = v20;
            v6 = v21;
            v8 = v23;
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v6);
    }
  }
}

- (void)insertKey:(id)key withFrame:(CGRect)frame andShiftKeys:(id)keys scale:(double)scale
{
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v52 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keysCopy = keys;
  cache = [(UIKBTree *)self cache];
  allValues = [cache allValues];
  v16 = [allValues containsObject:keyCopy];

  if ((v16 & 1) == 0)
  {
    if (keyCopy)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v17 = keysCopy;
      v18 = [v17 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v18)
      {
        v19 = *v47;
        v20 = *MEMORY[0x1E695F060];
        v21 = *(MEMORY[0x1E695F060] + 8);
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v47 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v46 + 1) + 8 * i);
            [v23 frame];
            if (v25 != v20 || v24 != v21)
            {
              v18 = v23;
              goto LABEL_15;
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v18);
      }

LABEL_15:

      [keyCopy setState:2];
      [keyCopy setVisible:1];
      [keyCopy setDisplayRowHint:{objc_msgSend(v18, "displayRowHint")}];
      v27 = [UIKBShapeOperator operatorWithScale:scale];
      if (v18)
      {
        v28 = v18;
      }

      else
      {
        v28 = keyCopy;
      }

      shape = [v28 shape];
      [shape frame];
      if (width == -1.0)
      {
        v32 = v30;
      }

      else
      {
        [shape frame];
        v32 = v31 - width;
      }

      v34 = 0.0;
      v35 = [UIKBShape shapeByResizingShape:shape byAmount:v32, 0.0];
      [keyCopy setShape:v35];

      v33 = 0.0;
      if (x != -1.0)
      {
        [keyCopy frame];
        v33 = x - v36;
      }

      if (y != -1.0)
      {
        [keyCopy frame];
        v34 = y - v37;
      }

      shape2 = [keyCopy shape];
      v50 = shape2;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
      v40 = [v27 shapesByRepositioningShapes:v39 withOffset:{v33, v34}];
      firstObject = [v40 firstObject];
      [keyCopy setShape:firstObject];

      [(UIKBTree *)self addkeyToCachedKeyList:keyCopy];
      supplementaryKeyList = [(UIKBTree *)self supplementaryKeyList];
      subtrees = [supplementaryKeyList subtrees];
      LOBYTE(v40) = [subtrees containsObject:keyCopy];

      if ((v40 & 1) == 0)
      {
        supplementaryKeyList2 = [(UIKBTree *)self supplementaryKeyList];
        subtrees2 = [supplementaryKeyList2 subtrees];
        [subtrees2 addObject:keyCopy];
      }
    }

    else
    {
      v33 = *MEMORY[0x1E695EFF8];
    }

    [(UIKBTree *)self repositionKeys:keysCopy withOffset:width + v33 scale:0.0, scale];
  }
}

- (void)removeKey:(id)key andShiftKeys:(id)keys scale:(double)scale
{
  v31 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keysCopy = keys;
  if (keyCopy)
  {
    [keyCopy frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(UIKBTree *)self removeKey:keyCopy];
    array = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = keysCopy;
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        v23 = 0;
        do
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v26 + 1) + 8 * v23);
          if (v24 != keyCopy)
          {
            [*(*(&v26 + 1) + 8 * v23) frame];
            MinX = CGRectGetMinX(v32);
            v33.origin.x = v11;
            v33.origin.y = v13;
            v33.size.width = v15;
            v33.size.height = v17;
            if (MinX >= CGRectGetMaxX(v33))
            {
              [array addObject:v24];
            }
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v21);
    }

    [(UIKBTree *)self repositionKeys:array withOffset:-v15 scale:0.0, scale];
  }
}

- (void)replaceKey:(id)key withKey:(id)withKey
{
  v41 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  withKeyCopy = withKey;
  v8 = withKeyCopy;
  if (withKeyCopy && keyCopy && withKeyCopy != keyCopy)
  {
    shape = [keyCopy shape];
    v10 = [shape copy];
    [v8 setShape:v10];

    [v8 setVisible:1];
    [v8 setDisplayRowHint:{objc_msgSend(keyCopy, "displayRowHint")}];
    [(UIKBTree *)self removeKeyFromCachedKeyList:keyCopy];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    selfCopy = self;
    obj = [(UIKBTree *)self subtrees];
    v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      v28 = *v36;
      do
      {
        v14 = 0;
        v29 = v12;
        do
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v35 + 1) + 8 * v14);
          if ([v15 type] == 3)
          {
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            keySet = [v15 keySet];
            subtrees = [keySet subtrees];

            v18 = [subtrees countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v32;
              do
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v32 != v20)
                  {
                    objc_enumerationMutation(subtrees);
                  }

                  v22 = *(*(&v31 + 1) + 8 * i);
                  subtrees2 = [v22 subtrees];
                  v24 = [subtrees2 containsObject:keyCopy];

                  if (v24)
                  {
                    subtrees3 = [v22 subtrees];
                    subtrees4 = [v22 subtrees];
                    [subtrees3 replaceObjectAtIndex:objc_msgSend(subtrees4 withObject:{"indexOfObject:", keyCopy), v8}];
                  }
                }

                v19 = [subtrees countByEnumeratingWithState:&v31 objects:v39 count:16];
              }

              while (v19);
            }

            v13 = v28;
            v12 = v29;
          }

          ++v14;
        }

        while (v14 != v12);
        v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v12);
    }

    self = selfCopy;
  }

  if (v8)
  {
    [(UIKBTree *)self addkeyToCachedKeyList:v8];
  }
}

- (void)shiftRowAndResizeLeadingControlKey:(id)key toSize:(CGSize)size scale:(double)scale
{
  width = size.width;
  keyCopy = key;
  v13 = keyCopy;
  if (keyCopy)
  {
    [keyCopy frame];
    width = v9 - width;
    shape = [v13 shape];
    v11 = [UIKBShape shapeByResizingShape:shape byAmount:width, 0.0];
    [v13 setShape:v11];
  }

  v12 = [(UIKBTree *)self _horizontallyCoincidentKeysWithKey:v13];
  [(UIKBTree *)self repositionKeys:v12 withOffset:-width scale:0.0, scale];
}

+ (id)mergeStringForKeyName:(id)name
{
  nameCopy = name;
  if ([nameCopy hasSuffix:@"Space-Key"])
  {
    v4 = @"Space";
  }

  else if ([nameCopy hasSuffix:@"Dictation-Key"])
  {
    v4 = @"Dict";
  }

  else if ([nameCopy hasSuffix:@"International-Key"])
  {
    v4 = @"Intl";
  }

  else if ([nameCopy hasSuffix:@"Return-Key"])
  {
    v4 = @"Return";
  }

  else
  {
    v4 = @"More";
  }

  return v4;
}

+ (id)shapesForControlKeyShapes:(id)shapes options:(int)options
{
  shapesCopy = shapes;
  v6 = [shapesCopy objectForKey:@"Dict"];

  if ([shapesCopy count] <= 1)
  {
    v7 = shapesCopy;
    goto LABEL_18;
  }

  v8 = (options & 2) == 0;
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:shapesCopy copyItems:1];
  v7 = v9;
  if ((options & 0x40) != 0)
  {
    if ((options & 2) == 0 && v6)
    {
      v19 = [v9 objectForKey:@"Return"];
      v20 = [v7 objectForKey:@"Dict"];
      [v19 addRectFrom:v20];
    }

    if (options)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if ((options & 0x10) == 0)
  {
    if (!v6)
    {
      goto LABEL_49;
    }

    v10 = options & 0xC;
    if ((options & 2) != 0)
    {
      if (v10 != 12)
      {
        goto LABEL_49;
      }

      v30 = [v9 objectForKey:@"More"];
      v31 = [v7 objectForKey:@"Dict"];
      [v30 addRectFrom:v31 widthFraction:-0.3061 heightFraction:0.0 adjustOriginXFactor:0.0 adjustOriginYFactor:0.0];

      v32 = [v7 objectForKey:@"Space"];
      v33 = [v7 objectForKey:@"Dict"];
      [v32 addRectFrom:v33 widthFraction:0.5918 heightFraction:0.0 adjustOriginXFactor:-1.0 adjustOriginYFactor:0.0];

      v34 = [v7 objectForKey:@"Intl"];
      v35 = [v7 objectForKey:@"Dict"];
      [v34 addRectFrom:v35 widthFraction:-0.1837 heightFraction:0.0 adjustOriginXFactor:1.44 adjustOriginYFactor:0.0];

      v13 = [v7 objectForKey:@"Dict"];
      v14 = [v7 objectForKey:@"Dict"];
      v16 = 2.33;
      v17 = v13;
      v18 = v14;
      v15 = -0.1837;
    }

    else
    {
      if (v10 != 4)
      {
        v13 = [v9 objectForKey:@"Space"];
        v14 = [v7 objectForKey:@"Dict"];
        [v13 addRectFrom:v14];
        goto LABEL_48;
      }

      v11 = [v9 objectForKey:@"More"];
      v12 = [v7 objectForKey:@"Dict"];
      [v11 addRectFrom:v12 widthFraction:0.5 heightFraction:0.0 adjustOriginXFactor:0.0 adjustOriginYFactor:0.0];

      v13 = [v7 objectForKey:@"Intl"];
      v14 = [v7 objectForKey:@"Dict"];
      v15 = 0.5;
      v16 = 1.0;
      v17 = v13;
      v18 = v14;
    }

    [v17 addRectFrom:v18 widthFraction:v15 heightFraction:0.0 adjustOriginXFactor:v16 adjustOriginYFactor:0.0];
LABEL_48:

LABEL_49:
    if ((options & 1) == 0)
    {
      if ((options & 0xC) != 4 && (options & 2) != 0 && v6)
      {
        v38 = [v7 objectForKey:@"Space"];
        v39 = [v7 objectForKey:@"Dict"];
        [v38 addRectFrom:v39];

        v22 = [v7 objectForKey:@"Intl"];
        [v7 setObject:v22 forKey:@"Dict"];
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v25 = (options >> 1) & 1;
  if (!v6)
  {
    LOBYTE(v25) = 1;
  }

  if ((options & 0x28) == 0x20)
  {
    if ((v25 & 1) == 0)
    {
      v26 = [v9 objectForKey:@"More"];
      v27 = [v7 objectForKey:@"Dict"];
      [v26 addRectFrom:v27];
    }

    if ((options & 1) == 0)
    {
      v22 = [v7 objectForKey:@"More"];
      if ((options & 2) != 0 && v6)
      {
        v28 = [v7 objectForKey:@"Dict"];
        [v22 addRectFrom:v28];

        v22 = [v7 objectForKey:@"Dict"];
        v23 = [v7 objectForKey:@"Intl"];
        [v22 makeLikeOther:v23];
        goto LABEL_16;
      }

LABEL_15:
      v23 = [v7 objectForKey:@"Intl"];
      [v22 addRectFrom:v23];
LABEL_16:

LABEL_17:
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (v25)
  {
    v29 = (options & 2) == 0 || v6 == 0;
    v8 = v29;
    if (!v29 && (options & 1) == 0)
    {
      v21 = @"Dict";
      goto LABEL_14;
    }
  }

  else
  {
    v36 = [v9 objectForKey:@"Intl"];
    v37 = [v7 objectForKey:@"Dict"];
    [v36 addRectFrom:v37];
  }

  if ((options & 1) == 0 && v8)
  {
LABEL_13:
    v21 = @"More";
LABEL_14:
    v22 = [v7 objectForKey:v21];
    goto LABEL_15;
  }

LABEL_18:

  return v7;
}

- (void)updateMoreAndInternationalKeysWithOptions:(int)options
{
  if ([(UIKBTree *)self type]== 2)
  {
    v30 = [(UIKBTree *)self firstCachedKeyWithName:@"International-Key"];
    findLeftMoreKey = [(UIKBTree *)self findLeftMoreKey];
    v6 = [findLeftMoreKey interactionType] == 10 || objc_msgSend(findLeftMoreKey, "displayType") == 14;
    if (findLeftMoreKey && v30)
    {
      v28 = v6;
      v7 = [(UIKBTree *)self firstCachedKeyWithName:@"Dictation-Key"];
      v8 = [(UIKBTree *)self firstCachedKeyWithName:@"Space-Key"];
      v9 = [(UIKBTree *)self firstCachedKeyWithName:@"Return-Key"];
      v10 = MEMORY[0x1E695DF90];
      shape = [findLeftMoreKey shape];
      shape2 = [v30 shape];
      v13 = [v10 dictionaryWithObjectsAndKeys:{shape, @"More", shape2, @"Intl", 0}];

      if (v7)
      {
        shape3 = [v7 shape];
        [v13 setObject:shape3 forKey:@"Dict"];
      }

      if (v8)
      {
        shape4 = [v8 shape];
        [v13 setObject:shape4 forKey:@"Space"];
      }

      if (v9)
      {
        shape5 = [v9 shape];
        [v13 setObject:shape5 forKey:@"Return"];
      }

      v17 = [(UIKBTree *)self firstCachedKeyWithName:@"Handwriting-Input"];
      v29 = v8;
      if (v17 && ([(UIKBTree *)self visualStyling]& 0x3F) == 0)
      {
        v18 = [(UIKBTree *)self visualStyling]& 0x40;
      }

      else
      {
        v18 = 0;
      }

      if ([(UIKBTree *)self isSplit])
      {
        v19 = 8;
      }

      else
      {
        v19 = 0;
      }

      v20 = v28;
      if (v17)
      {
        v20 = 1;
      }

      if (v20)
      {
        v21 = 16;
      }

      else
      {
        v21 = 0;
      }

      options = [UIKBTree shapesForControlKeyShapes:v13 options:v21 | v18 | v19 | (32 * ([(UIKBTree *)self visualStyle]== 101)) | options];
      v23 = [options objectForKey:@"More"];
      [findLeftMoreKey setShape:v23];

      v24 = [options objectForKey:@"Intl"];
      [v30 setShape:v24];

      if (v7)
      {
        v25 = [options objectForKey:@"Dict"];
        [v7 setShape:v25];
      }

      if (v29)
      {
        v26 = [options objectForKey:@"Space"];
        [v29 setShape:v26];
      }

      if (v9)
      {
        v27 = [options objectForKey:@"Return"];
        [v9 setShape:v27];
      }

      [v30 setVisible:options & 1];
      [v7 setVisible:(options >> 1) & 1];
    }

    else
    {
      [(UIKBTree *)self updateDictationKeyOnNumberPads:(options >> 1) & 1];
    }
  }
}

- (id)geometrySet:(BOOL)set
{
  setCopy = set;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v6 = [subtrees countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(subtrees);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 type] == 5)
        {
          v11 = v10;
          goto LABEL_12;
        }
      }

      v7 = [subtrees countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (setCopy)
  {
    v11 = [[UIKBTree alloc] initWithType:5];
    v12 = MEMORY[0x1E696AEC0];
    name = [(UIKBTree *)self name];
    v14 = [v12 stringWithFormat:@"%@-GeometrySet", name];
    [(UIKBTree *)v11 setName:v14];

    subtrees = [(UIKBTree *)self subtrees];
    [subtrees addObject:v11];
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)attributeSet:(BOOL)set
{
  setCopy = set;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v6 = [subtrees countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(subtrees);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 type] == 6)
        {
          v11 = v10;
          goto LABEL_12;
        }
      }

      v7 = [subtrees countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (setCopy)
  {
    v11 = [[UIKBTree alloc] initWithType:6];
    v12 = MEMORY[0x1E696AEC0];
    name = [(UIKBTree *)self name];
    v14 = [v12 stringWithFormat:@"%@-AttributeSet", name];
    [(UIKBTree *)v11 setName:v14];

    subtrees = [(UIKBTree *)self subtrees];
    [subtrees addObject:v11];
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)supplementaryKeyList
{
  v3 = [(UIKBTree *)self subtreeWithName:@"SupplementaryKeylayout"];
  if (!v3)
  {
    v3 = [[UIKBTree alloc] initWithType:3];
    [(UIKBTree *)v3 setName:@"SupplementaryKeylayout"];
    subtrees = [(UIKBTree *)self subtrees];
    [subtrees addObject:v3];
  }

  keySet = [(UIKBTree *)v3 keySet];
  if (!keySet)
  {
    keySet = [[UIKBTree alloc] initWithType:4];
    [(UIKBTree *)keySet setName:@"Supplementary-KeySet"];
    subtrees2 = [(UIKBTree *)v3 subtrees];
    [subtrees2 addObject:keySet];
  }

  subtrees3 = [(UIKBTree *)keySet subtrees];
  firstObject = [subtrees3 firstObject];

  if (!firstObject)
  {
    firstObject = [[UIKBTree alloc] initWithType:7];
    [(UIKBTree *)firstObject setName:@"Supplementary-KeySet_List"];
    subtrees4 = [(UIKBTree *)keySet subtrees];
    [subtrees4 addObject:firstObject];
  }

  return firstObject;
}

- (void)centerKeyplaneInRect:(CGRect)rect scale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v49[1] = *MEMORY[0x1E69E9840];
  v10 = [(UIKBTree *)self firstCachedKeyWithName:@"Candidate-Selection"];
  v11 = v10;
  if (v10)
  {
    [v10 frame];
    v13 = v12;
    [v11 frame];
    v15 = v14;
    v49[0] = v11;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
    [(UIKBTree *)self centerKeys:v16 inRect:x scale:v13, width, v15, scale];
  }

  keys = [(UIKBTree *)self keys];
  v18 = [keys mutableCopy];

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __39__UIKBTree_centerKeyplaneInRect_scale___block_invoke;
  v46[3] = &unk_1E710FFE0;
  v19 = v11;
  v47 = v19;
  v41 = [v18 indexesOfObjectsPassingTest:v46];
  [v18 removeObjectsAtIndexes:?];
  v20 = [(UIKBTree *)self shapesForKeys:v18];
  keys2 = [(UIKBTree *)self keys];
  v22 = [keys2 mutableCopy];

  [v22 removeObject:v19];
  v23 = [(UIKBTree *)self shapesForKeys:v22];
  v24 = [UIKBShapeOperator operatorWithScale:scale];
  v40 = v20;
  [v24 offsetForCenteringShapes:v20 insideRect:{x, y, width, height}];
  v26 = v25;
  v28 = v27;
  [v24 shapesByRepositioningShapes:v23 withOffset:?];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = v45 = 0u;
  v30 = [v29 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v43;
    v39 = v19;
    while (2)
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v42 + 1) + 8 * i);
        [v34 frame];
        MinX = CGRectGetMinX(v50);
        v51.origin.x = x;
        v51.origin.y = y;
        v51.size.width = width;
        v51.size.height = height;
        if (MinX >= CGRectGetMinX(v51))
        {
          v52.origin.x = x;
          v52.origin.y = y;
          v52.size.width = width;
          v52.size.height = height;
          MaxX = CGRectGetMaxX(v52);
          [v34 frame];
          if (MaxX >= CGRectGetMaxX(v53))
          {
            continue;
          }
        }

        [v24 offsetForCenteringShapes:v23 insideRect:{x, y, width, height}];
        v26 = v37;
        v28 = v38;
        v19 = v39;
        goto LABEL_14;
      }

      v31 = [v29 countByEnumeratingWithState:&v42 objects:v48 count:16];
      v19 = v39;
      if (v31)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  [(UIKBTree *)self repositionKeys:v22 withOffset:v26 scale:v28, scale];
}

uint64_t __39__UIKBTree_centerKeyplaneInRect_scale___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    return 1;
  }

  v2 = [a2 name];
  v3 = [v2 rangeOfString:@"Monolith"] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (id)listShapes
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  subtrees = [(UIKBTree *)self subtrees];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(subtrees, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  subtrees2 = [(UIKBTree *)self subtrees];
  v7 = [subtrees2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(subtrees2);
        }

        shape = [*(*(&v13 + 1) + 8 * i) shape];
        if (shape)
        {
          [v5 addObject:shape];
        }
      }

      v8 = [subtrees2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)shapesForKeys:(id)keys
{
  v3 = MEMORY[0x1E695DF70];
  keysCopy = keys;
  array = [v3 array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __26__UIKBTree_shapesForKeys___block_invoke;
  v8[3] = &unk_1E710FF30;
  v6 = array;
  v9 = v6;
  [keysCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

void __26__UIKBTree_shapesForKeys___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 visible])
  {
    v3 = *(a1 + 32);
    v4 = [v5 shape];
    [v3 addObject:v4];
  }
}

- (id)geometriesList
{
  properties = [(UIKBTree *)self properties];
  v3 = [properties objectForKey:@"KBgeometriesList"];

  return v3;
}

- (id)activeGeometriesList
{
  properties = [(UIKBTree *)self properties];
  v3 = [properties objectForKey:@"KBactiveGeometriesList"];

  return v3;
}

- (id)activeShapesFromOutputShapes:(id)shapes inputShapes:(id)inputShapes inRTL:(BOOL)l
{
  v48 = *MEMORY[0x1E69E9840];
  shapesCopy = shapes;
  inputShapesCopy = inputShapes;
  activeGeometriesList = [(UIKBTree *)self activeGeometriesList];
  if (activeGeometriesList)
  {
    v36 = shapesCopy;
    geometriesList = [(UIKBTree *)self geometriesList];
    cache = [geometriesList cache];

    geometriesList2 = [(UIKBTree *)self geometriesList];
    subtrees = [geometriesList2 subtrees];

    v35 = inputShapesCopy;
    v33 = subtrees;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:inputShapesCopy forKeys:subtrees];
    array = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v34 = activeGeometriesList;
    v16 = activeGeometriesList;
    v17 = [v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v43;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [cache objectForKey:*(*(&v42 + 1) + 8 * i)];
          v22 = [v14 objectForKey:v21];

          geometry = [v22 geometry];
          [array addObject:geometry];
        }

        v18 = [v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v18);
    }

    array2 = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v24 = v36;
    v25 = [v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v39;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v38 + 1) + 8 * j);
          geometry2 = [v29 geometry];
          v31 = [array containsObject:geometry2];

          if (v31)
          {
            [array2 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v26);
    }

    inputShapesCopy = v35;
    shapesCopy = v36;
    activeGeometriesList = v34;
  }

  else
  {
    array2 = shapesCopy;
  }

  return array2;
}

- (void)setState:(int)state
{
  if (state)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(UIKBTree *)self setObject:v4 forProperty:@"state"];
}

- (void)updateVariantTypeForActions:(unsigned int)actions
{
  if (![(UIKBTree *)self _variantType])
  {
    if ((actions & 0x80000) != 0)
    {
      v5 = 8;
    }

    else
    {
      v5 = 1;
    }

    if ((actions & 0x10000) != 0)
    {
      v6 = 7;
    }

    else
    {
      v6 = v5;
    }

    if ((actions & 0x40000) != 0)
    {
      v7 = 3;
    }

    else
    {
      v7 = v6;
    }

    if ((actions & 0x20000) != 0)
    {
      v8 = 4;
    }

    else
    {
      v8 = v7;
    }

    [(UIKBTree *)self setVariantType:v8];
  }
}

- (void)setDisplayType:(int)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&type];
  [(UIKBTree *)self setObject:v4 forProperty:@"KBdisplayType"];
}

- (void)setInteractionType:(int)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&type];
  [(UIKBTree *)self setObject:v4 forProperty:@"KBinteractionType"];
}

- (void)setVariantType:(int)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&type];
  [(UIKBTree *)self setObject:v4 forProperty:@"variant-type"];
}

- (void)setDisplayTypeHint:(int)hint
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&hint];
  [(UIKBTree *)self setObject:v4 forProperty:@"KBdisplayTypeHint"];
}

- (int64_t)selectedVariantIndex
{
  v2 = [(UIKBTree *)self numberForProperty:@"KBselectedVariantIndex"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (void)setSelectedVariantIndex:(int64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  }

  v5 = v4;
  [(UIKBTree *)self setObject:v4 forProperty:@"KBselectedVariantIndex"];
}

- (int64_t)textAlignment
{
  v2 = [(UIKBTree *)self numberForProperty:@"text-alignment"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 1;
  }

  return intValue;
}

- (void)setTextAlignment:(int64_t)alignment
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:alignment];
  [(UIKBTree *)self setObject:v4 forProperty:@"text-alignment"];
}

- (void)setDisplayRowHint:(int)hint
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&hint];
  [(UIKBTree *)self setObject:v4 forProperty:@"KBdisplayRowHint"];
}

- (void)setRendering:(int)rendering
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&rendering];
  [(UIKBTree *)self setObject:v4 forProperty:@"rendering"];
}

- (void)setVisible:(BOOL)visible
{
  if (visible)
  {

    [(UIKBTree *)self setObject:0 forProperty:@"visible"];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:?];
    [(UIKBTree *)self setObject:v4 forProperty:@"visible"];
  }
}

- (BOOL)ghost
{
  cache = [(UIKBTree *)self cache];
  v4 = [cache objectForKey:@"KBghost"];
  if ([v4 BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    properties = [(UIKBTree *)self properties];
    v7 = [properties objectForKey:@"KBghost"];
    bOOLValue = [v7 BOOLValue];
  }

  return bOOLValue;
}

- (void)setGhost:(BOOL)ghost
{
  if (ghost)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(UIKBTree *)self setObject:v4 forProperty:@"KBghost"];
  }

  else
  {

    [(UIKBTree *)self setObject:0 forProperty:@"KBghost"];
  }
}

- (int64_t)flickDirection
{
  v2 = [(UIKBTree *)self numberForProperty:@"KBflickDirection"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = -3;
  }

  return intValue;
}

- (void)setFlickDirection:(int64_t)direction
{
  if (direction == -3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  }

  v5 = v4;
  [(UIKBTree *)self setObject:v4 forProperty:@"KBflickDirection"];
}

- (int64_t)popupDirection
{
  v2 = [(UIKBTree *)self numberForProperty:@"KBpopupDirection"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 1;
  }

  return intValue;
}

- (void)setPopupDirection:(int64_t)direction
{
  if (direction)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(UIKBTree *)self setObject:v4 forProperty:@"KBpopupDirection"];
}

- (void)setDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [(UIKBTree *)self setState:v3];
}

- (void)setSplitMode:(int)mode
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&mode];
  [(UIKBTree *)self setObject:v4 forProperty:@"KBsplitMode"];
}

- (void)setClipCorners:(unint64_t)corners
{
  if (corners)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(UIKBTree *)self setObject:v4 forProperty:@"KBclipCorners"];
}

- (void)setForceMultitap:(BOOL)multitap
{
  if (multitap)
  {
    v4 = 32;
  }

  else
  {
    v4 = 25;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  [(UIKBTree *)self setObject:v5 forProperty:@"KBforceMultitap"];
}

- (BOOL)mergeAsMoreKey
{
  cache = [(UIKBTree *)self cache];
  v3 = [cache objectForKey:@"merge-as-more-key"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setMergeAsMoreKey:(BOOL)key
{
  keyCopy = key;
  cache = [(UIKBTree *)self cache];
  v5 = cache;
  if (keyCopy)
  {
    [cache setObject:&unk_1EFE31000 forKey:@"merge-as-more-key"];
  }

  else
  {
    [cache removeObjectForKey:@"merge-as-more-key"];
  }
}

- (BOOL)isExemptFromInputManagerHitTesting
{
  if ([(UIKBTree *)self displayType]== 49 || [(UIKBTree *)self variantType]== 10 || [(UIKBTree *)self variantType]== 12 || [(UIKBTree *)self variantType]== 11 || [(UIKBTree *)self variantType]== 13 || [(UIKBTree *)self hasSemiStickyVariant])
  {
    v3 = 1;
  }

  else
  {
    interactionType = [(UIKBTree *)self interactionType];
    if (interactionType <= 0x10)
    {
      v3 = 0x5FE9u >> interactionType;
    }

    else
    {
      v3 = 1;
    }
  }

  return v3 & 1;
}

- (BOOL)avoidsLanguageIndicator
{
  if (![(UIKBTree *)self visible])
  {
    return 1;
  }

  [(UIKBTree *)self frame];
  if (CGRectIsEmpty(v7))
  {
    return 1;
  }

  displayType = [(UIKBTree *)self displayType];
  if (displayType == 4)
  {
    layoutTag = [(UIKBTree *)self layoutTag];
    if (!layoutTag)
    {
      v4 = 1;
LABEL_18:

      return v4;
    }
  }

  v4 = [(UIKBTree *)self displayType]== 13 || [(UIKBTree *)self interactionType]== 9 || [(UIKBTree *)self displayType]== 18 || [(UIKBTree *)self displayType]== 21 || [(UIKBTree *)self displayType]== 3 || [(UIKBTree *)self displayType]== 5 || [(UIKBTree *)self displayType]== 53 || [(UIKBTree *)self interactionType]== 17;
  if (displayType == 4)
  {
    goto LABEL_18;
  }

  return v4;
}

- (BOOL)dynamicDisplayTypeHint
{
  if (self->type == 12)
  {
    return 1;
  }

  if ([(UIKBTree *)self interactionType]== 13)
  {
    return 1;
  }

  return [(UIKBTree *)self interactionType]== 15;
}

- (BOOL)containsDividerVariant
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  subtrees = [(UIKBTree *)self subtrees];
  v3 = [subtrees countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(subtrees);
        }

        if ([*(*(&v7 + 1) + 8 * i) displayType] == 50)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [subtrees countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)setGroupNeighbor:(unint64_t)neighbor
{
  if (neighbor)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [(UIKBTree *)self setObject:v4 forProperty:@"group-neighbor"];
  }

  else
  {

    [UIKBTree setObject:"setObject:forProperty:" forProperty:?];
  }
}

- (void)setPreventPaddle:(BOOL)paddle
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:paddle];
  [(UIKBTree *)self setObject:v4 forProperty:@"KBpreventPaddle"];
}

- (void)setDynamicLayout:(BOOL)layout
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:layout];
  [(UIKBTree *)self setObject:v4 forProperty:@"KBdynamic"];
}

- (unint64_t)dynamicDisplayCorner
{
  v2 = [(UIKBTree *)self numberForProperty:@"display-corner"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (void)setDynamicDisplayCorner:(unint64_t)corner
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:corner];
  [(UIKBTree *)self setObject:v4 forProperty:@"display-corner"];
}

- (void)setCurrentKeyboardType:(int64_t)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(UIKBTree *)self setObject:v4 forProperty:@"KBCachedKeyboardType"];
}

- (id)toggleKeysForKeyName:(id)name
{
  name = [MEMORY[0x1E696AEC0] stringWithFormat:@"KBToggleKeys_%@", name];
  properties = [(UIKBTree *)self properties];
  v6 = [properties objectForKey:name];

  return v6;
}

- (void)setToggleKeys:(id)keys forKeyName:(id)name
{
  v6 = MEMORY[0x1E696AEC0];
  keysCopy = keys;
  name = [v6 stringWithFormat:@"KBToggleKeys_%@", name];
  properties = [(UIKBTree *)self properties];
  [properties setObject:keysCopy forKey:name];
}

- (void)orderVariantKeys:(BOOL)keys
{
  keysCopy = keys;
  v33 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF70];
  subtrees = [(UIKBTree *)self subtrees];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(subtrees, "count")}];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  subtrees2 = [(UIKBTree *)self subtrees];
  v9 = [subtrees2 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(subtrees2);
        }

        shape = [*(*(&v27 + 1) + 8 * v12) shape];
        [v7 addObject:shape];

        ++v12;
      }

      while (v10 != v12);
      v10 = [subtrees2 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  [v7 sortUsingFunction:variantOrderSort context:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", keysCopy)}];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  subtrees3 = [(UIKBTree *)self subtrees];
  v15 = [subtrees3 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    LODWORD(v17) = 0;
    v18 = *v24;
    do
    {
      v19 = 0;
      v20 = v17;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(subtrees3);
        }

        v21 = *(*(&v23 + 1) + 8 * v19);
        v17 = v20 + 1;
        v22 = [v7 objectAtIndex:v20];
        [v21 setShape:v22];

        ++v19;
        v20 = v17;
      }

      while (v16 != v19);
      v16 = [subtrees3 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }
}

- (id)variantDisplayString
{
  v19 = *MEMORY[0x1E69E9840];
  subtrees = [(UIKBTree *)self subtrees];
  v4 = [subtrees count];

  if (v4)
  {
    string = [MEMORY[0x1E696AD60] string];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    subtrees2 = [(UIKBTree *)self subtrees];
    v7 = [subtrees2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(subtrees2);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([string length])
          {
            [string appendString:@";"];
          }

          displayString = [v11 displayString];
          [string appendString:displayString];
        }

        v8 = [subtrees2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    string = [(UIKBTree *)self displayString];
  }

  return string;
}

- (BOOL)hasLayoutTag:(id)tag
{
  if (!tag)
  {
    return 0;
  }

  v3 = [(NSMutableDictionary *)self->properties objectForKey:?];
  v4 = v3 != 0;

  return v4;
}

- (id)dynamicCacheName
{
  if (self->type == 12)
  {
    v2 = [(NSMutableDictionary *)self->properties objectForKey:@"Default"];
    name = [v2 name];
  }

  else
  {
    name = self->name;
  }

  return name;
}

- (BOOL)containsKeyThatIgnoresHandBias
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  keys = [(UIKBTree *)self keys];
  v3 = [keys countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(keys);
        }

        if ([*(*(&v9 + 1) + 8 * i) BOOLForProperty:@"ignore-hand-bias"])
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v4 = [keys countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)setLayoutTag:(id)tag passingKeyTest:(id)test
{
  v23 = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  testCopy = test;
  if (self->layoutTag != tagCopy)
  {
    objc_storeStrong(&self->layoutTag, tag);
  }

  v9 = [(NSMutableDictionary *)self->properties objectForKey:tagCopy];
  if (testCopy && ((testCopy[2])(testCopy, v9) & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = self->properties;
    v11 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if (([v15 isEqualToString:tagCopy] & 1) == 0)
          {
            v16 = [(NSMutableDictionary *)self->properties objectForKey:v15];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && testCopy[2](testCopy, v16))
            {
              v17 = v15;

              tagCopy = v17;
              goto LABEL_18;
            }

            v9 = v16;
          }
        }

        v12 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v16 = v9;
LABEL_18:

    v9 = v16;
  }

  [(UIKBTree *)self setEffectiveLayoutTag:tagCopy];
}

- (BOOL)shouldCacheKey
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->type == 12)
  {
    return 1;
  }

  displayType = [(UIKBTree *)self displayType];
  interactionType = [(UIKBTree *)self interactionType];
  v5.i32[0] = displayType;
  v6 = v5;
  v6.i32[1] = displayType & 0xFFFFFFEF;
  v7.i32[0] = interactionType;
  v8 = vdupq_lane_s32(*v6.i8, 0);
  v8.i32[1] = displayType & 0xFFFFFFEF;
  result = 1;
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vceqq_s32(v8, xmmword_18A67E9D0), vceqq_s32(vextq_s8(vdupq_lane_s32(v7, 0), v6, 4uLL), xmmword_18A67E9C0)))) & 1) == 0 && interactionType != 5 && displayType != 23)
  {
    name = [(UIKBTree *)self name];
    if (![name isEqualToString:@"Latin-Accents"])
    {
      cache = [(UIKBTree *)self cache];
      v12 = [cache objectForKey:@"modify-for-writeboard-key"];
      v13.i32[0] = displayType;
      v13.i32[1] = interactionType & 0xFFFFFFF7;
      v13.i32[2] = interactionType & 0xFFFFFFFD;
      v13.i32[3] = interactionType;
      if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vceqq_s32(vdupq_lane_s32(*v13.i8, 0), xmmword_18A67E9E0), vceqq_s32(v13, xmmword_18A67E9F0)))) & 1) == 0)
      {
        v14 = interactionType & 0xFFFFFFFE;
        if ((interactionType & 0xFFFFFFFE) != 0x14 && v14 != 34 && interactionType != 42 && !v12 && v14 != 18)
        {
          localizationKey = [(UIKBTree *)self localizationKey];

          if (localizationKey)
          {
            return 1;
          }

          if (displayType == 7)
          {
            representedString = [(UIKBTree *)self representedString];
            if ([representedString _containsSubstring:@"¤"])
            {
LABEL_15:

              return 1;
            }

            representedString2 = [(UIKBTree *)self representedString];
            v18 = [representedString2 _containsSubstring:@"⁒"];

            if (v18)
            {
              return 1;
            }

            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            representedString = [(UIKBTree *)self secondaryRepresentedStrings];
            v19 = [representedString countByEnumeratingWithState:&v25 objects:v29 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v26;
LABEL_23:
              v22 = 0;
              while (1)
              {
                if (*v26 != v21)
                {
                  objc_enumerationMutation(representedString);
                }

                if ([*(*(&v25 + 1) + 8 * v22) _containsSubstring:@"¤"])
                {
                  goto LABEL_15;
                }

                representedString3 = [(UIKBTree *)self representedString];
                v24 = [representedString3 _containsSubstring:@"⁒"];

                if (v24)
                {
                  goto LABEL_15;
                }

                if (v20 == ++v22)
                {
                  v20 = [representedString countByEnumeratingWithState:&v25 objects:v29 count:16];
                  if (v20)
                  {
                    goto LABEL_23;
                  }

                  break;
                }
              }
            }
          }

          return 0;
        }
      }
    }

    return 1;
  }

  return result;
}

- (BOOL)_renderAsStringKey
{
  localizationKey = [(UIKBTree *)self localizationKey];
  if (localizationKey)
  {

LABEL_4:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  if (self->type == 12)
  {
    goto LABEL_4;
  }

  if ([(UIKBTree *)self supportsSupplementalDisplayString])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    displayType = [(UIKBTree *)self displayType];
    v4 = 0xC604B8001uLL >> displayType;
    if (displayType > 0x23)
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

- (BOOL)renderKeyInKeyplane:(id)keyplane
{
  v36 = *MEMORY[0x1E69E9840];
  keyplaneCopy = keyplane;
  if ([(UIKBTree *)self _renderAsStringKey])
  {
    [(UIKBTree *)self frame];
    if (CGRectIsEmpty(v37))
    {
      v5 = 1;
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      subtrees = [keyplaneCopy subtrees];
      v7 = [subtrees countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v31;
        v25 = subtrees;
        v23 = *v31;
LABEL_7:
        v10 = 0;
        v24 = v8;
        while (1)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(subtrees);
          }

          v11 = *(*(&v30 + 1) + 8 * v10);
          if ([v11 type] == 3)
          {
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            keySet = [v11 keySet];
            subtrees2 = [keySet subtrees];

            v14 = [subtrees2 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v27;
              while (2)
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v27 != v16)
                  {
                    objc_enumerationMutation(subtrees2);
                  }

                  subtrees3 = [*(*(&v26 + 1) + 8 * i) subtrees];
                  v19 = [subtrees3 containsObject:self];

                  if (v19)
                  {

                    v5 = 1;
                    subtrees = v25;
                    goto LABEL_25;
                  }
                }

                v15 = [subtrees2 countByEnumeratingWithState:&v26 objects:v34 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }
            }

            name = [v11 name];
            v21 = [name hasPrefix:@"split-"];

            v8 = v24;
            subtrees = v25;
            v9 = v23;
            if (!v21)
            {
              break;
            }
          }

          if (++v10 == v8)
          {
            v8 = [subtrees countByEnumeratingWithState:&v30 objects:v35 count:16];
            v5 = 0;
            if (v8)
            {
              goto LABEL_7;
            }

            goto LABEL_25;
          }
        }
      }

      v5 = 0;
LABEL_25:
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)key
{
  v2 = [[UIKBTree alloc] initWithType:8];
  v3 = +[UIKBTree uniqueName];
  [(UIKBTree *)v2 setName:v3];

  return v2;
}

+ (id)keyboard
{
  v2 = [[UIKBTree alloc] initWithType:1];
  v3 = +[UIKBTree uniqueName];
  [(UIKBTree *)v2 setName:v3];

  return v2;
}

- (id)keysForDisplayRowAtIndex:(unint64_t)index
{
  v55 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [(UIKBTree *)self subtrees];
  v28 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v28)
  {
    v26 = *v49;
    v6 = MEMORY[0x1E69E9820];
    do
    {
      v7 = 0;
      do
      {
        if (*v49 != v26)
        {
          v8 = v7;
          objc_enumerationMutation(obj);
          v7 = v8;
        }

        v29 = v7;
        v9 = *(*(&v48 + 1) + 8 * v7);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        keySet = [v9 keySet];
        subtrees = [keySet subtrees];

        v32 = [subtrees countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v32)
        {
          v31 = *v45;
          do
          {
            v11 = 0;
            do
            {
              if (*v45 != v31)
              {
                v12 = v11;
                objc_enumerationMutation(subtrees);
                v11 = v12;
              }

              v33 = v11;
              v13 = *(*(&v44 + 1) + 8 * v11);
              v14 = [v13 numberForProperty:@"KBdisplayRowHint"];
              v34 = v14;
              if (v14)
              {
                v15 = [v14 unsignedIntegerValue] == index;
                v14 = v34;
                if (v15)
                {
                  v42 = 0u;
                  v43 = 0u;
                  v40 = 0u;
                  v41 = 0u;
                  subtrees2 = [v13 subtrees];
                  v17 = [subtrees2 countByEnumeratingWithState:&v40 objects:v52 count:16];
                  if (v17)
                  {
                    v18 = *v41;
                    do
                    {
                      for (i = 0; i != v17; ++i)
                      {
                        if (*v41 != v18)
                        {
                          objc_enumerationMutation(subtrees2);
                        }

                        v20 = *(*(&v40 + 1) + 8 * i);
                        if ([v20 displayRowHint] == index)
                        {
                          if ([array count])
                          {
                            [v20 frame];
                            v36 = 0;
                            v37 = &v36;
                            v38 = 0x2020000000;
                            v39 = 0;
                            v35[0] = v6;
                            v35[1] = 3221225472;
                            v35[2] = __37__UIKBTree_keysForDisplayRowAtIndex___block_invoke;
                            v35[3] = &unk_1E7110008;
                            v35[5] = v21;
                            v35[6] = v22;
                            v35[7] = v23;
                            v35[8] = v24;
                            v35[4] = &v36;
                            [array enumerateObjectsUsingBlock:v35];
                            [array insertObject:v20 atIndex:v37[3]];
                            _Block_object_dispose(&v36, 8);
                          }

                          else
                          {
                            [array addObject:v20];
                          }
                        }
                      }

                      v17 = [subtrees2 countByEnumeratingWithState:&v40 objects:v52 count:16];
                    }

                    while (v17);
                  }

                  v14 = v34;
                }
              }

              v11 = v33 + 1;
            }

            while (v33 + 1 != v32);
            v32 = [subtrees countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v32);
        }

        v7 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v28);
  }

  return array;
}

uint64_t __37__UIKBTree_keysForDisplayRowAtIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 frame];
  if (*(a1 + 40) > v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3 + 1;
  }

  return result;
}

@end