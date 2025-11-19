@interface _UINavigationBarItemStackEntry
+ (id)entryForItem:(id)a3 replaceExistingWithNew:(BOOL)a4;
- ($1AB5FA073B851C12C2339EC22442E995)layoutHeightsForActiveLayout;
- (BOOL)isActiveLayoutVariableHeight;
- (NSString)swiftDescription;
- (_UINavigationBarLayout)activeLayout;
- (_UINavigationBarLayout)inactiveLayout;
- (double)activeLayoutHeightRevealingPart:(int64_t)a3;
- (double)activeLayoutHeightStackingPart:(int64_t)a3;
- (uint64_t)_typedStorage;
- (void)dealloc;
- (void)updateStateFromCounterpart:(id)a3;
@end

@implementation _UINavigationBarItemStackEntry

- (BOOL)isActiveLayoutVariableHeight
{
  v2 = self;
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
  v3 = [(UINavigationItem *)self->_item _stackEntry];

  if (v3 == self)
  {
    [(UINavigationItem *)self->_item _setStackEntry:0];
  }

  v4.receiver = self;
  v4.super_class = _UINavigationBarItemStackEntry;
  [(_UINavigationBarItemStackEntry *)&v4 dealloc];
}

- ($1AB5FA073B851C12C2339EC22442E995)layoutHeightsForActiveLayout
{
  v2 = self;
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

- (double)activeLayoutHeightRevealingPart:(int64_t)a3
{
  v4 = self;
  sub_188F91C40(a3);
  v6 = v5;

  return v6;
}

- (double)activeLayoutHeightStackingPart:(int64_t)a3
{
  v4 = self;
  sub_188F91EB0(a3);
  v6 = v5;

  return v6;
}

- (NSString)swiftDescription
{
  v2 = self;
  sub_188F92168();

  v3 = sub_18A4A7258();

  return v3;
}

+ (id)entryForItem:(id)a3 replaceExistingWithNew:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 _stackEntry];
  if (!v7 || v4)
  {
    v8 = objc_opt_new();

    objc_storeStrong((v8 + 24), a3);
    *(v8 + 8) = 0;
    v9 = objc_alloc_init(_UITypedStorage);
    v10 = *(v8 + 16);
    *(v8 + 16) = v9;

    [v6 _setStackEntry:v8];
    v7 = v8;
  }

  return v7;
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

- (void)updateStateFromCounterpart:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UINavigationBarItemStackEntry *)v4 item];
  item = self->_item;

  if (os_variant_has_internal_diagnostics())
  {
    if (v5 != item)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v11 = 138412546;
        v12 = self;
        v13 = 2112;
        v14 = v4;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "%@: Ignoring unexpected nonmatching counterpart: %@\nThis is an internal UIKit bug.", &v11, 0x16u);
      }

      goto LABEL_8;
    }

LABEL_4:
    if (v4 == self)
    {
      goto LABEL_9;
    }

    if ([(_UINavigationBarItemStackEntry *)v4 isSearchActive])
    {
      self->_searchActive = 1;
      goto LABEL_9;
    }

    v7 = [(_UINavigationBarItemStackEntry *)v4 item];
    v8 = [v7 _searchControllerIfAllowed];
    self->_searchActive = [v8 isActive];

LABEL_8:
    goto LABEL_9;
  }

  if (v5 == item)
  {
    goto LABEL_4;
  }

  v9 = *(__UILogGetCategoryCachedImpl("Assert", &updateStateFromCounterpart____s_category) + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v4;
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