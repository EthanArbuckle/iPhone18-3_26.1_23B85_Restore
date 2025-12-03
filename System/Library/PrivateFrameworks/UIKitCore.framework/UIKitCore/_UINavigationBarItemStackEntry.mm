@interface _UINavigationBarItemStackEntry
+ (id)entryForItem:(id)item replaceExistingWithNew:(BOOL)new;
- ($1AB5FA073B851C12C2339EC22442E995)layoutHeightsForActiveLayout;
- (BOOL)isActiveLayoutVariableHeight;
- (NSString)swiftDescription;
- (_UINavigationBarLayout)activeLayout;
- (_UINavigationBarLayout)inactiveLayout;
- (double)activeLayoutHeightRevealingPart:(int64_t)part;
- (double)activeLayoutHeightStackingPart:(int64_t)part;
- (uint64_t)_typedStorage;
- (void)dealloc;
- (void)updateStateFromCounterpart:(id)counterpart;
@end

@implementation _UINavigationBarItemStackEntry

- (BOOL)isActiveLayoutVariableHeight
{
  selfCopy = self;
  v3 = sub_188F91B80();

  return v3;
}

- (_UINavigationBarLayout)activeLayout
{
  v2 = 32;
  if (self->_searchActive)
  {
    v2 = 40;
  }

  return *(&self->super.isa + v2);
}

- (void)dealloc
{
  _stackEntry = [(UINavigationItem *)self->_item _stackEntry];

  if (_stackEntry == self)
  {
    [(UINavigationItem *)self->_item _setStackEntry:0];
  }

  v4.receiver = self;
  v4.super_class = _UINavigationBarItemStackEntry;
  [(_UINavigationBarItemStackEntry *)&v4 dealloc];
}

- ($1AB5FA073B851C12C2339EC22442E995)layoutHeightsForActiveLayout
{
  selfCopy = self;
  sub_188CBA530();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = v4;
  v10 = v6;
  v11 = v8;
  result.var2 = v11;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (double)activeLayoutHeightRevealingPart:(int64_t)part
{
  selfCopy = self;
  sub_188F91C40(part);
  v6 = v5;

  return v6;
}

- (double)activeLayoutHeightStackingPart:(int64_t)part
{
  selfCopy = self;
  sub_188F91EB0(part);
  v6 = v5;

  return v6;
}

- (NSString)swiftDescription
{
  selfCopy = self;
  sub_188F92168();

  v3 = sub_18A4A7258();

  return v3;
}

+ (id)entryForItem:(id)item replaceExistingWithNew:(BOOL)new
{
  newCopy = new;
  itemCopy = item;
  _stackEntry = [itemCopy _stackEntry];
  if (!_stackEntry || newCopy)
  {
    v8 = objc_opt_new();

    objc_storeStrong((v8 + 24), item);
    *(v8 + 8) = 0;
    v9 = objc_alloc_init(_UITypedStorage);
    v10 = *(v8 + 16);
    *(v8 + 16) = v9;

    [itemCopy _setStackEntry:v8];
    _stackEntry = v8;
  }

  return _stackEntry;
}

- (_UINavigationBarLayout)inactiveLayout
{
  v2 = 40;
  if (self->_searchActive)
  {
    v2 = 32;
  }

  return *(&self->super.isa + v2);
}

- (void)updateStateFromCounterpart:(id)counterpart
{
  v15 = *MEMORY[0x1E69E9840];
  counterpartCopy = counterpart;
  item = [(_UINavigationBarItemStackEntry *)counterpartCopy item];
  item = self->_item;

  if (os_variant_has_internal_diagnostics())
  {
    if (item != item)
    {
      item2 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(item2, OS_LOG_TYPE_FAULT))
      {
        v11 = 138412546;
        selfCopy2 = self;
        v13 = 2112;
        v14 = counterpartCopy;
        _os_log_fault_impl(&dword_188A29000, item2, OS_LOG_TYPE_FAULT, "%@: Ignoring unexpected nonmatching counterpart: %@\nThis is an internal UIKit bug.", &v11, 0x16u);
      }

      goto LABEL_8;
    }

LABEL_4:
    if (counterpartCopy == self)
    {
      goto LABEL_9;
    }

    if ([(_UINavigationBarItemStackEntry *)counterpartCopy isSearchActive])
    {
      self->_searchActive = 1;
      goto LABEL_9;
    }

    item2 = [(_UINavigationBarItemStackEntry *)counterpartCopy item];
    _searchControllerIfAllowed = [item2 _searchControllerIfAllowed];
    self->_searchActive = [_searchControllerIfAllowed isActive];

LABEL_8:
    goto LABEL_9;
  }

  if (item == item)
  {
    goto LABEL_4;
  }

  v9 = *(__UILogGetCategoryCachedImpl("Assert", &updateStateFromCounterpart____s_category) + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412546;
    selfCopy2 = self;
    v13 = 2112;
    v14 = counterpartCopy;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%@: Ignoring unexpected nonmatching counterpart: %@\nThis is an internal UIKit bug.", &v11, 0x16u);
  }

LABEL_9:
}

- (uint64_t)_typedStorage
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

@end