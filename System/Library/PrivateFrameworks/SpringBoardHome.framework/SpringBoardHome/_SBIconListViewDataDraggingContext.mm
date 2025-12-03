@interface _SBIconListViewDataDraggingContext
- (_SBIconListViewDataDraggingContext)initWithIconView:(id)view bestUTI:(id)i allowsMoveOperation:(BOOL)operation fileOptions:(int64_t)options;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation _SBIconListViewDataDraggingContext

- (_SBIconListViewDataDraggingContext)initWithIconView:(id)view bestUTI:(id)i allowsMoveOperation:(BOOL)operation fileOptions:(int64_t)options
{
  viewCopy = view;
  iCopy = i;
  v16.receiver = self;
  v16.super_class = _SBIconListViewDataDraggingContext;
  v13 = [(_SBIconListViewDataDraggingContext *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_iconView, view);
    objc_storeStrong(&v14->_bestAvailableUTI, i);
    v14->_allowsMoveOperation = operation;
    v14->_fileOptions = options;
  }

  return v14;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBIconListViewDataDraggingContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_iconView withName:@"iconView"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBIconListViewDataDraggingContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_SBIconListViewDataDraggingContext *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder appendString:self->_bestAvailableUTI withName:@"bestAvailableUTI"];
  v5 = [succinctDescriptionBuilder appendBool:self->_allowsMoveOperation withName:@"allowsMoveOperation"];
  v6 = [succinctDescriptionBuilder appendInteger:self->_fileOptions withName:@"fileOptions"];

  return succinctDescriptionBuilder;
}

@end